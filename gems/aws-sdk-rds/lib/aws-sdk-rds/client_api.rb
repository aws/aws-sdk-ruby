# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    ActivityStreamModeList = Shapes::ListShape.new(name: 'ActivityStreamModeList')
    ActivityStreamPolicyStatus = Shapes::StringShape.new(name: 'ActivityStreamPolicyStatus')
    ActivityStreamStatus = Shapes::StringShape.new(name: 'ActivityStreamStatus')
    AddRoleToDBClusterMessage = Shapes::StructureShape.new(name: 'AddRoleToDBClusterMessage')
    AddRoleToDBInstanceMessage = Shapes::StructureShape.new(name: 'AddRoleToDBInstanceMessage')
    AddSourceIdentifierToSubscriptionMessage = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    AdditionalStorageVolume = Shapes::StructureShape.new(name: 'AdditionalStorageVolume')
    AdditionalStorageVolumeOutput = Shapes::StructureShape.new(name: 'AdditionalStorageVolumeOutput')
    AdditionalStorageVolumesList = Shapes::ListShape.new(name: 'AdditionalStorageVolumesList')
    AdditionalStorageVolumesOutputList = Shapes::ListShape.new(name: 'AdditionalStorageVolumesOutputList')
    ApplyMethod = Shapes::StringShape.new(name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionResult')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AuditPolicyState = Shapes::StringShape.new(name: 'AuditPolicyState')
    AuthScheme = Shapes::StringShape.new(name: 'AuthScheme')
    AuthUserName = Shapes::StringShape.new(name: 'AuthUserName')
    AuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthorizationAlreadyExistsFault', error: {"code" => "AuthorizationAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault', error: {"code" => "AuthorizationNotFound", "httpStatusCode" => 404, "senderFault" => true})
    AuthorizationQuotaExceededFault = Shapes::StructureShape.new(name: 'AuthorizationQuotaExceededFault', error: {"code" => "AuthorizationQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    AuthorizeDBSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'AuthorizeDBSecurityGroupIngressMessage')
    AuthorizeDBSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'AuthorizeDBSecurityGroupIngressResult')
    AutomationMode = Shapes::StringShape.new(name: 'AutomationMode')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    AvailableAdditionalStorageVolumesOption = Shapes::StructureShape.new(name: 'AvailableAdditionalStorageVolumesOption')
    AvailableAdditionalStorageVolumesOptionList = Shapes::ListShape.new(name: 'AvailableAdditionalStorageVolumesOptionList')
    AvailableProcessorFeature = Shapes::StructureShape.new(name: 'AvailableProcessorFeature')
    AvailableProcessorFeatureList = Shapes::ListShape.new(name: 'AvailableProcessorFeatureList')
    AwsBackupRecoveryPointArn = Shapes::StringShape.new(name: 'AwsBackupRecoveryPointArn')
    BacktrackDBClusterMessage = Shapes::StructureShape.new(name: 'BacktrackDBClusterMessage')
    BackupPolicyNotFoundFault = Shapes::StructureShape.new(name: 'BackupPolicyNotFoundFault', error: {"code" => "BackupPolicyNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    BlueGreenDeployment = Shapes::StructureShape.new(name: 'BlueGreenDeployment')
    BlueGreenDeploymentAlreadyExistsFault = Shapes::StructureShape.new(name: 'BlueGreenDeploymentAlreadyExistsFault', error: {"code" => "BlueGreenDeploymentAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    BlueGreenDeploymentIdentifier = Shapes::StringShape.new(name: 'BlueGreenDeploymentIdentifier')
    BlueGreenDeploymentList = Shapes::ListShape.new(name: 'BlueGreenDeploymentList')
    BlueGreenDeploymentName = Shapes::StringShape.new(name: 'BlueGreenDeploymentName')
    BlueGreenDeploymentNotFoundFault = Shapes::StructureShape.new(name: 'BlueGreenDeploymentNotFoundFault', error: {"code" => "BlueGreenDeploymentNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    BlueGreenDeploymentStatus = Shapes::StringShape.new(name: 'BlueGreenDeploymentStatus')
    BlueGreenDeploymentStatusDetails = Shapes::StringShape.new(name: 'BlueGreenDeploymentStatusDetails')
    BlueGreenDeploymentTask = Shapes::StructureShape.new(name: 'BlueGreenDeploymentTask')
    BlueGreenDeploymentTaskList = Shapes::ListShape.new(name: 'BlueGreenDeploymentTaskList')
    BlueGreenDeploymentTaskName = Shapes::StringShape.new(name: 'BlueGreenDeploymentTaskName')
    BlueGreenDeploymentTaskStatus = Shapes::StringShape.new(name: 'BlueGreenDeploymentTaskStatus')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    CACertificateIdentifiersList = Shapes::ListShape.new(name: 'CACertificateIdentifiersList')
    CancelExportTaskMessage = Shapes::StructureShape.new(name: 'CancelExportTaskMessage')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateDetails = Shapes::StructureShape.new(name: 'CertificateDetails')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateMessage = Shapes::StructureShape.new(name: 'CertificateMessage')
    CertificateNotFoundFault = Shapes::StructureShape.new(name: 'CertificateNotFoundFault', error: {"code" => "CertificateNotFound", "httpStatusCode" => 404, "senderFault" => true})
    CharacterSet = Shapes::StructureShape.new(name: 'CharacterSet')
    ClientPasswordAuthType = Shapes::StringShape.new(name: 'ClientPasswordAuthType')
    CloudwatchLogsExportConfiguration = Shapes::StructureShape.new(name: 'CloudwatchLogsExportConfiguration')
    ClusterPendingModifiedValues = Shapes::StructureShape.new(name: 'ClusterPendingModifiedValues')
    ClusterScalabilityType = Shapes::StringShape.new(name: 'ClusterScalabilityType')
    ConnectionPoolConfiguration = Shapes::StructureShape.new(name: 'ConnectionPoolConfiguration')
    ConnectionPoolConfigurationInfo = Shapes::StructureShape.new(name: 'ConnectionPoolConfigurationInfo')
    ContextAttribute = Shapes::StructureShape.new(name: 'ContextAttribute')
    ContextAttributeList = Shapes::ListShape.new(name: 'ContextAttributeList')
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
    CreateBlueGreenDeploymentRequest = Shapes::StructureShape.new(name: 'CreateBlueGreenDeploymentRequest')
    CreateBlueGreenDeploymentResponse = Shapes::StructureShape.new(name: 'CreateBlueGreenDeploymentResponse')
    CreateCustomDBEngineVersionFault = Shapes::StructureShape.new(name: 'CreateCustomDBEngineVersionFault', error: {"code" => "CreateCustomDBEngineVersionFault", "httpStatusCode" => 400, "senderFault" => true})
    CreateCustomDBEngineVersionMessage = Shapes::StructureShape.new(name: 'CreateCustomDBEngineVersionMessage')
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
    CreateDBProxyEndpointRequest = Shapes::StructureShape.new(name: 'CreateDBProxyEndpointRequest')
    CreateDBProxyEndpointResponse = Shapes::StructureShape.new(name: 'CreateDBProxyEndpointResponse')
    CreateDBProxyRequest = Shapes::StructureShape.new(name: 'CreateDBProxyRequest')
    CreateDBProxyResponse = Shapes::StructureShape.new(name: 'CreateDBProxyResponse')
    CreateDBSecurityGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSecurityGroupMessage')
    CreateDBSecurityGroupResult = Shapes::StructureShape.new(name: 'CreateDBSecurityGroupResult')
    CreateDBShardGroupMessage = Shapes::StructureShape.new(name: 'CreateDBShardGroupMessage')
    CreateDBSnapshotMessage = Shapes::StructureShape.new(name: 'CreateDBSnapshotMessage')
    CreateDBSnapshotResult = Shapes::StructureShape.new(name: 'CreateDBSnapshotResult')
    CreateDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = Shapes::StructureShape.new(name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = Shapes::StructureShape.new(name: 'CreateGlobalClusterResult')
    CreateIntegrationMessage = Shapes::StructureShape.new(name: 'CreateIntegrationMessage')
    CreateOptionGroupMessage = Shapes::StructureShape.new(name: 'CreateOptionGroupMessage')
    CreateOptionGroupResult = Shapes::StructureShape.new(name: 'CreateOptionGroupResult')
    CreateTenantDatabaseMessage = Shapes::StructureShape.new(name: 'CreateTenantDatabaseMessage')
    CreateTenantDatabaseResult = Shapes::StructureShape.new(name: 'CreateTenantDatabaseResult')
    CustomAvailabilityZoneNotFoundFault = Shapes::StructureShape.new(name: 'CustomAvailabilityZoneNotFoundFault', error: {"code" => "CustomAvailabilityZoneNotFound", "httpStatusCode" => 404, "senderFault" => true})
    CustomDBEngineVersionAMI = Shapes::StructureShape.new(name: 'CustomDBEngineVersionAMI')
    CustomDBEngineVersionAlreadyExistsFault = Shapes::StructureShape.new(name: 'CustomDBEngineVersionAlreadyExistsFault', error: {"code" => "CustomDBEngineVersionAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    CustomDBEngineVersionManifest = Shapes::StringShape.new(name: 'CustomDBEngineVersionManifest')
    CustomDBEngineVersionNotFoundFault = Shapes::StructureShape.new(name: 'CustomDBEngineVersionNotFoundFault', error: {"code" => "CustomDBEngineVersionNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    CustomDBEngineVersionQuotaExceededFault = Shapes::StructureShape.new(name: 'CustomDBEngineVersionQuotaExceededFault', error: {"code" => "CustomDBEngineVersionQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    CustomEngineName = Shapes::StringShape.new(name: 'CustomEngineName')
    CustomEngineVersion = Shapes::StringShape.new(name: 'CustomEngineVersion')
    CustomEngineVersionStatus = Shapes::StringShape.new(name: 'CustomEngineVersionStatus')
    DBCluster = Shapes::StructureShape.new(name: 'DBCluster')
    DBClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterAlreadyExistsFault', error: {"code" => "DBClusterAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterAutomatedBackup = Shapes::StructureShape.new(name: 'DBClusterAutomatedBackup')
    DBClusterAutomatedBackupList = Shapes::ListShape.new(name: 'DBClusterAutomatedBackupList')
    DBClusterAutomatedBackupMessage = Shapes::StructureShape.new(name: 'DBClusterAutomatedBackupMessage')
    DBClusterAutomatedBackupNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterAutomatedBackupNotFoundFault', error: {"code" => "DBClusterAutomatedBackupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterAutomatedBackupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterAutomatedBackupQuotaExceededFault', error: {"code" => "DBClusterAutomatedBackupQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterBacktrack = Shapes::StructureShape.new(name: 'DBClusterBacktrack')
    DBClusterBacktrackList = Shapes::ListShape.new(name: 'DBClusterBacktrackList')
    DBClusterBacktrackMessage = Shapes::StructureShape.new(name: 'DBClusterBacktrackMessage')
    DBClusterBacktrackNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterBacktrackNotFoundFault', error: {"code" => "DBClusterBacktrackNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterCapacityInfo = Shapes::StructureShape.new(name: 'DBClusterCapacityInfo')
    DBClusterEndpoint = Shapes::StructureShape.new(name: 'DBClusterEndpoint')
    DBClusterEndpointAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterEndpointAlreadyExistsFault', error: {"code" => "DBClusterEndpointAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterEndpointList = Shapes::ListShape.new(name: 'DBClusterEndpointList')
    DBClusterEndpointMessage = Shapes::StructureShape.new(name: 'DBClusterEndpointMessage')
    DBClusterEndpointNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterEndpointNotFoundFault', error: {"code" => "DBClusterEndpointNotFoundFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterEndpointQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterEndpointQuotaExceededFault', error: {"code" => "DBClusterEndpointQuotaExceededFault", "httpStatusCode" => 403, "senderFault" => true})
    DBClusterIdentifier = Shapes::StringShape.new(name: 'DBClusterIdentifier')
    DBClusterList = Shapes::ListShape.new(name: 'DBClusterList')
    DBClusterMember = Shapes::StructureShape.new(name: 'DBClusterMember')
    DBClusterMemberList = Shapes::ListShape.new(name: 'DBClusterMemberList')
    DBClusterMessage = Shapes::StructureShape.new(name: 'DBClusterMessage')
    DBClusterNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterNotFoundFault', error: {"code" => "DBClusterNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterOptionGroupMemberships = Shapes::ListShape.new(name: 'DBClusterOptionGroupMemberships')
    DBClusterOptionGroupStatus = Shapes::StructureShape.new(name: 'DBClusterOptionGroupStatus')
    DBClusterParameterGroup = Shapes::StructureShape.new(name: 'DBClusterParameterGroup')
    DBClusterParameterGroupDetails = Shapes::StructureShape.new(name: 'DBClusterParameterGroupDetails')
    DBClusterParameterGroupList = Shapes::ListShape.new(name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNameMessage')
    DBClusterParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNotFoundFault', error: {"code" => "DBClusterParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterQuotaExceededFault', error: {"code" => "DBClusterQuotaExceededFault", "httpStatusCode" => 403, "senderFault" => true})
    DBClusterRole = Shapes::StructureShape.new(name: 'DBClusterRole')
    DBClusterRoleAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterRoleAlreadyExistsFault', error: {"code" => "DBClusterRoleAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterRoleNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterRoleNotFoundFault', error: {"code" => "DBClusterRoleNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterRoleQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterRoleQuotaExceededFault', error: {"code" => "DBClusterRoleQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterRoles = Shapes::ListShape.new(name: 'DBClusterRoles')
    DBClusterSnapshot = Shapes::StructureShape.new(name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotAlreadyExistsFault', error: {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterSnapshotAttribute = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = Shapes::ListShape.new(name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = Shapes::ListShape.new(name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotNotFoundFault', error: {"code" => "DBClusterSnapshotNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterStatusInfo = Shapes::StructureShape.new(name: 'DBClusterStatusInfo')
    DBClusterStatusInfoList = Shapes::ListShape.new(name: 'DBClusterStatusInfoList')
    DBEngineVersion = Shapes::StructureShape.new(name: 'DBEngineVersion')
    DBEngineVersionList = Shapes::ListShape.new(name: 'DBEngineVersionList')
    DBEngineVersionMessage = Shapes::StructureShape.new(name: 'DBEngineVersionMessage')
    DBInstance = Shapes::StructureShape.new(name: 'DBInstance')
    DBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceAlreadyExistsFault', error: {"code" => "DBInstanceAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceAutomatedBackup = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackup')
    DBInstanceAutomatedBackupList = Shapes::ListShape.new(name: 'DBInstanceAutomatedBackupList')
    DBInstanceAutomatedBackupMessage = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupMessage')
    DBInstanceAutomatedBackupNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupNotFoundFault', error: {"code" => "DBInstanceAutomatedBackupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBInstanceAutomatedBackupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupQuotaExceededFault', error: {"code" => "DBInstanceAutomatedBackupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceAutomatedBackupsReplication = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupsReplication')
    DBInstanceAutomatedBackupsReplicationList = Shapes::ListShape.new(name: 'DBInstanceAutomatedBackupsReplicationList')
    DBInstanceList = Shapes::ListShape.new(name: 'DBInstanceList')
    DBInstanceMessage = Shapes::StructureShape.new(name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceNotFoundFault', error: {"code" => "DBInstanceNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBInstanceNotReadyFault = Shapes::StructureShape.new(name: 'DBInstanceNotReadyFault', error: {"code" => "DBInstanceNotReady", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceRole = Shapes::StructureShape.new(name: 'DBInstanceRole')
    DBInstanceRoleAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceRoleAlreadyExistsFault', error: {"code" => "DBInstanceRoleAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceRoleNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceRoleNotFoundFault', error: {"code" => "DBInstanceRoleNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBInstanceRoleQuotaExceededFault = Shapes::StructureShape.new(name: 'DBInstanceRoleQuotaExceededFault', error: {"code" => "DBInstanceRoleQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceRoles = Shapes::ListShape.new(name: 'DBInstanceRoles')
    DBInstanceStatusInfo = Shapes::StructureShape.new(name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = Shapes::ListShape.new(name: 'DBInstanceStatusInfoList')
    DBLogFileNotFoundFault = Shapes::StructureShape.new(name: 'DBLogFileNotFoundFault', error: {"code" => "DBLogFileNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBMajorEngineVersion = Shapes::StructureShape.new(name: 'DBMajorEngineVersion')
    DBMajorEngineVersionsList = Shapes::ListShape.new(name: 'DBMajorEngineVersionsList')
    DBParameterGroup = Shapes::StructureShape.new(name: 'DBParameterGroup')
    DBParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBParameterGroupAlreadyExistsFault', error: {"code" => "DBParameterGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBParameterGroupDetails = Shapes::StructureShape.new(name: 'DBParameterGroupDetails')
    DBParameterGroupList = Shapes::ListShape.new(name: 'DBParameterGroupList')
    DBParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBParameterGroupNameMessage')
    DBParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBParameterGroupNotFoundFault', error: {"code" => "DBParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBParameterGroupQuotaExceededFault', error: {"code" => "DBParameterGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBParameterGroupStatus = Shapes::StructureShape.new(name: 'DBParameterGroupStatus')
    DBParameterGroupStatusList = Shapes::ListShape.new(name: 'DBParameterGroupStatusList')
    DBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBParameterGroupsMessage')
    DBProxy = Shapes::StructureShape.new(name: 'DBProxy')
    DBProxyAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBProxyAlreadyExistsFault', error: {"code" => "DBProxyAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBProxyEndpoint = Shapes::StructureShape.new(name: 'DBProxyEndpoint')
    DBProxyEndpointAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBProxyEndpointAlreadyExistsFault', error: {"code" => "DBProxyEndpointAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBProxyEndpointList = Shapes::ListShape.new(name: 'DBProxyEndpointList')
    DBProxyEndpointName = Shapes::StringShape.new(name: 'DBProxyEndpointName')
    DBProxyEndpointNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyEndpointNotFoundFault', error: {"code" => "DBProxyEndpointNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBProxyEndpointQuotaExceededFault = Shapes::StructureShape.new(name: 'DBProxyEndpointQuotaExceededFault', error: {"code" => "DBProxyEndpointQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    DBProxyEndpointStatus = Shapes::StringShape.new(name: 'DBProxyEndpointStatus')
    DBProxyEndpointTargetRole = Shapes::StringShape.new(name: 'DBProxyEndpointTargetRole')
    DBProxyList = Shapes::ListShape.new(name: 'DBProxyList')
    DBProxyName = Shapes::StringShape.new(name: 'DBProxyName')
    DBProxyNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyNotFoundFault', error: {"code" => "DBProxyNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBProxyQuotaExceededFault = Shapes::StructureShape.new(name: 'DBProxyQuotaExceededFault', error: {"code" => "DBProxyQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    DBProxyStatus = Shapes::StringShape.new(name: 'DBProxyStatus')
    DBProxyTarget = Shapes::StructureShape.new(name: 'DBProxyTarget')
    DBProxyTargetAlreadyRegisteredFault = Shapes::StructureShape.new(name: 'DBProxyTargetAlreadyRegisteredFault', error: {"code" => "DBProxyTargetAlreadyRegisteredFault", "httpStatusCode" => 400, "senderFault" => true})
    DBProxyTargetGroup = Shapes::StructureShape.new(name: 'DBProxyTargetGroup')
    DBProxyTargetGroupName = Shapes::StringShape.new(name: 'DBProxyTargetGroupName')
    DBProxyTargetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyTargetGroupNotFoundFault', error: {"code" => "DBProxyTargetGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBProxyTargetNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyTargetNotFoundFault', error: {"code" => "DBProxyTargetNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBRecommendation = Shapes::StructureShape.new(name: 'DBRecommendation')
    DBRecommendationList = Shapes::ListShape.new(name: 'DBRecommendationList')
    DBRecommendationMessage = Shapes::StructureShape.new(name: 'DBRecommendationMessage')
    DBRecommendationsMessage = Shapes::StructureShape.new(name: 'DBRecommendationsMessage')
    DBSecurityGroup = Shapes::StructureShape.new(name: 'DBSecurityGroup')
    DBSecurityGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSecurityGroupAlreadyExistsFault', error: {"code" => "DBSecurityGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBSecurityGroupMembership = Shapes::StructureShape.new(name: 'DBSecurityGroupMembership')
    DBSecurityGroupMembershipList = Shapes::ListShape.new(name: 'DBSecurityGroupMembershipList')
    DBSecurityGroupMessage = Shapes::StructureShape.new(name: 'DBSecurityGroupMessage')
    DBSecurityGroupNameList = Shapes::ListShape.new(name: 'DBSecurityGroupNameList')
    DBSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotFoundFault', error: {"code" => "DBSecurityGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBSecurityGroupNotSupportedFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotSupportedFault', error: {"code" => "DBSecurityGroupNotSupported", "httpStatusCode" => 400, "senderFault" => true})
    DBSecurityGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSecurityGroupQuotaExceededFault', error: {"code" => "QuotaExceeded.DBSecurityGroup", "httpStatusCode" => 400, "senderFault" => true})
    DBSecurityGroups = Shapes::ListShape.new(name: 'DBSecurityGroups')
    DBShardGroup = Shapes::StructureShape.new(name: 'DBShardGroup')
    DBShardGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBShardGroupAlreadyExistsFault', error: {"code" => "DBShardGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBShardGroupIdentifier = Shapes::StringShape.new(name: 'DBShardGroupIdentifier')
    DBShardGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBShardGroupNotFoundFault', error: {"code" => "DBShardGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBShardGroupsList = Shapes::ListShape.new(name: 'DBShardGroupsList')
    DBSnapshot = Shapes::StructureShape.new(name: 'DBSnapshot')
    DBSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSnapshotAlreadyExistsFault', error: {"code" => "DBSnapshotAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBSnapshotAttribute = Shapes::StructureShape.new(name: 'DBSnapshotAttribute')
    DBSnapshotAttributeList = Shapes::ListShape.new(name: 'DBSnapshotAttributeList')
    DBSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBSnapshotAttributesResult')
    DBSnapshotList = Shapes::ListShape.new(name: 'DBSnapshotList')
    DBSnapshotMessage = Shapes::StructureShape.new(name: 'DBSnapshotMessage')
    DBSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBSnapshotNotFoundFault', error: {"code" => "DBSnapshotNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBSnapshotTenantDatabase = Shapes::StructureShape.new(name: 'DBSnapshotTenantDatabase')
    DBSnapshotTenantDatabaseNotFoundFault = Shapes::StructureShape.new(name: 'DBSnapshotTenantDatabaseNotFoundFault', error: {"code" => "DBSnapshotTenantDatabaseNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBSnapshotTenantDatabasesList = Shapes::ListShape.new(name: 'DBSnapshotTenantDatabasesList')
    DBSnapshotTenantDatabasesMessage = Shapes::StructureShape.new(name: 'DBSnapshotTenantDatabasesMessage')
    DBSubnetGroup = Shapes::StructureShape.new(name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSubnetGroupAlreadyExistsFault', error: {"code" => "DBSubnetGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'DBSubnetGroupDoesNotCoverEnoughAZs', error: {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotAllowedFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotAllowedFault', error: {"code" => "DBSubnetGroupNotAllowedFault", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotFoundFault', error: {"code" => "DBSubnetGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetGroupQuotaExceededFault', error: {"code" => "DBSubnetGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroups = Shapes::ListShape.new(name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetQuotaExceededFault', error: {"code" => "DBSubnetQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    DBUpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'DBUpgradeDependencyFailureFault', error: {"code" => "DBUpgradeDependencyFailure", "httpStatusCode" => 400, "senderFault" => true})
    DataFilter = Shapes::StringShape.new(name: 'DataFilter')
    DatabaseArn = Shapes::StringShape.new(name: 'DatabaseArn')
    DatabaseInsightsMode = Shapes::StringShape.new(name: 'DatabaseInsightsMode')
    DefaultAuthScheme = Shapes::StringShape.new(name: 'DefaultAuthScheme')
    DeleteBlueGreenDeploymentRequest = Shapes::StructureShape.new(name: 'DeleteBlueGreenDeploymentRequest')
    DeleteBlueGreenDeploymentResponse = Shapes::StructureShape.new(name: 'DeleteBlueGreenDeploymentResponse')
    DeleteCustomDBEngineVersionMessage = Shapes::StructureShape.new(name: 'DeleteCustomDBEngineVersionMessage')
    DeleteDBClusterAutomatedBackupMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterAutomatedBackupMessage')
    DeleteDBClusterAutomatedBackupResult = Shapes::StructureShape.new(name: 'DeleteDBClusterAutomatedBackupResult')
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
    DeleteDBProxyEndpointRequest = Shapes::StructureShape.new(name: 'DeleteDBProxyEndpointRequest')
    DeleteDBProxyEndpointResponse = Shapes::StructureShape.new(name: 'DeleteDBProxyEndpointResponse')
    DeleteDBProxyRequest = Shapes::StructureShape.new(name: 'DeleteDBProxyRequest')
    DeleteDBProxyResponse = Shapes::StructureShape.new(name: 'DeleteDBProxyResponse')
    DeleteDBSecurityGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSecurityGroupMessage')
    DeleteDBShardGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBShardGroupMessage')
    DeleteDBSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteDBSnapshotMessage')
    DeleteDBSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDBSnapshotResult')
    DeleteDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = Shapes::StructureShape.new(name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = Shapes::StructureShape.new(name: 'DeleteGlobalClusterResult')
    DeleteIntegrationMessage = Shapes::StructureShape.new(name: 'DeleteIntegrationMessage')
    DeleteOptionGroupMessage = Shapes::StructureShape.new(name: 'DeleteOptionGroupMessage')
    DeleteTenantDatabaseMessage = Shapes::StructureShape.new(name: 'DeleteTenantDatabaseMessage')
    DeleteTenantDatabaseResult = Shapes::StructureShape.new(name: 'DeleteTenantDatabaseResult')
    DeregisterDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'DeregisterDBProxyTargetsRequest')
    DeregisterDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'DeregisterDBProxyTargetsResponse')
    DescribeAccountAttributesMessage = Shapes::StructureShape.new(name: 'DescribeAccountAttributesMessage')
    DescribeBlueGreenDeploymentsRequest = Shapes::StructureShape.new(name: 'DescribeBlueGreenDeploymentsRequest')
    DescribeBlueGreenDeploymentsResponse = Shapes::StructureShape.new(name: 'DescribeBlueGreenDeploymentsResponse')
    DescribeCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeCertificatesMessage')
    DescribeDBClusterAutomatedBackupsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterAutomatedBackupsMessage')
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
    DescribeDBMajorEngineVersionsRequest = Shapes::StructureShape.new(name: 'DescribeDBMajorEngineVersionsRequest')
    DescribeDBMajorEngineVersionsResponse = Shapes::StructureShape.new(name: 'DescribeDBMajorEngineVersionsResponse')
    DescribeDBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBParameterGroupsMessage')
    DescribeDBParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBParametersMessage')
    DescribeDBProxiesRequest = Shapes::StructureShape.new(name: 'DescribeDBProxiesRequest')
    DescribeDBProxiesResponse = Shapes::StructureShape.new(name: 'DescribeDBProxiesResponse')
    DescribeDBProxyEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeDBProxyEndpointsRequest')
    DescribeDBProxyEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeDBProxyEndpointsResponse')
    DescribeDBProxyTargetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetGroupsRequest')
    DescribeDBProxyTargetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetGroupsResponse')
    DescribeDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetsRequest')
    DescribeDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetsResponse')
    DescribeDBRecommendationsMessage = Shapes::StructureShape.new(name: 'DescribeDBRecommendationsMessage')
    DescribeDBSecurityGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBSecurityGroupsMessage')
    DescribeDBShardGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBShardGroupsMessage')
    DescribeDBShardGroupsResponse = Shapes::StructureShape.new(name: 'DescribeDBShardGroupsResponse')
    DescribeDBSnapshotAttributesMessage = Shapes::StructureShape.new(name: 'DescribeDBSnapshotAttributesMessage')
    DescribeDBSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DescribeDBSnapshotAttributesResult')
    DescribeDBSnapshotTenantDatabasesMessage = Shapes::StructureShape.new(name: 'DescribeDBSnapshotTenantDatabasesMessage')
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
    DescribeIntegrationsMessage = Shapes::StructureShape.new(name: 'DescribeIntegrationsMessage')
    DescribeIntegrationsResponse = Shapes::StructureShape.new(name: 'DescribeIntegrationsResponse')
    DescribeOptionGroupOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOptionGroupOptionsMessage')
    DescribeOptionGroupsMessage = Shapes::StructureShape.new(name: 'DescribeOptionGroupsMessage')
    DescribeOrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsMessage')
    DescribeReservedDBInstancesMessage = Shapes::StructureShape.new(name: 'DescribeReservedDBInstancesMessage')
    DescribeReservedDBInstancesOfferingsMessage = Shapes::StructureShape.new(name: 'DescribeReservedDBInstancesOfferingsMessage')
    DescribeSourceRegionsMessage = Shapes::StructureShape.new(name: 'DescribeSourceRegionsMessage')
    DescribeTenantDatabasesMessage = Shapes::StructureShape.new(name: 'DescribeTenantDatabasesMessage')
    DescribeValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsMessage')
    DescribeValidDBInstanceModificationsResult = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DisableHttpEndpointRequest = Shapes::StructureShape.new(name: 'DisableHttpEndpointRequest')
    DisableHttpEndpointResponse = Shapes::StructureShape.new(name: 'DisableHttpEndpointResponse')
    DocLink = Shapes::StructureShape.new(name: 'DocLink')
    DocLinkList = Shapes::ListShape.new(name: 'DocLinkList')
    DomainMembership = Shapes::StructureShape.new(name: 'DomainMembership')
    DomainMembershipList = Shapes::ListShape.new(name: 'DomainMembershipList')
    DomainNotFoundFault = Shapes::StructureShape.new(name: 'DomainNotFoundFault', error: {"code" => "DomainNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleOptional = Shapes::FloatShape.new(name: 'DoubleOptional')
    DoubleRange = Shapes::StructureShape.new(name: 'DoubleRange')
    DoubleRangeList = Shapes::ListShape.new(name: 'DoubleRangeList')
    DownloadDBLogFilePortionDetails = Shapes::StructureShape.new(name: 'DownloadDBLogFilePortionDetails')
    DownloadDBLogFilePortionMessage = Shapes::StructureShape.new(name: 'DownloadDBLogFilePortionMessage')
    EC2SecurityGroup = Shapes::StructureShape.new(name: 'EC2SecurityGroup')
    EC2SecurityGroupList = Shapes::ListShape.new(name: 'EC2SecurityGroupList')
    Ec2ImagePropertiesNotSupportedFault = Shapes::StructureShape.new(name: 'Ec2ImagePropertiesNotSupportedFault', error: {"code" => "Ec2ImagePropertiesNotSupportedFault", "httpStatusCode" => 400, "senderFault" => true})
    EnableHttpEndpointRequest = Shapes::StructureShape.new(name: 'EnableHttpEndpointRequest')
    EnableHttpEndpointResponse = Shapes::StructureShape.new(name: 'EnableHttpEndpointResponse')
    EncryptionContextMap = Shapes::MapShape.new(name: 'EncryptionContextMap')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointNetworkType = Shapes::StringShape.new(name: 'EndpointNetworkType')
    Engine = Shapes::StringShape.new(name: 'Engine')
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
    EventSubscriptionQuotaExceededFault = Shapes::StructureShape.new(name: 'EventSubscriptionQuotaExceededFault', error: {"code" => "EventSubscriptionQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = Shapes::StructureShape.new(name: 'EventSubscriptionsMessage')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    ExportSourceType = Shapes::StringShape.new(name: 'ExportSourceType')
    ExportTask = Shapes::StructureShape.new(name: 'ExportTask')
    ExportTaskAlreadyExistsFault = Shapes::StructureShape.new(name: 'ExportTaskAlreadyExistsFault', error: {"code" => "ExportTaskAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    ExportTaskNotFoundFault = Shapes::StructureShape.new(name: 'ExportTaskNotFoundFault', error: {"code" => "ExportTaskNotFound", "httpStatusCode" => 404, "senderFault" => true})
    ExportTasksList = Shapes::ListShape.new(name: 'ExportTasksList')
    ExportTasksMessage = Shapes::StructureShape.new(name: 'ExportTasksMessage')
    FailoverDBClusterMessage = Shapes::StructureShape.new(name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = Shapes::StructureShape.new(name: 'FailoverDBClusterResult')
    FailoverGlobalClusterMessage = Shapes::StructureShape.new(name: 'FailoverGlobalClusterMessage')
    FailoverGlobalClusterResult = Shapes::StructureShape.new(name: 'FailoverGlobalClusterResult')
    FailoverState = Shapes::StructureShape.new(name: 'FailoverState')
    FailoverStatus = Shapes::StringShape.new(name: 'FailoverStatus')
    FeatureNameList = Shapes::ListShape.new(name: 'FeatureNameList')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GlobalCluster = Shapes::StructureShape.new(name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'GlobalClusterAlreadyExistsFault', error: {"code" => "GlobalClusterAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    GlobalClusterIdentifier = Shapes::StringShape.new(name: 'GlobalClusterIdentifier')
    GlobalClusterList = Shapes::ListShape.new(name: 'GlobalClusterList')
    GlobalClusterMember = Shapes::StructureShape.new(name: 'GlobalClusterMember')
    GlobalClusterMemberList = Shapes::ListShape.new(name: 'GlobalClusterMemberList')
    GlobalClusterMemberSynchronizationStatus = Shapes::StringShape.new(name: 'GlobalClusterMemberSynchronizationStatus')
    GlobalClusterNotFoundFault = Shapes::StructureShape.new(name: 'GlobalClusterNotFoundFault', error: {"code" => "GlobalClusterNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    GlobalClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'GlobalClusterQuotaExceededFault', error: {"code" => "GlobalClusterQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    GlobalClustersMessage = Shapes::StructureShape.new(name: 'GlobalClustersMessage')
    IAMAuthMode = Shapes::StringShape.new(name: 'IAMAuthMode')
    IPRange = Shapes::StructureShape.new(name: 'IPRange')
    IPRangeList = Shapes::ListShape.new(name: 'IPRangeList')
    IamRoleMissingPermissionsFault = Shapes::StructureShape.new(name: 'IamRoleMissingPermissionsFault', error: {"code" => "IamRoleMissingPermissions", "httpStatusCode" => 400, "senderFault" => true})
    IamRoleNotFoundFault = Shapes::StructureShape.new(name: 'IamRoleNotFoundFault', error: {"code" => "IamRoleNotFound", "httpStatusCode" => 404, "senderFault" => true})
    InstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'InstanceQuotaExceededFault', error: {"code" => "InstanceQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientAvailableIPsInSubnetFault = Shapes::StructureShape.new(name: 'InsufficientAvailableIPsInSubnetFault', error: {"code" => "InsufficientAvailableIPsInSubnetFault", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBClusterCapacityFault', error: {"code" => "InsufficientDBClusterCapacityFault", "httpStatusCode" => 403, "senderFault" => true})
    InsufficientDBInstanceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBInstanceCapacityFault', error: {"code" => "InsufficientDBInstanceCapacity", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientStorageClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientStorageClusterCapacityFault', error: {"code" => "InsufficientStorageClusterCapacity", "httpStatusCode" => 400, "senderFault" => true})
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    Integration = Shapes::StructureShape.new(name: 'Integration')
    IntegrationAlreadyExistsFault = Shapes::StructureShape.new(name: 'IntegrationAlreadyExistsFault', error: {"code" => "IntegrationAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    IntegrationArn = Shapes::StringShape.new(name: 'IntegrationArn')
    IntegrationConflictOperationFault = Shapes::StructureShape.new(name: 'IntegrationConflictOperationFault', error: {"code" => "IntegrationConflictOperationFault", "httpStatusCode" => 400, "senderFault" => true})
    IntegrationDescription = Shapes::StringShape.new(name: 'IntegrationDescription')
    IntegrationError = Shapes::StructureShape.new(name: 'IntegrationError')
    IntegrationErrorList = Shapes::ListShape.new(name: 'IntegrationErrorList')
    IntegrationIdentifier = Shapes::StringShape.new(name: 'IntegrationIdentifier')
    IntegrationList = Shapes::ListShape.new(name: 'IntegrationList')
    IntegrationName = Shapes::StringShape.new(name: 'IntegrationName')
    IntegrationNotFoundFault = Shapes::StructureShape.new(name: 'IntegrationNotFoundFault', error: {"code" => "IntegrationNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    IntegrationQuotaExceededFault = Shapes::StructureShape.new(name: 'IntegrationQuotaExceededFault', error: {"code" => "IntegrationQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    InvalidBlueGreenDeploymentStateFault = Shapes::StructureShape.new(name: 'InvalidBlueGreenDeploymentStateFault', error: {"code" => "InvalidBlueGreenDeploymentStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidCustomDBEngineVersionStateFault = Shapes::StructureShape.new(name: 'InvalidCustomDBEngineVersionStateFault', error: {"code" => "InvalidCustomDBEngineVersionStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterAutomatedBackupStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterAutomatedBackupStateFault', error: {"code" => "InvalidDBClusterAutomatedBackupStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InvalidDBClusterCapacityFault', error: {"code" => "InvalidDBClusterCapacityFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterEndpointStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterEndpointStateFault', error: {"code" => "InvalidDBClusterEndpointStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterSnapshotStateFault', error: {"code" => "InvalidDBClusterSnapshotStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterStateFault', error: {"code" => "InvalidDBClusterStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBInstanceAutomatedBackupStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceAutomatedBackupStateFault', error: {"code" => "InvalidDBInstanceAutomatedBackupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBInstanceStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceStateFault', error: {"code" => "InvalidDBInstanceState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBParameterGroupStateFault', error: {"code" => "InvalidDBParameterGroupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBProxyEndpointStateFault = Shapes::StructureShape.new(name: 'InvalidDBProxyEndpointStateFault', error: {"code" => "InvalidDBProxyEndpointStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBProxyStateFault = Shapes::StructureShape.new(name: 'InvalidDBProxyStateFault', error: {"code" => "InvalidDBProxyStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSecurityGroupStateFault', error: {"code" => "InvalidDBSecurityGroupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBShardGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBShardGroupStateFault', error: {"code" => "InvalidDBShardGroupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBSnapshotStateFault', error: {"code" => "InvalidDBSnapshotState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSubnetGroupFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupFault', error: {"code" => "InvalidDBSubnetGroupFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupStateFault', error: {"code" => "InvalidDBSubnetGroupStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetStateFault', error: {"code" => "InvalidDBSubnetStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidEventSubscriptionStateFault = Shapes::StructureShape.new(name: 'InvalidEventSubscriptionStateFault', error: {"code" => "InvalidEventSubscriptionState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidExportOnlyFault = Shapes::StructureShape.new(name: 'InvalidExportOnlyFault', error: {"code" => "InvalidExportOnly", "httpStatusCode" => 400, "senderFault" => true})
    InvalidExportSourceStateFault = Shapes::StructureShape.new(name: 'InvalidExportSourceStateFault', error: {"code" => "InvalidExportSourceState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidExportTaskStateFault = Shapes::StructureShape.new(name: 'InvalidExportTaskStateFault', error: {"code" => "InvalidExportTaskStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidGlobalClusterStateFault = Shapes::StructureShape.new(name: 'InvalidGlobalClusterStateFault', error: {"code" => "InvalidGlobalClusterStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidIntegrationStateFault = Shapes::StructureShape.new(name: 'InvalidIntegrationStateFault', error: {"code" => "InvalidIntegrationStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidOptionGroupStateFault = Shapes::StructureShape.new(name: 'InvalidOptionGroupStateFault', error: {"code" => "InvalidOptionGroupStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidResourceStateFault = Shapes::StructureShape.new(name: 'InvalidResourceStateFault', error: {"code" => "InvalidResourceStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault', error: {"code" => "InvalidRestoreFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidS3BucketFault = Shapes::StructureShape.new(name: 'InvalidS3BucketFault', error: {"code" => "InvalidS3BucketFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet', error: {"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true})
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault', error: {"code" => "InvalidVPCNetworkStateFault", "httpStatusCode" => 400, "senderFault" => true})
    IssueDetails = Shapes::StructureShape.new(name: 'IssueDetails')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault', error: {"code" => "KMSKeyNotAccessibleFault", "httpStatusCode" => 400, "senderFault" => true})
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KmsKeyIdOrArn = Shapes::StringShape.new(name: 'KmsKeyIdOrArn')
    LifecycleSupportName = Shapes::StringShape.new(name: 'LifecycleSupportName')
    LimitlessDatabase = Shapes::StructureShape.new(name: 'LimitlessDatabase')
    LimitlessDatabaseStatus = Shapes::StringShape.new(name: 'LimitlessDatabaseStatus')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    LocalWriteForwardingStatus = Shapes::StringShape.new(name: 'LocalWriteForwardingStatus')
    LogTypeList = Shapes::ListShape.new(name: 'LogTypeList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    MajorEngineVersion = Shapes::StringShape.new(name: 'MajorEngineVersion')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MasterUserAuthenticationType = Shapes::StringShape.new(name: 'MasterUserAuthenticationType')
    MasterUserSecret = Shapes::StructureShape.new(name: 'MasterUserSecret')
    MaxDBShardGroupLimitReached = Shapes::StructureShape.new(name: 'MaxDBShardGroupLimitReached', error: {"code" => "MaxDBShardGroupLimitReached", "httpStatusCode" => 400, "senderFault" => true})
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricList = Shapes::ListShape.new(name: 'MetricList')
    MetricQuery = Shapes::StructureShape.new(name: 'MetricQuery')
    MetricReference = Shapes::StructureShape.new(name: 'MetricReference')
    MetricReferenceList = Shapes::ListShape.new(name: 'MetricReferenceList')
    MinimumEngineVersionPerAllowedValue = Shapes::StructureShape.new(name: 'MinimumEngineVersionPerAllowedValue')
    MinimumEngineVersionPerAllowedValueList = Shapes::ListShape.new(name: 'MinimumEngineVersionPerAllowedValueList')
    ModifyActivityStreamRequest = Shapes::StructureShape.new(name: 'ModifyActivityStreamRequest')
    ModifyActivityStreamResponse = Shapes::StructureShape.new(name: 'ModifyActivityStreamResponse')
    ModifyAdditionalStorageVolume = Shapes::StructureShape.new(name: 'ModifyAdditionalStorageVolume')
    ModifyAdditionalStorageVolumesList = Shapes::ListShape.new(name: 'ModifyAdditionalStorageVolumesList')
    ModifyCertificatesMessage = Shapes::StructureShape.new(name: 'ModifyCertificatesMessage')
    ModifyCertificatesResult = Shapes::StructureShape.new(name: 'ModifyCertificatesResult')
    ModifyCurrentDBClusterCapacityMessage = Shapes::StructureShape.new(name: 'ModifyCurrentDBClusterCapacityMessage')
    ModifyCustomDBEngineVersionMessage = Shapes::StructureShape.new(name: 'ModifyCustomDBEngineVersionMessage')
    ModifyDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterEndpointMessage')
    ModifyDBClusterMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterResult = Shapes::StructureShape.new(name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = Shapes::StructureShape.new(name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = Shapes::StructureShape.new(name: 'ModifyDBInstanceResult')
    ModifyDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBParameterGroupMessage')
    ModifyDBProxyEndpointRequest = Shapes::StructureShape.new(name: 'ModifyDBProxyEndpointRequest')
    ModifyDBProxyEndpointResponse = Shapes::StructureShape.new(name: 'ModifyDBProxyEndpointResponse')
    ModifyDBProxyRequest = Shapes::StructureShape.new(name: 'ModifyDBProxyRequest')
    ModifyDBProxyResponse = Shapes::StructureShape.new(name: 'ModifyDBProxyResponse')
    ModifyDBProxyTargetGroupRequest = Shapes::StructureShape.new(name: 'ModifyDBProxyTargetGroupRequest')
    ModifyDBProxyTargetGroupResponse = Shapes::StructureShape.new(name: 'ModifyDBProxyTargetGroupResponse')
    ModifyDBRecommendationMessage = Shapes::StructureShape.new(name: 'ModifyDBRecommendationMessage')
    ModifyDBShardGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBShardGroupMessage')
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
    ModifyIntegrationMessage = Shapes::StructureShape.new(name: 'ModifyIntegrationMessage')
    ModifyOptionGroupMessage = Shapes::StructureShape.new(name: 'ModifyOptionGroupMessage')
    ModifyOptionGroupResult = Shapes::StructureShape.new(name: 'ModifyOptionGroupResult')
    ModifyTenantDatabaseMessage = Shapes::StructureShape.new(name: 'ModifyTenantDatabaseMessage')
    ModifyTenantDatabaseResult = Shapes::StructureShape.new(name: 'ModifyTenantDatabaseResult')
    NetworkTypeNotSupported = Shapes::StructureShape.new(name: 'NetworkTypeNotSupported', error: {"code" => "NetworkTypeNotSupported", "httpStatusCode" => 400, "senderFault" => true})
    Option = Shapes::StructureShape.new(name: 'Option')
    OptionConfiguration = Shapes::StructureShape.new(name: 'OptionConfiguration')
    OptionConfigurationList = Shapes::ListShape.new(name: 'OptionConfigurationList')
    OptionGroup = Shapes::StructureShape.new(name: 'OptionGroup')
    OptionGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'OptionGroupAlreadyExistsFault', error: {"code" => "OptionGroupAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    OptionGroupMembership = Shapes::StructureShape.new(name: 'OptionGroupMembership')
    OptionGroupMembershipList = Shapes::ListShape.new(name: 'OptionGroupMembershipList')
    OptionGroupNotFoundFault = Shapes::StructureShape.new(name: 'OptionGroupNotFoundFault', error: {"code" => "OptionGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    OptionGroupOption = Shapes::StructureShape.new(name: 'OptionGroupOption')
    OptionGroupOptionSetting = Shapes::StructureShape.new(name: 'OptionGroupOptionSetting')
    OptionGroupOptionSettingsList = Shapes::ListShape.new(name: 'OptionGroupOptionSettingsList')
    OptionGroupOptionVersionsList = Shapes::ListShape.new(name: 'OptionGroupOptionVersionsList')
    OptionGroupOptionsList = Shapes::ListShape.new(name: 'OptionGroupOptionsList')
    OptionGroupOptionsMessage = Shapes::StructureShape.new(name: 'OptionGroupOptionsMessage')
    OptionGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'OptionGroupQuotaExceededFault', error: {"code" => "OptionGroupQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
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
    Outpost = Shapes::StructureShape.new(name: 'Outpost')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingCloudwatchLogsExports = Shapes::StructureShape.new(name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = Shapes::ListShape.new(name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = Shapes::ListShape.new(name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PerformanceInsightsMetricDimensionGroup = Shapes::StructureShape.new(name: 'PerformanceInsightsMetricDimensionGroup')
    PerformanceInsightsMetricQuery = Shapes::StructureShape.new(name: 'PerformanceInsightsMetricQuery')
    PerformanceIssueDetails = Shapes::StructureShape.new(name: 'PerformanceIssueDetails')
    PointInTimeRestoreNotEnabledFault = Shapes::StructureShape.new(name: 'PointInTimeRestoreNotEnabledFault', error: {"code" => "PointInTimeRestoreNotEnabled", "httpStatusCode" => 400, "senderFault" => true})
    PotentiallySensitiveOptionSettingValue = Shapes::StringShape.new(name: 'PotentiallySensitiveOptionSettingValue')
    PotentiallySensitiveParameterValue = Shapes::StringShape.new(name: 'PotentiallySensitiveParameterValue')
    ProcessorFeature = Shapes::StructureShape.new(name: 'ProcessorFeature')
    ProcessorFeatureList = Shapes::ListShape.new(name: 'ProcessorFeatureList')
    PromoteReadReplicaDBClusterMessage = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterMessage')
    PromoteReadReplicaDBClusterResult = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterResult')
    PromoteReadReplicaMessage = Shapes::StructureShape.new(name: 'PromoteReadReplicaMessage')
    PromoteReadReplicaResult = Shapes::StructureShape.new(name: 'PromoteReadReplicaResult')
    ProvisionedIopsNotAvailableInAZFault = Shapes::StructureShape.new(name: 'ProvisionedIopsNotAvailableInAZFault', error: {"code" => "ProvisionedIopsNotAvailableInAZFault", "httpStatusCode" => 400, "senderFault" => true})
    PurchaseReservedDBInstancesOfferingMessage = Shapes::StructureShape.new(name: 'PurchaseReservedDBInstancesOfferingMessage')
    PurchaseReservedDBInstancesOfferingResult = Shapes::StructureShape.new(name: 'PurchaseReservedDBInstancesOfferingResult')
    Range = Shapes::StructureShape.new(name: 'Range')
    RangeList = Shapes::ListShape.new(name: 'RangeList')
    RdsCustomClusterConfiguration = Shapes::StructureShape.new(name: 'RdsCustomClusterConfiguration')
    ReadReplicaDBClusterIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBClusterIdentifierList')
    ReadReplicaDBInstanceIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBInstanceIdentifierList')
    ReadReplicaIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaIdentifierList')
    ReadersArnList = Shapes::ListShape.new(name: 'ReadersArnList')
    RebootDBClusterMessage = Shapes::StructureShape.new(name: 'RebootDBClusterMessage')
    RebootDBClusterResult = Shapes::StructureShape.new(name: 'RebootDBClusterResult')
    RebootDBInstanceMessage = Shapes::StructureShape.new(name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = Shapes::StructureShape.new(name: 'RebootDBInstanceResult')
    RebootDBShardGroupMessage = Shapes::StructureShape.new(name: 'RebootDBShardGroupMessage')
    RecommendedAction = Shapes::StructureShape.new(name: 'RecommendedAction')
    RecommendedActionList = Shapes::ListShape.new(name: 'RecommendedActionList')
    RecommendedActionParameter = Shapes::StructureShape.new(name: 'RecommendedActionParameter')
    RecommendedActionParameterList = Shapes::ListShape.new(name: 'RecommendedActionParameterList')
    RecommendedActionUpdate = Shapes::StructureShape.new(name: 'RecommendedActionUpdate')
    RecommendedActionUpdateList = Shapes::ListShape.new(name: 'RecommendedActionUpdateList')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReferenceDetails = Shapes::StructureShape.new(name: 'ReferenceDetails')
    RegisterDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'RegisterDBProxyTargetsRequest')
    RegisterDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'RegisterDBProxyTargetsResponse')
    RemoveFromGlobalClusterMessage = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterResult')
    RemoveRoleFromDBClusterMessage = Shapes::StructureShape.new(name: 'RemoveRoleFromDBClusterMessage')
    RemoveRoleFromDBInstanceMessage = Shapes::StructureShape.new(name: 'RemoveRoleFromDBInstanceMessage')
    RemoveSourceIdentifierFromSubscriptionMessage = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    ReplicaMode = Shapes::StringShape.new(name: 'ReplicaMode')
    ReservedDBInstance = Shapes::StructureShape.new(name: 'ReservedDBInstance')
    ReservedDBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceAlreadyExistsFault', error: {"code" => "ReservedDBInstanceAlreadyExists", "httpStatusCode" => 404, "senderFault" => true})
    ReservedDBInstanceList = Shapes::ListShape.new(name: 'ReservedDBInstanceList')
    ReservedDBInstanceMessage = Shapes::StructureShape.new(name: 'ReservedDBInstanceMessage')
    ReservedDBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceNotFoundFault', error: {"code" => "ReservedDBInstanceNotFound", "httpStatusCode" => 404, "senderFault" => true})
    ReservedDBInstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceQuotaExceededFault', error: {"code" => "ReservedDBInstanceQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    ReservedDBInstancesOffering = Shapes::StructureShape.new(name: 'ReservedDBInstancesOffering')
    ReservedDBInstancesOfferingList = Shapes::ListShape.new(name: 'ReservedDBInstancesOfferingList')
    ReservedDBInstancesOfferingMessage = Shapes::StructureShape.new(name: 'ReservedDBInstancesOfferingMessage')
    ReservedDBInstancesOfferingNotFoundFault = Shapes::StructureShape.new(name: 'ReservedDBInstancesOfferingNotFoundFault', error: {"code" => "ReservedDBInstancesOfferingNotFound", "httpStatusCode" => 404, "senderFault" => true})
    ResetDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBClusterParameterGroupMessage')
    ResetDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBParameterGroupMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault', error: {"code" => "ResourceNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
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
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault', error: {"code" => "SNSInvalidTopic", "httpStatusCode" => 400, "senderFault" => true})
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault', error: {"code" => "SNSNoAuthorization", "httpStatusCode" => 400, "senderFault" => true})
    SNSTopicArnNotFoundFault = Shapes::StructureShape.new(name: 'SNSTopicArnNotFoundFault', error: {"code" => "SNSTopicArnNotFound", "httpStatusCode" => 404, "senderFault" => true})
    ScalarReferenceDetails = Shapes::StructureShape.new(name: 'ScalarReferenceDetails')
    ScalingConfiguration = Shapes::StructureShape.new(name: 'ScalingConfiguration')
    ScalingConfigurationInfo = Shapes::StructureShape.new(name: 'ScalingConfigurationInfo')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServerlessV2FeaturesSupport = Shapes::StructureShape.new(name: 'ServerlessV2FeaturesSupport')
    ServerlessV2ScalingConfiguration = Shapes::StructureShape.new(name: 'ServerlessV2ScalingConfiguration')
    ServerlessV2ScalingConfigurationInfo = Shapes::StructureShape.new(name: 'ServerlessV2ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SharedSnapshotQuotaExceededFault', error: {"code" => "SharedSnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault', error: {"code" => "SnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    SourceArn = Shapes::StringShape.new(name: 'SourceArn')
    SourceClusterNotSupportedFault = Shapes::StructureShape.new(name: 'SourceClusterNotSupportedFault', error: {"code" => "SourceClusterNotSupportedFault", "httpStatusCode" => 400, "senderFault" => true})
    SourceDatabaseNotSupportedFault = Shapes::StructureShape.new(name: 'SourceDatabaseNotSupportedFault', error: {"code" => "SourceDatabaseNotSupportedFault", "httpStatusCode" => 400, "senderFault" => true})
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceNotFoundFault = Shapes::StructureShape.new(name: 'SourceNotFoundFault', error: {"code" => "SourceNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SourceRegion = Shapes::StructureShape.new(name: 'SourceRegion')
    SourceRegionList = Shapes::ListShape.new(name: 'SourceRegionList')
    SourceRegionMessage = Shapes::StructureShape.new(name: 'SourceRegionMessage')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartActivityStreamRequest = Shapes::StructureShape.new(name: 'StartActivityStreamRequest')
    StartActivityStreamResponse = Shapes::StructureShape.new(name: 'StartActivityStreamResponse')
    StartDBClusterMessage = Shapes::StructureShape.new(name: 'StartDBClusterMessage')
    StartDBClusterResult = Shapes::StructureShape.new(name: 'StartDBClusterResult')
    StartDBInstanceAutomatedBackupsReplicationMessage = Shapes::StructureShape.new(name: 'StartDBInstanceAutomatedBackupsReplicationMessage')
    StartDBInstanceAutomatedBackupsReplicationResult = Shapes::StructureShape.new(name: 'StartDBInstanceAutomatedBackupsReplicationResult')
    StartDBInstanceMessage = Shapes::StructureShape.new(name: 'StartDBInstanceMessage')
    StartDBInstanceResult = Shapes::StructureShape.new(name: 'StartDBInstanceResult')
    StartExportTaskMessage = Shapes::StructureShape.new(name: 'StartExportTaskMessage')
    StopActivityStreamRequest = Shapes::StructureShape.new(name: 'StopActivityStreamRequest')
    StopActivityStreamResponse = Shapes::StructureShape.new(name: 'StopActivityStreamResponse')
    StopDBClusterMessage = Shapes::StructureShape.new(name: 'StopDBClusterMessage')
    StopDBClusterResult = Shapes::StructureShape.new(name: 'StopDBClusterResult')
    StopDBInstanceAutomatedBackupsReplicationMessage = Shapes::StructureShape.new(name: 'StopDBInstanceAutomatedBackupsReplicationMessage')
    StopDBInstanceAutomatedBackupsReplicationResult = Shapes::StructureShape.new(name: 'StopDBInstanceAutomatedBackupsReplicationResult')
    StopDBInstanceMessage = Shapes::StructureShape.new(name: 'StopDBInstanceMessage')
    StopDBInstanceResult = Shapes::StructureShape.new(name: 'StopDBInstanceResult')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault', error: {"code" => "StorageQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    StorageTypeNotAvailableFault = Shapes::StructureShape.new(name: 'StorageTypeNotAvailableFault', error: {"code" => "StorageTypeNotAvailableFault", "httpStatusCode" => 400, "senderFault" => true})
    StorageTypeNotSupportedFault = Shapes::StructureShape.new(name: 'StorageTypeNotSupportedFault', error: {"code" => "StorageTypeNotSupported", "httpStatusCode" => 400, "senderFault" => true})
    String = Shapes::StringShape.new(name: 'String')
    String255 = Shapes::StringShape.new(name: 'String255')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse', error: {"code" => "SubnetAlreadyInUse", "httpStatusCode" => 400, "senderFault" => true})
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubscriptionAlreadyExistFault = Shapes::StructureShape.new(name: 'SubscriptionAlreadyExistFault', error: {"code" => "SubscriptionAlreadyExist", "httpStatusCode" => 400, "senderFault" => true})
    SubscriptionCategoryNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionCategoryNotFoundFault', error: {"code" => "SubscriptionCategoryNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SubscriptionNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionNotFoundFault', error: {"code" => "SubscriptionNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SupportedCharacterSetsList = Shapes::ListShape.new(name: 'SupportedCharacterSetsList')
    SupportedEngineLifecycle = Shapes::StructureShape.new(name: 'SupportedEngineLifecycle')
    SupportedEngineLifecycleList = Shapes::ListShape.new(name: 'SupportedEngineLifecycleList')
    SupportedTimezonesList = Shapes::ListShape.new(name: 'SupportedTimezonesList')
    SwitchoverBlueGreenDeploymentRequest = Shapes::StructureShape.new(name: 'SwitchoverBlueGreenDeploymentRequest')
    SwitchoverBlueGreenDeploymentResponse = Shapes::StructureShape.new(name: 'SwitchoverBlueGreenDeploymentResponse')
    SwitchoverDetail = Shapes::StructureShape.new(name: 'SwitchoverDetail')
    SwitchoverDetailList = Shapes::ListShape.new(name: 'SwitchoverDetailList')
    SwitchoverDetailStatus = Shapes::StringShape.new(name: 'SwitchoverDetailStatus')
    SwitchoverGlobalClusterMessage = Shapes::StructureShape.new(name: 'SwitchoverGlobalClusterMessage')
    SwitchoverGlobalClusterResult = Shapes::StructureShape.new(name: 'SwitchoverGlobalClusterResult')
    SwitchoverReadReplicaMessage = Shapes::StructureShape.new(name: 'SwitchoverReadReplicaMessage')
    SwitchoverReadReplicaResult = Shapes::StructureShape.new(name: 'SwitchoverReadReplicaResult')
    SwitchoverTimeout = Shapes::IntegerShape.new(name: 'SwitchoverTimeout')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagListMessage = Shapes::StructureShape.new(name: 'TagListMessage')
    TargetConnectionNetworkType = Shapes::StringShape.new(name: 'TargetConnectionNetworkType')
    TargetDBClusterParameterGroupName = Shapes::StringShape.new(name: 'TargetDBClusterParameterGroupName')
    TargetDBInstanceClass = Shapes::StringShape.new(name: 'TargetDBInstanceClass')
    TargetDBParameterGroupName = Shapes::StringShape.new(name: 'TargetDBParameterGroupName')
    TargetEngineVersion = Shapes::StringShape.new(name: 'TargetEngineVersion')
    TargetGroupList = Shapes::ListShape.new(name: 'TargetGroupList')
    TargetHealth = Shapes::StructureShape.new(name: 'TargetHealth')
    TargetHealthReason = Shapes::StringShape.new(name: 'TargetHealthReason')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetRole = Shapes::StringShape.new(name: 'TargetRole')
    TargetState = Shapes::StringShape.new(name: 'TargetState')
    TargetStorageType = Shapes::StringShape.new(name: 'TargetStorageType')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TenantDatabase = Shapes::StructureShape.new(name: 'TenantDatabase')
    TenantDatabaseAlreadyExistsFault = Shapes::StructureShape.new(name: 'TenantDatabaseAlreadyExistsFault', error: {"code" => "TenantDatabaseAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    TenantDatabaseNotFoundFault = Shapes::StructureShape.new(name: 'TenantDatabaseNotFoundFault', error: {"code" => "TenantDatabaseNotFound", "httpStatusCode" => 404, "senderFault" => true})
    TenantDatabasePendingModifiedValues = Shapes::StructureShape.new(name: 'TenantDatabasePendingModifiedValues')
    TenantDatabaseQuotaExceededFault = Shapes::StructureShape.new(name: 'TenantDatabaseQuotaExceededFault', error: {"code" => "TenantDatabaseQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    TenantDatabasesList = Shapes::ListShape.new(name: 'TenantDatabasesList')
    TenantDatabasesMessage = Shapes::StructureShape.new(name: 'TenantDatabasesMessage')
    Timezone = Shapes::StructureShape.new(name: 'Timezone')
    UnsupportedDBEngineVersionFault = Shapes::StructureShape.new(name: 'UnsupportedDBEngineVersionFault', error: {"code" => "UnsupportedDBEngineVersion", "httpStatusCode" => 400, "senderFault" => true})
    UpgradeRolloutOrder = Shapes::StringShape.new(name: 'UpgradeRolloutOrder')
    UpgradeTarget = Shapes::StructureShape.new(name: 'UpgradeTarget')
    UserAuthConfig = Shapes::StructureShape.new(name: 'UserAuthConfig')
    UserAuthConfigInfo = Shapes::StructureShape.new(name: 'UserAuthConfigInfo')
    UserAuthConfigInfoList = Shapes::ListShape.new(name: 'UserAuthConfigInfoList')
    UserAuthConfigList = Shapes::ListShape.new(name: 'UserAuthConfigList')
    ValidAdditionalStorageOptions = Shapes::StructureShape.new(name: 'ValidAdditionalStorageOptions')
    ValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'ValidDBInstanceModificationsMessage')
    ValidStorageOptions = Shapes::StructureShape.new(name: 'ValidStorageOptions')
    ValidStorageOptionsList = Shapes::ListShape.new(name: 'ValidStorageOptionsList')
    ValidUpgradeTargetList = Shapes::ListShape.new(name: 'ValidUpgradeTargetList')
    ValidVolumeOptions = Shapes::StructureShape.new(name: 'ValidVolumeOptions')
    ValidVolumeOptionsList = Shapes::ListShape.new(name: 'ValidVolumeOptionsList')
    VpcEncryptionControlViolationException = Shapes::StructureShape.new(name: 'VpcEncryptionControlViolationException', error: {"code" => "VpcEncryptionControlViolationException", "httpStatusCode" => 400, "senderFault" => true})
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')
    WriteForwardingStatus = Shapes::StringShape.new(name: 'WriteForwardingStatus')

    AccountAttributesMessage.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: "AccountQuotas"))
    AccountAttributesMessage.struct_class = Types::AccountAttributesMessage

    AccountQuota.add_member(:account_quota_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountQuotaName"))
    AccountQuota.add_member(:used, Shapes::ShapeRef.new(shape: Long, location_name: "Used"))
    AccountQuota.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    AccountQuota.struct_class = Types::AccountQuota

    AccountQuotaList.member = Shapes::ShapeRef.new(shape: AccountQuota, location_name: "AccountQuota")

    ActivityStreamModeList.member = Shapes::ShapeRef.new(shape: String)

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

    AdditionalStorageVolume.add_member(:volume_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeName"))
    AdditionalStorageVolume.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    AdditionalStorageVolume.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IOPS"))
    AdditionalStorageVolume.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    AdditionalStorageVolume.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    AdditionalStorageVolume.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    AdditionalStorageVolume.struct_class = Types::AdditionalStorageVolume

    AdditionalStorageVolumeOutput.add_member(:volume_name, Shapes::ShapeRef.new(shape: String, location_name: "VolumeName"))
    AdditionalStorageVolumeOutput.add_member(:storage_volume_status, Shapes::ShapeRef.new(shape: String, location_name: "StorageVolumeStatus"))
    AdditionalStorageVolumeOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    AdditionalStorageVolumeOutput.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IOPS"))
    AdditionalStorageVolumeOutput.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    AdditionalStorageVolumeOutput.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    AdditionalStorageVolumeOutput.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    AdditionalStorageVolumeOutput.struct_class = Types::AdditionalStorageVolumeOutput

    AdditionalStorageVolumesList.member = Shapes::ShapeRef.new(shape: AdditionalStorageVolume)

    AdditionalStorageVolumesOutputList.member = Shapes::ShapeRef.new(shape: AdditionalStorageVolumeOutput)

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

    AvailableAdditionalStorageVolumesOption.add_member(:supports_storage_autoscaling, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageAutoscaling"))
    AvailableAdditionalStorageVolumesOption.add_member(:supports_storage_throughput, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageThroughput"))
    AvailableAdditionalStorageVolumesOption.add_member(:supports_iops, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIops"))
    AvailableAdditionalStorageVolumesOption.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    AvailableAdditionalStorageVolumesOption.add_member(:min_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageSize"))
    AvailableAdditionalStorageVolumesOption.add_member(:max_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageSize"))
    AvailableAdditionalStorageVolumesOption.add_member(:min_iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinIops"))
    AvailableAdditionalStorageVolumesOption.add_member(:max_iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxIops"))
    AvailableAdditionalStorageVolumesOption.add_member(:min_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinIopsPerGib"))
    AvailableAdditionalStorageVolumesOption.add_member(:max_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxIopsPerGib"))
    AvailableAdditionalStorageVolumesOption.add_member(:min_storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageThroughput"))
    AvailableAdditionalStorageVolumesOption.add_member(:max_storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageThroughput"))
    AvailableAdditionalStorageVolumesOption.struct_class = Types::AvailableAdditionalStorageVolumesOption

    AvailableAdditionalStorageVolumesOptionList.member = Shapes::ShapeRef.new(shape: AvailableAdditionalStorageVolumesOption, location_name: "AvailableAdditionalStorageVolumesOption")

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

    BlueGreenDeployment.add_member(:blue_green_deployment_identifier, Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: "BlueGreenDeploymentIdentifier"))
    BlueGreenDeployment.add_member(:blue_green_deployment_name, Shapes::ShapeRef.new(shape: BlueGreenDeploymentName, location_name: "BlueGreenDeploymentName"))
    BlueGreenDeployment.add_member(:source, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "Source"))
    BlueGreenDeployment.add_member(:target, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "Target"))
    BlueGreenDeployment.add_member(:switchover_details, Shapes::ShapeRef.new(shape: SwitchoverDetailList, location_name: "SwitchoverDetails"))
    BlueGreenDeployment.add_member(:tasks, Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskList, location_name: "Tasks"))
    BlueGreenDeployment.add_member(:status, Shapes::ShapeRef.new(shape: BlueGreenDeploymentStatus, location_name: "Status"))
    BlueGreenDeployment.add_member(:status_details, Shapes::ShapeRef.new(shape: BlueGreenDeploymentStatusDetails, location_name: "StatusDetails"))
    BlueGreenDeployment.add_member(:create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreateTime"))
    BlueGreenDeployment.add_member(:delete_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "DeleteTime"))
    BlueGreenDeployment.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    BlueGreenDeployment.struct_class = Types::BlueGreenDeployment

    BlueGreenDeploymentAlreadyExistsFault.struct_class = Types::BlueGreenDeploymentAlreadyExistsFault

    BlueGreenDeploymentList.member = Shapes::ShapeRef.new(shape: BlueGreenDeployment)

    BlueGreenDeploymentNotFoundFault.struct_class = Types::BlueGreenDeploymentNotFoundFault

    BlueGreenDeploymentTask.add_member(:name, Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskName, location_name: "Name"))
    BlueGreenDeploymentTask.add_member(:status, Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskStatus, location_name: "Status"))
    BlueGreenDeploymentTask.struct_class = Types::BlueGreenDeploymentTask

    BlueGreenDeploymentTaskList.member = Shapes::ShapeRef.new(shape: BlueGreenDeploymentTask)

    CACertificateIdentifiersList.member = Shapes::ShapeRef.new(shape: String)

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

    CertificateDetails.add_member(:ca_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CAIdentifier"))
    CertificateDetails.add_member(:valid_till, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidTill"))
    CertificateDetails.struct_class = Types::CertificateDetails

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate")

    CertificateMessage.add_member(:default_certificate_for_new_launches, Shapes::ShapeRef.new(shape: String, location_name: "DefaultCertificateForNewLaunches"))
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

    ClusterPendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    ClusterPendingModifiedValues.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    ClusterPendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    ClusterPendingModifiedValues.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IAMDatabaseAuthenticationEnabled"))
    ClusterPendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ClusterPendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ClusterPendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ClusterPendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ClusterPendingModifiedValues.add_member(:rds_custom_cluster_configuration, Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: "RdsCustomClusterConfiguration"))
    ClusterPendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    ClusterPendingModifiedValues.add_member(:certificate_details, Shapes::ShapeRef.new(shape: CertificateDetails, location_name: "CertificateDetails"))
    ClusterPendingModifiedValues.struct_class = Types::ClusterPendingModifiedValues

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

    ContextAttribute.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    ContextAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    ContextAttribute.struct_class = Types::ContextAttribute

    ContextAttributeList.member = Shapes::ShapeRef.new(shape: ContextAttribute)

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
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
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
    CopyDBSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PreSignedUrl"))
    CopyDBSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CopyDBSnapshotMessage.add_member(:target_custom_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "TargetCustomAvailabilityZone"))
    CopyDBSnapshotMessage.add_member(:snapshot_target, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotTarget"))
    CopyDBSnapshotMessage.add_member(:copy_option_group, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyOptionGroup"))
    CopyDBSnapshotMessage.add_member(:snapshot_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotAvailabilityZone"))
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

    CreateBlueGreenDeploymentRequest.add_member(:blue_green_deployment_name, Shapes::ShapeRef.new(shape: BlueGreenDeploymentName, required: true, location_name: "BlueGreenDeploymentName"))
    CreateBlueGreenDeploymentRequest.add_member(:source, Shapes::ShapeRef.new(shape: DatabaseArn, required: true, location_name: "Source"))
    CreateBlueGreenDeploymentRequest.add_member(:target_engine_version, Shapes::ShapeRef.new(shape: TargetEngineVersion, location_name: "TargetEngineVersion"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_parameter_group_name, Shapes::ShapeRef.new(shape: TargetDBParameterGroupName, location_name: "TargetDBParameterGroupName"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: TargetDBClusterParameterGroupName, location_name: "TargetDBClusterParameterGroupName"))
    CreateBlueGreenDeploymentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_instance_class, Shapes::ShapeRef.new(shape: TargetDBInstanceClass, location_name: "TargetDBInstanceClass"))
    CreateBlueGreenDeploymentRequest.add_member(:upgrade_target_storage_config, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UpgradeTargetStorageConfig"))
    CreateBlueGreenDeploymentRequest.add_member(:target_iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "TargetIops"))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_type, Shapes::ShapeRef.new(shape: TargetStorageType, location_name: "TargetStorageType"))
    CreateBlueGreenDeploymentRequest.add_member(:target_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "TargetAllocatedStorage"))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "TargetStorageThroughput"))
    CreateBlueGreenDeploymentRequest.struct_class = Types::CreateBlueGreenDeploymentRequest

    CreateBlueGreenDeploymentResponse.add_member(:blue_green_deployment, Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: "BlueGreenDeployment"))
    CreateBlueGreenDeploymentResponse.struct_class = Types::CreateBlueGreenDeploymentResponse

    CreateCustomDBEngineVersionFault.struct_class = Types::CreateCustomDBEngineVersionFault

    CreateCustomDBEngineVersionMessage.add_member(:engine, Shapes::ShapeRef.new(shape: CustomEngineName, required: true, location_name: "Engine"))
    CreateCustomDBEngineVersionMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: CustomEngineVersion, required: true, location_name: "EngineVersion"))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "DatabaseInstallationFilesS3BucketName"))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_prefix, Shapes::ShapeRef.new(shape: String255, location_name: "DatabaseInstallationFilesS3Prefix"))
    CreateCustomDBEngineVersionMessage.add_member(:image_id, Shapes::ShapeRef.new(shape: String255, location_name: "ImageId"))
    CreateCustomDBEngineVersionMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyIdOrArn, location_name: "KMSKeyId"))
    CreateCustomDBEngineVersionMessage.add_member(:source_custom_db_engine_version_identifier, Shapes::ShapeRef.new(shape: String255, location_name: "SourceCustomDbEngineVersionIdentifier"))
    CreateCustomDBEngineVersionMessage.add_member(:use_aws_provided_latest_image, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseAwsProvidedLatestImage"))
    CreateCustomDBEngineVersionMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateCustomDBEngineVersionMessage.add_member(:manifest, Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: "Manifest"))
    CreateCustomDBEngineVersionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files, Shapes::ShapeRef.new(shape: StringList, location_name: "DatabaseInstallationFiles"))
    CreateCustomDBEngineVersionMessage.struct_class = Types::CreateCustomDBEngineVersionMessage

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
    CreateDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    CreateDBClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBClusterMessage.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    CreateDBClusterMessage.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: "ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:rds_custom_cluster_configuration, Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: "RdsCustomClusterConfiguration"))
    CreateDBClusterMessage.add_member(:db_cluster_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterInstanceClass"))
    CreateDBClusterMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateDBClusterMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBClusterMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    CreateDBClusterMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateDBClusterMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    CreateDBClusterMessage.add_member(:enable_http_endpoint, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableHttpEndpoint"))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBClusterMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBClusterMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBClusterMessage.add_member(:enable_global_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableGlobalWriteForwarding"))
    CreateDBClusterMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    CreateDBClusterMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    CreateDBClusterMessage.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    CreateDBClusterMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBClusterMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBClusterMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    CreateDBClusterMessage.add_member(:enable_limitless_database, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableLimitlessDatabase"))
    CreateDBClusterMessage.add_member(:cluster_scalability_type, Shapes::ShapeRef.new(shape: ClusterScalabilityType, location_name: "ClusterScalabilityType"))
    CreateDBClusterMessage.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
    CreateDBClusterMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    CreateDBClusterMessage.add_member(:enable_local_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableLocalWriteForwarding"))
    CreateDBClusterMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    CreateDBClusterMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    CreateDBClusterMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    CreateDBClusterMessage.add_member(:master_user_authentication_type, Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: "MasterUserAuthenticationType"))
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
    CreateDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
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
    CreateDBInstanceMessage.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    CreateDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBInstanceMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateDBInstanceMessage.add_member(:nchar_character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "NcharCharacterSetName"))
    CreateDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateDBInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    CreateDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    CreateDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    CreateDBInstanceMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBInstanceMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBInstanceMessage.add_member(:domain_fqdn, Shapes::ShapeRef.new(shape: String, location_name: "DomainFqdn"))
    CreateDBInstanceMessage.add_member(:domain_ou, Shapes::ShapeRef.new(shape: String, location_name: "DomainOu"))
    CreateDBInstanceMessage.add_member(:domain_auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "DomainAuthSecretArn"))
    CreateDBInstanceMessage.add_member(:domain_dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DomainDnsIps"))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    CreateDBInstanceMessage.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceMessage.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    CreateDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBInstanceMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    CreateDBInstanceMessage.add_member(:enable_customer_owned_ip, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCustomerOwnedIp"))
    CreateDBInstanceMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateDBInstanceMessage.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    CreateDBInstanceMessage.add_member(:custom_iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "CustomIamInstanceProfile"))
    CreateDBInstanceMessage.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
    CreateDBInstanceMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    CreateDBInstanceMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    CreateDBInstanceMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    CreateDBInstanceMessage.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    CreateDBInstanceMessage.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    CreateDBInstanceMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    CreateDBInstanceMessage.add_member(:master_user_authentication_type, Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: "MasterUserAuthenticationType"))
    CreateDBInstanceMessage.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
    CreateDBInstanceMessage.struct_class = Types::CreateDBInstanceMessage

    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBInstanceIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    CreateDBInstanceReadReplicaMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateDBInstanceReadReplicaMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBInstanceReadReplicaMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateDBInstanceReadReplicaMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceReadReplicaMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
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
    CreateDBInstanceReadReplicaMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PreSignedUrl"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceReadReplicaMessage.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceReadReplicaMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_fqdn, Shapes::ShapeRef.new(shape: String, location_name: "DomainFqdn"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_ou, Shapes::ShapeRef.new(shape: String, location_name: "DomainOu"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "DomainAuthSecretArn"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DomainDnsIps"))
    CreateDBInstanceReadReplicaMessage.add_member(:replica_mode, Shapes::ShapeRef.new(shape: ReplicaMode, location_name: "ReplicaMode"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_customer_owned_ip, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCustomerOwnedIp"))
    CreateDBInstanceReadReplicaMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    CreateDBInstanceReadReplicaMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    CreateDBInstanceReadReplicaMessage.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    CreateDBInstanceReadReplicaMessage.add_member(:custom_iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "CustomIamInstanceProfile"))
    CreateDBInstanceReadReplicaMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    CreateDBInstanceReadReplicaMessage.add_member(:upgrade_storage_config, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UpgradeStorageConfig"))
    CreateDBInstanceReadReplicaMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
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

    CreateDBProxyEndpointRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    CreateDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: DBProxyEndpointName, required: true, location_name: "DBProxyEndpointName"))
    CreateDBProxyEndpointRequest.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "VpcSubnetIds"))
    CreateDBProxyEndpointRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    CreateDBProxyEndpointRequest.add_member(:target_role, Shapes::ShapeRef.new(shape: DBProxyEndpointTargetRole, location_name: "TargetRole"))
    CreateDBProxyEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBProxyEndpointRequest.add_member(:endpoint_network_type, Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: "EndpointNetworkType"))
    CreateDBProxyEndpointRequest.struct_class = Types::CreateDBProxyEndpointRequest

    CreateDBProxyEndpointResponse.add_member(:db_proxy_endpoint, Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: "DBProxyEndpoint"))
    CreateDBProxyEndpointResponse.struct_class = Types::CreateDBProxyEndpointResponse

    CreateDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    CreateDBProxyRequest.add_member(:engine_family, Shapes::ShapeRef.new(shape: EngineFamily, required: true, location_name: "EngineFamily"))
    CreateDBProxyRequest.add_member(:default_auth_scheme, Shapes::ShapeRef.new(shape: DefaultAuthScheme, location_name: "DefaultAuthScheme"))
    CreateDBProxyRequest.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigList, location_name: "Auth"))
    CreateDBProxyRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RoleArn"))
    CreateDBProxyRequest.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "VpcSubnetIds"))
    CreateDBProxyRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    CreateDBProxyRequest.add_member(:require_tls, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireTLS"))
    CreateDBProxyRequest.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IdleClientTimeout"))
    CreateDBProxyRequest.add_member(:debug_logging, Shapes::ShapeRef.new(shape: Boolean, location_name: "DebugLogging"))
    CreateDBProxyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBProxyRequest.add_member(:endpoint_network_type, Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: "EndpointNetworkType"))
    CreateDBProxyRequest.add_member(:target_connection_network_type, Shapes::ShapeRef.new(shape: TargetConnectionNetworkType, location_name: "TargetConnectionNetworkType"))
    CreateDBProxyRequest.struct_class = Types::CreateDBProxyRequest

    CreateDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    CreateDBProxyResponse.struct_class = Types::CreateDBProxyResponse

    CreateDBSecurityGroupMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    CreateDBSecurityGroupMessage.add_member(:db_security_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupDescription"))
    CreateDBSecurityGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSecurityGroupMessage.struct_class = Types::CreateDBSecurityGroupMessage

    CreateDBSecurityGroupResult.add_member(:db_security_group, Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: "DBSecurityGroup"))
    CreateDBSecurityGroupResult.struct_class = Types::CreateDBSecurityGroupResult

    CreateDBShardGroupMessage.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBShardGroupIdentifier"))
    CreateDBShardGroupMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBShardGroupMessage.add_member(:compute_redundancy, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ComputeRedundancy"))
    CreateDBShardGroupMessage.add_member(:max_acu, Shapes::ShapeRef.new(shape: DoubleOptional, required: true, location_name: "MaxACU"))
    CreateDBShardGroupMessage.add_member(:min_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinACU"))
    CreateDBShardGroupMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateDBShardGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBShardGroupMessage.struct_class = Types::CreateDBShardGroupMessage

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

    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateGlobalClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateGlobalClusterMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    CreateGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateGlobalClusterMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateGlobalClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateGlobalClusterMessage.struct_class = Types::CreateGlobalClusterMessage

    CreateGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    CreateGlobalClusterResult.struct_class = Types::CreateGlobalClusterResult

    CreateIntegrationMessage.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceArn, required: true, location_name: "SourceArn"))
    CreateIntegrationMessage.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "TargetArn"))
    CreateIntegrationMessage.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "IntegrationName"))
    CreateIntegrationMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KMSKeyId"))
    CreateIntegrationMessage.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    CreateIntegrationMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateIntegrationMessage.add_member(:data_filter, Shapes::ShapeRef.new(shape: DataFilter, location_name: "DataFilter"))
    CreateIntegrationMessage.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    CreateIntegrationMessage.struct_class = Types::CreateIntegrationMessage

    CreateOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    CreateOptionGroupMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    CreateOptionGroupMessage.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MajorEngineVersion"))
    CreateOptionGroupMessage.add_member(:option_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupDescription"))
    CreateOptionGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOptionGroupMessage.struct_class = Types::CreateOptionGroupMessage

    CreateOptionGroupResult.add_member(:option_group, Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup"))
    CreateOptionGroupResult.struct_class = Types::CreateOptionGroupResult

    CreateTenantDatabaseMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateTenantDatabaseMessage.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TenantDBName"))
    CreateTenantDatabaseMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUsername"))
    CreateTenantDatabaseMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    CreateTenantDatabaseMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateTenantDatabaseMessage.add_member(:nchar_character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "NcharCharacterSetName"))
    CreateTenantDatabaseMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    CreateTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    CreateTenantDatabaseMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTenantDatabaseMessage.struct_class = Types::CreateTenantDatabaseMessage

    CreateTenantDatabaseResult.add_member(:tenant_database, Shapes::ShapeRef.new(shape: TenantDatabase, location_name: "TenantDatabase"))
    CreateTenantDatabaseResult.struct_class = Types::CreateTenantDatabaseResult

    CustomAvailabilityZoneNotFoundFault.struct_class = Types::CustomAvailabilityZoneNotFoundFault

    CustomDBEngineVersionAMI.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "ImageId"))
    CustomDBEngineVersionAMI.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    CustomDBEngineVersionAMI.struct_class = Types::CustomDBEngineVersionAMI

    CustomDBEngineVersionAlreadyExistsFault.struct_class = Types::CustomDBEngineVersionAlreadyExistsFault

    CustomDBEngineVersionNotFoundFault.struct_class = Types::CustomDBEngineVersionNotFoundFault

    CustomDBEngineVersionQuotaExceededFault.struct_class = Types::CustomDBEngineVersionQuotaExceededFault

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
    DBCluster.add_member(:upgrade_rollout_order, Shapes::ShapeRef.new(shape: UpgradeRolloutOrder, location_name: "UpgradeRolloutOrder"))
    DBCluster.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    DBCluster.add_member(:read_replica_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaIdentifierList, location_name: "ReadReplicaIdentifiers"))
    DBCluster.add_member(:status_infos, Shapes::ShapeRef.new(shape: DBClusterStatusInfoList, location_name: "StatusInfos"))
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
    DBCluster.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: ClusterPendingModifiedValues, location_name: "PendingModifiedValues"))
    DBCluster.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    DBCluster.add_member(:scaling_configuration_info, Shapes::ShapeRef.new(shape: ScalingConfigurationInfo, location_name: "ScalingConfigurationInfo"))
    DBCluster.add_member(:rds_custom_cluster_configuration, Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: "RdsCustomClusterConfiguration"))
    DBCluster.add_member(:db_cluster_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterInstanceClass"))
    DBCluster.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBCluster.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBCluster.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "IOOptimizedNextAllowedModificationTime"))
    DBCluster.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    DBCluster.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    DBCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    DBCluster.add_member(:http_endpoint_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "HttpEndpointEnabled"))
    DBCluster.add_member(:activity_stream_mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "ActivityStreamMode"))
    DBCluster.add_member(:activity_stream_status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "ActivityStreamStatus"))
    DBCluster.add_member(:activity_stream_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKmsKeyId"))
    DBCluster.add_member(:activity_stream_kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKinesisStreamName"))
    DBCluster.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    DBCluster.add_member(:cross_account_clone, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CrossAccountClone"))
    DBCluster.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: "DomainMemberships"))
    DBCluster.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBCluster.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    DBCluster.add_member(:global_write_forwarding_status, Shapes::ShapeRef.new(shape: WriteForwardingStatus, location_name: "GlobalWriteForwardingStatus"))
    DBCluster.add_member(:global_write_forwarding_requested, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "GlobalWriteForwardingRequested"))
    DBCluster.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    DBCluster.add_member(:automatic_restart_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutomaticRestartTime"))
    DBCluster.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfigurationInfo, location_name: "ServerlessV2ScalingConfiguration"))
    DBCluster.add_member(:serverless_v2_platform_version, Shapes::ShapeRef.new(shape: String, location_name: "ServerlessV2PlatformVersion"))
    DBCluster.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    DBCluster.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    DBCluster.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    DBCluster.add_member(:performance_insights_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PerformanceInsightsEnabled"))
    DBCluster.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    DBCluster.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    DBCluster.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
    DBCluster.add_member(:master_user_secret, Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: "MasterUserSecret"))
    DBCluster.add_member(:local_write_forwarding_status, Shapes::ShapeRef.new(shape: LocalWriteForwardingStatus, location_name: "LocalWriteForwardingStatus"))
    DBCluster.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "AwsBackupRecoveryPointArn"))
    DBCluster.add_member(:limitless_database, Shapes::ShapeRef.new(shape: LimitlessDatabase, location_name: "LimitlessDatabase"))
    DBCluster.add_member(:cluster_scalability_type, Shapes::ShapeRef.new(shape: ClusterScalabilityType, location_name: "ClusterScalabilityType"))
    DBCluster.add_member(:certificate_details, Shapes::ShapeRef.new(shape: CertificateDetails, location_name: "CertificateDetails"))
    DBCluster.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    DBCluster.struct_class = Types::DBCluster

    DBClusterAlreadyExistsFault.struct_class = Types::DBClusterAlreadyExistsFault

    DBClusterAutomatedBackup.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBClusterAutomatedBackup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBClusterAutomatedBackup.add_member(:db_cluster_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterAutomatedBackupsArn"))
    DBClusterAutomatedBackup.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterAutomatedBackup.add_member(:restore_window, Shapes::ShapeRef.new(shape: RestoreWindow, location_name: "RestoreWindow"))
    DBClusterAutomatedBackup.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBClusterAutomatedBackup.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DBClusterAutomatedBackup.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    DBClusterAutomatedBackup.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBClusterAutomatedBackup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterAutomatedBackup.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBClusterAutomatedBackup.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBClusterAutomatedBackup.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBClusterAutomatedBackup.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBClusterAutomatedBackup.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBClusterAutomatedBackup.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    DBClusterAutomatedBackup.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    DBClusterAutomatedBackup.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    DBClusterAutomatedBackup.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBClusterAutomatedBackup.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBClusterAutomatedBackup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBClusterAutomatedBackup.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBClusterAutomatedBackup.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBClusterAutomatedBackup.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    DBClusterAutomatedBackup.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "AwsBackupRecoveryPointArn"))
    DBClusterAutomatedBackup.struct_class = Types::DBClusterAutomatedBackup

    DBClusterAutomatedBackupList.member = Shapes::ShapeRef.new(shape: DBClusterAutomatedBackup, location_name: "DBClusterAutomatedBackup")

    DBClusterAutomatedBackupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterAutomatedBackupMessage.add_member(:db_cluster_automated_backups, Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupList, location_name: "DBClusterAutomatedBackups"))
    DBClusterAutomatedBackupMessage.struct_class = Types::DBClusterAutomatedBackupMessage

    DBClusterAutomatedBackupNotFoundFault.struct_class = Types::DBClusterAutomatedBackupNotFoundFault

    DBClusterAutomatedBackupQuotaExceededFault.struct_class = Types::DBClusterAutomatedBackupQuotaExceededFault

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
    DBClusterSnapshot.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
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
    DBClusterSnapshot.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBClusterSnapshot.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBClusterSnapshot.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    DBClusterSnapshot.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DBClusterSnapshot.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
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

    DBClusterStatusInfo.add_member(:status_type, Shapes::ShapeRef.new(shape: String, location_name: "StatusType"))
    DBClusterStatusInfo.add_member(:normal, Shapes::ShapeRef.new(shape: Boolean, location_name: "Normal"))
    DBClusterStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterStatusInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DBClusterStatusInfo.struct_class = Types::DBClusterStatusInfo

    DBClusterStatusInfoList.member = Shapes::ShapeRef.new(shape: DBClusterStatusInfo, location_name: "DBClusterStatusInfo")

    DBEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBEngineVersion.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    DBEngineVersion.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBEngineVersion.add_member(:database_installation_files_s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseInstallationFilesS3BucketName"))
    DBEngineVersion.add_member(:database_installation_files_s3_prefix, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseInstallationFilesS3Prefix"))
    DBEngineVersion.add_member(:custom_db_engine_version_manifest, Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: "CustomDBEngineVersionManifest"))
    DBEngineVersion.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineVersionArn"))
    DBEngineVersion.add_member(:db_engine_version_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:default_character_set, Shapes::ShapeRef.new(shape: CharacterSet, location_name: "DefaultCharacterSet"))
    DBEngineVersion.add_member(:image, Shapes::ShapeRef.new(shape: CustomDBEngineVersionAMI, location_name: "Image"))
    DBEngineVersion.add_member(:db_engine_media_type, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineMediaType"))
    DBEngineVersion.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KMSKeyId"))
    DBEngineVersion.add_member(:create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreateTime"))
    DBEngineVersion.add_member(:supported_character_sets, Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: "SupportedCharacterSets"))
    DBEngineVersion.add_member(:supported_nchar_character_sets, Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: "SupportedNcharCharacterSets"))
    DBEngineVersion.add_member(:valid_upgrade_target, Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:supported_timezones, Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: "SupportedTimezones"))
    DBEngineVersion.add_member(:exportable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.add_member(:supports_read_replica, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsReadReplica"))
    DBEngineVersion.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    DBEngineVersion.add_member(:supported_feature_names, Shapes::ShapeRef.new(shape: FeatureNameList, location_name: "SupportedFeatureNames"))
    DBEngineVersion.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBEngineVersion.add_member(:supports_parallel_query, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsParallelQuery"))
    DBEngineVersion.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsGlobalDatabases"))
    DBEngineVersion.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBEngineVersion.add_member(:supports_babelfish, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsBabelfish"))
    DBEngineVersion.add_member(:supports_limitless_database, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsLimitlessDatabase"))
    DBEngineVersion.add_member(:supports_certificate_rotation_without_restart, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsCertificateRotationWithoutRestart"))
    DBEngineVersion.add_member(:supported_ca_certificate_identifiers, Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: "SupportedCACertificateIdentifiers"))
    DBEngineVersion.add_member(:supports_local_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsLocalWriteForwarding"))
    DBEngineVersion.add_member(:supports_integrations, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIntegrations"))
    DBEngineVersion.add_member(:serverless_v2_features_support, Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: "ServerlessV2FeaturesSupport"))
    DBEngineVersion.add_member(:database_installation_files, Shapes::ShapeRef.new(shape: StringList, location_name: "DatabaseInstallationFiles"))
    DBEngineVersion.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
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
    DBInstance.add_member(:upgrade_rollout_order, Shapes::ShapeRef.new(shape: UpgradeRolloutOrder, location_name: "UpgradeRolloutOrder"))
    DBInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    DBInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:read_replica_source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaSourceDBInstanceIdentifier"))
    DBInstance.add_member(:read_replica_db_instance_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBInstanceIdentifierList, location_name: "ReadReplicaDBInstanceIdentifiers"))
    DBInstance.add_member(:read_replica_db_cluster_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBClusterIdentifierList, location_name: "ReadReplicaDBClusterIdentifiers"))
    DBInstance.add_member(:replica_mode, Shapes::ShapeRef.new(shape: ReplicaMode, location_name: "ReplicaMode"))
    DBInstance.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBInstance.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBInstance.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    DBInstance.add_member(:option_group_memberships, Shapes::ShapeRef.new(shape: OptionGroupMembershipList, location_name: "OptionGroupMemberships"))
    DBInstance.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBInstance.add_member(:nchar_character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "NcharCharacterSetName"))
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
    DBInstance.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    DBInstance.add_member(:performance_insights_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PerformanceInsightsEnabled"))
    DBInstance.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    DBInstance.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBInstance.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    DBInstance.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    DBInstance.add_member(:associated_roles, Shapes::ShapeRef.new(shape: DBInstanceRoles, location_name: "AssociatedRoles"))
    DBInstance.add_member(:listener_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ListenerEndpoint"))
    DBInstance.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    DBInstance.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBInstance.add_member(:automation_mode, Shapes::ShapeRef.new(shape: AutomationMode, location_name: "AutomationMode"))
    DBInstance.add_member(:resume_full_automation_mode_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ResumeFullAutomationModeTime"))
    DBInstance.add_member(:customer_owned_ip_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CustomerOwnedIpEnabled"))
    DBInstance.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    DBInstance.add_member(:activity_stream_status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "ActivityStreamStatus"))
    DBInstance.add_member(:activity_stream_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKmsKeyId"))
    DBInstance.add_member(:activity_stream_kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKinesisStreamName"))
    DBInstance.add_member(:activity_stream_mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "ActivityStreamMode"))
    DBInstance.add_member(:activity_stream_engine_native_audit_fields_included, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ActivityStreamEngineNativeAuditFieldsIncluded"))
    DBInstance.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "AwsBackupRecoveryPointArn"))
    DBInstance.add_member(:db_instance_automated_backups_replications, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplicationList, location_name: "DBInstanceAutomatedBackupsReplications"))
    DBInstance.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    DBInstance.add_member(:automatic_restart_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutomaticRestartTime"))
    DBInstance.add_member(:custom_iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "CustomIamInstanceProfile"))
    DBInstance.add_member(:activity_stream_policy_status, Shapes::ShapeRef.new(shape: ActivityStreamPolicyStatus, location_name: "ActivityStreamPolicyStatus"))
    DBInstance.add_member(:certificate_details, Shapes::ShapeRef.new(shape: CertificateDetails, location_name: "CertificateDetails"))
    DBInstance.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
    DBInstance.add_member(:master_user_secret, Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: "MasterUserSecret"))
    DBInstance.add_member(:read_replica_source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaSourceDBClusterIdentifier"))
    DBInstance.add_member(:percent_progress, Shapes::ShapeRef.new(shape: String, location_name: "PercentProgress"))
    DBInstance.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    DBInstance.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedLogVolume"))
    DBInstance.add_member(:is_storage_config_upgrade_available, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IsStorageConfigUpgradeAvailable"))
    DBInstance.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    DBInstance.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesOutputList, location_name: "AdditionalStorageVolumes"))
    DBInstance.add_member(:storage_volume_status, Shapes::ShapeRef.new(shape: String, location_name: "StorageVolumeStatus"))
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
    DBInstanceAutomatedBackup.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    DBInstanceAutomatedBackup.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    DBInstanceAutomatedBackup.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    DBInstanceAutomatedBackup.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    DBInstanceAutomatedBackup.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBInstanceAutomatedBackup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBInstanceAutomatedBackup.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    DBInstanceAutomatedBackup.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBInstanceAutomatedBackup.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceAutomatedBackupsArn"))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_replications, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplicationList, location_name: "DBInstanceAutomatedBackupsReplications"))
    DBInstanceAutomatedBackup.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    DBInstanceAutomatedBackup.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    DBInstanceAutomatedBackup.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "AwsBackupRecoveryPointArn"))
    DBInstanceAutomatedBackup.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    DBInstanceAutomatedBackup.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
    DBInstanceAutomatedBackup.struct_class = Types::DBInstanceAutomatedBackup

    DBInstanceAutomatedBackupList.member = Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: "DBInstanceAutomatedBackup")

    DBInstanceAutomatedBackupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupList, location_name: "DBInstanceAutomatedBackups"))
    DBInstanceAutomatedBackupMessage.struct_class = Types::DBInstanceAutomatedBackupMessage

    DBInstanceAutomatedBackupNotFoundFault.struct_class = Types::DBInstanceAutomatedBackupNotFoundFault

    DBInstanceAutomatedBackupQuotaExceededFault.struct_class = Types::DBInstanceAutomatedBackupQuotaExceededFault

    DBInstanceAutomatedBackupsReplication.add_member(:db_instance_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceAutomatedBackupsArn"))
    DBInstanceAutomatedBackupsReplication.struct_class = Types::DBInstanceAutomatedBackupsReplication

    DBInstanceAutomatedBackupsReplicationList.member = Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplication, location_name: "DBInstanceAutomatedBackupsReplication")

    DBInstanceList.member = Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance")

    DBInstanceMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, Shapes::ShapeRef.new(shape: DBInstanceList, location_name: "DBInstances"))
    DBInstanceMessage.struct_class = Types::DBInstanceMessage

    DBInstanceNotFoundFault.struct_class = Types::DBInstanceNotFoundFault

    DBInstanceNotReadyFault.struct_class = Types::DBInstanceNotReadyFault

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

    DBMajorEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBMajorEngineVersion.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    DBMajorEngineVersion.add_member(:supported_engine_lifecycles, Shapes::ShapeRef.new(shape: SupportedEngineLifecycleList, location_name: "SupportedEngineLifecycles"))
    DBMajorEngineVersion.struct_class = Types::DBMajorEngineVersion

    DBMajorEngineVersionsList.member = Shapes::ShapeRef.new(shape: DBMajorEngineVersion, location_name: "DBMajorEngineVersion")

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
    DBProxy.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBProxy.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    DBProxy.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSubnetIds"))
    DBProxy.add_member(:default_auth_scheme, Shapes::ShapeRef.new(shape: String, location_name: "DefaultAuthScheme"))
    DBProxy.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigInfoList, location_name: "Auth"))
    DBProxy.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBProxy.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBProxy.add_member(:require_tls, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireTLS"))
    DBProxy.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleClientTimeout"))
    DBProxy.add_member(:debug_logging, Shapes::ShapeRef.new(shape: Boolean, location_name: "DebugLogging"))
    DBProxy.add_member(:created_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedDate"))
    DBProxy.add_member(:updated_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedDate"))
    DBProxy.add_member(:endpoint_network_type, Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: "EndpointNetworkType"))
    DBProxy.add_member(:target_connection_network_type, Shapes::ShapeRef.new(shape: TargetConnectionNetworkType, location_name: "TargetConnectionNetworkType"))
    DBProxy.struct_class = Types::DBProxy

    DBProxyAlreadyExistsFault.struct_class = Types::DBProxyAlreadyExistsFault

    DBProxyEndpoint.add_member(:db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyEndpointName"))
    DBProxyEndpoint.add_member(:db_proxy_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyEndpointArn"))
    DBProxyEndpoint.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyName"))
    DBProxyEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: DBProxyEndpointStatus, location_name: "Status"))
    DBProxyEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBProxyEndpoint.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    DBProxyEndpoint.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSubnetIds"))
    DBProxyEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBProxyEndpoint.add_member(:created_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedDate"))
    DBProxyEndpoint.add_member(:target_role, Shapes::ShapeRef.new(shape: DBProxyEndpointTargetRole, location_name: "TargetRole"))
    DBProxyEndpoint.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    DBProxyEndpoint.add_member(:endpoint_network_type, Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: "EndpointNetworkType"))
    DBProxyEndpoint.struct_class = Types::DBProxyEndpoint

    DBProxyEndpointAlreadyExistsFault.struct_class = Types::DBProxyEndpointAlreadyExistsFault

    DBProxyEndpointList.member = Shapes::ShapeRef.new(shape: DBProxyEndpoint)

    DBProxyEndpointNotFoundFault.struct_class = Types::DBProxyEndpointNotFoundFault

    DBProxyEndpointQuotaExceededFault.struct_class = Types::DBProxyEndpointQuotaExceededFault

    DBProxyList.member = Shapes::ShapeRef.new(shape: DBProxy)

    DBProxyNotFoundFault.struct_class = Types::DBProxyNotFoundFault

    DBProxyQuotaExceededFault.struct_class = Types::DBProxyQuotaExceededFault

    DBProxyTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetArn"))
    DBProxyTarget.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBProxyTarget.add_member(:tracked_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "TrackedClusterId"))
    DBProxyTarget.add_member(:rds_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "RdsResourceId"))
    DBProxyTarget.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBProxyTarget.add_member(:type, Shapes::ShapeRef.new(shape: TargetType, location_name: "Type"))
    DBProxyTarget.add_member(:role, Shapes::ShapeRef.new(shape: TargetRole, location_name: "Role"))
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

    DBRecommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, location_name: "RecommendationId"))
    DBRecommendation.add_member(:type_id, Shapes::ShapeRef.new(shape: String, location_name: "TypeId"))
    DBRecommendation.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    DBRecommendation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    DBRecommendation.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBRecommendation.add_member(:created_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedTime"))
    DBRecommendation.add_member(:updated_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedTime"))
    DBRecommendation.add_member(:detection, Shapes::ShapeRef.new(shape: String, location_name: "Detection"))
    DBRecommendation.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "Recommendation"))
    DBRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBRecommendation.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    DBRecommendation.add_member(:recommended_actions, Shapes::ShapeRef.new(shape: RecommendedActionList, location_name: "RecommendedActions"))
    DBRecommendation.add_member(:category, Shapes::ShapeRef.new(shape: String, location_name: "Category"))
    DBRecommendation.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DBRecommendation.add_member(:type_detection, Shapes::ShapeRef.new(shape: String, location_name: "TypeDetection"))
    DBRecommendation.add_member(:type_recommendation, Shapes::ShapeRef.new(shape: String, location_name: "TypeRecommendation"))
    DBRecommendation.add_member(:impact, Shapes::ShapeRef.new(shape: String, location_name: "Impact"))
    DBRecommendation.add_member(:additional_info, Shapes::ShapeRef.new(shape: String, location_name: "AdditionalInfo"))
    DBRecommendation.add_member(:links, Shapes::ShapeRef.new(shape: DocLinkList, location_name: "Links"))
    DBRecommendation.add_member(:issue_details, Shapes::ShapeRef.new(shape: IssueDetails, location_name: "IssueDetails"))
    DBRecommendation.struct_class = Types::DBRecommendation

    DBRecommendationList.member = Shapes::ShapeRef.new(shape: DBRecommendation)

    DBRecommendationMessage.add_member(:db_recommendation, Shapes::ShapeRef.new(shape: DBRecommendation, location_name: "DBRecommendation"))
    DBRecommendationMessage.struct_class = Types::DBRecommendationMessage

    DBRecommendationsMessage.add_member(:db_recommendations, Shapes::ShapeRef.new(shape: DBRecommendationList, location_name: "DBRecommendations"))
    DBRecommendationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBRecommendationsMessage.struct_class = Types::DBRecommendationsMessage

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

    DBShardGroup.add_member(:db_shard_group_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DBShardGroupResourceId"))
    DBShardGroup.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: "DBShardGroupIdentifier"))
    DBShardGroup.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBShardGroup.add_member(:max_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxACU"))
    DBShardGroup.add_member(:min_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinACU"))
    DBShardGroup.add_member(:compute_redundancy, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ComputeRedundancy"))
    DBShardGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBShardGroup.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    DBShardGroup.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBShardGroup.add_member(:db_shard_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBShardGroupArn"))
    DBShardGroup.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBShardGroup.struct_class = Types::DBShardGroup

    DBShardGroupAlreadyExistsFault.struct_class = Types::DBShardGroupAlreadyExistsFault

    DBShardGroupNotFoundFault.struct_class = Types::DBShardGroupNotFoundFault

    DBShardGroupsList.member = Shapes::ShapeRef.new(shape: DBShardGroup, location_name: "DBShardGroup")

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
    DBSnapshot.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
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
    DBSnapshot.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBSnapshot.add_member(:snapshot_target, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotTarget"))
    DBSnapshot.add_member(:original_snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "OriginalSnapshotCreateTime"))
    DBSnapshot.add_member(:snapshot_database_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotDatabaseTime"))
    DBSnapshot.add_member(:db_system_id, Shapes::ShapeRef.new(shape: String, location_name: "DBSystemId"))
    DBSnapshot.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    DBSnapshot.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedLogVolume"))
    DBSnapshot.add_member(:snapshot_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotAvailabilityZone"))
    DBSnapshot.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
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

    DBSnapshotTenantDatabase.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    DBSnapshotTenantDatabase.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBSnapshotTenantDatabase.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBSnapshotTenantDatabase.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    DBSnapshotTenantDatabase.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DBSnapshotTenantDatabase.add_member(:tenant_database_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "TenantDatabaseCreateTime"))
    DBSnapshotTenantDatabase.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, location_name: "TenantDBName"))
    DBSnapshotTenantDatabase.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBSnapshotTenantDatabase.add_member(:tenant_database_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "TenantDatabaseResourceId"))
    DBSnapshotTenantDatabase.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBSnapshotTenantDatabase.add_member(:db_snapshot_tenant_database_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotTenantDatabaseARN"))
    DBSnapshotTenantDatabase.add_member(:nchar_character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "NcharCharacterSetName"))
    DBSnapshotTenantDatabase.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DBSnapshotTenantDatabase.struct_class = Types::DBSnapshotTenantDatabase

    DBSnapshotTenantDatabaseNotFoundFault.struct_class = Types::DBSnapshotTenantDatabaseNotFoundFault

    DBSnapshotTenantDatabasesList.member = Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabase, location_name: "DBSnapshotTenantDatabase")

    DBSnapshotTenantDatabasesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_tenant_databases, Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabasesList, location_name: "DBSnapshotTenantDatabases"))
    DBSnapshotTenantDatabasesMessage.struct_class = Types::DBSnapshotTenantDatabasesMessage

    DBSubnetGroup.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupArn"))
    DBSubnetGroup.add_member(:supported_network_types, Shapes::ShapeRef.new(shape: StringList, location_name: "SupportedNetworkTypes"))
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

    DeleteBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, required: true, location_name: "BlueGreenDeploymentIdentifier"))
    DeleteBlueGreenDeploymentRequest.add_member(:delete_target, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeleteTarget"))
    DeleteBlueGreenDeploymentRequest.struct_class = Types::DeleteBlueGreenDeploymentRequest

    DeleteBlueGreenDeploymentResponse.add_member(:blue_green_deployment, Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: "BlueGreenDeployment"))
    DeleteBlueGreenDeploymentResponse.struct_class = Types::DeleteBlueGreenDeploymentResponse

    DeleteCustomDBEngineVersionMessage.add_member(:engine, Shapes::ShapeRef.new(shape: CustomEngineName, required: true, location_name: "Engine"))
    DeleteCustomDBEngineVersionMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: CustomEngineVersion, required: true, location_name: "EngineVersion"))
    DeleteCustomDBEngineVersionMessage.struct_class = Types::DeleteCustomDBEngineVersionMessage

    DeleteDBClusterAutomatedBackupMessage.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbClusterResourceId"))
    DeleteDBClusterAutomatedBackupMessage.struct_class = Types::DeleteDBClusterAutomatedBackupMessage

    DeleteDBClusterAutomatedBackupResult.add_member(:db_cluster_automated_backup, Shapes::ShapeRef.new(shape: DBClusterAutomatedBackup, location_name: "DBClusterAutomatedBackup"))
    DeleteDBClusterAutomatedBackupResult.struct_class = Types::DeleteDBClusterAutomatedBackupResult

    DeleteDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    DeleteDBClusterEndpointMessage.struct_class = Types::DeleteDBClusterEndpointMessage

    DeleteDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.add_member(:delete_automated_backups, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeleteAutomatedBackups"))
    DeleteDBClusterMessage.struct_class = Types::DeleteDBClusterMessage

    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DeleteDBClusterParameterGroupMessage.struct_class = Types::DeleteDBClusterParameterGroupMessage

    DeleteDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    DeleteDBClusterResult.struct_class = Types::DeleteDBClusterResult

    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DeleteDBClusterSnapshotMessage.struct_class = Types::DeleteDBClusterSnapshotMessage

    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.struct_class = Types::DeleteDBClusterSnapshotResult

    DeleteDBInstanceAutomatedBackupMessage.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DeleteDBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceAutomatedBackupsArn"))
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

    DeleteDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: DBProxyEndpointName, required: true, location_name: "DBProxyEndpointName"))
    DeleteDBProxyEndpointRequest.struct_class = Types::DeleteDBProxyEndpointRequest

    DeleteDBProxyEndpointResponse.add_member(:db_proxy_endpoint, Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: "DBProxyEndpoint"))
    DeleteDBProxyEndpointResponse.struct_class = Types::DeleteDBProxyEndpointResponse

    DeleteDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    DeleteDBProxyRequest.struct_class = Types::DeleteDBProxyRequest

    DeleteDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    DeleteDBProxyResponse.struct_class = Types::DeleteDBProxyResponse

    DeleteDBSecurityGroupMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    DeleteDBSecurityGroupMessage.struct_class = Types::DeleteDBSecurityGroupMessage

    DeleteDBShardGroupMessage.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, required: true, location_name: "DBShardGroupIdentifier"))
    DeleteDBShardGroupMessage.struct_class = Types::DeleteDBShardGroupMessage

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

    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    DeleteGlobalClusterMessage.struct_class = Types::DeleteGlobalClusterMessage

    DeleteGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    DeleteGlobalClusterResult.struct_class = Types::DeleteGlobalClusterResult

    DeleteIntegrationMessage.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "IntegrationIdentifier"))
    DeleteIntegrationMessage.struct_class = Types::DeleteIntegrationMessage

    DeleteOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    DeleteOptionGroupMessage.struct_class = Types::DeleteOptionGroupMessage

    DeleteTenantDatabaseMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DeleteTenantDatabaseMessage.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TenantDBName"))
    DeleteTenantDatabaseMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteTenantDatabaseMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteTenantDatabaseMessage.struct_class = Types::DeleteTenantDatabaseMessage

    DeleteTenantDatabaseResult.add_member(:tenant_database, Shapes::ShapeRef.new(shape: TenantDatabase, location_name: "TenantDatabase"))
    DeleteTenantDatabaseResult.struct_class = Types::DeleteTenantDatabaseResult

    DeregisterDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    DeregisterDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: "TargetGroupName"))
    DeregisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBInstanceIdentifiers"))
    DeregisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBClusterIdentifiers"))
    DeregisterDBProxyTargetsRequest.struct_class = Types::DeregisterDBProxyTargetsRequest

    DeregisterDBProxyTargetsResponse.struct_class = Types::DeregisterDBProxyTargetsResponse

    DescribeAccountAttributesMessage.struct_class = Types::DescribeAccountAttributesMessage

    DescribeBlueGreenDeploymentsRequest.add_member(:blue_green_deployment_identifier, Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: "BlueGreenDeploymentIdentifier"))
    DescribeBlueGreenDeploymentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeBlueGreenDeploymentsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeBlueGreenDeploymentsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeBlueGreenDeploymentsRequest.struct_class = Types::DescribeBlueGreenDeploymentsRequest

    DescribeBlueGreenDeploymentsResponse.add_member(:blue_green_deployments, Shapes::ShapeRef.new(shape: BlueGreenDeploymentList, location_name: "BlueGreenDeployments"))
    DescribeBlueGreenDeploymentsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeBlueGreenDeploymentsResponse.struct_class = Types::DescribeBlueGreenDeploymentsResponse

    DescribeCertificatesMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    DescribeCertificatesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.struct_class = Types::DescribeCertificatesMessage

    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterAutomatedBackupsMessage.struct_class = Types::DescribeDBClusterAutomatedBackupsMessage

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
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
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
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceAutomatedBackupsArn"))
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

    DescribeDBMajorEngineVersionsRequest.add_member(:engine, Shapes::ShapeRef.new(shape: Engine, location_name: "Engine"))
    DescribeDBMajorEngineVersionsRequest.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: MajorEngineVersion, location_name: "MajorEngineVersion"))
    DescribeDBMajorEngineVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeDBMajorEngineVersionsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBMajorEngineVersionsRequest.struct_class = Types::DescribeDBMajorEngineVersionsRequest

    DescribeDBMajorEngineVersionsResponse.add_member(:db_major_engine_versions, Shapes::ShapeRef.new(shape: DBMajorEngineVersionsList, location_name: "DBMajorEngineVersions"))
    DescribeDBMajorEngineVersionsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBMajorEngineVersionsResponse.struct_class = Types::DescribeDBMajorEngineVersionsResponse

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

    DescribeDBProxiesRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, location_name: "DBProxyName"))
    DescribeDBProxiesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxiesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxiesRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxiesRequest.struct_class = Types::DescribeDBProxiesRequest

    DescribeDBProxiesResponse.add_member(:db_proxies, Shapes::ShapeRef.new(shape: DBProxyList, location_name: "DBProxies"))
    DescribeDBProxiesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxiesResponse.struct_class = Types::DescribeDBProxiesResponse

    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, location_name: "DBProxyName"))
    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: "DBProxyEndpointName"))
    DescribeDBProxyEndpointsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxyEndpointsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyEndpointsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxyEndpointsRequest.struct_class = Types::DescribeDBProxyEndpointsRequest

    DescribeDBProxyEndpointsResponse.add_member(:db_proxy_endpoints, Shapes::ShapeRef.new(shape: DBProxyEndpointList, location_name: "DBProxyEndpoints"))
    DescribeDBProxyEndpointsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyEndpointsResponse.struct_class = Types::DescribeDBProxyEndpointsResponse

    DescribeDBProxyTargetGroupsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    DescribeDBProxyTargetGroupsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: "TargetGroupName"))
    DescribeDBProxyTargetGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxyTargetGroupsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetGroupsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxyTargetGroupsRequest.struct_class = Types::DescribeDBProxyTargetGroupsRequest

    DescribeDBProxyTargetGroupsResponse.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroupList, location_name: "TargetGroups"))
    DescribeDBProxyTargetGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetGroupsResponse.struct_class = Types::DescribeDBProxyTargetGroupsResponse

    DescribeDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    DescribeDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: "TargetGroupName"))
    DescribeDBProxyTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxyTargetsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxyTargetsRequest.struct_class = Types::DescribeDBProxyTargetsRequest

    DescribeDBProxyTargetsResponse.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "Targets"))
    DescribeDBProxyTargetsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetsResponse.struct_class = Types::DescribeDBProxyTargetsResponse

    DescribeDBRecommendationsMessage.add_member(:last_updated_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastUpdatedAfter"))
    DescribeDBRecommendationsMessage.add_member(:last_updated_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastUpdatedBefore"))
    DescribeDBRecommendationsMessage.add_member(:locale, Shapes::ShapeRef.new(shape: String, location_name: "Locale"))
    DescribeDBRecommendationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBRecommendationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBRecommendationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBRecommendationsMessage.struct_class = Types::DescribeDBRecommendationsMessage

    DescribeDBSecurityGroupsMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName"))
    DescribeDBSecurityGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSecurityGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSecurityGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSecurityGroupsMessage.struct_class = Types::DescribeDBSecurityGroupsMessage

    DescribeDBShardGroupsMessage.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: "DBShardGroupIdentifier"))
    DescribeDBShardGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBShardGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBShardGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBShardGroupsMessage.struct_class = Types::DescribeDBShardGroupsMessage

    DescribeDBShardGroupsResponse.add_member(:db_shard_groups, Shapes::ShapeRef.new(shape: DBShardGroupsList, location_name: "DBShardGroups"))
    DescribeDBShardGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBShardGroupsResponse.struct_class = Types::DescribeDBShardGroupsResponse

    DescribeDBSnapshotAttributesMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotAttributesMessage.struct_class = Types::DescribeDBSnapshotAttributesMessage

    DescribeDBSnapshotAttributesResult.add_member(:db_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBSnapshotAttributesResult, location_name: "DBSnapshotAttributesResult"))
    DescribeDBSnapshotAttributesResult.struct_class = Types::DescribeDBSnapshotAttributesResult

    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DescribeDBSnapshotTenantDatabasesMessage.struct_class = Types::DescribeDBSnapshotTenantDatabasesMessage

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
    DescribeExportTasksMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: ExportSourceType, location_name: "SourceType"))
    DescribeExportTasksMessage.struct_class = Types::DescribeExportTasksMessage

    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    DescribeGlobalClustersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeGlobalClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeGlobalClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeGlobalClustersMessage.struct_class = Types::DescribeGlobalClustersMessage

    DescribeIntegrationsMessage.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, location_name: "IntegrationIdentifier"))
    DescribeIntegrationsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeIntegrationsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeIntegrationsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeIntegrationsMessage.struct_class = Types::DescribeIntegrationsMessage

    DescribeIntegrationsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeIntegrationsResponse.add_member(:integrations, Shapes::ShapeRef.new(shape: IntegrationList, location_name: "Integrations"))
    DescribeIntegrationsResponse.struct_class = Types::DescribeIntegrationsResponse

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

    DescribeTenantDatabasesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeTenantDatabasesMessage.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, location_name: "TenantDBName"))
    DescribeTenantDatabasesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeTenantDatabasesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeTenantDatabasesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeTenantDatabasesMessage.struct_class = Types::DescribeTenantDatabasesMessage

    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DescribeValidDBInstanceModificationsMessage.struct_class = Types::DescribeValidDBInstanceModificationsMessage

    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, Shapes::ShapeRef.new(shape: ValidDBInstanceModificationsMessage, location_name: "ValidDBInstanceModificationsMessage"))
    DescribeValidDBInstanceModificationsResult.struct_class = Types::DescribeValidDBInstanceModificationsResult

    DisableHttpEndpointRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    DisableHttpEndpointRequest.struct_class = Types::DisableHttpEndpointRequest

    DisableHttpEndpointResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    DisableHttpEndpointResponse.add_member(:http_endpoint_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "HttpEndpointEnabled"))
    DisableHttpEndpointResponse.struct_class = Types::DisableHttpEndpointResponse

    DocLink.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    DocLink.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    DocLink.struct_class = Types::DocLink

    DocLinkList.member = Shapes::ShapeRef.new(shape: DocLink)

    DomainMembership.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    DomainMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DomainMembership.add_member(:fqdn, Shapes::ShapeRef.new(shape: String, location_name: "FQDN"))
    DomainMembership.add_member(:iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "IAMRoleName"))
    DomainMembership.add_member(:ou, Shapes::ShapeRef.new(shape: String, location_name: "OU"))
    DomainMembership.add_member(:auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "AuthSecretArn"))
    DomainMembership.add_member(:dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DnsIps"))
    DomainMembership.struct_class = Types::DomainMembership

    DomainMembershipList.member = Shapes::ShapeRef.new(shape: DomainMembership, location_name: "DomainMembership")

    DomainNotFoundFault.struct_class = Types::DomainNotFoundFault

    DoubleRange.add_member(:from, Shapes::ShapeRef.new(shape: Double, location_name: "From"))
    DoubleRange.add_member(:to, Shapes::ShapeRef.new(shape: Double, location_name: "To"))
    DoubleRange.struct_class = Types::DoubleRange

    DoubleRangeList.member = Shapes::ShapeRef.new(shape: DoubleRange, location_name: "DoubleRange")

    DownloadDBLogFilePortionDetails.add_member(:log_file_data, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LogFileData"))
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

    Ec2ImagePropertiesNotSupportedFault.struct_class = Types::Ec2ImagePropertiesNotSupportedFault

    EnableHttpEndpointRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    EnableHttpEndpointRequest.struct_class = Types::EnableHttpEndpointRequest

    EnableHttpEndpointResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    EnableHttpEndpointResponse.add_member(:http_endpoint_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "HttpEndpointEnabled"))
    EnableHttpEndpointResponse.struct_class = Types::EnableHttpEndpointResponse

    EncryptionContextMap.key = Shapes::ShapeRef.new(shape: String)
    EncryptionContextMap.value = Shapes::ShapeRef.new(shape: String)

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
    ExportTask.add_member(:source_type, Shapes::ShapeRef.new(shape: ExportSourceType, location_name: "SourceType"))
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

    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, Shapes::ShapeRef.new(shape: DBClusterIdentifier, required: true, location_name: "TargetDbClusterIdentifier"))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowDataLoss"))
    FailoverGlobalClusterMessage.add_member(:switchover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Switchover"))
    FailoverGlobalClusterMessage.struct_class = Types::FailoverGlobalClusterMessage

    FailoverGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    FailoverGlobalClusterResult.struct_class = Types::FailoverGlobalClusterResult

    FailoverState.add_member(:status, Shapes::ShapeRef.new(shape: FailoverStatus, location_name: "Status"))
    FailoverState.add_member(:from_db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "FromDbClusterArn"))
    FailoverState.add_member(:to_db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "ToDbClusterArn"))
    FailoverState.add_member(:is_data_loss_allowed, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDataLossAllowed"))
    FailoverState.struct_class = Types::FailoverState

    FeatureNameList.member = Shapes::ShapeRef.new(shape: String)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter, location_name: "Filter")

    FilterValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    GlobalCluster.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    GlobalCluster.add_member(:global_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterResourceId"))
    GlobalCluster.add_member(:global_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterArn"))
    GlobalCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    GlobalCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    GlobalCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    GlobalCluster.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    GlobalCluster.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    GlobalCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    GlobalCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    GlobalCluster.add_member(:global_cluster_members, Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: "GlobalClusterMembers"))
    GlobalCluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    GlobalCluster.add_member(:failover_state, Shapes::ShapeRef.new(shape: FailoverState, location_name: "FailoverState"))
    GlobalCluster.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    GlobalCluster.struct_class = Types::GlobalCluster

    GlobalClusterAlreadyExistsFault.struct_class = Types::GlobalClusterAlreadyExistsFault

    GlobalClusterList.member = Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalClusterMember")

    GlobalClusterMember.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    GlobalClusterMember.add_member(:readers, Shapes::ShapeRef.new(shape: ReadersArnList, location_name: "Readers"))
    GlobalClusterMember.add_member(:is_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsWriter"))
    GlobalClusterMember.add_member(:global_write_forwarding_status, Shapes::ShapeRef.new(shape: WriteForwardingStatus, location_name: "GlobalWriteForwardingStatus"))
    GlobalClusterMember.add_member(:synchronization_status, Shapes::ShapeRef.new(shape: GlobalClusterMemberSynchronizationStatus, location_name: "SynchronizationStatus"))
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

    InstanceQuotaExceededFault.struct_class = Types::InstanceQuotaExceededFault

    InsufficientAvailableIPsInSubnetFault.struct_class = Types::InsufficientAvailableIPsInSubnetFault

    InsufficientDBClusterCapacityFault.struct_class = Types::InsufficientDBClusterCapacityFault

    InsufficientDBInstanceCapacityFault.struct_class = Types::InsufficientDBInstanceCapacityFault

    InsufficientStorageClusterCapacityFault.struct_class = Types::InsufficientStorageClusterCapacityFault

    Integration.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceArn, location_name: "SourceArn"))
    Integration.add_member(:target_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TargetArn"))
    Integration.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "IntegrationName"))
    Integration.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, location_name: "IntegrationArn"))
    Integration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KMSKeyId"))
    Integration.add_member(:additional_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "AdditionalEncryptionContext"))
    Integration.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "Status"))
    Integration.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Integration.add_member(:data_filter, Shapes::ShapeRef.new(shape: DataFilter, location_name: "DataFilter"))
    Integration.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    Integration.add_member(:create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreateTime"))
    Integration.add_member(:errors, Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: "Errors"))
    Integration.struct_class = Types::Integration

    IntegrationAlreadyExistsFault.struct_class = Types::IntegrationAlreadyExistsFault

    IntegrationConflictOperationFault.struct_class = Types::IntegrationConflictOperationFault

    IntegrationError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ErrorCode"))
    IntegrationError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    IntegrationError.struct_class = Types::IntegrationError

    IntegrationErrorList.member = Shapes::ShapeRef.new(shape: IntegrationError, location_name: "IntegrationError")

    IntegrationList.member = Shapes::ShapeRef.new(shape: Integration, location_name: "Integration")

    IntegrationNotFoundFault.struct_class = Types::IntegrationNotFoundFault

    IntegrationQuotaExceededFault.struct_class = Types::IntegrationQuotaExceededFault

    InvalidBlueGreenDeploymentStateFault.struct_class = Types::InvalidBlueGreenDeploymentStateFault

    InvalidCustomDBEngineVersionStateFault.struct_class = Types::InvalidCustomDBEngineVersionStateFault

    InvalidDBClusterAutomatedBackupStateFault.struct_class = Types::InvalidDBClusterAutomatedBackupStateFault

    InvalidDBClusterCapacityFault.struct_class = Types::InvalidDBClusterCapacityFault

    InvalidDBClusterEndpointStateFault.struct_class = Types::InvalidDBClusterEndpointStateFault

    InvalidDBClusterSnapshotStateFault.struct_class = Types::InvalidDBClusterSnapshotStateFault

    InvalidDBClusterStateFault.struct_class = Types::InvalidDBClusterStateFault

    InvalidDBInstanceAutomatedBackupStateFault.struct_class = Types::InvalidDBInstanceAutomatedBackupStateFault

    InvalidDBInstanceStateFault.struct_class = Types::InvalidDBInstanceStateFault

    InvalidDBParameterGroupStateFault.struct_class = Types::InvalidDBParameterGroupStateFault

    InvalidDBProxyEndpointStateFault.struct_class = Types::InvalidDBProxyEndpointStateFault

    InvalidDBProxyStateFault.struct_class = Types::InvalidDBProxyStateFault

    InvalidDBSecurityGroupStateFault.struct_class = Types::InvalidDBSecurityGroupStateFault

    InvalidDBShardGroupStateFault.struct_class = Types::InvalidDBShardGroupStateFault

    InvalidDBSnapshotStateFault.struct_class = Types::InvalidDBSnapshotStateFault

    InvalidDBSubnetGroupFault.struct_class = Types::InvalidDBSubnetGroupFault

    InvalidDBSubnetGroupStateFault.struct_class = Types::InvalidDBSubnetGroupStateFault

    InvalidDBSubnetStateFault.struct_class = Types::InvalidDBSubnetStateFault

    InvalidEventSubscriptionStateFault.struct_class = Types::InvalidEventSubscriptionStateFault

    InvalidExportOnlyFault.struct_class = Types::InvalidExportOnlyFault

    InvalidExportSourceStateFault.struct_class = Types::InvalidExportSourceStateFault

    InvalidExportTaskStateFault.struct_class = Types::InvalidExportTaskStateFault

    InvalidGlobalClusterStateFault.struct_class = Types::InvalidGlobalClusterStateFault

    InvalidIntegrationStateFault.struct_class = Types::InvalidIntegrationStateFault

    InvalidOptionGroupStateFault.struct_class = Types::InvalidOptionGroupStateFault

    InvalidResourceStateFault.struct_class = Types::InvalidResourceStateFault

    InvalidRestoreFault.struct_class = Types::InvalidRestoreFault

    InvalidS3BucketFault.struct_class = Types::InvalidS3BucketFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    IssueDetails.add_member(:performance_issue_details, Shapes::ShapeRef.new(shape: PerformanceIssueDetails, location_name: "PerformanceIssueDetails"))
    IssueDetails.struct_class = Types::IssueDetails

    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    LimitlessDatabase.add_member(:status, Shapes::ShapeRef.new(shape: LimitlessDatabaseStatus, location_name: "Status"))
    LimitlessDatabase.add_member(:min_required_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinRequiredACU"))
    LimitlessDatabase.struct_class = Types::LimitlessDatabase

    ListTagsForResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsForResourceMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    LogTypeList.member = Shapes::ShapeRef.new(shape: String)

    MasterUserSecret.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretArn"))
    MasterUserSecret.add_member(:secret_status, Shapes::ShapeRef.new(shape: String, location_name: "SecretStatus"))
    MasterUserSecret.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    MasterUserSecret.struct_class = Types::MasterUserSecret

    MaxDBShardGroupLimitReached.struct_class = Types::MaxDBShardGroupLimitReached

    Metric.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Metric.add_member(:references, Shapes::ShapeRef.new(shape: MetricReferenceList, location_name: "References"))
    Metric.add_member(:statistics_details, Shapes::ShapeRef.new(shape: String, location_name: "StatisticsDetails"))
    Metric.add_member(:metric_query, Shapes::ShapeRef.new(shape: MetricQuery, location_name: "MetricQuery"))
    Metric.struct_class = Types::Metric

    MetricList.member = Shapes::ShapeRef.new(shape: Metric)

    MetricQuery.add_member(:performance_insights_metric_query, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: "PerformanceInsightsMetricQuery"))
    MetricQuery.struct_class = Types::MetricQuery

    MetricReference.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    MetricReference.add_member(:reference_details, Shapes::ShapeRef.new(shape: ReferenceDetails, location_name: "ReferenceDetails"))
    MetricReference.struct_class = Types::MetricReference

    MetricReferenceList.member = Shapes::ShapeRef.new(shape: MetricReference)

    MinimumEngineVersionPerAllowedValue.add_member(:allowed_value, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValue"))
    MinimumEngineVersionPerAllowedValue.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    MinimumEngineVersionPerAllowedValue.struct_class = Types::MinimumEngineVersionPerAllowedValue

    MinimumEngineVersionPerAllowedValueList.member = Shapes::ShapeRef.new(shape: MinimumEngineVersionPerAllowedValue, location_name: "MinimumEngineVersionPerAllowedValue")

    ModifyActivityStreamRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ResourceArn"))
    ModifyActivityStreamRequest.add_member(:audit_policy_state, Shapes::ShapeRef.new(shape: AuditPolicyState, location_name: "AuditPolicyState"))
    ModifyActivityStreamRequest.struct_class = Types::ModifyActivityStreamRequest

    ModifyActivityStreamResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ModifyActivityStreamResponse.add_member(:kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "KinesisStreamName"))
    ModifyActivityStreamResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "Status"))
    ModifyActivityStreamResponse.add_member(:mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "Mode"))
    ModifyActivityStreamResponse.add_member(:engine_native_audit_fields_included, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EngineNativeAuditFieldsIncluded"))
    ModifyActivityStreamResponse.add_member(:policy_status, Shapes::ShapeRef.new(shape: ActivityStreamPolicyStatus, location_name: "PolicyStatus"))
    ModifyActivityStreamResponse.struct_class = Types::ModifyActivityStreamResponse

    ModifyAdditionalStorageVolume.add_member(:volume_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeName"))
    ModifyAdditionalStorageVolume.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyAdditionalStorageVolume.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IOPS"))
    ModifyAdditionalStorageVolume.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    ModifyAdditionalStorageVolume.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    ModifyAdditionalStorageVolume.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyAdditionalStorageVolume.add_member(:set_for_delete, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SetForDelete"))
    ModifyAdditionalStorageVolume.struct_class = Types::ModifyAdditionalStorageVolume

    ModifyAdditionalStorageVolumesList.member = Shapes::ShapeRef.new(shape: ModifyAdditionalStorageVolume)

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

    ModifyCustomDBEngineVersionMessage.add_member(:engine, Shapes::ShapeRef.new(shape: CustomEngineName, required: true, location_name: "Engine"))
    ModifyCustomDBEngineVersionMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: CustomEngineVersion, required: true, location_name: "EngineVersion"))
    ModifyCustomDBEngineVersionMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ModifyCustomDBEngineVersionMessage.add_member(:status, Shapes::ShapeRef.new(shape: CustomEngineVersionStatus, location_name: "Status"))
    ModifyCustomDBEngineVersionMessage.struct_class = Types::ModifyCustomDBEngineVersionMessage

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
    ModifyDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
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
    ModifyDBClusterMessage.add_member(:enable_global_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableGlobalWriteForwarding"))
    ModifyDBClusterMessage.add_member(:db_cluster_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterInstanceClass"))
    ModifyDBClusterMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyDBClusterMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyDBClusterMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    ModifyDBClusterMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    ModifyDBClusterMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    ModifyDBClusterMessage.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    ModifyDBClusterMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    ModifyDBClusterMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    ModifyDBClusterMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:rotate_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RotateMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:enable_local_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableLocalWriteForwarding"))
    ModifyDBClusterMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    ModifyDBClusterMessage.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    ModifyDBClusterMessage.add_member(:allow_engine_mode_change, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowEngineModeChange"))
    ModifyDBClusterMessage.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointArn, location_name: "AwsBackupRecoveryPointArn"))
    ModifyDBClusterMessage.add_member(:enable_limitless_database, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableLimitlessDatabase"))
    ModifyDBClusterMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    ModifyDBClusterMessage.add_member(:master_user_authentication_type, Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: "MasterUserAuthenticationType"))
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
    ModifyDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
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
    ModifyDBInstanceMessage.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    ModifyDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ModifyDBInstanceMessage.add_member(:domain_fqdn, Shapes::ShapeRef.new(shape: String, location_name: "DomainFqdn"))
    ModifyDBInstanceMessage.add_member(:domain_ou, Shapes::ShapeRef.new(shape: String, location_name: "DomainOu"))
    ModifyDBInstanceMessage.add_member(:domain_auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "DomainAuthSecretArn"))
    ModifyDBInstanceMessage.add_member(:domain_dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DomainDnsIps"))
    ModifyDBInstanceMessage.add_member(:disable_domain, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DisableDomain"))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    ModifyDBInstanceMessage.add_member(:db_port_number, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DBPortNumber"))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    ModifyDBInstanceMessage.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    ModifyDBInstanceMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBInstanceMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBInstanceMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CertificateRotationRestart"))
    ModifyDBInstanceMessage.add_member(:replica_mode, Shapes::ShapeRef.new(shape: ReplicaMode, location_name: "ReplicaMode"))
    ModifyDBInstanceMessage.add_member(:automation_mode, Shapes::ShapeRef.new(shape: AutomationMode, location_name: "AutomationMode"))
    ModifyDBInstanceMessage.add_member(:resume_full_automation_mode_minutes, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ResumeFullAutomationModeMinutes"))
    ModifyDBInstanceMessage.add_member(:enable_customer_owned_ip, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCustomerOwnedIp"))
    ModifyDBInstanceMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    ModifyDBInstanceMessage.add_member(:aws_backup_recovery_point_arn, Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointArn, location_name: "AwsBackupRecoveryPointArn"))
    ModifyDBInstanceMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:rotate_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RotateMasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    ModifyDBInstanceMessage.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    ModifyDBInstanceMessage.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    ModifyDBInstanceMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    ModifyDBInstanceMessage.add_member(:master_user_authentication_type, Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: "MasterUserAuthenticationType"))
    ModifyDBInstanceMessage.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: ModifyAdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
    ModifyDBInstanceMessage.struct_class = Types::ModifyDBInstanceMessage

    ModifyDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    ModifyDBInstanceResult.struct_class = Types::ModifyDBInstanceResult

    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    ModifyDBParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBParameterGroupMessage.struct_class = Types::ModifyDBParameterGroupMessage

    ModifyDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: DBProxyEndpointName, required: true, location_name: "DBProxyEndpointName"))
    ModifyDBProxyEndpointRequest.add_member(:new_db_proxy_endpoint_name, Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: "NewDBProxyEndpointName"))
    ModifyDBProxyEndpointRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    ModifyDBProxyEndpointRequest.struct_class = Types::ModifyDBProxyEndpointRequest

    ModifyDBProxyEndpointResponse.add_member(:db_proxy_endpoint, Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: "DBProxyEndpoint"))
    ModifyDBProxyEndpointResponse.struct_class = Types::ModifyDBProxyEndpointResponse

    ModifyDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    ModifyDBProxyRequest.add_member(:new_db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, location_name: "NewDBProxyName"))
    ModifyDBProxyRequest.add_member(:default_auth_scheme, Shapes::ShapeRef.new(shape: DefaultAuthScheme, location_name: "DefaultAuthScheme"))
    ModifyDBProxyRequest.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigList, location_name: "Auth"))
    ModifyDBProxyRequest.add_member(:require_tls, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RequireTLS"))
    ModifyDBProxyRequest.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IdleClientTimeout"))
    ModifyDBProxyRequest.add_member(:debug_logging, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DebugLogging"))
    ModifyDBProxyRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    ModifyDBProxyRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    ModifyDBProxyRequest.struct_class = Types::ModifyDBProxyRequest

    ModifyDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    ModifyDBProxyResponse.struct_class = Types::ModifyDBProxyResponse

    ModifyDBProxyTargetGroupRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, required: true, location_name: "TargetGroupName"))
    ModifyDBProxyTargetGroupRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    ModifyDBProxyTargetGroupRequest.add_member(:connection_pool_config, Shapes::ShapeRef.new(shape: ConnectionPoolConfiguration, location_name: "ConnectionPoolConfig"))
    ModifyDBProxyTargetGroupRequest.add_member(:new_name, Shapes::ShapeRef.new(shape: String, location_name: "NewName"))
    ModifyDBProxyTargetGroupRequest.struct_class = Types::ModifyDBProxyTargetGroupRequest

    ModifyDBProxyTargetGroupResponse.add_member(:db_proxy_target_group, Shapes::ShapeRef.new(shape: DBProxyTargetGroup, location_name: "DBProxyTargetGroup"))
    ModifyDBProxyTargetGroupResponse.struct_class = Types::ModifyDBProxyTargetGroupResponse

    ModifyDBRecommendationMessage.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RecommendationId"))
    ModifyDBRecommendationMessage.add_member(:locale, Shapes::ShapeRef.new(shape: String, location_name: "Locale"))
    ModifyDBRecommendationMessage.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ModifyDBRecommendationMessage.add_member(:recommended_action_updates, Shapes::ShapeRef.new(shape: RecommendedActionUpdateList, location_name: "RecommendedActionUpdates"))
    ModifyDBRecommendationMessage.struct_class = Types::ModifyDBRecommendationMessage

    ModifyDBShardGroupMessage.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, required: true, location_name: "DBShardGroupIdentifier"))
    ModifyDBShardGroupMessage.add_member(:max_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxACU"))
    ModifyDBShardGroupMessage.add_member(:min_acu, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinACU"))
    ModifyDBShardGroupMessage.add_member(:compute_redundancy, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ComputeRedundancy"))
    ModifyDBShardGroupMessage.struct_class = Types::ModifyDBShardGroupMessage

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

    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "NewGlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyGlobalClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyGlobalClusterMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowMajorVersionUpgrade"))
    ModifyGlobalClusterMessage.struct_class = Types::ModifyGlobalClusterMessage

    ModifyGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    ModifyGlobalClusterResult.struct_class = Types::ModifyGlobalClusterResult

    ModifyIntegrationMessage.add_member(:integration_identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "IntegrationIdentifier"))
    ModifyIntegrationMessage.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "IntegrationName"))
    ModifyIntegrationMessage.add_member(:data_filter, Shapes::ShapeRef.new(shape: DataFilter, location_name: "DataFilter"))
    ModifyIntegrationMessage.add_member(:description, Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: "Description"))
    ModifyIntegrationMessage.struct_class = Types::ModifyIntegrationMessage

    ModifyOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    ModifyOptionGroupMessage.add_member(:options_to_include, Shapes::ShapeRef.new(shape: OptionConfigurationList, location_name: "OptionsToInclude"))
    ModifyOptionGroupMessage.add_member(:options_to_remove, Shapes::ShapeRef.new(shape: OptionNamesList, location_name: "OptionsToRemove"))
    ModifyOptionGroupMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyOptionGroupMessage.struct_class = Types::ModifyOptionGroupMessage

    ModifyOptionGroupResult.add_member(:option_group, Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup"))
    ModifyOptionGroupResult.struct_class = Types::ModifyOptionGroupResult

    ModifyTenantDatabaseMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    ModifyTenantDatabaseMessage.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TenantDBName"))
    ModifyTenantDatabaseMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:new_tenant_db_name, Shapes::ShapeRef.new(shape: String, location_name: "NewTenantDBName"))
    ModifyTenantDatabaseMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:rotate_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RotateMasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    ModifyTenantDatabaseMessage.struct_class = Types::ModifyTenantDatabaseMessage

    ModifyTenantDatabaseResult.add_member(:tenant_database, Shapes::ShapeRef.new(shape: TenantDatabase, location_name: "TenantDatabase"))
    ModifyTenantDatabaseResult.struct_class = Types::ModifyTenantDatabaseResult

    NetworkTypeNotSupported.struct_class = Types::NetworkTypeNotSupported

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
    OptionGroup.add_member(:source_option_group, Shapes::ShapeRef.new(shape: String, location_name: "SourceOptionGroup"))
    OptionGroup.add_member(:source_account_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceAccountId"))
    OptionGroup.add_member(:copy_timestamp, Shapes::ShapeRef.new(shape: TStamp, location_name: "CopyTimestamp"))
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
    OptionGroupOption.add_member(:copyable_cross_account, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyableCrossAccount"))
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
    OptionSetting.add_member(:value, Shapes::ShapeRef.new(shape: PotentiallySensitiveOptionSettingValue, location_name: "Value"))
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
    OrderableDBInstanceOption.add_member(:supports_storage_throughput, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageThroughput"))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsEnhancedMonitoring"))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIAMDatabaseAuthentication"))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsPerformanceInsights"))
    OrderableDBInstanceOption.add_member(:min_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageSize"))
    OrderableDBInstanceOption.add_member(:max_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageSize"))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinIopsPerGib"))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxIopsPerGib"))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageThroughputPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageThroughputPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_iops, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinStorageThroughputPerIops"))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_iops, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxStorageThroughputPerIops"))
    OrderableDBInstanceOption.add_member(:available_processor_features, Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: "AvailableProcessorFeatures"))
    OrderableDBInstanceOption.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    OrderableDBInstanceOption.add_member(:supports_storage_autoscaling, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsStorageAutoscaling"))
    OrderableDBInstanceOption.add_member(:supports_kerberos_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsKerberosAuthentication"))
    OrderableDBInstanceOption.add_member(:outpost_capable, Shapes::ShapeRef.new(shape: Boolean, location_name: "OutpostCapable"))
    OrderableDBInstanceOption.add_member(:supported_activity_stream_modes, Shapes::ShapeRef.new(shape: ActivityStreamModeList, location_name: "SupportedActivityStreamModes"))
    OrderableDBInstanceOption.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsGlobalDatabases"))
    OrderableDBInstanceOption.add_member(:supported_network_types, Shapes::ShapeRef.new(shape: StringList, location_name: "SupportedNetworkTypes"))
    OrderableDBInstanceOption.add_member(:supports_clusters, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsClusters"))
    OrderableDBInstanceOption.add_member(:supports_dedicated_log_volume, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsDedicatedLogVolume"))
    OrderableDBInstanceOption.add_member(:supports_http_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsHttpEndpoint"))
    OrderableDBInstanceOption.add_member(:supports_additional_storage_volumes, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsAdditionalStorageVolumes"))
    OrderableDBInstanceOption.add_member(:available_additional_storage_volumes_options, Shapes::ShapeRef.new(shape: AvailableAdditionalStorageVolumesOptionList, location_name: "AvailableAdditionalStorageVolumesOptions"))
    OrderableDBInstanceOption.struct_class = Types::OrderableDBInstanceOption

    OrderableDBInstanceOptionsList.member = Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, location_name: "OrderableDBInstanceOption")

    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OrderableDBInstanceOptionsMessage.struct_class = Types::OrderableDBInstanceOptionsMessage

    Outpost.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Outpost.struct_class = Types::Outpost

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: PotentiallySensitiveParameterValue, location_name: "ParameterValue"))
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
    PendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    PendingModifiedValues.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    PendingModifiedValues.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    PendingModifiedValues.add_member(:automation_mode, Shapes::ShapeRef.new(shape: AutomationMode, location_name: "AutomationMode"))
    PendingModifiedValues.add_member(:resume_full_automation_mode_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ResumeFullAutomationModeTime"))
    PendingModifiedValues.add_member(:multi_tenant, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiTenant"))
    PendingModifiedValues.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IAMDatabaseAuthenticationEnabled"))
    PendingModifiedValues.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    PendingModifiedValues.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    PendingModifiedValues.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: StringList, location_name: "Dimensions"))
    PerformanceInsightsMetricDimensionGroup.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    PerformanceInsightsMetricDimensionGroup.struct_class = Types::PerformanceInsightsMetricDimensionGroup

    PerformanceInsightsMetricQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensionGroup, location_name: "GroupBy"))
    PerformanceInsightsMetricQuery.add_member(:metric, Shapes::ShapeRef.new(shape: String, location_name: "Metric"))
    PerformanceInsightsMetricQuery.struct_class = Types::PerformanceInsightsMetricQuery

    PerformanceIssueDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    PerformanceIssueDetails.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    PerformanceIssueDetails.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricList, location_name: "Metrics"))
    PerformanceIssueDetails.add_member(:analysis, Shapes::ShapeRef.new(shape: String, location_name: "Analysis"))
    PerformanceIssueDetails.struct_class = Types::PerformanceIssueDetails

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

    RdsCustomClusterConfiguration.add_member(:interconnect_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "InterconnectSubnetId"))
    RdsCustomClusterConfiguration.add_member(:transit_gateway_multicast_domain_id, Shapes::ShapeRef.new(shape: String, location_name: "TransitGatewayMulticastDomainId"))
    RdsCustomClusterConfiguration.add_member(:replica_mode, Shapes::ShapeRef.new(shape: ReplicaMode, location_name: "ReplicaMode"))
    RdsCustomClusterConfiguration.struct_class = Types::RdsCustomClusterConfiguration

    ReadReplicaDBClusterIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBClusterIdentifier")

    ReadReplicaDBInstanceIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBInstanceIdentifier")

    ReadReplicaIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaIdentifier")

    ReadersArnList.member = Shapes::ShapeRef.new(shape: String)

    RebootDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RebootDBClusterMessage.struct_class = Types::RebootDBClusterMessage

    RebootDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RebootDBClusterResult.struct_class = Types::RebootDBClusterResult

    RebootDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RebootDBInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootDBInstanceMessage.struct_class = Types::RebootDBInstanceMessage

    RebootDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RebootDBInstanceResult.struct_class = Types::RebootDBInstanceResult

    RebootDBShardGroupMessage.add_member(:db_shard_group_identifier, Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, required: true, location_name: "DBShardGroupIdentifier"))
    RebootDBShardGroupMessage.struct_class = Types::RebootDBShardGroupMessage

    RecommendedAction.add_member(:action_id, Shapes::ShapeRef.new(shape: String, location_name: "ActionId"))
    RecommendedAction.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "Title"))
    RecommendedAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RecommendedAction.add_member(:operation, Shapes::ShapeRef.new(shape: String, location_name: "Operation"))
    RecommendedAction.add_member(:parameters, Shapes::ShapeRef.new(shape: RecommendedActionParameterList, location_name: "Parameters"))
    RecommendedAction.add_member(:apply_modes, Shapes::ShapeRef.new(shape: StringList, location_name: "ApplyModes"))
    RecommendedAction.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    RecommendedAction.add_member(:issue_details, Shapes::ShapeRef.new(shape: IssueDetails, location_name: "IssueDetails"))
    RecommendedAction.add_member(:context_attributes, Shapes::ShapeRef.new(shape: ContextAttributeList, location_name: "ContextAttributes"))
    RecommendedAction.struct_class = Types::RecommendedAction

    RecommendedActionList.member = Shapes::ShapeRef.new(shape: RecommendedAction)

    RecommendedActionParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    RecommendedActionParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    RecommendedActionParameter.struct_class = Types::RecommendedActionParameter

    RecommendedActionParameterList.member = Shapes::ShapeRef.new(shape: RecommendedActionParameter)

    RecommendedActionUpdate.add_member(:action_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ActionId"))
    RecommendedActionUpdate.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Status"))
    RecommendedActionUpdate.struct_class = Types::RecommendedActionUpdate

    RecommendedActionUpdateList.member = Shapes::ShapeRef.new(shape: RecommendedActionUpdate)

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge, location_name: "RecurringCharge")

    ReferenceDetails.add_member(:scalar_reference_details, Shapes::ShapeRef.new(shape: ScalarReferenceDetails, location_name: "ScalarReferenceDetails"))
    ReferenceDetails.struct_class = Types::ReferenceDetails

    RegisterDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: DBProxyName, required: true, location_name: "DBProxyName"))
    RegisterDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: "TargetGroupName"))
    RegisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBInstanceIdentifiers"))
    RegisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBClusterIdentifiers"))
    RegisterDBProxyTargetsRequest.struct_class = Types::RegisterDBProxyTargetsRequest

    RegisterDBProxyTargetsResponse.add_member(:db_proxy_targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "DBProxyTargets"))
    RegisterDBProxyTargetsResponse.struct_class = Types::RegisterDBProxyTargetsResponse

    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbClusterIdentifier"))
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
    RestoreDBClusterFromS3Message.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
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
    RestoreDBClusterFromS3Message.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBClusterFromS3Message.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBClusterFromS3Message.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromS3Message.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    RestoreDBClusterFromS3Message.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    RestoreDBClusterFromS3Message.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
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
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterInstanceClass"))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    RestoreDBClusterFromSnapshotMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreDBClusterFromSnapshotMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:rds_custom_cluster_configuration, Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: "RdsCustomClusterConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    RestoreDBClusterFromSnapshotMessage.struct_class = Types::RestoreDBClusterFromSnapshotMessage

    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.struct_class = Types::RestoreDBClusterFromSnapshotResult

    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, Shapes::ShapeRef.new(shape: String, location_name: "RestoreType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterIdentifier"))
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
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterInstanceClass"))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreDBClusterToPointInTimeMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    RestoreDBClusterToPointInTimeMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceDbClusterResourceId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: "ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    RestoreDBClusterToPointInTimeMessage.add_member(:rds_custom_cluster_configuration, Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: "RdsCustomClusterConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    RestoreDBClusterToPointInTimeMessage.struct_class = Types::RestoreDBClusterToPointInTimeMessage

    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.struct_class = Types::RestoreDBClusterToPointInTimeResult

    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
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
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_fqdn, Shapes::ShapeRef.new(shape: String, location_name: "DomainFqdn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_ou, Shapes::ShapeRef.new(shape: String, location_name: "DomainOu"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "DomainAuthSecretArn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DomainDnsIps"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_customer_owned_ip, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCustomerOwnedIp"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:custom_iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "CustomIamInstanceProfile"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
    RestoreDBInstanceFromDBSnapshotMessage.struct_class = Types::RestoreDBInstanceFromDBSnapshotMessage

    RestoreDBInstanceFromDBSnapshotResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RestoreDBInstanceFromDBSnapshotResult.struct_class = Types::RestoreDBInstanceFromDBSnapshotResult

    RestoreDBInstanceFromS3Message.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RestoreDBInstanceFromS3Message.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceClass"))
    RestoreDBInstanceFromS3Message.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBInstanceFromS3Message.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    RestoreDBInstanceFromS3Message.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
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
    RestoreDBInstanceFromS3Message.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
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
    RestoreDBInstanceFromS3Message.add_member(:database_insights_mode, Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: "DatabaseInsightsMode"))
    RestoreDBInstanceFromS3Message.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBInstanceFromS3Message.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromS3Message.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceFromS3Message.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    RestoreDBInstanceFromS3Message.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBInstanceFromS3Message.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    RestoreDBInstanceFromS3Message.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    RestoreDBInstanceFromS3Message.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    RestoreDBInstanceFromS3Message.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    RestoreDBInstanceFromS3Message.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
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
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "StorageThroughput"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_fqdn, Shapes::ShapeRef.new(shape: String, location_name: "DomainFqdn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_ou, Shapes::ShapeRef.new(shape: String, location_name: "DomainOu"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_auth_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "DomainAuthSecretArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_dns_ips, Shapes::ShapeRef.new(shape: StringList, location_name: "DomainDnsIps"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceDbiResourceId"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_customer_owned_ip, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableCustomerOwnedIp"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:network_type, Shapes::ShapeRef.new(shape: String, location_name: "NetworkType"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_automated_backups_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBInstanceAutomatedBackupsArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:backup_target, Shapes::ShapeRef.new(shape: String, location_name: "BackupTarget"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:custom_iam_instance_profile, Shapes::ShapeRef.new(shape: String, location_name: "CustomIamInstanceProfile"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:dedicated_log_volume, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DedicatedLogVolume"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine_lifecycle_support, Shapes::ShapeRef.new(shape: String, location_name: "EngineLifecycleSupport"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:manage_master_user_password, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ManageMasterUserPassword"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:master_user_secret_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:additional_storage_volumes, Shapes::ShapeRef.new(shape: AdditionalStorageVolumesList, location_name: "AdditionalStorageVolumes"))
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

    ScalarReferenceDetails.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "Value"))
    ScalarReferenceDetails.struct_class = Types::ScalarReferenceDetails

    ScalingConfiguration.add_member(:min_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacity"))
    ScalingConfiguration.add_member(:max_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacity"))
    ScalingConfiguration.add_member(:auto_pause, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoPause"))
    ScalingConfiguration.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ScalingConfiguration.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    ScalingConfiguration.add_member(:seconds_before_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsBeforeTimeout"))
    ScalingConfiguration.struct_class = Types::ScalingConfiguration

    ScalingConfigurationInfo.add_member(:min_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacity"))
    ScalingConfigurationInfo.add_member(:max_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacity"))
    ScalingConfigurationInfo.add_member(:auto_pause, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoPause"))
    ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ScalingConfigurationInfo.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    ScalingConfigurationInfo.add_member(:seconds_before_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsBeforeTimeout"))
    ScalingConfigurationInfo.struct_class = Types::ScalingConfigurationInfo

    ServerlessV2FeaturesSupport.add_member(:min_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinCapacity"))
    ServerlessV2FeaturesSupport.add_member(:max_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxCapacity"))
    ServerlessV2FeaturesSupport.struct_class = Types::ServerlessV2FeaturesSupport

    ServerlessV2ScalingConfiguration.add_member(:min_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ServerlessV2ScalingConfiguration.struct_class = Types::ServerlessV2ScalingConfiguration

    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ServerlessV2ScalingConfigurationInfo.struct_class = Types::ServerlessV2ScalingConfigurationInfo

    SharedSnapshotQuotaExceededFault.struct_class = Types::SharedSnapshotQuotaExceededFault

    SnapshotQuotaExceededFault.struct_class = Types::SnapshotQuotaExceededFault

    SourceClusterNotSupportedFault.struct_class = Types::SourceClusterNotSupportedFault

    SourceDatabaseNotSupportedFault.struct_class = Types::SourceDatabaseNotSupportedFault

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SourceId")

    SourceNotFoundFault.struct_class = Types::SourceNotFoundFault

    SourceRegion.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "RegionName"))
    SourceRegion.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    SourceRegion.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SourceRegion.add_member(:supports_db_instance_automated_backups_replication, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsDBInstanceAutomatedBackupsReplication"))
    SourceRegion.struct_class = Types::SourceRegion

    SourceRegionList.member = Shapes::ShapeRef.new(shape: SourceRegion, location_name: "SourceRegion")

    SourceRegionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SourceRegionMessage.add_member(:source_regions, Shapes::ShapeRef.new(shape: SourceRegionList, location_name: "SourceRegions"))
    SourceRegionMessage.struct_class = Types::SourceRegionMessage

    StartActivityStreamRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    StartActivityStreamRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, required: true, location_name: "Mode"))
    StartActivityStreamRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "KmsKeyId"))
    StartActivityStreamRequest.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ApplyImmediately"))
    StartActivityStreamRequest.add_member(:engine_native_audit_fields_included, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EngineNativeAuditFieldsIncluded"))
    StartActivityStreamRequest.struct_class = Types::StartActivityStreamRequest

    StartActivityStreamResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    StartActivityStreamResponse.add_member(:kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "KinesisStreamName"))
    StartActivityStreamResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "Status"))
    StartActivityStreamResponse.add_member(:mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "Mode"))
    StartActivityStreamResponse.add_member(:engine_native_audit_fields_included, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EngineNativeAuditFieldsIncluded"))
    StartActivityStreamResponse.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    StartActivityStreamResponse.struct_class = Types::StartActivityStreamResponse

    StartDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StartDBClusterMessage.struct_class = Types::StartDBClusterMessage

    StartDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StartDBClusterResult.struct_class = Types::StartDBClusterResult

    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBInstanceArn"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PreSignedUrl"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    StartDBInstanceAutomatedBackupsReplicationMessage.struct_class = Types::StartDBInstanceAutomatedBackupsReplicationMessage

    StartDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: "DBInstanceAutomatedBackup"))
    StartDBInstanceAutomatedBackupsReplicationResult.struct_class = Types::StartDBInstanceAutomatedBackupsReplicationResult

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

    StopDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBInstanceArn"))
    StopDBInstanceAutomatedBackupsReplicationMessage.struct_class = Types::StopDBInstanceAutomatedBackupsReplicationMessage

    StopDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: "DBInstanceAutomatedBackup"))
    StopDBInstanceAutomatedBackupsReplicationResult.struct_class = Types::StopDBInstanceAutomatedBackupsReplicationResult

    StopDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    StopDBInstanceMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    StopDBInstanceMessage.struct_class = Types::StopDBInstanceMessage

    StopDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    StopDBInstanceResult.struct_class = Types::StopDBInstanceResult

    StorageQuotaExceededFault.struct_class = Types::StorageQuotaExceededFault

    StorageTypeNotAvailableFault.struct_class = Types::StorageTypeNotAvailableFault

    StorageTypeNotSupportedFault.struct_class = Types::StorageTypeNotSupportedFault

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_outpost, Shapes::ShapeRef.new(shape: Outpost, location_name: "SubnetOutpost"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    SubscriptionAlreadyExistFault.struct_class = Types::SubscriptionAlreadyExistFault

    SubscriptionCategoryNotFoundFault.struct_class = Types::SubscriptionCategoryNotFoundFault

    SubscriptionNotFoundFault.struct_class = Types::SubscriptionNotFoundFault

    SupportedCharacterSetsList.member = Shapes::ShapeRef.new(shape: CharacterSet, location_name: "CharacterSet")

    SupportedEngineLifecycle.add_member(:lifecycle_support_name, Shapes::ShapeRef.new(shape: LifecycleSupportName, required: true, location_name: "LifecycleSupportName"))
    SupportedEngineLifecycle.add_member(:lifecycle_support_start_date, Shapes::ShapeRef.new(shape: TStamp, required: true, location_name: "LifecycleSupportStartDate"))
    SupportedEngineLifecycle.add_member(:lifecycle_support_end_date, Shapes::ShapeRef.new(shape: TStamp, required: true, location_name: "LifecycleSupportEndDate"))
    SupportedEngineLifecycle.struct_class = Types::SupportedEngineLifecycle

    SupportedEngineLifecycleList.member = Shapes::ShapeRef.new(shape: SupportedEngineLifecycle, location_name: "SupportedEngineLifecycle")

    SupportedTimezonesList.member = Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone")

    SwitchoverBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, required: true, location_name: "BlueGreenDeploymentIdentifier"))
    SwitchoverBlueGreenDeploymentRequest.add_member(:switchover_timeout, Shapes::ShapeRef.new(shape: SwitchoverTimeout, location_name: "SwitchoverTimeout"))
    SwitchoverBlueGreenDeploymentRequest.struct_class = Types::SwitchoverBlueGreenDeploymentRequest

    SwitchoverBlueGreenDeploymentResponse.add_member(:blue_green_deployment, Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: "BlueGreenDeployment"))
    SwitchoverBlueGreenDeploymentResponse.struct_class = Types::SwitchoverBlueGreenDeploymentResponse

    SwitchoverDetail.add_member(:source_member, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "SourceMember"))
    SwitchoverDetail.add_member(:target_member, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "TargetMember"))
    SwitchoverDetail.add_member(:status, Shapes::ShapeRef.new(shape: SwitchoverDetailStatus, location_name: "Status"))
    SwitchoverDetail.struct_class = Types::SwitchoverDetail

    SwitchoverDetailList.member = Shapes::ShapeRef.new(shape: SwitchoverDetail)

    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, Shapes::ShapeRef.new(shape: DBClusterIdentifier, required: true, location_name: "TargetDbClusterIdentifier"))
    SwitchoverGlobalClusterMessage.struct_class = Types::SwitchoverGlobalClusterMessage

    SwitchoverGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    SwitchoverGlobalClusterResult.struct_class = Types::SwitchoverGlobalClusterResult

    SwitchoverReadReplicaMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    SwitchoverReadReplicaMessage.struct_class = Types::SwitchoverReadReplicaMessage

    SwitchoverReadReplicaResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    SwitchoverReadReplicaResult.struct_class = Types::SwitchoverReadReplicaResult

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

    TenantDatabase.add_member(:tenant_database_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "TenantDatabaseCreateTime"))
    TenantDatabase.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    TenantDatabase.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, location_name: "TenantDBName"))
    TenantDatabase.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    TenantDatabase.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    TenantDatabase.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    TenantDatabase.add_member(:tenant_database_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "TenantDatabaseResourceId"))
    TenantDatabase.add_member(:tenant_database_arn, Shapes::ShapeRef.new(shape: String, location_name: "TenantDatabaseARN"))
    TenantDatabase.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    TenantDatabase.add_member(:nchar_character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "NcharCharacterSetName"))
    TenantDatabase.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    TenantDatabase.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: TenantDatabasePendingModifiedValues, location_name: "PendingModifiedValues"))
    TenantDatabase.add_member(:master_user_secret, Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: "MasterUserSecret"))
    TenantDatabase.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TenantDatabase.struct_class = Types::TenantDatabase

    TenantDatabaseAlreadyExistsFault.struct_class = Types::TenantDatabaseAlreadyExistsFault

    TenantDatabaseNotFoundFault.struct_class = Types::TenantDatabaseNotFoundFault

    TenantDatabasePendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "MasterUserPassword"))
    TenantDatabasePendingModifiedValues.add_member(:tenant_db_name, Shapes::ShapeRef.new(shape: String, location_name: "TenantDBName"))
    TenantDatabasePendingModifiedValues.struct_class = Types::TenantDatabasePendingModifiedValues

    TenantDatabaseQuotaExceededFault.struct_class = Types::TenantDatabaseQuotaExceededFault

    TenantDatabasesList.member = Shapes::ShapeRef.new(shape: TenantDatabase, location_name: "TenantDatabase")

    TenantDatabasesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    TenantDatabasesMessage.add_member(:tenant_databases, Shapes::ShapeRef.new(shape: TenantDatabasesList, location_name: "TenantDatabases"))
    TenantDatabasesMessage.struct_class = Types::TenantDatabasesMessage

    Timezone.add_member(:timezone_name, Shapes::ShapeRef.new(shape: String, location_name: "TimezoneName"))
    Timezone.struct_class = Types::Timezone

    UnsupportedDBEngineVersionFault.struct_class = Types::UnsupportedDBEngineVersionFault

    UpgradeTarget.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    UpgradeTarget.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    UpgradeTarget.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMajorVersionUpgrade"))
    UpgradeTarget.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    UpgradeTarget.add_member(:supports_parallel_query, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsParallelQuery"))
    UpgradeTarget.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsGlobalDatabases"))
    UpgradeTarget.add_member(:supports_babelfish, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsBabelfish"))
    UpgradeTarget.add_member(:supports_limitless_database, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsLimitlessDatabase"))
    UpgradeTarget.add_member(:supports_local_write_forwarding, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsLocalWriteForwarding"))
    UpgradeTarget.add_member(:supports_integrations, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsIntegrations"))
    UpgradeTarget.struct_class = Types::UpgradeTarget

    UserAuthConfig.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UserAuthConfig.add_member(:user_name, Shapes::ShapeRef.new(shape: AuthUserName, location_name: "UserName"))
    UserAuthConfig.add_member(:auth_scheme, Shapes::ShapeRef.new(shape: AuthScheme, location_name: "AuthScheme"))
    UserAuthConfig.add_member(:secret_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SecretArn"))
    UserAuthConfig.add_member(:iam_auth, Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: "IAMAuth"))
    UserAuthConfig.add_member(:client_password_auth_type, Shapes::ShapeRef.new(shape: ClientPasswordAuthType, location_name: "ClientPasswordAuthType"))
    UserAuthConfig.struct_class = Types::UserAuthConfig

    UserAuthConfigInfo.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UserAuthConfigInfo.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "UserName"))
    UserAuthConfigInfo.add_member(:auth_scheme, Shapes::ShapeRef.new(shape: AuthScheme, location_name: "AuthScheme"))
    UserAuthConfigInfo.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretArn"))
    UserAuthConfigInfo.add_member(:iam_auth, Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: "IAMAuth"))
    UserAuthConfigInfo.add_member(:client_password_auth_type, Shapes::ShapeRef.new(shape: ClientPasswordAuthType, location_name: "ClientPasswordAuthType"))
    UserAuthConfigInfo.struct_class = Types::UserAuthConfigInfo

    UserAuthConfigInfoList.member = Shapes::ShapeRef.new(shape: UserAuthConfigInfo)

    UserAuthConfigList.member = Shapes::ShapeRef.new(shape: UserAuthConfig)

    ValidAdditionalStorageOptions.add_member(:supports_additional_storage_volumes, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsAdditionalStorageVolumes"))
    ValidAdditionalStorageOptions.add_member(:volumes, Shapes::ShapeRef.new(shape: ValidVolumeOptionsList, location_name: "Volumes"))
    ValidAdditionalStorageOptions.struct_class = Types::ValidAdditionalStorageOptions

    ValidDBInstanceModificationsMessage.add_member(:storage, Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: "Storage"))
    ValidDBInstanceModificationsMessage.add_member(:valid_processor_features, Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: "ValidProcessorFeatures"))
    ValidDBInstanceModificationsMessage.add_member(:supports_dedicated_log_volume, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsDedicatedLogVolume"))
    ValidDBInstanceModificationsMessage.add_member(:additional_storage, Shapes::ShapeRef.new(shape: ValidAdditionalStorageOptions, location_name: "AdditionalStorage"))
    ValidDBInstanceModificationsMessage.struct_class = Types::ValidDBInstanceModificationsMessage

    ValidStorageOptions.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ValidStorageOptions.add_member(:storage_size, Shapes::ShapeRef.new(shape: RangeList, location_name: "StorageSize"))
    ValidStorageOptions.add_member(:provisioned_iops, Shapes::ShapeRef.new(shape: RangeList, location_name: "ProvisionedIops"))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: "IopsToStorageRatio"))
    ValidStorageOptions.add_member(:provisioned_storage_throughput, Shapes::ShapeRef.new(shape: RangeList, location_name: "ProvisionedStorageThroughput"))
    ValidStorageOptions.add_member(:storage_throughput_to_iops_ratio, Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: "StorageThroughputToIopsRatio"))
    ValidStorageOptions.add_member(:supports_storage_autoscaling, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageAutoscaling"))
    ValidStorageOptions.struct_class = Types::ValidStorageOptions

    ValidStorageOptionsList.member = Shapes::ShapeRef.new(shape: ValidStorageOptions, location_name: "ValidStorageOptions")

    ValidUpgradeTargetList.member = Shapes::ShapeRef.new(shape: UpgradeTarget, location_name: "UpgradeTarget")

    ValidVolumeOptions.add_member(:volume_name, Shapes::ShapeRef.new(shape: String, location_name: "VolumeName"))
    ValidVolumeOptions.add_member(:storage, Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: "Storage"))
    ValidVolumeOptions.struct_class = Types::ValidVolumeOptions

    ValidVolumeOptionsList.member = Shapes::ShapeRef.new(shape: ValidVolumeOptions)

    VpcEncryptionControlViolationException.struct_class = Types::VpcEncryptionControlViolationException

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId")

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, location_name: "VpcSecurityGroupMembership")


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-10-31"

      api.metadata = {
        "apiVersion" => "2014-10-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "rds",
        "protocol" => "query",
        "protocols" => ["query"],
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
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneNotFoundFault)
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

      api.add_operation(:create_blue_green_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBlueGreenDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBlueGreenDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBlueGreenDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceDatabaseNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceClusterNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:create_custom_db_engine_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomDBEngineVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomDBEngineVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersion)
        o.errors << Shapes::ShapeRef.new(shape: CustomDBEngineVersionAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomDBEngineVersionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: Ec2ImagePropertiesNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: CreateCustomDBEngineVersionFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
      end)

      api.add_operation(:create_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupFault)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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

      api.add_operation(:create_db_proxy_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBProxyEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBProxyEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDBProxyEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
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

      api.add_operation(:create_db_shard_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBShardGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBShardGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBShardGroup)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: MaxDBShardGroupLimitReached)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDBEngineVersionFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationMessage)
        o.output = Shapes::ShapeRef.new(shape: Integration)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
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

      api.add_operation(:create_tenant_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTenantDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTenantDatabaseMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateTenantDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:delete_blue_green_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBlueGreenDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBlueGreenDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBlueGreenDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentStateFault)
      end)

      api.add_operation(:delete_custom_db_engine_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomDBEngineVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomDBEngineVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersion)
        o.errors << Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
      end)

      api.add_operation(:delete_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:delete_db_cluster_automated_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterAutomatedBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterAutomatedBackupMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterAutomatedBackupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterAutomatedBackupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
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
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
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

      api.add_operation(:delete_db_proxy_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBProxyEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBProxyEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBProxyEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyEndpointStateFault)
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

      api.add_operation(:delete_db_shard_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBShardGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBShardGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBShardGroup)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
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

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationMessage)
        o.output = Shapes::ShapeRef.new(shape: Integration)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
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

      api.add_operation(:delete_tenant_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTenantDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTenantDatabaseMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteTenantDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
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

      api.add_operation(:describe_blue_green_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBlueGreenDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBlueGreenDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBlueGreenDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: CertificateMessage)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_automated_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterAutomatedBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterAutomatedBackupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterEndpointsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpointMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
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
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotReadyFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_major_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBMajorEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBMajorEngineVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBMajorEngineVersionsResponse)
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

      api.add_operation(:describe_db_proxy_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBProxyEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBProxyEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBProxyEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
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

      api.add_operation(:describe_db_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBRecommendationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBRecommendationsMessage)
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

      api.add_operation(:describe_db_shard_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBShardGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBShardGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBShardGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:describe_db_snapshot_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSnapshotAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_snapshot_tenant_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSnapshotTenantDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSnapshotTenantDatabasesMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabasesMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
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

      api.add_operation(:describe_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIntegrationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_tenant_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTenantDatabases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTenantDatabasesMessage)
        o.output = Shapes::ShapeRef.new(shape: TenantDatabasesMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
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

      api.add_operation(:disable_http_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableHttpEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableHttpEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableHttpEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
      end)

      api.add_operation(:download_db_log_file_portion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DownloadDBLogFilePortion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionMessage)
        o.output = Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotReadyFault)
        o.errors << Shapes::ShapeRef.new(shape: DBLogFileNotFoundFault)
        o[:pager] = Aws::Pager.new(
          more_results: "additional_data_pending",
          limit_key: "number_of_lines",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:enable_http_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableHttpEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableHttpEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableHttpEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
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

      api.add_operation(:failover_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: FailoverGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
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
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
      end)

      api.add_operation(:modify_activity_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyActivityStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyActivityStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyActivityStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
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

      api.add_operation(:modify_custom_db_engine_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCustomDBEngineVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCustomDBEngineVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersion)
        o.errors << Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotAvailableFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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

      api.add_operation(:modify_db_proxy_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBProxyEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBProxyEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBProxyEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyEndpointStateFault)
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

      api.add_operation(:modify_db_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBRecommendationMessage)
        o.output = Shapes::ShapeRef.new(shape: DBRecommendationMessage)
      end)

      api.add_operation(:modify_db_shard_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBShardGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBShardGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBShardGroup)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
      end)

      api.add_operation(:modify_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:modify_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyIntegrationMessage)
        o.output = Shapes::ShapeRef.new(shape: Integration)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
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

      api.add_operation(:modify_tenant_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyTenantDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyTenantDatabaseMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyTenantDatabaseResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
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

      api.add_operation(:reboot_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:reboot_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:reboot_db_shard_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBShardGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBShardGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBShardGroup)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: InsufficientAvailableIPsInSubnetFault)
      end)

      api.add_operation(:remove_from_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFromGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
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
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
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
        o.errors << Shapes::ShapeRef.new(shape: VpcEncryptionControlViolationException)
      end)

      api.add_operation(:start_db_instance_automated_backups_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDBInstanceAutomatedBackupsReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDBInstanceAutomatedBackupsReplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDBInstanceAutomatedBackupsReplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceAutomatedBackupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
      end)

      api.add_operation(:start_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExportTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: ExportTask)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
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

      api.add_operation(:stop_db_instance_automated_backups_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDBInstanceAutomatedBackupsReplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDBInstanceAutomatedBackupsReplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDBInstanceAutomatedBackupsReplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:switchover_blue_green_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwitchoverBlueGreenDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwitchoverBlueGreenDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: SwitchoverBlueGreenDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentStateFault)
      end)

      api.add_operation(:switchover_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwitchoverGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:switchover_read_replica, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwitchoverReadReplica"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwitchoverReadReplicaMessage)
        o.output = Shapes::ShapeRef.new(shape: SwitchoverReadReplicaResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)
    end

  end
end
