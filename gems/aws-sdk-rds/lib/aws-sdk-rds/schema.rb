# frozen_string_literal: true

# This is generated code!

module Aws::RDS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AccountAttributesMessage', name: 'AccountAttributesMessage')
    AccountQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AccountQuota', name: 'AccountQuota')
    AccountQuotaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#AccountQuotaList', name: 'AccountQuotaList')
    ActivityStreamMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ActivityStreamMode', name: 'ActivityStreamMode')
    ActivityStreamModeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ActivityStreamModeList', name: 'ActivityStreamModeList')
    ActivityStreamPolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ActivityStreamPolicyStatus', name: 'ActivityStreamPolicyStatus')
    ActivityStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ActivityStreamStatus', name: 'ActivityStreamStatus')
    AddRoleToDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AddRoleToDBClusterMessage', name: 'AddRoleToDBClusterMessage')
    AddRoleToDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AddRoleToDBInstanceMessage', name: 'AddRoleToDBInstanceMessage')
    AddSourceIdentifierToSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AddSourceIdentifierToSubscriptionMessage', name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AddSourceIdentifierToSubscriptionResult', name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AddTagsToResourceMessage', name: 'AddTagsToResourceMessage')
    ApplyMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ApplyMethod', name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ApplyPendingMaintenanceActionMessage', name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ApplyPendingMaintenanceActionResult', name: 'ApplyPendingMaintenanceActionResult')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#AttributeValueList', name: 'AttributeValueList')
    AuditPolicyState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#AuditPolicyState', name: 'AuditPolicyState')
    AuthScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#AuthScheme', name: 'AuthScheme')
    AuthUserName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#AuthUserName', name: 'AuthUserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AuthorizationAlreadyExistsFault', name: 'AuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AuthorizationQuotaExceededFault', name: 'AuthorizationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizeDBSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AuthorizeDBSecurityGroupIngressMessage', name: 'AuthorizeDBSecurityGroupIngressMessage')
    AuthorizeDBSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AuthorizeDBSecurityGroupIngressResult', name: 'AuthorizeDBSecurityGroupIngressResult')
    AutomationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#AutomationMode', name: 'AutomationMode')
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#AvailabilityZoneList', name: 'AvailabilityZoneList')
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#AvailabilityZones', name: 'AvailabilityZones')
    AvailableProcessorFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#AvailableProcessorFeature', name: 'AvailableProcessorFeature')
    AvailableProcessorFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#AvailableProcessorFeatureList', name: 'AvailableProcessorFeatureList')
    AwsBackupRecoveryPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#AwsBackupRecoveryPointArn', name: 'AwsBackupRecoveryPointArn', traits: {"smithy.api#length" => {"min" => 43, "max" => 350}, "smithy.api#pattern" => "^arn:aws[a-z-]*:backup:[-a-z0-9]+:[0-9]{12}:[-a-z]+:([a-z0-9\\-]+:)?[a-z][a-z0-9\\-]{0,255}$"})
    BacktrackDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BacktrackDBClusterMessage', name: 'BacktrackDBClusterMessage')
    BacktrackDBClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BacktrackDBClusterOutput', name: 'BacktrackDBClusterOutput')
    BackupPolicyNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BackupPolicyNotFoundFault', name: 'BackupPolicyNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BackupPolicyNotFoundFault", "httpResponseCode" => 404}, "smithy.api#deprecated" => {"message" => "Please avoid using this fault"}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    BlueGreenDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BlueGreenDeployment', name: 'BlueGreenDeployment')
    BlueGreenDeploymentAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentAlreadyExistsFault', name: 'BlueGreenDeploymentAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BlueGreenDeploymentAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlueGreenDeploymentIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentIdentifier', name: 'BlueGreenDeploymentIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    BlueGreenDeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentList', name: 'BlueGreenDeploymentList')
    BlueGreenDeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentName', name: 'BlueGreenDeploymentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    BlueGreenDeploymentNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentNotFoundFault', name: 'BlueGreenDeploymentNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BlueGreenDeploymentNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    BlueGreenDeploymentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentStatus', name: 'BlueGreenDeploymentStatus')
    BlueGreenDeploymentStatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentStatusDetails', name: 'BlueGreenDeploymentStatusDetails')
    BlueGreenDeploymentTask = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentTask', name: 'BlueGreenDeploymentTask')
    BlueGreenDeploymentTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentTaskList', name: 'BlueGreenDeploymentTaskList')
    BlueGreenDeploymentTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentTaskName', name: 'BlueGreenDeploymentTaskName')
    BlueGreenDeploymentTaskStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BlueGreenDeploymentTaskStatus', name: 'BlueGreenDeploymentTaskStatus')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.rds#Boolean', name: 'Boolean')
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.rds#BooleanOptional', name: 'BooleanOptional')
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#BucketName', name: 'BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => ".*"})
    CACertificateIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#CACertificateIdentifiersList', name: 'CACertificateIdentifiersList')
    CancelExportTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CancelExportTaskMessage', name: 'CancelExportTaskMessage')
    CancelExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CancelExportTaskOutput', name: 'CancelExportTaskOutput')
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Certificate', name: 'Certificate')
    CertificateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CertificateDetails', name: 'CertificateDetails')
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#CertificateList', name: 'CertificateList')
    CertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CertificateMessage', name: 'CertificateMessage')
    CertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CertificateNotFoundFault', name: 'CertificateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CharacterSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CharacterSet', name: 'CharacterSet')
    ClientPasswordAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ClientPasswordAuthType', name: 'ClientPasswordAuthType')
    CloudwatchLogsExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CloudwatchLogsExportConfiguration', name: 'CloudwatchLogsExportConfiguration')
    ClusterPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ClusterPendingModifiedValues', name: 'ClusterPendingModifiedValues')
    ClusterScalabilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ClusterScalabilityType', name: 'ClusterScalabilityType')
    ConnectionPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ConnectionPoolConfiguration', name: 'ConnectionPoolConfiguration')
    ConnectionPoolConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ConnectionPoolConfigurationInfo', name: 'ConnectionPoolConfigurationInfo')
    ContextAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ContextAttribute', name: 'ContextAttribute')
    ContextAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ContextAttributeList', name: 'ContextAttributeList')
    CopyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBClusterParameterGroupMessage', name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBClusterParameterGroupResult', name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBClusterSnapshotMessage', name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBClusterSnapshotResult', name: 'CopyDBClusterSnapshotResult')
    CopyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBParameterGroupMessage', name: 'CopyDBParameterGroupMessage')
    CopyDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBParameterGroupResult', name: 'CopyDBParameterGroupResult')
    CopyDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBSnapshotMessage', name: 'CopyDBSnapshotMessage')
    CopyDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyDBSnapshotResult', name: 'CopyDBSnapshotResult')
    CopyOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyOptionGroupMessage', name: 'CopyOptionGroupMessage')
    CopyOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CopyOptionGroupResult', name: 'CopyOptionGroupResult')
    CreateBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateBlueGreenDeploymentRequest', name: 'CreateBlueGreenDeploymentRequest')
    CreateBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateBlueGreenDeploymentResponse', name: 'CreateBlueGreenDeploymentResponse')
    CreateCustomDBEngineVersionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateCustomDBEngineVersionFault', name: 'CreateCustomDBEngineVersionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CreateCustomDBEngineVersionFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateCustomDBEngineVersionMessage', name: 'CreateCustomDBEngineVersionMessage')
    CreateCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateCustomDBEngineVersionOutput', name: 'CreateCustomDBEngineVersionOutput')
    CreateDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterEndpointMessage', name: 'CreateDBClusterEndpointMessage')
    CreateDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterEndpointOutput', name: 'CreateDBClusterEndpointOutput')
    CreateDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterMessage', name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterParameterGroupMessage', name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterParameterGroupResult', name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterResult', name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterSnapshotMessage', name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBClusterSnapshotResult', name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBInstanceMessage', name: 'CreateDBInstanceMessage')
    CreateDBInstanceReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBInstanceReadReplicaMessage', name: 'CreateDBInstanceReadReplicaMessage')
    CreateDBInstanceReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBInstanceReadReplicaResult', name: 'CreateDBInstanceReadReplicaResult')
    CreateDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBInstanceResult', name: 'CreateDBInstanceResult')
    CreateDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBParameterGroupMessage', name: 'CreateDBParameterGroupMessage')
    CreateDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBParameterGroupResult', name: 'CreateDBParameterGroupResult')
    CreateDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBProxyEndpointRequest', name: 'CreateDBProxyEndpointRequest')
    CreateDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBProxyEndpointResponse', name: 'CreateDBProxyEndpointResponse')
    CreateDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBProxyRequest', name: 'CreateDBProxyRequest')
    CreateDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBProxyResponse', name: 'CreateDBProxyResponse')
    CreateDBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSecurityGroupMessage', name: 'CreateDBSecurityGroupMessage')
    CreateDBSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSecurityGroupResult', name: 'CreateDBSecurityGroupResult')
    CreateDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBShardGroupMessage', name: 'CreateDBShardGroupMessage')
    CreateDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBShardGroupOutput', name: 'CreateDBShardGroupOutput')
    CreateDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSnapshotMessage', name: 'CreateDBSnapshotMessage')
    CreateDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSnapshotResult', name: 'CreateDBSnapshotResult')
    CreateDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSubnetGroupMessage', name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateDBSubnetGroupResult', name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateEventSubscriptionMessage', name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateEventSubscriptionResult', name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateGlobalClusterMessage', name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateGlobalClusterResult', name: 'CreateGlobalClusterResult')
    CreateIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateIntegrationMessage', name: 'CreateIntegrationMessage')
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateIntegrationOutput', name: 'CreateIntegrationOutput')
    CreateOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateOptionGroupMessage', name: 'CreateOptionGroupMessage')
    CreateOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateOptionGroupResult', name: 'CreateOptionGroupResult')
    CreateTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateTenantDatabaseMessage', name: 'CreateTenantDatabaseMessage')
    CreateTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CreateTenantDatabaseResult', name: 'CreateTenantDatabaseResult')
    CustomAvailabilityZoneNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CustomAvailabilityZoneNotFoundFault', name: 'CustomAvailabilityZoneNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomAvailabilityZoneNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDBEngineVersionAMI = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CustomDBEngineVersionAMI', name: 'CustomDBEngineVersionAMI')
    CustomDBEngineVersionAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CustomDBEngineVersionAlreadyExistsFault', name: 'CustomDBEngineVersionAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomDBEngineVersionManifest = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#CustomDBEngineVersionManifest', name: 'CustomDBEngineVersionManifest', traits: {"smithy.api#length" => {"min" => 1, "max" => 51000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomDBEngineVersionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CustomDBEngineVersionNotFoundFault', name: 'CustomDBEngineVersionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDBEngineVersionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#CustomDBEngineVersionQuotaExceededFault', name: 'CustomDBEngineVersionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomEngineName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#CustomEngineName', name: 'CustomEngineName', traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[A-Za-z0-9-]{1,35}$"})
    CustomEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#CustomEngineVersion', name: 'CustomEngineVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-z0-9_.-]{1,60}$"})
    CustomEngineVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#CustomEngineVersionStatus', name: 'CustomEngineVersionStatus')
    DBCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBCluster', name: 'DBCluster')
    DBClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterAlreadyExistsFault', name: 'DBClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterAutomatedBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterAutomatedBackup', name: 'DBClusterAutomatedBackup')
    DBClusterAutomatedBackupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterAutomatedBackupList', name: 'DBClusterAutomatedBackupList')
    DBClusterAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterAutomatedBackupMessage', name: 'DBClusterAutomatedBackupMessage')
    DBClusterAutomatedBackupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterAutomatedBackupNotFoundFault', name: 'DBClusterAutomatedBackupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAutomatedBackupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterAutomatedBackupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterAutomatedBackupQuotaExceededFault', name: 'DBClusterAutomatedBackupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAutomatedBackupQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterBacktrack = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterBacktrack', name: 'DBClusterBacktrack')
    DBClusterBacktrackList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterBacktrackList', name: 'DBClusterBacktrackList')
    DBClusterBacktrackMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterBacktrackMessage', name: 'DBClusterBacktrackMessage')
    DBClusterBacktrackNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterBacktrackNotFoundFault', name: 'DBClusterBacktrackNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterBacktrackNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterEndpoint', name: 'DBClusterEndpoint')
    DBClusterEndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterEndpointAlreadyExistsFault', name: 'DBClusterEndpointAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterEndpointList', name: 'DBClusterEndpointList')
    DBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterEndpointMessage', name: 'DBClusterEndpointMessage')
    DBClusterEndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterEndpointNotFoundFault', name: 'DBClusterEndpointNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterEndpointQuotaExceededFault', name: 'DBClusterEndpointQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DBClusterIdentifier', name: 'DBClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    DBClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterList', name: 'DBClusterList')
    DBClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterMember', name: 'DBClusterMember')
    DBClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterMemberList', name: 'DBClusterMemberList')
    DBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterMessage', name: 'DBClusterMessage')
    DBClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterNotFoundFault', name: 'DBClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterOptionGroupMemberships = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterOptionGroupMemberships', name: 'DBClusterOptionGroupMemberships')
    DBClusterOptionGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterOptionGroupStatus', name: 'DBClusterOptionGroupStatus')
    DBClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterParameterGroup', name: 'DBClusterParameterGroup')
    DBClusterParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterParameterGroupList', name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterParameterGroupNotFoundFault', name: 'DBClusterParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterParameterGroupsMessage', name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterQuotaExceededFault', name: 'DBClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterRole', name: 'DBClusterRole')
    DBClusterRoleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterRoleAlreadyExistsFault', name: 'DBClusterRoleAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterRoleNotFoundFault', name: 'DBClusterRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterRoleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterRoleQuotaExceededFault', name: 'DBClusterRoleQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterRoles', name: 'DBClusterRoles')
    DBClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshot', name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotAlreadyExistsFault', name: 'DBClusterSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotAttribute', name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotAttributeList', name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotAttributesResult', name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotList', name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotMessage', name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterSnapshotNotFoundFault', name: 'DBClusterSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBClusterStatusInfo', name: 'DBClusterStatusInfo')
    DBClusterStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBClusterStatusInfoList', name: 'DBClusterStatusInfoList')
    DBEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBEngineVersion', name: 'DBEngineVersion')
    DBEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBEngineVersionList', name: 'DBEngineVersionList')
    DBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBEngineVersionMessage', name: 'DBEngineVersionMessage')
    DBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstance', name: 'DBInstance')
    DBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAlreadyExistsFault', name: 'DBInstanceAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceAutomatedBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackup', name: 'DBInstanceAutomatedBackup')
    DBInstanceAutomatedBackupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupList', name: 'DBInstanceAutomatedBackupList')
    DBInstanceAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupMessage', name: 'DBInstanceAutomatedBackupMessage')
    DBInstanceAutomatedBackupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupNotFoundFault', name: 'DBInstanceAutomatedBackupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAutomatedBackupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceAutomatedBackupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupQuotaExceededFault', name: 'DBInstanceAutomatedBackupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAutomatedBackupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceAutomatedBackupsReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupsReplication', name: 'DBInstanceAutomatedBackupsReplication')
    DBInstanceAutomatedBackupsReplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBInstanceAutomatedBackupsReplicationList', name: 'DBInstanceAutomatedBackupsReplicationList')
    DBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBInstanceList', name: 'DBInstanceList')
    DBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceMessage', name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceNotFoundFault', name: 'DBInstanceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceNotReadyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceNotReadyFault', name: 'DBInstanceNotReadyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotReady", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceRole', name: 'DBInstanceRole')
    DBInstanceRoleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceRoleAlreadyExistsFault', name: 'DBInstanceRoleAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceRoleNotFoundFault', name: 'DBInstanceRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceRoleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceRoleQuotaExceededFault', name: 'DBInstanceRoleQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRoles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBInstanceRoles', name: 'DBInstanceRoles')
    DBInstanceStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBInstanceStatusInfo', name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBInstanceStatusInfoList', name: 'DBInstanceStatusInfoList')
    DBLogFileNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBLogFileNotFoundFault', name: 'DBLogFileNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBLogFileNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBMajorEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBMajorEngineVersion', name: 'DBMajorEngineVersion')
    DBMajorEngineVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBMajorEngineVersionsList', name: 'DBMajorEngineVersionsList')
    DBParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroup', name: 'DBParameterGroup')
    DBParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroupAlreadyExistsFault', name: 'DBParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBParameterGroupList', name: 'DBParameterGroupList')
    DBParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroupNotFoundFault', name: 'DBParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroupQuotaExceededFault', name: 'DBParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroupStatus', name: 'DBParameterGroupStatus')
    DBParameterGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBParameterGroupStatusList', name: 'DBParameterGroupStatusList')
    DBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBParameterGroupsMessage', name: 'DBParameterGroupsMessage')
    DBProxy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxy', name: 'DBProxy')
    DBProxyAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyAlreadyExistsFault', name: 'DBProxyAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyEndpoint', name: 'DBProxyEndpoint')
    DBProxyEndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyEndpointAlreadyExistsFault', name: 'DBProxyEndpointAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBProxyEndpointList', name: 'DBProxyEndpointList')
    DBProxyEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DBProxyEndpointName', name: 'DBProxyEndpointName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyEndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyEndpointNotFoundFault', name: 'DBProxyEndpointNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyEndpointQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyEndpointQuotaExceededFault', name: 'DBProxyEndpointQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#DBProxyEndpointStatus', name: 'DBProxyEndpointStatus')
    DBProxyEndpointTargetRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#DBProxyEndpointTargetRole', name: 'DBProxyEndpointTargetRole')
    DBProxyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBProxyList', name: 'DBProxyList')
    DBProxyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DBProxyName', name: 'DBProxyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyNotFoundFault', name: 'DBProxyNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyQuotaExceededFault', name: 'DBProxyQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#DBProxyStatus', name: 'DBProxyStatus')
    DBProxyTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyTarget', name: 'DBProxyTarget')
    DBProxyTargetAlreadyRegisteredFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyTargetAlreadyRegisteredFault', name: 'DBProxyTargetAlreadyRegisteredFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetAlreadyRegisteredFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyTargetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyTargetGroup', name: 'DBProxyTargetGroup')
    DBProxyTargetGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DBProxyTargetGroupName', name: 'DBProxyTargetGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyTargetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyTargetGroupNotFoundFault', name: 'DBProxyTargetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyTargetNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBProxyTargetNotFoundFault', name: 'DBProxyTargetNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBRecommendation', name: 'DBRecommendation')
    DBRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBRecommendationList', name: 'DBRecommendationList')
    DBRecommendationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBRecommendationMessage', name: 'DBRecommendationMessage')
    DBRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBRecommendationsMessage', name: 'DBRecommendationsMessage')
    DBSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroup', name: 'DBSecurityGroup')
    DBSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupAlreadyExistsFault', name: 'DBSecurityGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupMembership', name: 'DBSecurityGroupMembership')
    DBSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSecurityGroupMembershipList', name: 'DBSecurityGroupMembershipList')
    DBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupMessage', name: 'DBSecurityGroupMessage')
    DBSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSecurityGroupNameList', name: 'DBSecurityGroupNameList')
    DBSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupNotFoundFault', name: 'DBSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSecurityGroupNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupNotSupportedFault', name: 'DBSecurityGroupNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSecurityGroupQuotaExceededFault', name: 'DBSecurityGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.DBSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSecurityGroups', name: 'DBSecurityGroups')
    DBShardGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBShardGroup', name: 'DBShardGroup')
    DBShardGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBShardGroupAlreadyExistsFault', name: 'DBShardGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBShardGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBShardGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DBShardGroupIdentifier', name: 'DBShardGroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBShardGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBShardGroupNotFoundFault', name: 'DBShardGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBShardGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBShardGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBShardGroupsList', name: 'DBShardGroupsList')
    DBSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshot', name: 'DBSnapshot')
    DBSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotAlreadyExistsFault', name: 'DBSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotAttribute', name: 'DBSnapshotAttribute')
    DBSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSnapshotAttributeList', name: 'DBSnapshotAttributeList')
    DBSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotAttributesResult', name: 'DBSnapshotAttributesResult')
    DBSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSnapshotList', name: 'DBSnapshotList')
    DBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotMessage', name: 'DBSnapshotMessage')
    DBSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotNotFoundFault', name: 'DBSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotTenantDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotTenantDatabase', name: 'DBSnapshotTenantDatabase')
    DBSnapshotTenantDatabaseNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotTenantDatabaseNotFoundFault', name: 'DBSnapshotTenantDatabaseNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotTenantDatabaseNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotTenantDatabasesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSnapshotTenantDatabasesList', name: 'DBSnapshotTenantDatabasesList')
    DBSnapshotTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSnapshotTenantDatabasesMessage', name: 'DBSnapshotTenantDatabasesMessage')
    DBSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroup', name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupAlreadyExistsFault', name: 'DBSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupDoesNotCoverEnoughAZs', name: 'DBSubnetGroupDoesNotCoverEnoughAZs', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupMessage', name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupNotAllowedFault', name: 'DBSubnetGroupNotAllowedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupNotFoundFault', name: 'DBSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetGroupQuotaExceededFault', name: 'DBSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DBSubnetGroups', name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBSubnetQuotaExceededFault', name: 'DBSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBUpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DBUpgradeDependencyFailureFault', name: 'DBUpgradeDependencyFailureFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBUpgradeDependencyFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DataFilter = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DataFilter', name: 'DataFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 25600}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \"\\\\\\-$,*.:?+\\/]*$"})
    DatabaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#DatabaseArn', name: 'DatabaseArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[A-Za-z][0-9A-Za-z-:._]*$"})
    DatabaseInsightsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#DatabaseInsightsMode', name: 'DatabaseInsightsMode')
    DefaultAuthScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#DefaultAuthScheme', name: 'DefaultAuthScheme')
    DeleteBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteBlueGreenDeploymentRequest', name: 'DeleteBlueGreenDeploymentRequest')
    DeleteBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteBlueGreenDeploymentResponse', name: 'DeleteBlueGreenDeploymentResponse')
    DeleteCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteCustomDBEngineVersionMessage', name: 'DeleteCustomDBEngineVersionMessage')
    DeleteCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteCustomDBEngineVersionOutput', name: 'DeleteCustomDBEngineVersionOutput')
    DeleteDBClusterAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterAutomatedBackupMessage', name: 'DeleteDBClusterAutomatedBackupMessage')
    DeleteDBClusterAutomatedBackupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterAutomatedBackupResult', name: 'DeleteDBClusterAutomatedBackupResult')
    DeleteDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterEndpointMessage', name: 'DeleteDBClusterEndpointMessage')
    DeleteDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterEndpointOutput', name: 'DeleteDBClusterEndpointOutput')
    DeleteDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterMessage', name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterParameterGroupMessage', name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterResult', name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterSnapshotMessage', name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBClusterSnapshotResult', name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBInstanceAutomatedBackupMessage', name: 'DeleteDBInstanceAutomatedBackupMessage')
    DeleteDBInstanceAutomatedBackupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBInstanceAutomatedBackupResult', name: 'DeleteDBInstanceAutomatedBackupResult')
    DeleteDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBInstanceMessage', name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBInstanceResult', name: 'DeleteDBInstanceResult')
    DeleteDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBParameterGroupMessage', name: 'DeleteDBParameterGroupMessage')
    DeleteDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBProxyEndpointRequest', name: 'DeleteDBProxyEndpointRequest')
    DeleteDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBProxyEndpointResponse', name: 'DeleteDBProxyEndpointResponse')
    DeleteDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBProxyRequest', name: 'DeleteDBProxyRequest')
    DeleteDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBProxyResponse', name: 'DeleteDBProxyResponse')
    DeleteDBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBSecurityGroupMessage', name: 'DeleteDBSecurityGroupMessage')
    DeleteDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBShardGroupMessage', name: 'DeleteDBShardGroupMessage')
    DeleteDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBShardGroupOutput', name: 'DeleteDBShardGroupOutput')
    DeleteDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBSnapshotMessage', name: 'DeleteDBSnapshotMessage')
    DeleteDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBSnapshotResult', name: 'DeleteDBSnapshotResult')
    DeleteDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteDBSubnetGroupMessage', name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteEventSubscriptionMessage', name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteEventSubscriptionResult', name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteGlobalClusterMessage', name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteGlobalClusterResult', name: 'DeleteGlobalClusterResult')
    DeleteIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteIntegrationMessage', name: 'DeleteIntegrationMessage')
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteIntegrationOutput', name: 'DeleteIntegrationOutput')
    DeleteOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteOptionGroupMessage', name: 'DeleteOptionGroupMessage')
    DeleteTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteTenantDatabaseMessage', name: 'DeleteTenantDatabaseMessage')
    DeleteTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeleteTenantDatabaseResult', name: 'DeleteTenantDatabaseResult')
    DeregisterDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeregisterDBProxyTargetsRequest', name: 'DeregisterDBProxyTargetsRequest')
    DeregisterDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DeregisterDBProxyTargetsResponse', name: 'DeregisterDBProxyTargetsResponse')
    DescribeAccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeAccountAttributesMessage', name: 'DescribeAccountAttributesMessage')
    DescribeBlueGreenDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeBlueGreenDeploymentsRequest', name: 'DescribeBlueGreenDeploymentsRequest')
    DescribeBlueGreenDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeBlueGreenDeploymentsResponse', name: 'DescribeBlueGreenDeploymentsResponse')
    DescribeCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeCertificatesMessage', name: 'DescribeCertificatesMessage')
    DescribeDBClusterAutomatedBackupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterAutomatedBackupsMessage', name: 'DescribeDBClusterAutomatedBackupsMessage')
    DescribeDBClusterBacktracksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterBacktracksMessage', name: 'DescribeDBClusterBacktracksMessage')
    DescribeDBClusterEndpointsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterEndpointsMessage', name: 'DescribeDBClusterEndpointsMessage')
    DescribeDBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterParameterGroupsMessage', name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterParametersMessage', name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterParametersOutput', name: 'DescribeDBClusterParametersOutput')
    DescribeDBClusterSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterSnapshotAttributesMessage', name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterSnapshotAttributesResult', name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClusterSnapshotsMessage', name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBClustersMessage', name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBEngineVersionsMessage', name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstanceAutomatedBackupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBInstanceAutomatedBackupsMessage', name: 'DescribeDBInstanceAutomatedBackupsMessage')
    DescribeDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBInstancesMessage', name: 'DescribeDBInstancesMessage')
    DescribeDBLogFilesDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBLogFilesDetails', name: 'DescribeDBLogFilesDetails')
    DescribeDBLogFilesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DescribeDBLogFilesList', name: 'DescribeDBLogFilesList')
    DescribeDBLogFilesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBLogFilesMessage', name: 'DescribeDBLogFilesMessage')
    DescribeDBLogFilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBLogFilesResponse', name: 'DescribeDBLogFilesResponse')
    DescribeDBMajorEngineVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBMajorEngineVersionsRequest', name: 'DescribeDBMajorEngineVersionsRequest')
    DescribeDBMajorEngineVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBMajorEngineVersionsResponse', name: 'DescribeDBMajorEngineVersionsResponse')
    DescribeDBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBParameterGroupsMessage', name: 'DescribeDBParameterGroupsMessage')
    DescribeDBParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBParametersMessage', name: 'DescribeDBParametersMessage')
    DescribeDBParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBParametersOutput', name: 'DescribeDBParametersOutput')
    DescribeDBProxiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxiesRequest', name: 'DescribeDBProxiesRequest')
    DescribeDBProxiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxiesResponse', name: 'DescribeDBProxiesResponse')
    DescribeDBProxyEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyEndpointsRequest', name: 'DescribeDBProxyEndpointsRequest')
    DescribeDBProxyEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyEndpointsResponse', name: 'DescribeDBProxyEndpointsResponse')
    DescribeDBProxyTargetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyTargetGroupsRequest', name: 'DescribeDBProxyTargetGroupsRequest')
    DescribeDBProxyTargetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyTargetGroupsResponse', name: 'DescribeDBProxyTargetGroupsResponse')
    DescribeDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyTargetsRequest', name: 'DescribeDBProxyTargetsRequest')
    DescribeDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBProxyTargetsResponse', name: 'DescribeDBProxyTargetsResponse')
    DescribeDBRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBRecommendationsMessage', name: 'DescribeDBRecommendationsMessage')
    DescribeDBSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSecurityGroupsMessage', name: 'DescribeDBSecurityGroupsMessage')
    DescribeDBShardGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBShardGroupsMessage', name: 'DescribeDBShardGroupsMessage')
    DescribeDBShardGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBShardGroupsResponse', name: 'DescribeDBShardGroupsResponse')
    DescribeDBSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSnapshotAttributesMessage', name: 'DescribeDBSnapshotAttributesMessage')
    DescribeDBSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSnapshotAttributesResult', name: 'DescribeDBSnapshotAttributesResult')
    DescribeDBSnapshotTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSnapshotTenantDatabasesMessage', name: 'DescribeDBSnapshotTenantDatabasesMessage')
    DescribeDBSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSnapshotsMessage', name: 'DescribeDBSnapshotsMessage')
    DescribeDBSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeDBSubnetGroupsMessage', name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEngineDefaultClusterParametersMessage', name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEngineDefaultClusterParametersResult', name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEngineDefaultParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEngineDefaultParametersMessage', name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEngineDefaultParametersResult', name: 'DescribeEngineDefaultParametersResult')
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEventCategoriesMessage', name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEventSubscriptionsMessage', name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeExportTasksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeExportTasksMessage', name: 'DescribeExportTasksMessage')
    DescribeGlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeGlobalClustersMessage', name: 'DescribeGlobalClustersMessage')
    DescribeIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeIntegrationsMessage', name: 'DescribeIntegrationsMessage')
    DescribeIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeIntegrationsResponse', name: 'DescribeIntegrationsResponse')
    DescribeOptionGroupOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeOptionGroupOptionsMessage', name: 'DescribeOptionGroupOptionsMessage')
    DescribeOptionGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeOptionGroupsMessage', name: 'DescribeOptionGroupsMessage')
    DescribeOptionGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeOptionGroupsOutput', name: 'DescribeOptionGroupsOutput')
    DescribeOrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeOrderableDBInstanceOptionsMessage', name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribePendingMaintenanceActionsMessage', name: 'DescribePendingMaintenanceActionsMessage')
    DescribeReservedDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeReservedDBInstancesMessage', name: 'DescribeReservedDBInstancesMessage')
    DescribeReservedDBInstancesOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeReservedDBInstancesOfferingsMessage', name: 'DescribeReservedDBInstancesOfferingsMessage')
    DescribeSourceRegionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeSourceRegionsMessage', name: 'DescribeSourceRegionsMessage')
    DescribeTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeTenantDatabasesMessage', name: 'DescribeTenantDatabasesMessage')
    DescribeValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeValidDBInstanceModificationsMessage', name: 'DescribeValidDBInstanceModificationsMessage')
    DescribeValidDBInstanceModificationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DescribeValidDBInstanceModificationsResult', name: 'DescribeValidDBInstanceModificationsResult')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    DisableHttpEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DisableHttpEndpointRequest', name: 'DisableHttpEndpointRequest')
    DisableHttpEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DisableHttpEndpointResponse', name: 'DisableHttpEndpointResponse')
    DocLink = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DocLink', name: 'DocLink')
    DocLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DocLinkList', name: 'DocLinkList')
    DomainMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DomainMembership', name: 'DomainMembership')
    DomainMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DomainMembershipList', name: 'DomainMembershipList')
    DomainNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DomainNotFoundFault', name: 'DomainNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DomainNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rds#Double', name: 'Double')
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.rds#DoubleOptional', name: 'DoubleOptional')
    DoubleRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DoubleRange', name: 'DoubleRange')
    DoubleRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#DoubleRangeList', name: 'DoubleRangeList')
    DownloadDBLogFilePortionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DownloadDBLogFilePortionMessage', name: 'DownloadDBLogFilePortionMessage')
    DownloadDBLogFilePortionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#DownloadDBLogFilePortionOutput', name: 'DownloadDBLogFilePortionOutput')
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EC2SecurityGroup', name: 'EC2SecurityGroup')
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EC2SecurityGroupList', name: 'EC2SecurityGroupList')
    Ec2ImagePropertiesNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Ec2ImagePropertiesNotSupportedFault', name: 'Ec2ImagePropertiesNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "Ec2ImagePropertiesNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EnableHttpEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EnableHttpEndpointRequest', name: 'EnableHttpEndpointRequest')
    EnableHttpEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EnableHttpEndpointResponse', name: 'EnableHttpEndpointResponse')
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.rds#EncryptionContextMap', name: 'EncryptionContextMap')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Endpoint', name: 'Endpoint')
    EndpointNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#EndpointNetworkType', name: 'EndpointNetworkType')
    Engine = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#Engine', name: 'Engine', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EngineDefaults', name: 'EngineDefaults')
    EngineFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#EngineFamily', name: 'EngineFamily')
    EngineModeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EngineModeList', name: 'EngineModeList')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Event', name: 'Event')
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EventCategoriesList', name: 'EventCategoriesList')
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventCategoriesMap', name: 'EventCategoriesMap')
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EventCategoriesMapList', name: 'EventCategoriesMapList')
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventCategoriesMessage', name: 'EventCategoriesMessage')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EventList', name: 'EventList')
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventSubscription', name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventSubscriptionQuotaExceededFault', name: 'EventSubscriptionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#EventSubscriptionsList', name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventSubscriptionsMessage', name: 'EventSubscriptionsMessage')
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#ExceptionMessage', name: 'ExceptionMessage')
    ExportSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ExportSourceType', name: 'ExportSourceType')
    ExportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ExportTask', name: 'ExportTask')
    ExportTaskAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ExportTaskAlreadyExistsFault', name: 'ExportTaskAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ExportTaskAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ExportTaskNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ExportTaskNotFoundFault', name: 'ExportTaskNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ExportTaskNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ExportTasksList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ExportTasksList', name: 'ExportTasksList')
    ExportTasksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ExportTasksMessage', name: 'ExportTasksMessage')
    FailoverDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#FailoverDBClusterMessage', name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#FailoverDBClusterResult', name: 'FailoverDBClusterResult')
    FailoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#FailoverGlobalClusterMessage', name: 'FailoverGlobalClusterMessage')
    FailoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#FailoverGlobalClusterResult', name: 'FailoverGlobalClusterResult')
    FailoverState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#FailoverState', name: 'FailoverState')
    FailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#FailoverStatus', name: 'FailoverStatus')
    FeatureNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#FeatureNameList', name: 'FeatureNameList')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#FilterList', name: 'FilterList')
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#FilterValueList', name: 'FilterValueList')
    GlobalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalCluster', name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalClusterAlreadyExistsFault', name: 'GlobalClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#GlobalClusterIdentifier', name: 'GlobalClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    GlobalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#GlobalClusterList', name: 'GlobalClusterList')
    GlobalClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalClusterMember', name: 'GlobalClusterMember')
    GlobalClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#GlobalClusterMemberList', name: 'GlobalClusterMemberList')
    GlobalClusterMemberSynchronizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#GlobalClusterMemberSynchronizationStatus', name: 'GlobalClusterMemberSynchronizationStatus')
    GlobalClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalClusterNotFoundFault', name: 'GlobalClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GlobalClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalClusterQuotaExceededFault', name: 'GlobalClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#GlobalClustersMessage', name: 'GlobalClustersMessage')
    IAMAuthMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#IAMAuthMode', name: 'IAMAuthMode')
    IPRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IPRange', name: 'IPRange')
    IPRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#IPRangeList', name: 'IPRangeList')
    IamRoleMissingPermissionsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IamRoleMissingPermissionsFault', name: 'IamRoleMissingPermissionsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IamRoleMissingPermissions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IamRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IamRoleNotFoundFault', name: 'IamRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IamRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InstanceQuotaExceededFault', name: 'InstanceQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientAvailableIPsInSubnetFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InsufficientAvailableIPsInSubnetFault', name: 'InsufficientAvailableIPsInSubnetFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientAvailableIPsInSubnetFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InsufficientDBClusterCapacityFault', name: 'InsufficientDBClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBClusterCapacityFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientDBInstanceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InsufficientDBInstanceCapacityFault', name: 'InsufficientDBInstanceCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBInstanceCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientStorageClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InsufficientStorageClusterCapacityFault', name: 'InsufficientStorageClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientStorageClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#Integer', name: 'Integer')
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#IntegerOptional', name: 'IntegerOptional')
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Integration', name: 'Integration')
    IntegrationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IntegrationAlreadyExistsFault', name: 'IntegrationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#IntegrationArn', name: 'IntegrationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:rds(-[a-z]*)?:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntegrationConflictOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IntegrationConflictOperationFault', name: 'IntegrationConflictOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#IntegrationDescription', name: 'IntegrationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    IntegrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IntegrationError', name: 'IntegrationError')
    IntegrationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#IntegrationErrorList', name: 'IntegrationErrorList')
    IntegrationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#IntegrationIdentifier', name: 'IntegrationIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-\\/]+$"})
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#IntegrationList', name: 'IntegrationList')
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#IntegrationName', name: 'IntegrationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    IntegrationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IntegrationNotFoundFault', name: 'IntegrationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IntegrationQuotaExceededFault', name: 'IntegrationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#IntegrationStatus', name: 'IntegrationStatus')
    InvalidBlueGreenDeploymentStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidBlueGreenDeploymentStateFault', name: 'InvalidBlueGreenDeploymentStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidBlueGreenDeploymentStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCustomDBEngineVersionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidCustomDBEngineVersionStateFault', name: 'InvalidCustomDBEngineVersionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCustomDBEngineVersionStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterAutomatedBackupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBClusterAutomatedBackupStateFault', name: 'InvalidDBClusterAutomatedBackupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterAutomatedBackupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBClusterCapacityFault', name: 'InvalidDBClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterCapacityFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBClusterEndpointStateFault', name: 'InvalidDBClusterEndpointStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterEndpointStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBClusterSnapshotStateFault', name: 'InvalidDBClusterSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBClusterStateFault', name: 'InvalidDBClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceAutomatedBackupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBInstanceAutomatedBackupStateFault', name: 'InvalidDBInstanceAutomatedBackupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceAutomatedBackupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBInstanceStateFault', name: 'InvalidDBInstanceStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBParameterGroupStateFault', name: 'InvalidDBParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBProxyEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBProxyEndpointStateFault', name: 'InvalidDBProxyEndpointStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBProxyEndpointStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBProxyStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBProxyStateFault', name: 'InvalidDBProxyStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBProxyStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBSecurityGroupStateFault', name: 'InvalidDBSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBShardGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBShardGroupStateFault', name: 'InvalidDBShardGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBShardGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBSnapshotStateFault', name: 'InvalidDBSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBSubnetGroupFault', name: 'InvalidDBSubnetGroupFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBSubnetGroupStateFault', name: 'InvalidDBSubnetGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidDBSubnetStateFault', name: 'InvalidDBSubnetStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidEventSubscriptionStateFault', name: 'InvalidEventSubscriptionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSubscriptionState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportOnlyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidExportOnlyFault', name: 'InvalidExportOnlyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportOnly", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportSourceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidExportSourceStateFault', name: 'InvalidExportSourceStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportSourceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportTaskStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidExportTaskStateFault', name: 'InvalidExportTaskStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportTaskStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGlobalClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidGlobalClusterStateFault', name: 'InvalidGlobalClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIntegrationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidIntegrationStateFault', name: 'InvalidIntegrationStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidIntegrationStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOptionGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidOptionGroupStateFault', name: 'InvalidOptionGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOptionGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidResourceStateFault', name: 'InvalidResourceStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidRestoreFault', name: 'InvalidRestoreFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestoreFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidS3BucketFault', name: 'InvalidS3BucketFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#IssueDetails', name: 'IssueDetails')
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#KMSKeyNotAccessibleFault', name: 'KMSKeyNotAccessibleFault', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSKeyNotAccessibleFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#KeyList', name: 'KeyList')
    KmsKeyIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#KmsKeyIdOrArn', name: 'KmsKeyIdOrArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-\\/]+$"})
    LifecycleSupportName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#LifecycleSupportName', name: 'LifecycleSupportName')
    LimitlessDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#LimitlessDatabase', name: 'LimitlessDatabase')
    LimitlessDatabaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#LimitlessDatabaseStatus', name: 'LimitlessDatabaseStatus')
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ListTagsForResourceMessage', name: 'ListTagsForResourceMessage')
    LocalWriteForwardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#LocalWriteForwardingStatus', name: 'LocalWriteForwardingStatus')
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#LogTypeList', name: 'LogTypeList')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#Long', name: 'Long')
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#LongOptional', name: 'LongOptional')
    MajorEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#MajorEngineVersion', name: 'MajorEngineVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#Marker', name: 'Marker', traits: {"smithy.api#length" => {"min" => 1, "max" => 340}})
    MasterUserAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#MasterUserAuthenticationType', name: 'MasterUserAuthenticationType')
    MasterUserSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#MasterUserSecret', name: 'MasterUserSecret')
    MaxDBShardGroupLimitReached = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#MaxDBShardGroupLimitReached', name: 'MaxDBShardGroupLimitReached', traits: {"aws.protocols#awsQueryError" => {"code" => "MaxDBShardGroupLimitReached", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#MaxRecords', name: 'MaxRecords', traits: {"smithy.api#range" => {"min" => 20, "max" => 100}})
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Metric', name: 'Metric')
    MetricList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#MetricList', name: 'MetricList')
    MetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#MetricQuery', name: 'MetricQuery')
    MetricReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#MetricReference', name: 'MetricReference')
    MetricReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#MetricReferenceList', name: 'MetricReferenceList')
    MinimumEngineVersionPerAllowedValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#MinimumEngineVersionPerAllowedValue', name: 'MinimumEngineVersionPerAllowedValue')
    MinimumEngineVersionPerAllowedValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#MinimumEngineVersionPerAllowedValueList', name: 'MinimumEngineVersionPerAllowedValueList')
    ModifyActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyActivityStreamRequest', name: 'ModifyActivityStreamRequest')
    ModifyActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyActivityStreamResponse', name: 'ModifyActivityStreamResponse')
    ModifyCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCertificatesMessage', name: 'ModifyCertificatesMessage')
    ModifyCertificatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCertificatesResult', name: 'ModifyCertificatesResult')
    ModifyCurrentDBClusterCapacityMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCurrentDBClusterCapacityMessage', name: 'ModifyCurrentDBClusterCapacityMessage')
    ModifyCurrentDBClusterCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCurrentDBClusterCapacityOutput', name: 'ModifyCurrentDBClusterCapacityOutput')
    ModifyCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCustomDBEngineVersionMessage', name: 'ModifyCustomDBEngineVersionMessage')
    ModifyCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyCustomDBEngineVersionOutput', name: 'ModifyCustomDBEngineVersionOutput')
    ModifyDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterEndpointMessage', name: 'ModifyDBClusterEndpointMessage')
    ModifyDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterEndpointOutput', name: 'ModifyDBClusterEndpointOutput')
    ModifyDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterMessage', name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterParameterGroupMessage', name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterParameterGroupOutput', name: 'ModifyDBClusterParameterGroupOutput')
    ModifyDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterResult', name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterSnapshotAttributeMessage', name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBClusterSnapshotAttributeResult', name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBInstanceMessage', name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBInstanceResult', name: 'ModifyDBInstanceResult')
    ModifyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBParameterGroupMessage', name: 'ModifyDBParameterGroupMessage')
    ModifyDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBParameterGroupOutput', name: 'ModifyDBParameterGroupOutput')
    ModifyDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyEndpointRequest', name: 'ModifyDBProxyEndpointRequest')
    ModifyDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyEndpointResponse', name: 'ModifyDBProxyEndpointResponse')
    ModifyDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyRequest', name: 'ModifyDBProxyRequest')
    ModifyDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyResponse', name: 'ModifyDBProxyResponse')
    ModifyDBProxyTargetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyTargetGroupRequest', name: 'ModifyDBProxyTargetGroupRequest')
    ModifyDBProxyTargetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBProxyTargetGroupResponse', name: 'ModifyDBProxyTargetGroupResponse')
    ModifyDBRecommendationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBRecommendationMessage', name: 'ModifyDBRecommendationMessage')
    ModifyDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBShardGroupMessage', name: 'ModifyDBShardGroupMessage')
    ModifyDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBShardGroupOutput', name: 'ModifyDBShardGroupOutput')
    ModifyDBSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSnapshotAttributeMessage', name: 'ModifyDBSnapshotAttributeMessage')
    ModifyDBSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSnapshotAttributeResult', name: 'ModifyDBSnapshotAttributeResult')
    ModifyDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSnapshotMessage', name: 'ModifyDBSnapshotMessage')
    ModifyDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSnapshotResult', name: 'ModifyDBSnapshotResult')
    ModifyDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSubnetGroupMessage', name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyDBSubnetGroupResult', name: 'ModifyDBSubnetGroupResult')
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyEventSubscriptionMessage', name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyEventSubscriptionResult', name: 'ModifyEventSubscriptionResult')
    ModifyGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyGlobalClusterMessage', name: 'ModifyGlobalClusterMessage')
    ModifyGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyGlobalClusterResult', name: 'ModifyGlobalClusterResult')
    ModifyIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyIntegrationMessage', name: 'ModifyIntegrationMessage')
    ModifyIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyIntegrationOutput', name: 'ModifyIntegrationOutput')
    ModifyOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyOptionGroupMessage', name: 'ModifyOptionGroupMessage')
    ModifyOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyOptionGroupResult', name: 'ModifyOptionGroupResult')
    ModifyTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyTenantDatabaseMessage', name: 'ModifyTenantDatabaseMessage')
    ModifyTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ModifyTenantDatabaseResult', name: 'ModifyTenantDatabaseResult')
    NetworkTypeNotSupported = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#NetworkTypeNotSupported', name: 'NetworkTypeNotSupported', traits: {"aws.protocols#awsQueryError" => {"code" => "NetworkTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Option = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Option', name: 'Option')
    OptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionConfiguration', name: 'OptionConfiguration')
    OptionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionConfigurationList', name: 'OptionConfigurationList')
    OptionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroup', name: 'OptionGroup')
    OptionGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupAlreadyExistsFault', name: 'OptionGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptionGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupMembership', name: 'OptionGroupMembership')
    OptionGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionGroupMembershipList', name: 'OptionGroupMembershipList')
    OptionGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupNotFoundFault', name: 'OptionGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OptionGroupOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupOption', name: 'OptionGroupOption')
    OptionGroupOptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupOptionSetting', name: 'OptionGroupOptionSetting')
    OptionGroupOptionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionGroupOptionSettingsList', name: 'OptionGroupOptionSettingsList')
    OptionGroupOptionVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionGroupOptionVersionsList', name: 'OptionGroupOptionVersionsList')
    OptionGroupOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionGroupOptionsList', name: 'OptionGroupOptionsList')
    OptionGroupOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupOptionsMessage', name: 'OptionGroupOptionsMessage')
    OptionGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionGroupQuotaExceededFault', name: 'OptionGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptionGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionGroupsList', name: 'OptionGroupsList')
    OptionNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionNamesList', name: 'OptionNamesList')
    OptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionSetting', name: 'OptionSetting')
    OptionSettingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionSettingConfigurationList', name: 'OptionSettingConfigurationList')
    OptionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionSettingsList', name: 'OptionSettingsList')
    OptionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OptionVersion', name: 'OptionVersion')
    OptionsConflictsWith = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionsConflictsWith', name: 'OptionsConflictsWith')
    OptionsDependedOn = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionsDependedOn', name: 'OptionsDependedOn')
    OptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OptionsList', name: 'OptionsList')
    OrderableDBInstanceOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OrderableDBInstanceOption', name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#OrderableDBInstanceOptionsList', name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#OrderableDBInstanceOptionsMessage', name: 'OrderableDBInstanceOptionsMessage')
    Outpost = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Outpost', name: 'Outpost')
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Parameter', name: 'Parameter')
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ParametersList', name: 'ParametersList')
    PendingCloudwatchLogsExports = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PendingCloudwatchLogsExports', name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PendingMaintenanceAction', name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#PendingMaintenanceActionDetails', name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#PendingMaintenanceActions', name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PendingMaintenanceActionsMessage', name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PendingModifiedValues', name: 'PendingModifiedValues')
    PerformanceInsightsMetricDimensionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PerformanceInsightsMetricDimensionGroup', name: 'PerformanceInsightsMetricDimensionGroup')
    PerformanceInsightsMetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PerformanceInsightsMetricQuery', name: 'PerformanceInsightsMetricQuery')
    PerformanceIssueDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PerformanceIssueDetails', name: 'PerformanceIssueDetails')
    PointInTimeRestoreNotEnabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PointInTimeRestoreNotEnabledFault', name: 'PointInTimeRestoreNotEnabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "PointInTimeRestoreNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PotentiallySensitiveOptionSettingValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#PotentiallySensitiveOptionSettingValue', name: 'PotentiallySensitiveOptionSettingValue', traits: {"smithy.api#sensitive" => {}})
    PotentiallySensitiveParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#PotentiallySensitiveParameterValue', name: 'PotentiallySensitiveParameterValue')
    ProcessorFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ProcessorFeature', name: 'ProcessorFeature')
    ProcessorFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ProcessorFeatureList', name: 'ProcessorFeatureList')
    PromoteReadReplicaDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PromoteReadReplicaDBClusterMessage', name: 'PromoteReadReplicaDBClusterMessage')
    PromoteReadReplicaDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PromoteReadReplicaDBClusterResult', name: 'PromoteReadReplicaDBClusterResult')
    PromoteReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PromoteReadReplicaMessage', name: 'PromoteReadReplicaMessage')
    PromoteReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PromoteReadReplicaResult', name: 'PromoteReadReplicaResult')
    ProvisionedIopsNotAvailableInAZFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ProvisionedIopsNotAvailableInAZFault', name: 'ProvisionedIopsNotAvailableInAZFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ProvisionedIopsNotAvailableInAZFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PurchaseReservedDBInstancesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PurchaseReservedDBInstancesOfferingMessage', name: 'PurchaseReservedDBInstancesOfferingMessage')
    PurchaseReservedDBInstancesOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#PurchaseReservedDBInstancesOfferingResult', name: 'PurchaseReservedDBInstancesOfferingResult')
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Range', name: 'Range')
    RangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#RangeList', name: 'RangeList')
    RdsCustomClusterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RdsCustomClusterConfiguration', name: 'RdsCustomClusterConfiguration')
    ReadReplicaDBClusterIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReadReplicaDBClusterIdentifierList', name: 'ReadReplicaDBClusterIdentifierList')
    ReadReplicaDBInstanceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReadReplicaDBInstanceIdentifierList', name: 'ReadReplicaDBInstanceIdentifierList')
    ReadReplicaIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReadReplicaIdentifierList', name: 'ReadReplicaIdentifierList')
    ReadersArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReadersArnList', name: 'ReadersArnList')
    RebootDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBClusterMessage', name: 'RebootDBClusterMessage')
    RebootDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBClusterResult', name: 'RebootDBClusterResult')
    RebootDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBInstanceMessage', name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBInstanceResult', name: 'RebootDBInstanceResult')
    RebootDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBShardGroupMessage', name: 'RebootDBShardGroupMessage')
    RebootDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RebootDBShardGroupOutput', name: 'RebootDBShardGroupOutput')
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RecommendedAction', name: 'RecommendedAction')
    RecommendedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#RecommendedActionList', name: 'RecommendedActionList')
    RecommendedActionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RecommendedActionParameter', name: 'RecommendedActionParameter')
    RecommendedActionParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#RecommendedActionParameterList', name: 'RecommendedActionParameterList')
    RecommendedActionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RecommendedActionUpdate', name: 'RecommendedActionUpdate')
    RecommendedActionUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#RecommendedActionUpdateList', name: 'RecommendedActionUpdateList')
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#RecurringChargeList', name: 'RecurringChargeList')
    ReferenceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReferenceDetails', name: 'ReferenceDetails')
    RegisterDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RegisterDBProxyTargetsRequest', name: 'RegisterDBProxyTargetsRequest')
    RegisterDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RegisterDBProxyTargetsResponse', name: 'RegisterDBProxyTargetsResponse')
    RemoveFromGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveFromGlobalClusterMessage', name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveFromGlobalClusterResult', name: 'RemoveFromGlobalClusterResult')
    RemoveRoleFromDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveRoleFromDBClusterMessage', name: 'RemoveRoleFromDBClusterMessage')
    RemoveRoleFromDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveRoleFromDBInstanceMessage', name: 'RemoveRoleFromDBInstanceMessage')
    RemoveSourceIdentifierFromSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveSourceIdentifierFromSubscriptionMessage', name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveSourceIdentifierFromSubscriptionResult', name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RemoveTagsFromResourceMessage', name: 'RemoveTagsFromResourceMessage')
    ReplicaMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#ReplicaMode', name: 'ReplicaMode')
    ReservedDBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstance', name: 'ReservedDBInstance')
    ReservedDBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstanceAlreadyExistsFault', name: 'ReservedDBInstanceAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedDBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReservedDBInstanceList', name: 'ReservedDBInstanceList')
    ReservedDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstanceMessage', name: 'ReservedDBInstanceMessage')
    ReservedDBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstanceNotFoundFault', name: 'ReservedDBInstanceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedDBInstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstanceQuotaExceededFault', name: 'ReservedDBInstanceQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedDBInstancesOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstancesOffering', name: 'ReservedDBInstancesOffering')
    ReservedDBInstancesOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ReservedDBInstancesOfferingList', name: 'ReservedDBInstancesOfferingList')
    ReservedDBInstancesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstancesOfferingMessage', name: 'ReservedDBInstancesOfferingMessage')
    ReservedDBInstancesOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ReservedDBInstancesOfferingNotFoundFault', name: 'ReservedDBInstancesOfferingNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstancesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResetDBClusterParameterGroupMessage', name: 'ResetDBClusterParameterGroupMessage')
    ResetDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResetDBClusterParameterGroupOutput', name: 'ResetDBClusterParameterGroupOutput')
    ResetDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResetDBParameterGroupMessage', name: 'ResetDBParameterGroupMessage')
    ResetDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResetDBParameterGroupOutput', name: 'ResetDBParameterGroupOutput')
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResourceNotFoundFault', name: 'ResourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ResourcePendingMaintenanceActions', name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromS3Message = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterFromS3Message', name: 'RestoreDBClusterFromS3Message')
    RestoreDBClusterFromS3Result = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterFromS3Result', name: 'RestoreDBClusterFromS3Result')
    RestoreDBClusterFromSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterFromSnapshotMessage', name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterFromSnapshotResult', name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterToPointInTimeMessage', name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBClusterToPointInTimeResult', name: 'RestoreDBClusterToPointInTimeResult')
    RestoreDBInstanceFromDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceFromDBSnapshotMessage', name: 'RestoreDBInstanceFromDBSnapshotMessage')
    RestoreDBInstanceFromDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceFromDBSnapshotResult', name: 'RestoreDBInstanceFromDBSnapshotResult')
    RestoreDBInstanceFromS3Message = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceFromS3Message', name: 'RestoreDBInstanceFromS3Message')
    RestoreDBInstanceFromS3Result = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceFromS3Result', name: 'RestoreDBInstanceFromS3Result')
    RestoreDBInstanceToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceToPointInTimeMessage', name: 'RestoreDBInstanceToPointInTimeMessage')
    RestoreDBInstanceToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreDBInstanceToPointInTimeResult', name: 'RestoreDBInstanceToPointInTimeResult')
    RestoreWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RestoreWindow', name: 'RestoreWindow')
    RevokeDBSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RevokeDBSecurityGroupIngressMessage', name: 'RevokeDBSecurityGroupIngressMessage')
    RevokeDBSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#RevokeDBSecurityGroupIngressResult', name: 'RevokeDBSecurityGroupIngressResult')
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SNSInvalidTopicFault', name: 'SNSInvalidTopicFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SNSNoAuthorizationFault', name: 'SNSNoAuthorizationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SNSTopicArnNotFoundFault', name: 'SNSTopicArnNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScalarReferenceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ScalarReferenceDetails', name: 'ScalarReferenceDetails')
    ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ScalingConfiguration', name: 'ScalingConfiguration')
    ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ScalingConfigurationInfo', name: 'ScalingConfigurationInfo')
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerlessV2FeaturesSupport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ServerlessV2FeaturesSupport', name: 'ServerlessV2FeaturesSupport')
    ServerlessV2ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ServerlessV2ScalingConfiguration', name: 'ServerlessV2ScalingConfiguration')
    ServerlessV2ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ServerlessV2ScalingConfigurationInfo', name: 'ServerlessV2ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SharedSnapshotQuotaExceededFault', name: 'SharedSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SharedSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SnapshotQuotaExceededFault', name: 'SnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#SourceArn', name: 'SourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:rds(-[a-z]*)?:[a-z0-9\\-]*:[0-9]*:(cluster|db):[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    SourceClusterNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SourceClusterNotSupportedFault', name: 'SourceClusterNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceClusterNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceDatabaseNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SourceDatabaseNotSupportedFault', name: 'SourceDatabaseNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceDatabaseNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SourceIdsList', name: 'SourceIdsList')
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SourceNotFoundFault', name: 'SourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceRegion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SourceRegion', name: 'SourceRegion')
    SourceRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SourceRegionList', name: 'SourceRegionList')
    SourceRegionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SourceRegionMessage', name: 'SourceRegionMessage')
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#SourceType', name: 'SourceType')
    StartActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartActivityStreamRequest', name: 'StartActivityStreamRequest')
    StartActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartActivityStreamResponse', name: 'StartActivityStreamResponse')
    StartDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBClusterMessage', name: 'StartDBClusterMessage')
    StartDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBClusterResult', name: 'StartDBClusterResult')
    StartDBInstanceAutomatedBackupsReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplicationMessage', name: 'StartDBInstanceAutomatedBackupsReplicationMessage')
    StartDBInstanceAutomatedBackupsReplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplicationResult', name: 'StartDBInstanceAutomatedBackupsReplicationResult')
    StartDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBInstanceMessage', name: 'StartDBInstanceMessage')
    StartDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartDBInstanceResult', name: 'StartDBInstanceResult')
    StartExportTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartExportTaskMessage', name: 'StartExportTaskMessage')
    StartExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StartExportTaskOutput', name: 'StartExportTaskOutput')
    StopActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopActivityStreamRequest', name: 'StopActivityStreamRequest')
    StopActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopActivityStreamResponse', name: 'StopActivityStreamResponse')
    StopDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBClusterMessage', name: 'StopDBClusterMessage')
    StopDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBClusterResult', name: 'StopDBClusterResult')
    StopDBInstanceAutomatedBackupsReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplicationMessage', name: 'StopDBInstanceAutomatedBackupsReplicationMessage')
    StopDBInstanceAutomatedBackupsReplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplicationResult', name: 'StopDBInstanceAutomatedBackupsReplicationResult')
    StopDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBInstanceMessage', name: 'StopDBInstanceMessage')
    StopDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StopDBInstanceResult', name: 'StopDBInstanceResult')
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StorageQuotaExceededFault', name: 'StorageQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotAvailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StorageTypeNotAvailableFault', name: 'StorageTypeNotAvailableFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#StorageTypeNotSupportedFault', name: 'StorageTypeNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#String', name: 'String')
    String255 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#String255', name: 'String255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#StringList', name: 'StringList')
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Subnet', name: 'Subnet')
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SubnetAlreadyInUse', name: 'SubnetAlreadyInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SubnetList', name: 'SubnetList')
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SubscriptionAlreadyExistFault', name: 'SubscriptionAlreadyExistFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SubscriptionCategoryNotFoundFault', name: 'SubscriptionCategoryNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SubscriptionNotFoundFault', name: 'SubscriptionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedCharacterSetsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SupportedCharacterSetsList', name: 'SupportedCharacterSetsList')
    SupportedEngineLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SupportedEngineLifecycle', name: 'SupportedEngineLifecycle')
    SupportedEngineLifecycleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SupportedEngineLifecycleList', name: 'SupportedEngineLifecycleList')
    SupportedTimezonesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SupportedTimezonesList', name: 'SupportedTimezonesList')
    SwitchoverBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverBlueGreenDeploymentRequest', name: 'SwitchoverBlueGreenDeploymentRequest')
    SwitchoverBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverBlueGreenDeploymentResponse', name: 'SwitchoverBlueGreenDeploymentResponse')
    SwitchoverDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverDetail', name: 'SwitchoverDetail')
    SwitchoverDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#SwitchoverDetailList', name: 'SwitchoverDetailList')
    SwitchoverDetailStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#SwitchoverDetailStatus', name: 'SwitchoverDetailStatus')
    SwitchoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverGlobalClusterMessage', name: 'SwitchoverGlobalClusterMessage')
    SwitchoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverGlobalClusterResult', name: 'SwitchoverGlobalClusterResult')
    SwitchoverReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverReadReplicaMessage', name: 'SwitchoverReadReplicaMessage')
    SwitchoverReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#SwitchoverReadReplicaResult', name: 'SwitchoverReadReplicaResult')
    SwitchoverTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.rds#SwitchoverTimeout', name: 'SwitchoverTimeout', traits: {"smithy.api#range" => {"min" => 30}})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.rds#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Tag', name: 'Tag')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#TagList', name: 'TagList')
    TagListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TagListMessage', name: 'TagListMessage')
    TargetConnectionNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#TargetConnectionNetworkType', name: 'TargetConnectionNetworkType')
    TargetDBClusterParameterGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#TargetDBClusterParameterGroupName', name: 'TargetDBClusterParameterGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z](?!.*--)[0-9A-Za-z-]*[^-]|^default(?!.*--)(?!.*\\.\\.)[0-9A-Za-z-.]*[^-]$"})
    TargetDBInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#TargetDBInstanceClass', name: 'TargetDBInstanceClass', traits: {"smithy.api#length" => {"min" => 5, "max" => 20}, "smithy.api#pattern" => "^db\\.[0-9a-z]{2,6}\\.[0-9a-z]{4,9}$"})
    TargetDBParameterGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#TargetDBParameterGroupName', name: 'TargetDBParameterGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z](?!.*--)[0-9A-Za-z-]*[^-]|^default(?!.*--)(?!.*\\.\\.)[0-9A-Za-z-.]*[^-]$"})
    TargetEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#TargetEngineVersion', name: 'TargetEngineVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z-_.]+$"})
    TargetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#TargetGroupList', name: 'TargetGroupList')
    TargetHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TargetHealth', name: 'TargetHealth')
    TargetHealthReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#TargetHealthReason', name: 'TargetHealthReason')
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#TargetList', name: 'TargetList')
    TargetRole = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#TargetRole', name: 'TargetRole')
    TargetState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#TargetState', name: 'TargetState')
    TargetStorageType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.rds#TargetStorageType', name: 'TargetStorageType')
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#TargetType', name: 'TargetType')
    TenantDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabase', name: 'TenantDatabase')
    TenantDatabaseAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabaseAlreadyExistsFault', name: 'TenantDatabaseAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TenantDatabaseNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabaseNotFoundFault', name: 'TenantDatabaseNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TenantDatabasePendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabasePendingModifiedValues', name: 'TenantDatabasePendingModifiedValues')
    TenantDatabaseQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabaseQuotaExceededFault', name: 'TenantDatabaseQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TenantDatabasesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#TenantDatabasesList', name: 'TenantDatabasesList')
    TenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#TenantDatabasesMessage', name: 'TenantDatabasesMessage')
    Timezone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#Timezone', name: 'Timezone')
    UnsupportedDBEngineVersionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#UnsupportedDBEngineVersionFault', name: 'UnsupportedDBEngineVersionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedDBEngineVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpgradeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#UpgradeTarget', name: 'UpgradeTarget')
    UserAuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#UserAuthConfig', name: 'UserAuthConfig')
    UserAuthConfigInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#UserAuthConfigInfo', name: 'UserAuthConfigInfo')
    UserAuthConfigInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#UserAuthConfigInfoList', name: 'UserAuthConfigInfoList')
    UserAuthConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#UserAuthConfigList', name: 'UserAuthConfigList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ValidDBInstanceModificationsMessage', name: 'ValidDBInstanceModificationsMessage')
    ValidStorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#ValidStorageOptions', name: 'ValidStorageOptions')
    ValidStorageOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ValidStorageOptionsList', name: 'ValidStorageOptionsList')
    ValidUpgradeTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#ValidUpgradeTargetList', name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.rds#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.rds#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')
    WriteForwardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.rds#WriteForwardingStatus', name: 'WriteForwardingStatus')

    AccountAttributesMessage.add_member(:account_quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: 'AccountQuotas'))
    AccountAttributesMessage.type = Types::AccountAttributesMessage
    AccountQuota.add_member(:account_quota_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountQuotaName'))
    AccountQuota.add_member(:used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Used'))
    AccountQuota.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Max'))
    AccountQuota.type = Types::AccountQuota
    AccountQuotaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountQuota, traits: {"smithy.api#xmlName" => "AccountQuota"})
    ActivityStreamMode.add_member(:sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sync', traits: {"smithy.api#enumValue" => "sync"}))
    ActivityStreamMode.add_member(:async, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'async', traits: {"smithy.api#enumValue" => "async"}))
    ActivityStreamModeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ActivityStreamPolicyStatus.add_member(:locked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'locked', traits: {"smithy.api#enumValue" => "locked"}))
    ActivityStreamPolicyStatus.add_member(:unlocked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unlocked', traits: {"smithy.api#enumValue" => "unlocked"}))
    ActivityStreamPolicyStatus.add_member(:locking_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'locking_policy', traits: {"smithy.api#enumValue" => "locking-policy"}))
    ActivityStreamPolicyStatus.add_member(:unlocking_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unlocking_policy', traits: {"smithy.api#enumValue" => "unlocking-policy"}))
    ActivityStreamStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopped', traits: {"smithy.api#enumValue" => "stopped"}))
    ActivityStreamStatus.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'starting', traits: {"smithy.api#enumValue" => "starting"}))
    ActivityStreamStatus.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'started', traits: {"smithy.api#enumValue" => "started"}))
    ActivityStreamStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stopping', traits: {"smithy.api#enumValue" => "stopping"}))
    AddRoleToDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    AddRoleToDBClusterMessage.type = Types::AddRoleToDBClusterMessage
    AddRoleToDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.type = Types::AddRoleToDBInstanceMessage
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
    AuditPolicyState.add_member(:locked_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCKED_POLICY', traits: {"smithy.api#enumValue" => "locked"}))
    AuditPolicyState.add_member(:unlocked_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLOCKED_POLICY', traits: {"smithy.api#enumValue" => "unlocked"}))
    AuthScheme.add_member(:secrets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECRETS', traits: {"smithy.api#enumValue" => "SECRETS"}))
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationQuotaExceededFault.type = Types::AuthorizationQuotaExceededFault
    AuthorizeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupId'))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    AuthorizeDBSecurityGroupIngressMessage.type = Types::AuthorizeDBSecurityGroupIngressMessage
    AuthorizeDBSecurityGroupIngressResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: 'DBSecurityGroup'))
    AuthorizeDBSecurityGroupIngressResult.type = Types::AuthorizeDBSecurityGroupIngressResult
    AutomationMode.add_member(:full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL', traits: {"smithy.api#enumValue" => "full"}))
    AutomationMode.add_member(:all_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_PAUSED', traits: {"smithy.api#enumValue" => "all-paused"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    AvailabilityZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    AvailableProcessorFeature.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailableProcessorFeature.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultValue'))
    AvailableProcessorFeature.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    AvailableProcessorFeature.type = Types::AvailableProcessorFeature
    AvailableProcessorFeatureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableProcessorFeature, traits: {"smithy.api#xmlName" => "AvailableProcessorFeature"})
    BacktrackDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BacktrackDBClusterMessage.add_member(:backtrack_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackTo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BacktrackDBClusterMessage.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Force'))
    BacktrackDBClusterMessage.add_member(:use_earliest_time_on_point_in_time_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseEarliestTimeOnPointInTimeUnavailable'))
    BacktrackDBClusterMessage.type = Types::BacktrackDBClusterMessage
    BacktrackDBClusterOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    BacktrackDBClusterOutput.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BacktrackIdentifier'))
    BacktrackDBClusterOutput.add_member(:backtrack_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackTo'))
    BacktrackDBClusterOutput.add_member(:backtracked_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackedFrom'))
    BacktrackDBClusterOutput.add_member(:backtrack_request_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackRequestCreationTime'))
    BacktrackDBClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    BacktrackDBClusterOutput.type = Types::BacktrackDBClusterOutput
    BackupPolicyNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BackupPolicyNotFoundFault.type = Types::BackupPolicyNotFoundFault
    BlueGreenDeployment.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: 'BlueGreenDeploymentIdentifier'))
    BlueGreenDeployment.add_member(:blue_green_deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentName, location_name: 'BlueGreenDeploymentName'))
    BlueGreenDeployment.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseArn, location_name: 'Source'))
    BlueGreenDeployment.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseArn, location_name: 'Target'))
    BlueGreenDeployment.add_member(:switchover_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverDetailList, location_name: 'SwitchoverDetails'))
    BlueGreenDeployment.add_member(:tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskList, location_name: 'Tasks'))
    BlueGreenDeployment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentStatus, location_name: 'Status'))
    BlueGreenDeployment.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentStatusDetails, location_name: 'StatusDetails'))
    BlueGreenDeployment.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    BlueGreenDeployment.add_member(:delete_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeleteTime'))
    BlueGreenDeployment.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    BlueGreenDeployment.type = Types::BlueGreenDeployment
    BlueGreenDeploymentAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BlueGreenDeploymentAlreadyExistsFault.type = Types::BlueGreenDeploymentAlreadyExistsFault
    BlueGreenDeploymentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeployment)
    BlueGreenDeploymentNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BlueGreenDeploymentNotFoundFault.type = Types::BlueGreenDeploymentNotFoundFault
    BlueGreenDeploymentTask.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskName, location_name: 'Name'))
    BlueGreenDeploymentTask.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentTaskStatus, location_name: 'Status'))
    BlueGreenDeploymentTask.type = Types::BlueGreenDeploymentTask
    BlueGreenDeploymentTaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentTask)
    CACertificateIdentifiersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    CancelExportTaskMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelExportTaskMessage.type = Types::CancelExportTaskMessage
    CancelExportTaskOutput.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier'))
    CancelExportTaskOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    CancelExportTaskOutput.add_member(:export_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExportOnly'))
    CancelExportTaskOutput.add_member(:snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotTime'))
    CancelExportTaskOutput.add_member(:task_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskStartTime'))
    CancelExportTaskOutput.add_member(:task_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskEndTime'))
    CancelExportTaskOutput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Bucket'))
    CancelExportTaskOutput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    CancelExportTaskOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    CancelExportTaskOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CancelExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CancelExportTaskOutput.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    CancelExportTaskOutput.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalExtractedDataInGB'))
    CancelExportTaskOutput.add_member(:failure_cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureCause'))
    CancelExportTaskOutput.add_member(:warning_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WarningMessage'))
    CancelExportTaskOutput.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'SourceType'))
    CancelExportTaskOutput.type = Types::CancelExportTaskOutput
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateIdentifier'))
    Certificate.add_member(:certificate_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateType'))
    Certificate.add_member(:thumbprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Thumbprint'))
    Certificate.add_member(:valid_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidFrom'))
    Certificate.add_member(:valid_till, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidTill'))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateArn'))
    Certificate.add_member(:customer_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CustomerOverride'))
    Certificate.add_member(:customer_override_valid_till, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CustomerOverrideValidTill'))
    Certificate.type = Types::Certificate
    CertificateDetails.add_member(:ca_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CAIdentifier'))
    CertificateDetails.add_member(:valid_till, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ValidTill'))
    CertificateDetails.type = Types::CertificateDetails
    CertificateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, traits: {"smithy.api#xmlName" => "Certificate"})
    CertificateMessage.add_member(:default_certificate_for_new_launches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultCertificateForNewLaunches'))
    CertificateMessage.add_member(:certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateList, location_name: 'Certificates'))
    CertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CertificateMessage.type = Types::CertificateMessage
    CertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CertificateNotFoundFault.type = Types::CertificateNotFoundFault
    CharacterSet.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CharacterSet.add_member(:character_set_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetDescription'))
    CharacterSet.type = Types::CharacterSet
    ClientPasswordAuthType.add_member(:mysql_native_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL_NATIVE_PASSWORD', traits: {"smithy.api#enumValue" => "MYSQL_NATIVE_PASSWORD"}))
    ClientPasswordAuthType.add_member(:mysql_caching_sha2_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL_CACHING_SHA2_PASSWORD', traits: {"smithy.api#enumValue" => "MYSQL_CACHING_SHA2_PASSWORD"}))
    ClientPasswordAuthType.add_member(:postgres_scram_sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRES_SCRAM_SHA_256', traits: {"smithy.api#enumValue" => "POSTGRES_SCRAM_SHA_256"}))
    ClientPasswordAuthType.add_member(:postgres_md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRES_MD5', traits: {"smithy.api#enumValue" => "POSTGRES_MD5"}))
    ClientPasswordAuthType.add_member(:sql_server_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL_SERVER_AUTHENTICATION', traits: {"smithy.api#enumValue" => "SQL_SERVER_AUTHENTICATION"}))
    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableLogTypes'))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'DisableLogTypes'))
    CloudwatchLogsExportConfiguration.type = Types::CloudwatchLogsExportConfiguration
    ClusterPendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: 'PendingCloudwatchLogsExports'))
    ClusterPendingModifiedValues.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    ClusterPendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    ClusterPendingModifiedValues.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IAMDatabaseAuthenticationEnabled'))
    ClusterPendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ClusterPendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    ClusterPendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ClusterPendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    ClusterPendingModifiedValues.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: 'RdsCustomClusterConfiguration'))
    ClusterPendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    ClusterPendingModifiedValues.add_member(:certificate_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDetails, location_name: 'CertificateDetails'))
    ClusterPendingModifiedValues.type = Types::ClusterPendingModifiedValues
    ClusterScalabilityType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    ClusterScalabilityType.add_member(:limitless, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMITLESS', traits: {"smithy.api#enumValue" => "limitless"}))
    ClusterScalabilityType.add_member(:scaleout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCALEOUT', traits: {"smithy.api#enumValue" => "scaleout"}))
    ConnectionPoolConfiguration.add_member(:max_connections_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxConnectionsPercent'))
    ConnectionPoolConfiguration.add_member(:max_idle_connections_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxIdleConnectionsPercent'))
    ConnectionPoolConfiguration.add_member(:connection_borrow_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ConnectionBorrowTimeout'))
    ConnectionPoolConfiguration.add_member(:session_pinning_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SessionPinningFilters'))
    ConnectionPoolConfiguration.add_member(:init_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InitQuery'))
    ConnectionPoolConfiguration.type = Types::ConnectionPoolConfiguration
    ConnectionPoolConfigurationInfo.add_member(:max_connections_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxConnectionsPercent'))
    ConnectionPoolConfigurationInfo.add_member(:max_idle_connections_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxIdleConnectionsPercent'))
    ConnectionPoolConfigurationInfo.add_member(:connection_borrow_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ConnectionBorrowTimeout'))
    ConnectionPoolConfigurationInfo.add_member(:session_pinning_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SessionPinningFilters'))
    ConnectionPoolConfigurationInfo.add_member(:init_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InitQuery'))
    ConnectionPoolConfigurationInfo.type = Types::ConnectionPoolConfigurationInfo
    ContextAttribute.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    ContextAttribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    ContextAttribute.type = Types::ContextAttribute
    ContextAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextAttribute)
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
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PreSignedUrl'))
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
    CopyDBSnapshotMessage.add_member(:source_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBSnapshotMessage.add_member(:target_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CopyDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTags'))
    CopyDBSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PreSignedUrl'))
    CopyDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CopyDBSnapshotMessage.add_member(:target_custom_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetCustomAvailabilityZone'))
    CopyDBSnapshotMessage.add_member(:snapshot_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotTarget'))
    CopyDBSnapshotMessage.add_member(:copy_option_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyOptionGroup'))
    CopyDBSnapshotMessage.add_member(:snapshot_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotAvailabilityZone'))
    CopyDBSnapshotMessage.type = Types::CopyDBSnapshotMessage
    CopyDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshot, location_name: 'DBSnapshot'))
    CopyDBSnapshotResult.type = Types::CopyDBSnapshotResult
    CopyOptionGroupMessage.add_member(:source_option_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceOptionGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:target_option_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetOptionGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:target_option_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetOptionGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyOptionGroupMessage.type = Types::CopyOptionGroupMessage
    CopyOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroup, location_name: 'OptionGroup'))
    CopyOptionGroupResult.type = Types::CopyOptionGroupResult
    CreateBlueGreenDeploymentRequest.add_member(:blue_green_deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentName, location_name: 'BlueGreenDeploymentName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateBlueGreenDeploymentRequest.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseArn, location_name: 'Source', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateBlueGreenDeploymentRequest.add_member(:target_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetEngineVersion, location_name: 'TargetEngineVersion'))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDBParameterGroupName, location_name: 'TargetDBParameterGroupName'))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDBClusterParameterGroupName, location_name: 'TargetDBClusterParameterGroupName'))
    CreateBlueGreenDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDBInstanceClass, location_name: 'TargetDBInstanceClass'))
    CreateBlueGreenDeploymentRequest.add_member(:upgrade_target_storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UpgradeTargetStorageConfig'))
    CreateBlueGreenDeploymentRequest.add_member(:target_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetIops'))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStorageType, location_name: 'TargetStorageType'))
    CreateBlueGreenDeploymentRequest.add_member(:target_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetAllocatedStorage'))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetStorageThroughput'))
    CreateBlueGreenDeploymentRequest.type = Types::CreateBlueGreenDeploymentRequest
    CreateBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: 'BlueGreenDeployment'))
    CreateBlueGreenDeploymentResponse.type = Types::CreateBlueGreenDeploymentResponse
    CreateCustomDBEngineVersionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CreateCustomDBEngineVersionFault.type = Types::CreateCustomDBEngineVersionFault
    CreateCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineName, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'DatabaseInstallationFilesS3BucketName'))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: 'DatabaseInstallationFilesS3Prefix'))
    CreateCustomDBEngineVersionMessage.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: 'ImageId'))
    CreateCustomDBEngineVersionMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdOrArn, location_name: 'KMSKeyId'))
    CreateCustomDBEngineVersionMessage.add_member(:source_custom_db_engine_version_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: 'SourceCustomDbEngineVersionIdentifier'))
    CreateCustomDBEngineVersionMessage.add_member(:use_aws_provided_latest_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseAwsProvidedLatestImage'))
    CreateCustomDBEngineVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateCustomDBEngineVersionMessage.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: 'Manifest'))
    CreateCustomDBEngineVersionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCustomDBEngineVersionMessage.type = Types::CreateCustomDBEngineVersionMessage
    CreateCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CreateCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    CreateCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3BucketName'))
    CreateCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3Prefix'))
    CreateCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: 'CustomDBEngineVersionManifest'))
    CreateCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionArn'))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    CreateCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, location_name: 'DefaultCharacterSet'))
    CreateCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionAMI, location_name: 'Image'))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineMediaType'))
    CreateCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    CreateCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedCharacterSets'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedNcharCharacterSets'))
    CreateCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: 'SupportedTimezones'))
    CreateCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsReadReplica'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNameList, location_name: 'SupportedFeatureNames'))
    CreateCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsParallelQuery'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    CreateCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsBabelfish'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLimitlessDatabase'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsCertificateRotationWithoutRestart'))
    CreateCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: 'SupportedCACertificateIdentifiers'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLocalWriteForwarding'))
    CreateCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIntegrations'))
    CreateCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: 'ServerlessV2FeaturesSupport'))
    CreateCustomDBEngineVersionOutput.type = Types::CreateCustomDBEngineVersionOutput
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
    CreateDBClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    CreateDBClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateDBClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    CreateDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    CreateDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CreateDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateDBClusterMessage.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationSourceIdentifier'))
    CreateDBClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateDBClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBClusterMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PreSignedUrl'))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    CreateDBClusterMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBClusterMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    CreateDBClusterMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'ScalingConfiguration'))
    CreateDBClusterMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: 'RdsCustomClusterConfiguration'))
    CreateDBClusterMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterInstanceClass'))
    CreateDBClusterMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    CreateDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBClusterMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    CreateDBClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    CreateDBClusterMessage.add_member(:enable_http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableHttpEndpoint'))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBClusterMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    CreateDBClusterMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    CreateDBClusterMessage.add_member(:enable_global_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableGlobalWriteForwarding'))
    CreateDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    CreateDBClusterMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    CreateDBClusterMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    CreateDBClusterMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    CreateDBClusterMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    CreateDBClusterMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    CreateDBClusterMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    CreateDBClusterMessage.add_member(:enable_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableLimitlessDatabase'))
    CreateDBClusterMessage.add_member(:cluster_scalability_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterScalabilityType, location_name: 'ClusterScalabilityType'))
    CreateDBClusterMessage.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
    CreateDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    CreateDBClusterMessage.add_member(:enable_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableLocalWriteForwarding'))
    CreateDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    CreateDBClusterMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    CreateDBClusterMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    CreateDBClusterMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: 'MasterUserAuthenticationType'))
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
    CreateDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
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
    CreateDBInstanceMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    CreateDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CreateDBInstanceMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CreateDBInstanceMessage.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NcharCharacterSetName'))
    CreateDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    CreateDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    CreateDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    CreateDBInstanceMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateDBInstanceMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    CreateDBInstanceMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainFqdn'))
    CreateDBInstanceMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainOu'))
    CreateDBInstanceMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainAuthSecretArn'))
    CreateDBInstanceMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DomainDnsIps'))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    CreateDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    CreateDBInstanceMessage.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    CreateDBInstanceMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    CreateDBInstanceMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBInstanceMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    CreateDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBInstanceMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    CreateDBInstanceMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCustomerOwnedIp'))
    CreateDBInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    CreateDBInstanceMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    CreateDBInstanceMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomIamInstanceProfile'))
    CreateDBInstanceMessage.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
    CreateDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    CreateDBInstanceMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    CreateDBInstanceMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    CreateDBInstanceMessage.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    CreateDBInstanceMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    CreateDBInstanceMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    CreateDBInstanceMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: 'MasterUserAuthenticationType'))
    CreateDBInstanceMessage.type = Types::CreateDBInstanceMessage
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBInstanceIdentifier'))
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    CreateDBInstanceReadReplicaMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    CreateDBInstanceReadReplicaMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateDBInstanceReadReplicaMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    CreateDBInstanceReadReplicaMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateDBInstanceReadReplicaMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    CreateDBInstanceReadReplicaMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CreateDBInstanceReadReplicaMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    CreateDBInstanceReadReplicaMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBInstanceReadReplicaMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBInstanceReadReplicaMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    CreateDBInstanceReadReplicaMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBInstanceReadReplicaMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    CreateDBInstanceReadReplicaMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBInstanceReadReplicaMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PreSignedUrl'))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    CreateDBInstanceReadReplicaMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBInstanceReadReplicaMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    CreateDBInstanceReadReplicaMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseDefaultProcessorFeatures'))
    CreateDBInstanceReadReplicaMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainFqdn'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainOu'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainAuthSecretArn'))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DomainDnsIps'))
    CreateDBInstanceReadReplicaMessage.add_member(:replica_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaMode, location_name: 'ReplicaMode'))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCustomerOwnedIp'))
    CreateDBInstanceReadReplicaMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    CreateDBInstanceReadReplicaMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    CreateDBInstanceReadReplicaMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    CreateDBInstanceReadReplicaMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomIamInstanceProfile'))
    CreateDBInstanceReadReplicaMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier'))
    CreateDBInstanceReadReplicaMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    CreateDBInstanceReadReplicaMessage.add_member(:upgrade_storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UpgradeStorageConfig'))
    CreateDBInstanceReadReplicaMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    CreateDBInstanceReadReplicaMessage.type = Types::CreateDBInstanceReadReplicaMessage
    CreateDBInstanceReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    CreateDBInstanceReadReplicaResult.type = Types::CreateDBInstanceReadReplicaResult
    CreateDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    CreateDBInstanceResult.type = Types::CreateDBInstanceResult
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBParameterGroupMessage.type = Types::CreateDBParameterGroupMessage
    CreateDBParameterGroupResult.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: 'DBParameterGroup'))
    CreateDBParameterGroupResult.type = Types::CreateDBParameterGroupResult
    CreateDBProxyEndpointRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: 'DBProxyEndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSecurityGroupIds'))
    CreateDBProxyEndpointRequest.add_member(:target_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointTargetRole, location_name: 'TargetRole'))
    CreateDBProxyEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBProxyEndpointRequest.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: 'EndpointNetworkType'))
    CreateDBProxyEndpointRequest.type = Types::CreateDBProxyEndpointRequest
    CreateDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: 'DBProxyEndpoint'))
    CreateDBProxyEndpointResponse.type = Types::CreateDBProxyEndpointResponse
    CreateDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:engine_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineFamily, location_name: 'EngineFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultAuthScheme, location_name: 'DefaultAuthScheme'))
    CreateDBProxyRequest.add_member(:auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAuthConfigList, location_name: 'Auth'))
    CreateDBProxyRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSecurityGroupIds'))
    CreateDBProxyRequest.add_member(:require_tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequireTLS'))
    CreateDBProxyRequest.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'IdleClientTimeout'))
    CreateDBProxyRequest.add_member(:debug_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DebugLogging'))
    CreateDBProxyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBProxyRequest.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: 'EndpointNetworkType'))
    CreateDBProxyRequest.add_member(:target_connection_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConnectionNetworkType, location_name: 'TargetConnectionNetworkType'))
    CreateDBProxyRequest.type = Types::CreateDBProxyRequest
    CreateDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxy, location_name: 'DBProxy'))
    CreateDBProxyResponse.type = Types::CreateDBProxyResponse
    CreateDBSecurityGroupMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSecurityGroupMessage.add_member(:db_security_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBSecurityGroupMessage.type = Types::CreateDBSecurityGroupMessage
    CreateDBSecurityGroupResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: 'DBSecurityGroup'))
    CreateDBSecurityGroupResult.type = Types::CreateDBSecurityGroupResult
    CreateDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    CreateDBShardGroupMessage.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    CreateDBShardGroupMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBShardGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBShardGroupMessage.type = Types::CreateDBShardGroupMessage
    CreateDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupResourceId'))
    CreateDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    CreateDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    CreateDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    CreateDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    CreateDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    CreateDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CreateDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    CreateDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupArn'))
    CreateDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CreateDBShardGroupOutput.type = Types::CreateDBShardGroupOutput
    CreateDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSnapshotMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBSnapshotMessage.type = Types::CreateDBSnapshotMessage
    CreateDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshot, location_name: 'DBSnapshot'))
    CreateDBSnapshotResult.type = Types::CreateDBSnapshotResult
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
    CreateGlobalClusterMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    CreateGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateGlobalClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateGlobalClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateGlobalClusterMessage.type = Types::CreateGlobalClusterMessage
    CreateGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    CreateGlobalClusterResult.type = Types::CreateGlobalClusterResult
    CreateIntegrationMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    CreateIntegrationMessage.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    CreateIntegrationMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateIntegrationMessage.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    CreateIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    CreateIntegrationMessage.type = Types::CreateIntegrationMessage
    CreateIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    CreateIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn'))
    CreateIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    CreateIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    CreateIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    CreateIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    CreateIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'Status'))
    CreateIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    CreateIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    CreateIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    CreateIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:option_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateOptionGroupMessage.type = Types::CreateOptionGroupMessage
    CreateOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroup, location_name: 'OptionGroup'))
    CreateOptionGroupResult.type = Types::CreateOptionGroupResult
    CreateTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    CreateTenantDatabaseMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CreateTenantDatabaseMessage.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NcharCharacterSetName'))
    CreateTenantDatabaseMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    CreateTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    CreateTenantDatabaseMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateTenantDatabaseMessage.type = Types::CreateTenantDatabaseMessage
    CreateTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabase, location_name: 'TenantDatabase'))
    CreateTenantDatabaseResult.type = Types::CreateTenantDatabaseResult
    CustomAvailabilityZoneNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomAvailabilityZoneNotFoundFault.type = Types::CustomAvailabilityZoneNotFoundFault
    CustomDBEngineVersionAMI.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageId'))
    CustomDBEngineVersionAMI.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CustomDBEngineVersionAMI.type = Types::CustomDBEngineVersionAMI
    CustomDBEngineVersionAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomDBEngineVersionAlreadyExistsFault.type = Types::CustomDBEngineVersionAlreadyExistsFault
    CustomDBEngineVersionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomDBEngineVersionNotFoundFault.type = Types::CustomDBEngineVersionNotFoundFault
    CustomDBEngineVersionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomDBEngineVersionQuotaExceededFault.type = Types::CustomDBEngineVersionQuotaExceededFault
    CustomEngineVersionStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "available"}))
    CustomEngineVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'inactive', traits: {"smithy.api#enumValue" => "inactive"}))
    CustomEngineVersionStatus.add_member(:inactive_except_restore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'inactive_except_restore', traits: {"smithy.api#enumValue" => "inactive-except-restore"}))
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
    DBCluster.add_member(:custom_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'CustomEndpoints'))
    DBCluster.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
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
    DBCluster.add_member(:status_infos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterStatusInfoList, location_name: 'StatusInfos'))
    DBCluster.add_member(:db_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: 'DBClusterMembers'))
    DBCluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DBCluster.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    DBCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBCluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBCluster.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DBCluster.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    DBCluster.add_member(:associated_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: 'AssociatedRoles'))
    DBCluster.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBCluster.add_member(:clone_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloneGroupId'))
    DBCluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBCluster.add_member(:earliest_backtrack_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EarliestBacktrackTime'))
    DBCluster.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    DBCluster.add_member(:backtrack_consumed_change_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackConsumedChangeRecords'))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBCluster.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Capacity'))
    DBCluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterPendingModifiedValues, location_name: 'PendingModifiedValues'))
    DBCluster.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    DBCluster.add_member(:scaling_configuration_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationInfo, location_name: 'ScalingConfigurationInfo'))
    DBCluster.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: 'RdsCustomClusterConfiguration'))
    DBCluster.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterInstanceClass'))
    DBCluster.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBCluster.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBCluster.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'IOOptimizedNextAllowedModificationTime'))
    DBCluster.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    DBCluster.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    DBCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    DBCluster.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'HttpEndpointEnabled'))
    DBCluster.add_member(:activity_stream_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: 'ActivityStreamMode'))
    DBCluster.add_member(:activity_stream_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: 'ActivityStreamStatus'))
    DBCluster.add_member(:activity_stream_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityStreamKmsKeyId'))
    DBCluster.add_member(:activity_stream_kinesis_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityStreamKinesisStreamName'))
    DBCluster.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    DBCluster.add_member(:cross_account_clone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CrossAccountClone'))
    DBCluster.add_member(:domain_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: 'DomainMemberships'))
    DBCluster.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    DBCluster.add_member(:global_write_forwarding_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteForwardingStatus, location_name: 'GlobalWriteForwardingStatus'))
    DBCluster.add_member(:global_write_forwarding_requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'GlobalWriteForwardingRequested'))
    DBCluster.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    DBCluster.add_member(:automatic_restart_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutomaticRestartTime'))
    DBCluster.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfigurationInfo, location_name: 'ServerlessV2ScalingConfiguration'))
    DBCluster.add_member(:serverless_v2_platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessV2PlatformVersion'))
    DBCluster.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    DBCluster.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    DBCluster.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    DBCluster.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PerformanceInsightsEnabled'))
    DBCluster.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    DBCluster.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    DBCluster.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
    DBCluster.add_member(:master_user_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: 'MasterUserSecret'))
    DBCluster.add_member(:local_write_forwarding_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalWriteForwardingStatus, location_name: 'LocalWriteForwardingStatus'))
    DBCluster.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsBackupRecoveryPointArn'))
    DBCluster.add_member(:limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitlessDatabase, location_name: 'LimitlessDatabase'))
    DBCluster.add_member(:cluster_scalability_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterScalabilityType, location_name: 'ClusterScalabilityType'))
    DBCluster.add_member(:certificate_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDetails, location_name: 'CertificateDetails'))
    DBCluster.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    DBCluster.type = Types::DBCluster
    DBClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterAlreadyExistsFault.type = Types::DBClusterAlreadyExistsFault
    DBClusterAutomatedBackup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBClusterAutomatedBackup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBClusterAutomatedBackup.add_member(:db_cluster_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterAutomatedBackupsArn'))
    DBClusterAutomatedBackup.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBClusterAutomatedBackup.add_member(:restore_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreWindow, location_name: 'RestoreWindow'))
    DBClusterAutomatedBackup.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBClusterAutomatedBackup.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DBClusterAutomatedBackup.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    DBClusterAutomatedBackup.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBClusterAutomatedBackup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterAutomatedBackup.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBClusterAutomatedBackup.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBClusterAutomatedBackup.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBClusterAutomatedBackup.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllocatedStorage'))
    DBClusterAutomatedBackup.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBClusterAutomatedBackup.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    DBClusterAutomatedBackup.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    DBClusterAutomatedBackup.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    DBClusterAutomatedBackup.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    DBClusterAutomatedBackup.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBClusterAutomatedBackup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBClusterAutomatedBackup.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBClusterAutomatedBackup.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBClusterAutomatedBackup.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBClusterAutomatedBackup.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsBackupRecoveryPointArn'))
    DBClusterAutomatedBackup.type = Types::DBClusterAutomatedBackup
    DBClusterAutomatedBackupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackup, traits: {"smithy.api#xmlName" => "DBClusterAutomatedBackup"})
    DBClusterAutomatedBackupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterAutomatedBackupMessage.add_member(:db_cluster_automated_backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupList, location_name: 'DBClusterAutomatedBackups'))
    DBClusterAutomatedBackupMessage.type = Types::DBClusterAutomatedBackupMessage
    DBClusterAutomatedBackupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterAutomatedBackupNotFoundFault.type = Types::DBClusterAutomatedBackupNotFoundFault
    DBClusterAutomatedBackupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterAutomatedBackupQuotaExceededFault.type = Types::DBClusterAutomatedBackupQuotaExceededFault
    DBClusterBacktrack.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBClusterBacktrack.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BacktrackIdentifier'))
    DBClusterBacktrack.add_member(:backtrack_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackTo'))
    DBClusterBacktrack.add_member(:backtracked_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackedFrom'))
    DBClusterBacktrack.add_member(:backtrack_request_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'BacktrackRequestCreationTime'))
    DBClusterBacktrack.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterBacktrack.type = Types::DBClusterBacktrack
    DBClusterBacktrackList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterBacktrack, traits: {"smithy.api#xmlName" => "DBClusterBacktrack"})
    DBClusterBacktrackMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterBacktrackMessage.add_member(:db_cluster_backtracks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterBacktrackList, location_name: 'DBClusterBacktracks'))
    DBClusterBacktrackMessage.type = Types::DBClusterBacktrackMessage
    DBClusterBacktrackNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterBacktrackNotFoundFault.type = Types::DBClusterBacktrackNotFoundFault
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
    DBClusterSnapshot.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
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
    DBClusterSnapshot.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBClusterSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBClusterSnapshot.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBClusterSnapshot.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DBClusterSnapshot.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
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
    DBClusterStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusType'))
    DBClusterStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Normal'))
    DBClusterStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DBClusterStatusInfo.type = Types::DBClusterStatusInfo
    DBClusterStatusInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterStatusInfo, traits: {"smithy.api#xmlName" => "DBClusterStatusInfo"})
    DBEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBEngineVersion.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    DBEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBEngineVersion.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3BucketName'))
    DBEngineVersion.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3Prefix'))
    DBEngineVersion.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: 'CustomDBEngineVersionManifest'))
    DBEngineVersion.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBEngineVersion.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    DBEngineVersion.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionArn'))
    DBEngineVersion.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    DBEngineVersion.add_member(:default_character_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, location_name: 'DefaultCharacterSet'))
    DBEngineVersion.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionAMI, location_name: 'Image'))
    DBEngineVersion.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineMediaType'))
    DBEngineVersion.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    DBEngineVersion.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    DBEngineVersion.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedCharacterSets'))
    DBEngineVersion.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedNcharCharacterSets'))
    DBEngineVersion.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    DBEngineVersion.add_member(:supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: 'SupportedTimezones'))
    DBEngineVersion.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    DBEngineVersion.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsReadReplica'))
    DBEngineVersion.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    DBEngineVersion.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNameList, location_name: 'SupportedFeatureNames'))
    DBEngineVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBEngineVersion.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsParallelQuery'))
    DBEngineVersion.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    DBEngineVersion.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBEngineVersion.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsBabelfish'))
    DBEngineVersion.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLimitlessDatabase'))
    DBEngineVersion.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsCertificateRotationWithoutRestart'))
    DBEngineVersion.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: 'SupportedCACertificateIdentifiers'))
    DBEngineVersion.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLocalWriteForwarding'))
    DBEngineVersion.add_member(:supports_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIntegrations'))
    DBEngineVersion.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: 'ServerlessV2FeaturesSupport'))
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
    DBInstance.add_member(:replica_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaMode, location_name: 'ReplicaMode'))
    DBInstance.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBInstance.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBInstance.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBInstance.add_member(:option_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupMembershipList, location_name: 'OptionGroupMemberships'))
    DBInstance.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    DBInstance.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NcharCharacterSetName'))
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
    DBInstance.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    DBInstance.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PerformanceInsightsEnabled'))
    DBInstance.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    DBInstance.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBInstance.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    DBInstance.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeletionProtection'))
    DBInstance.add_member(:associated_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceRoles, location_name: 'AssociatedRoles'))
    DBInstance.add_member(:listener_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ListenerEndpoint'))
    DBInstance.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    DBInstance.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBInstance.add_member(:automation_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationMode, location_name: 'AutomationMode'))
    DBInstance.add_member(:resume_full_automation_mode_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ResumeFullAutomationModeTime'))
    DBInstance.add_member(:customer_owned_ip_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CustomerOwnedIpEnabled'))
    DBInstance.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    DBInstance.add_member(:activity_stream_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: 'ActivityStreamStatus'))
    DBInstance.add_member(:activity_stream_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityStreamKmsKeyId'))
    DBInstance.add_member(:activity_stream_kinesis_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActivityStreamKinesisStreamName'))
    DBInstance.add_member(:activity_stream_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: 'ActivityStreamMode'))
    DBInstance.add_member(:activity_stream_engine_native_audit_fields_included, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ActivityStreamEngineNativeAuditFieldsIncluded'))
    DBInstance.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsBackupRecoveryPointArn'))
    DBInstance.add_member(:db_instance_automated_backups_replications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplicationList, location_name: 'DBInstanceAutomatedBackupsReplications'))
    DBInstance.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    DBInstance.add_member(:automatic_restart_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutomaticRestartTime'))
    DBInstance.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomIamInstanceProfile'))
    DBInstance.add_member(:activity_stream_policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamPolicyStatus, location_name: 'ActivityStreamPolicyStatus'))
    DBInstance.add_member(:certificate_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDetails, location_name: 'CertificateDetails'))
    DBInstance.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
    DBInstance.add_member(:master_user_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: 'MasterUserSecret'))
    DBInstance.add_member(:read_replica_source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReadReplicaSourceDBClusterIdentifier'))
    DBInstance.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentProgress'))
    DBInstance.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    DBInstance.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedLogVolume'))
    DBInstance.add_member(:is_storage_config_upgrade_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IsStorageConfigUpgradeAvailable'))
    DBInstance.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    DBInstance.type = Types::DBInstance
    DBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceAlreadyExistsFault.type = Types::DBInstanceAlreadyExistsFault
    DBInstanceAutomatedBackup.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceArn'))
    DBInstanceAutomatedBackup.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DBInstanceAutomatedBackup.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    DBInstanceAutomatedBackup.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBInstanceAutomatedBackup.add_member(:restore_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreWindow, location_name: 'RestoreWindow'))
    DBInstanceAutomatedBackup.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllocatedStorage'))
    DBInstanceAutomatedBackup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBInstanceAutomatedBackup.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBInstanceAutomatedBackup.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    DBInstanceAutomatedBackup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBInstanceAutomatedBackup.add_member(:instance_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'InstanceCreateTime'))
    DBInstanceAutomatedBackup.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBInstanceAutomatedBackup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBInstanceAutomatedBackup.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBInstanceAutomatedBackup.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBInstanceAutomatedBackup.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBInstanceAutomatedBackup.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBInstanceAutomatedBackup.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    DBInstanceAutomatedBackup.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    DBInstanceAutomatedBackup.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    DBInstanceAutomatedBackup.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBInstanceAutomatedBackup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBInstanceAutomatedBackup.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    DBInstanceAutomatedBackup.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBInstanceAutomatedBackup.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceAutomatedBackupsArn'))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_replications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplicationList, location_name: 'DBInstanceAutomatedBackupsReplications'))
    DBInstanceAutomatedBackup.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    DBInstanceAutomatedBackup.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    DBInstanceAutomatedBackup.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsBackupRecoveryPointArn'))
    DBInstanceAutomatedBackup.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    DBInstanceAutomatedBackup.type = Types::DBInstanceAutomatedBackup
    DBInstanceAutomatedBackupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, traits: {"smithy.api#xmlName" => "DBInstanceAutomatedBackup"})
    DBInstanceAutomatedBackupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupList, location_name: 'DBInstanceAutomatedBackups'))
    DBInstanceAutomatedBackupMessage.type = Types::DBInstanceAutomatedBackupMessage
    DBInstanceAutomatedBackupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceAutomatedBackupNotFoundFault.type = Types::DBInstanceAutomatedBackupNotFoundFault
    DBInstanceAutomatedBackupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceAutomatedBackupQuotaExceededFault.type = Types::DBInstanceAutomatedBackupQuotaExceededFault
    DBInstanceAutomatedBackupsReplication.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceAutomatedBackupsArn'))
    DBInstanceAutomatedBackupsReplication.type = Types::DBInstanceAutomatedBackupsReplication
    DBInstanceAutomatedBackupsReplicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupsReplication, traits: {"smithy.api#xmlName" => "DBInstanceAutomatedBackupsReplication"})
    DBInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, traits: {"smithy.api#xmlName" => "DBInstance"})
    DBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBInstanceMessage.add_member(:db_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceList, location_name: 'DBInstances'))
    DBInstanceMessage.type = Types::DBInstanceMessage
    DBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceNotFoundFault.type = Types::DBInstanceNotFoundFault
    DBInstanceNotReadyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceNotReadyFault.type = Types::DBInstanceNotReadyFault
    DBInstanceRole.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    DBInstanceRole.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    DBInstanceRole.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBInstanceRole.type = Types::DBInstanceRole
    DBInstanceRoleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceRoleAlreadyExistsFault.type = Types::DBInstanceRoleAlreadyExistsFault
    DBInstanceRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceRoleNotFoundFault.type = Types::DBInstanceRoleNotFoundFault
    DBInstanceRoleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceRoleQuotaExceededFault.type = Types::DBInstanceRoleQuotaExceededFault
    DBInstanceRoles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceRole, traits: {"smithy.api#xmlName" => "DBInstanceRole"})
    DBInstanceStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusType'))
    DBInstanceStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Normal'))
    DBInstanceStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBInstanceStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DBInstanceStatusInfo.type = Types::DBInstanceStatusInfo
    DBInstanceStatusInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, traits: {"smithy.api#xmlName" => "DBInstanceStatusInfo"})
    DBLogFileNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBLogFileNotFoundFault.type = Types::DBLogFileNotFoundFault
    DBMajorEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBMajorEngineVersion.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    DBMajorEngineVersion.add_member(:supported_engine_lifecycles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEngineLifecycleList, location_name: 'SupportedEngineLifecycles'))
    DBMajorEngineVersion.type = Types::DBMajorEngineVersion
    DBMajorEngineVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBMajorEngineVersion, traits: {"smithy.api#xmlName" => "DBMajorEngineVersion"})
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
    DBProxy.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyName'))
    DBProxy.add_member(:db_proxy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyArn'))
    DBProxy.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyStatus, location_name: 'Status'))
    DBProxy.add_member(:engine_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineFamily'))
    DBProxy.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBProxy.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSecurityGroupIds'))
    DBProxy.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSubnetIds'))
    DBProxy.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAuthScheme'))
    DBProxy.add_member(:auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAuthConfigInfoList, location_name: 'Auth'))
    DBProxy.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    DBProxy.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBProxy.add_member(:require_tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequireTLS'))
    DBProxy.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IdleClientTimeout'))
    DBProxy.add_member(:debug_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DebugLogging'))
    DBProxy.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedDate'))
    DBProxy.add_member(:updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedDate'))
    DBProxy.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: 'EndpointNetworkType'))
    DBProxy.add_member(:target_connection_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConnectionNetworkType, location_name: 'TargetConnectionNetworkType'))
    DBProxy.type = Types::DBProxy
    DBProxyAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyAlreadyExistsFault.type = Types::DBProxyAlreadyExistsFault
    DBProxyEndpoint.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyEndpointName'))
    DBProxyEndpoint.add_member(:db_proxy_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyEndpointArn'))
    DBProxyEndpoint.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyName'))
    DBProxyEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointStatus, location_name: 'Status'))
    DBProxyEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBProxyEndpoint.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSecurityGroupIds'))
    DBProxyEndpoint.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSubnetIds'))
    DBProxyEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBProxyEndpoint.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedDate'))
    DBProxyEndpoint.add_member(:target_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointTargetRole, location_name: 'TargetRole'))
    DBProxyEndpoint.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault'))
    DBProxyEndpoint.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNetworkType, location_name: 'EndpointNetworkType'))
    DBProxyEndpoint.type = Types::DBProxyEndpoint
    DBProxyEndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyEndpointAlreadyExistsFault.type = Types::DBProxyEndpointAlreadyExistsFault
    DBProxyEndpointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpoint)
    DBProxyEndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyEndpointNotFoundFault.type = Types::DBProxyEndpointNotFoundFault
    DBProxyEndpointQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyEndpointQuotaExceededFault.type = Types::DBProxyEndpointQuotaExceededFault
    DBProxyEndpointStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    DBProxyEndpointStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    DBProxyEndpointStatus.add_member(:incompatible_network, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_NETWORK', traits: {"smithy.api#enumValue" => "incompatible-network"}))
    DBProxyEndpointStatus.add_member(:insufficient_resource_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_RESOURCE_LIMITS', traits: {"smithy.api#enumValue" => "insufficient-resource-limits"}))
    DBProxyEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    DBProxyEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    DBProxyEndpointTargetRole.add_member(:read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_WRITE', traits: {"smithy.api#enumValue" => "READ_WRITE"}))
    DBProxyEndpointTargetRole.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    DBProxyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxy)
    DBProxyNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyNotFoundFault.type = Types::DBProxyNotFoundFault
    DBProxyQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyQuotaExceededFault.type = Types::DBProxyQuotaExceededFault
    DBProxyStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    DBProxyStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    DBProxyStatus.add_member(:incompatible_network, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_NETWORK', traits: {"smithy.api#enumValue" => "incompatible-network"}))
    DBProxyStatus.add_member(:insufficient_resource_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_RESOURCE_LIMITS', traits: {"smithy.api#enumValue" => "insufficient-resource-limits"}))
    DBProxyStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    DBProxyStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    DBProxyStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "suspended"}))
    DBProxyStatus.add_member(:suspending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "suspending"}))
    DBProxyStatus.add_member(:reactivating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REACTIVATING', traits: {"smithy.api#enumValue" => "reactivating"}))
    DBProxyTarget.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetArn'))
    DBProxyTarget.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBProxyTarget.add_member(:tracked_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrackedClusterId'))
    DBProxyTarget.add_member(:rds_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsResourceId'))
    DBProxyTarget.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBProxyTarget.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'Type'))
    DBProxyTarget.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetRole, location_name: 'Role'))
    DBProxyTarget.add_member(:target_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealth, location_name: 'TargetHealth'))
    DBProxyTarget.type = Types::DBProxyTarget
    DBProxyTargetAlreadyRegisteredFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyTargetAlreadyRegisteredFault.type = Types::DBProxyTargetAlreadyRegisteredFault
    DBProxyTargetGroup.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBProxyName'))
    DBProxyTargetGroup.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetGroupName'))
    DBProxyTargetGroup.add_member(:target_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetGroupArn'))
    DBProxyTargetGroup.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault'))
    DBProxyTargetGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBProxyTargetGroup.add_member(:connection_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionPoolConfigurationInfo, location_name: 'ConnectionPoolConfig'))
    DBProxyTargetGroup.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedDate'))
    DBProxyTargetGroup.add_member(:updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedDate'))
    DBProxyTargetGroup.type = Types::DBProxyTargetGroup
    DBProxyTargetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyTargetGroupNotFoundFault.type = Types::DBProxyTargetGroupNotFoundFault
    DBProxyTargetNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBProxyTargetNotFoundFault.type = Types::DBProxyTargetNotFoundFault
    DBRecommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationId'))
    DBRecommendation.add_member(:type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TypeId'))
    DBRecommendation.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    DBRecommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn'))
    DBRecommendation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBRecommendation.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedTime'))
    DBRecommendation.add_member(:updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedTime'))
    DBRecommendation.add_member(:detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Detection'))
    DBRecommendation.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Recommendation'))
    DBRecommendation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    DBRecommendation.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    DBRecommendation.add_member(:recommended_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionList, location_name: 'RecommendedActions'))
    DBRecommendation.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Category'))
    DBRecommendation.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DBRecommendation.add_member(:type_detection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TypeDetection'))
    DBRecommendation.add_member(:type_recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TypeRecommendation'))
    DBRecommendation.add_member(:impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Impact'))
    DBRecommendation.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdditionalInfo'))
    DBRecommendation.add_member(:links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocLinkList, location_name: 'Links'))
    DBRecommendation.add_member(:issue_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueDetails, location_name: 'IssueDetails'))
    DBRecommendation.type = Types::DBRecommendation
    DBRecommendationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBRecommendation)
    DBRecommendationMessage.add_member(:db_recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBRecommendation, location_name: 'DBRecommendation'))
    DBRecommendationMessage.type = Types::DBRecommendationMessage
    DBRecommendationsMessage.add_member(:db_recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBRecommendationList, location_name: 'DBRecommendations'))
    DBRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBRecommendationsMessage.type = Types::DBRecommendationsMessage
    DBSecurityGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerId'))
    DBSecurityGroup.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName'))
    DBSecurityGroup.add_member(:db_security_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupDescription'))
    DBSecurityGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: 'EC2SecurityGroups'))
    DBSecurityGroup.add_member(:ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPRangeList, location_name: 'IPRanges'))
    DBSecurityGroup.add_member(:db_security_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupArn'))
    DBSecurityGroup.type = Types::DBSecurityGroup
    DBSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupAlreadyExistsFault.type = Types::DBSecurityGroupAlreadyExistsFault
    DBSecurityGroupMembership.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName'))
    DBSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBSecurityGroupMembership.type = Types::DBSecurityGroupMembership
    DBSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupMembership, traits: {"smithy.api#xmlName" => "DBSecurityGroup"})
    DBSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSecurityGroupMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroups, location_name: 'DBSecurityGroups'))
    DBSecurityGroupMessage.type = Types::DBSecurityGroupMessage
    DBSecurityGroupNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DBSecurityGroupName"})
    DBSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupNotFoundFault.type = Types::DBSecurityGroupNotFoundFault
    DBSecurityGroupNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupNotSupportedFault.type = Types::DBSecurityGroupNotSupportedFault
    DBSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupQuotaExceededFault.type = Types::DBSecurityGroupQuotaExceededFault
    DBSecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroup, traits: {"smithy.api#xmlName" => "DBSecurityGroup"})
    DBShardGroup.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupResourceId'))
    DBShardGroup.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    DBShardGroup.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBShardGroup.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    DBShardGroup.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    DBShardGroup.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    DBShardGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBShardGroup.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    DBShardGroup.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBShardGroup.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupArn'))
    DBShardGroup.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBShardGroup.type = Types::DBShardGroup
    DBShardGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBShardGroupAlreadyExistsFault.type = Types::DBShardGroupAlreadyExistsFault
    DBShardGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBShardGroupNotFoundFault.type = Types::DBShardGroupNotFoundFault
    DBShardGroupsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroup, traits: {"smithy.api#xmlName" => "DBShardGroup"})
    DBSnapshot.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    DBSnapshot.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime'))
    DBSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBSnapshot.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllocatedStorage'))
    DBSnapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBSnapshot.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBSnapshot.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    DBSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBSnapshot.add_member(:instance_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'InstanceCreateTime'))
    DBSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBSnapshot.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DBSnapshot.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBSnapshot.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    DBSnapshot.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    DBSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    DBSnapshot.add_member(:source_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceRegion'))
    DBSnapshot.add_member(:source_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBSnapshotIdentifier'))
    DBSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBSnapshot.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    DBSnapshot.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    DBSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBSnapshot.add_member(:db_snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotArn'))
    DBSnapshot.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    DBSnapshot.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBSnapshot.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    DBSnapshot.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DBSnapshot.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBSnapshot.add_member(:snapshot_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotTarget'))
    DBSnapshot.add_member(:original_snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'OriginalSnapshotCreateTime'))
    DBSnapshot.add_member(:snapshot_database_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotDatabaseTime'))
    DBSnapshot.add_member(:db_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSystemId'))
    DBSnapshot.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    DBSnapshot.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DedicatedLogVolume'))
    DBSnapshot.add_member(:snapshot_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotAvailabilityZone'))
    DBSnapshot.type = Types::DBSnapshot
    DBSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotAlreadyExistsFault.type = Types::DBSnapshotAlreadyExistsFault
    DBSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName'))
    DBSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues'))
    DBSnapshotAttribute.type = Types::DBSnapshotAttribute
    DBSnapshotAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAttribute, traits: {"smithy.api#xmlName" => "DBSnapshotAttribute"})
    DBSnapshotAttributesResult.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    DBSnapshotAttributesResult.add_member(:db_snapshot_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAttributeList, location_name: 'DBSnapshotAttributes'))
    DBSnapshotAttributesResult.type = Types::DBSnapshotAttributesResult
    DBSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshot, traits: {"smithy.api#xmlName" => "DBSnapshot"})
    DBSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSnapshotMessage.add_member(:db_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotList, location_name: 'DBSnapshots'))
    DBSnapshotMessage.type = Types::DBSnapshotMessage
    DBSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotNotFoundFault.type = Types::DBSnapshotNotFoundFault
    DBSnapshotTenantDatabase.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    DBSnapshotTenantDatabase.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBSnapshotTenantDatabase.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DBSnapshotTenantDatabase.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName'))
    DBSnapshotTenantDatabase.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DBSnapshotTenantDatabase.add_member(:tenant_database_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TenantDatabaseCreateTime'))
    DBSnapshotTenantDatabase.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName'))
    DBSnapshotTenantDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBSnapshotTenantDatabase.add_member(:tenant_database_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDatabaseResourceId'))
    DBSnapshotTenantDatabase.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    DBSnapshotTenantDatabase.add_member(:db_snapshot_tenant_database_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotTenantDatabaseARN'))
    DBSnapshotTenantDatabase.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NcharCharacterSetName'))
    DBSnapshotTenantDatabase.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DBSnapshotTenantDatabase.type = Types::DBSnapshotTenantDatabase
    DBSnapshotTenantDatabaseNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotTenantDatabaseNotFoundFault.type = Types::DBSnapshotTenantDatabaseNotFoundFault
    DBSnapshotTenantDatabasesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabase, traits: {"smithy.api#xmlName" => "DBSnapshotTenantDatabase"})
    DBSnapshotTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_tenant_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabasesList, location_name: 'DBSnapshotTenantDatabases'))
    DBSnapshotTenantDatabasesMessage.type = Types::DBSnapshotTenantDatabasesMessage
    DBSubnetGroup.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    DBSubnetGroup.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription'))
    DBSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupStatus'))
    DBSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets'))
    DBSubnetGroup.add_member(:db_subnet_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupArn'))
    DBSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SupportedNetworkTypes'))
    DBSubnetGroup.type = Types::DBSubnetGroup
    DBSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupAlreadyExistsFault.type = Types::DBSubnetGroupAlreadyExistsFault
    DBSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupDoesNotCoverEnoughAZs.type = Types::DBSubnetGroupDoesNotCoverEnoughAZs
    DBSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: 'DBSubnetGroups'))
    DBSubnetGroupMessage.type = Types::DBSubnetGroupMessage
    DBSubnetGroupNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupNotAllowedFault.type = Types::DBSubnetGroupNotAllowedFault
    DBSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupNotFoundFault.type = Types::DBSubnetGroupNotFoundFault
    DBSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupQuotaExceededFault.type = Types::DBSubnetGroupQuotaExceededFault
    DBSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, traits: {"smithy.api#xmlName" => "DBSubnetGroup"})
    DBSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetQuotaExceededFault.type = Types::DBSubnetQuotaExceededFault
    DBUpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBUpgradeDependencyFailureFault.type = Types::DBUpgradeDependencyFailureFault
    DatabaseInsightsMode.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    DatabaseInsightsMode.add_member(:advanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADVANCED', traits: {"smithy.api#enumValue" => "advanced"}))
    DefaultAuthScheme.add_member(:iam_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_AUTH', traits: {"smithy.api#enumValue" => "IAM_AUTH"}))
    DefaultAuthScheme.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DeleteBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: 'BlueGreenDeploymentIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteBlueGreenDeploymentRequest.add_member(:delete_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeleteTarget'))
    DeleteBlueGreenDeploymentRequest.type = Types::DeleteBlueGreenDeploymentRequest
    DeleteBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: 'BlueGreenDeployment'))
    DeleteBlueGreenDeploymentResponse.type = Types::DeleteBlueGreenDeploymentResponse
    DeleteCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineName, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDBEngineVersionMessage.type = Types::DeleteCustomDBEngineVersionMessage
    DeleteCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DeleteCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    DeleteCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DeleteCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3BucketName'))
    DeleteCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3Prefix'))
    DeleteCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: 'CustomDBEngineVersionManifest'))
    DeleteCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionArn'))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    DeleteCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, location_name: 'DefaultCharacterSet'))
    DeleteCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionAMI, location_name: 'Image'))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineMediaType'))
    DeleteCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    DeleteCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedCharacterSets'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedNcharCharacterSets'))
    DeleteCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: 'SupportedTimezones'))
    DeleteCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsReadReplica'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNameList, location_name: 'SupportedFeatureNames'))
    DeleteCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsParallelQuery'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    DeleteCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsBabelfish'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLimitlessDatabase'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsCertificateRotationWithoutRestart'))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: 'SupportedCACertificateIdentifiers'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLocalWriteForwarding'))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIntegrations'))
    DeleteCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: 'ServerlessV2FeaturesSupport'))
    DeleteCustomDBEngineVersionOutput.type = Types::DeleteCustomDBEngineVersionOutput
    DeleteDBClusterAutomatedBackupMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterAutomatedBackupMessage.type = Types::DeleteDBClusterAutomatedBackupMessage
    DeleteDBClusterAutomatedBackupResult.add_member(:db_cluster_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackup, location_name: 'DBClusterAutomatedBackup'))
    DeleteDBClusterAutomatedBackupResult.type = Types::DeleteDBClusterAutomatedBackupResult
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
    DeleteDBClusterMessage.add_member(:delete_automated_backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeleteAutomatedBackups'))
    DeleteDBClusterMessage.type = Types::DeleteDBClusterMessage
    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterParameterGroupMessage.type = Types::DeleteDBClusterParameterGroupMessage
    DeleteDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    DeleteDBClusterResult.type = Types::DeleteDBClusterResult
    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterSnapshotMessage.type = Types::DeleteDBClusterSnapshotMessage
    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    DeleteDBClusterSnapshotResult.type = Types::DeleteDBClusterSnapshotResult
    DeleteDBInstanceAutomatedBackupMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DeleteDBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceAutomatedBackupsArn'))
    DeleteDBInstanceAutomatedBackupMessage.type = Types::DeleteDBInstanceAutomatedBackupMessage
    DeleteDBInstanceAutomatedBackupResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: 'DBInstanceAutomatedBackup'))
    DeleteDBInstanceAutomatedBackupResult.type = Types::DeleteDBInstanceAutomatedBackupResult
    DeleteDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBInstanceMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalSnapshot'))
    DeleteDBInstanceMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalDBSnapshotIdentifier'))
    DeleteDBInstanceMessage.add_member(:delete_automated_backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeleteAutomatedBackups'))
    DeleteDBInstanceMessage.type = Types::DeleteDBInstanceMessage
    DeleteDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    DeleteDBInstanceResult.type = Types::DeleteDBInstanceResult
    DeleteDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBParameterGroupMessage.type = Types::DeleteDBParameterGroupMessage
    DeleteDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: 'DBProxyEndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBProxyEndpointRequest.type = Types::DeleteDBProxyEndpointRequest
    DeleteDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: 'DBProxyEndpoint'))
    DeleteDBProxyEndpointResponse.type = Types::DeleteDBProxyEndpointResponse
    DeleteDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBProxyRequest.type = Types::DeleteDBProxyRequest
    DeleteDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxy, location_name: 'DBProxy'))
    DeleteDBProxyResponse.type = Types::DeleteDBProxyResponse
    DeleteDBSecurityGroupMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSecurityGroupMessage.type = Types::DeleteDBSecurityGroupMessage
    DeleteDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBShardGroupMessage.type = Types::DeleteDBShardGroupMessage
    DeleteDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupResourceId'))
    DeleteDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    DeleteDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DeleteDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    DeleteDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    DeleteDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    DeleteDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DeleteDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    DeleteDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DeleteDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupArn'))
    DeleteDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    DeleteDBShardGroupOutput.type = Types::DeleteDBShardGroupOutput
    DeleteDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSnapshotMessage.type = Types::DeleteDBSnapshotMessage
    DeleteDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshot, location_name: 'DBSnapshot'))
    DeleteDBSnapshotResult.type = Types::DeleteDBSnapshotResult
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
    DeleteIntegrationMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationIdentifier, location_name: 'IntegrationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationMessage.type = Types::DeleteIntegrationMessage
    DeleteIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    DeleteIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn'))
    DeleteIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    DeleteIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    DeleteIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    DeleteIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    DeleteIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'Status'))
    DeleteIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    DeleteIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    DeleteIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    DeleteIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    DeleteIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeleteOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteOptionGroupMessage.type = Types::DeleteOptionGroupMessage
    DeleteTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTenantDatabaseMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalSnapshot'))
    DeleteTenantDatabaseMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalDBSnapshotIdentifier'))
    DeleteTenantDatabaseMessage.type = Types::DeleteTenantDatabaseMessage
    DeleteTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabase, location_name: 'TenantDatabase'))
    DeleteTenantDatabaseResult.type = Types::DeleteTenantDatabaseResult
    DeregisterDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: 'TargetGroupName'))
    DeregisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DBInstanceIdentifiers'))
    DeregisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DBClusterIdentifiers'))
    DeregisterDBProxyTargetsRequest.type = Types::DeregisterDBProxyTargetsRequest
    DeregisterDBProxyTargetsResponse.type = Types::DeregisterDBProxyTargetsResponse
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeBlueGreenDeploymentsRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: 'BlueGreenDeploymentIdentifier'))
    DescribeBlueGreenDeploymentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeBlueGreenDeploymentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeBlueGreenDeploymentsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeBlueGreenDeploymentsRequest.type = Types::DescribeBlueGreenDeploymentsRequest
    DescribeBlueGreenDeploymentsResponse.add_member(:blue_green_deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentList, location_name: 'BlueGreenDeployments'))
    DescribeBlueGreenDeploymentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeBlueGreenDeploymentsResponse.type = Types::DescribeBlueGreenDeploymentsResponse
    DescribeCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateIdentifier'))
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterAutomatedBackupsMessage.type = Types::DescribeDBClusterAutomatedBackupsMessage
    DescribeDBClusterBacktracksMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterBacktracksMessage.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BacktrackIdentifier'))
    DescribeDBClusterBacktracksMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterBacktracksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterBacktracksMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterBacktracksMessage.type = Types::DescribeDBClusterBacktracksMessage
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
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DescribeDBClusterSnapshotsMessage.type = Types::DescribeDBClusterSnapshotsMessage
    DescribeDBClustersMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClustersMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeShared'))
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
    DescribeDBEngineVersionsMessage.add_member(:include_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IncludeAll'))
    DescribeDBEngineVersionsMessage.type = Types::DescribeDBEngineVersionsMessage
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceAutomatedBackupsArn'))
    DescribeDBInstanceAutomatedBackupsMessage.type = Types::DescribeDBInstanceAutomatedBackupsMessage
    DescribeDBInstancesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBInstancesMessage.type = Types::DescribeDBInstancesMessage
    DescribeDBLogFilesDetails.add_member(:log_file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogFileName'))
    DescribeDBLogFilesDetails.add_member(:last_written, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LastWritten'))
    DescribeDBLogFilesDetails.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Size'))
    DescribeDBLogFilesDetails.type = Types::DescribeDBLogFilesDetails
    DescribeDBLogFilesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBLogFilesDetails, traits: {"smithy.api#xmlName" => "DescribeDBLogFilesDetails"})
    DescribeDBLogFilesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBLogFilesMessage.add_member(:filename_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FilenameContains'))
    DescribeDBLogFilesMessage.add_member(:file_last_written, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FileLastWritten'))
    DescribeDBLogFilesMessage.add_member(:file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'FileSize'))
    DescribeDBLogFilesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBLogFilesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBLogFilesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBLogFilesMessage.type = Types::DescribeDBLogFilesMessage
    DescribeDBLogFilesResponse.add_member(:describe_db_log_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBLogFilesList, location_name: 'DescribeDBLogFiles'))
    DescribeDBLogFilesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBLogFilesResponse.type = Types::DescribeDBLogFilesResponse
    DescribeDBMajorEngineVersionsRequest.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Engine, location_name: 'Engine'))
    DescribeDBMajorEngineVersionsRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MajorEngineVersion, location_name: 'MajorEngineVersion'))
    DescribeDBMajorEngineVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeDBMajorEngineVersionsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBMajorEngineVersionsRequest.type = Types::DescribeDBMajorEngineVersionsRequest
    DescribeDBMajorEngineVersionsResponse.add_member(:db_major_engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBMajorEngineVersionsList, location_name: 'DBMajorEngineVersions'))
    DescribeDBMajorEngineVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBMajorEngineVersionsResponse.type = Types::DescribeDBMajorEngineVersionsResponse
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
    DescribeDBProxiesRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName'))
    DescribeDBProxiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBProxiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxiesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBProxiesRequest.type = Types::DescribeDBProxiesRequest
    DescribeDBProxiesResponse.add_member(:db_proxies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyList, location_name: 'DBProxies'))
    DescribeDBProxiesResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxiesResponse.type = Types::DescribeDBProxiesResponse
    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName'))
    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: 'DBProxyEndpointName'))
    DescribeDBProxyEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBProxyEndpointsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyEndpointsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBProxyEndpointsRequest.type = Types::DescribeDBProxyEndpointsRequest
    DescribeDBProxyEndpointsResponse.add_member(:db_proxy_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointList, location_name: 'DBProxyEndpoints'))
    DescribeDBProxyEndpointsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyEndpointsResponse.type = Types::DescribeDBProxyEndpointsResponse
    DescribeDBProxyTargetGroupsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBProxyTargetGroupsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: 'TargetGroupName'))
    DescribeDBProxyTargetGroupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBProxyTargetGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyTargetGroupsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBProxyTargetGroupsRequest.type = Types::DescribeDBProxyTargetGroupsRequest
    DescribeDBProxyTargetGroupsResponse.add_member(:target_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupList, location_name: 'TargetGroups'))
    DescribeDBProxyTargetGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyTargetGroupsResponse.type = Types::DescribeDBProxyTargetGroupsResponse
    DescribeDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: 'TargetGroupName'))
    DescribeDBProxyTargetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBProxyTargetsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyTargetsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBProxyTargetsRequest.type = Types::DescribeDBProxyTargetsRequest
    DescribeDBProxyTargetsResponse.add_member(:targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'Targets'))
    DescribeDBProxyTargetsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBProxyTargetsResponse.type = Types::DescribeDBProxyTargetsResponse
    DescribeDBRecommendationsMessage.add_member(:last_updated_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastUpdatedAfter'))
    DescribeDBRecommendationsMessage.add_member(:last_updated_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastUpdatedBefore'))
    DescribeDBRecommendationsMessage.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Locale'))
    DescribeDBRecommendationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBRecommendationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBRecommendationsMessage.type = Types::DescribeDBRecommendationsMessage
    DescribeDBSecurityGroupsMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName'))
    DescribeDBSecurityGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBSecurityGroupsMessage.type = Types::DescribeDBSecurityGroupsMessage
    DescribeDBShardGroupsMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    DescribeDBShardGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBShardGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBShardGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeDBShardGroupsMessage.type = Types::DescribeDBShardGroupsMessage
    DescribeDBShardGroupsResponse.add_member(:db_shard_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupsList, location_name: 'DBShardGroups'))
    DescribeDBShardGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBShardGroupsResponse.type = Types::DescribeDBShardGroupsResponse
    DescribeDBSnapshotAttributesMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBSnapshotAttributesMessage.type = Types::DescribeDBSnapshotAttributesMessage
    DescribeDBSnapshotAttributesResult.add_member(:db_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAttributesResult, location_name: 'DBSnapshotAttributesResult'))
    DescribeDBSnapshotAttributesResult.type = Types::DescribeDBSnapshotAttributesResult
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DescribeDBSnapshotTenantDatabasesMessage.type = Types::DescribeDBSnapshotTenantDatabasesMessage
    DescribeDBSnapshotsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBSnapshotsMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    DescribeDBSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeDBSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeShared'))
    DescribeDBSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludePublic'))
    DescribeDBSnapshotsMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DescribeDBSnapshotsMessage.type = Types::DescribeDBSnapshotsMessage
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
    DescribeExportTasksMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier'))
    DescribeExportTasksMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    DescribeExportTasksMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeExportTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeExportTasksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeExportTasksMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'SourceType'))
    DescribeExportTasksMessage.type = Types::DescribeExportTasksMessage
    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    DescribeGlobalClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeGlobalClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeGlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeGlobalClustersMessage.type = Types::DescribeGlobalClustersMessage
    DescribeIntegrationsMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationIdentifier, location_name: 'IntegrationIdentifier'))
    DescribeIntegrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeIntegrationsMessage.type = Types::DescribeIntegrationsMessage
    DescribeIntegrationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeIntegrationsResponse.add_member(:integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationList, location_name: 'Integrations'))
    DescribeIntegrationsResponse.type = Types::DescribeIntegrationsResponse
    DescribeOptionGroupOptionsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOptionGroupOptionsMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    DescribeOptionGroupOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeOptionGroupOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeOptionGroupOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOptionGroupOptionsMessage.type = Types::DescribeOptionGroupOptionsMessage
    DescribeOptionGroupsMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    DescribeOptionGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeOptionGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOptionGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeOptionGroupsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName'))
    DescribeOptionGroupsMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    DescribeOptionGroupsMessage.type = Types::DescribeOptionGroupsMessage
    DescribeOptionGroupsOutput.add_member(:option_groups_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupsList, location_name: 'OptionGroupsList'))
    DescribeOptionGroupsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOptionGroupsOutput.type = Types::DescribeOptionGroupsOutput
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:availability_zone_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZoneGroup'))
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
    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstanceId'))
    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstancesOfferingId'))
    DescribeReservedDBInstancesMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DescribeReservedDBInstancesMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration'))
    DescribeReservedDBInstancesMessage.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    DescribeReservedDBInstancesMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    DescribeReservedDBInstancesMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    DescribeReservedDBInstancesMessage.add_member(:lease_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LeaseId'))
    DescribeReservedDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeReservedDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedDBInstancesMessage.type = Types::DescribeReservedDBInstancesMessage
    DescribeReservedDBInstancesOfferingsMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstancesOfferingId'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedDBInstancesOfferingsMessage.type = Types::DescribeReservedDBInstancesOfferingsMessage
    DescribeSourceRegionsMessage.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RegionName'))
    DescribeSourceRegionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeSourceRegionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSourceRegionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeSourceRegionsMessage.type = Types::DescribeSourceRegionsMessage
    DescribeTenantDatabasesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeTenantDatabasesMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName'))
    DescribeTenantDatabasesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeTenantDatabasesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeTenantDatabasesMessage.type = Types::DescribeTenantDatabasesMessage
    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeValidDBInstanceModificationsMessage.type = Types::DescribeValidDBInstanceModificationsMessage
    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidDBInstanceModificationsMessage, location_name: 'ValidDBInstanceModificationsMessage'))
    DescribeValidDBInstanceModificationsResult.type = Types::DescribeValidDBInstanceModificationsResult
    DisableHttpEndpointRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableHttpEndpointRequest.type = Types::DisableHttpEndpointRequest
    DisableHttpEndpointResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn'))
    DisableHttpEndpointResponse.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HttpEndpointEnabled'))
    DisableHttpEndpointResponse.type = Types::DisableHttpEndpointResponse
    DocLink.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text'))
    DocLink.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    DocLink.type = Types::DocLink
    DocLinkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DocLink)
    DomainMembership.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    DomainMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DomainMembership.add_member(:fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FQDN'))
    DomainMembership.add_member(:iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IAMRoleName'))
    DomainMembership.add_member(:ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OU'))
    DomainMembership.add_member(:auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthSecretArn'))
    DomainMembership.add_member(:dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DnsIps'))
    DomainMembership.type = Types::DomainMembership
    DomainMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMembership, traits: {"smithy.api#xmlName" => "DomainMembership"})
    DomainNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DomainNotFoundFault.type = Types::DomainNotFoundFault
    DoubleRange.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'From'))
    DoubleRange.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'To'))
    DoubleRange.type = Types::DoubleRange
    DoubleRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleRange, traits: {"smithy.api#xmlName" => "DoubleRange"})
    DownloadDBLogFilePortionMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DownloadDBLogFilePortionMessage.add_member(:log_file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogFileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DownloadDBLogFilePortionMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DownloadDBLogFilePortionMessage.add_member(:number_of_lines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfLines'))
    DownloadDBLogFilePortionMessage.type = Types::DownloadDBLogFilePortionMessage
    DownloadDBLogFilePortionOutput.add_member(:log_file_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'LogFileData'))
    DownloadDBLogFilePortionOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DownloadDBLogFilePortionOutput.add_member(:additional_data_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AdditionalDataPending'))
    DownloadDBLogFilePortionOutput.type = Types::DownloadDBLogFilePortionOutput
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    EC2SecurityGroup.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupId'))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroup, traits: {"smithy.api#xmlName" => "EC2SecurityGroup"})
    Ec2ImagePropertiesNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    Ec2ImagePropertiesNotSupportedFault.type = Types::Ec2ImagePropertiesNotSupportedFault
    EnableHttpEndpointRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableHttpEndpointRequest.type = Types::EnableHttpEndpointRequest
    EnableHttpEndpointResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn'))
    EnableHttpEndpointResponse.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HttpEndpointEnabled'))
    EnableHttpEndpointResponse.type = Types::EnableHttpEndpointResponse
    EncryptionContextMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EncryptionContextMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Endpoint.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    Endpoint.type = Types::Endpoint
    EndpointNetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    EndpointNetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    EndpointNetworkType.add_member(:dual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL', traits: {"smithy.api#enumValue" => "DUAL"}))
    EngineDefaults.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    EngineDefaults.type = Types::EngineDefaults
    EngineFamily.add_member(:mysql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MYSQL', traits: {"smithy.api#enumValue" => "MYSQL"}))
    EngineFamily.add_member(:postgresql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSTGRESQL', traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    EngineFamily.add_member(:sqlserver, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQLSERVER', traits: {"smithy.api#enumValue" => "SQLSERVER"}))
    EngineModeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
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
    ExportSourceType.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOT', traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    ExportSourceType.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER', traits: {"smithy.api#enumValue" => "CLUSTER"}))
    ExportTask.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier'))
    ExportTask.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    ExportTask.add_member(:export_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExportOnly'))
    ExportTask.add_member(:snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotTime'))
    ExportTask.add_member(:task_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskStartTime'))
    ExportTask.add_member(:task_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskEndTime'))
    ExportTask.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Bucket'))
    ExportTask.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    ExportTask.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    ExportTask.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ExportTask.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ExportTask.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    ExportTask.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalExtractedDataInGB'))
    ExportTask.add_member(:failure_cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureCause'))
    ExportTask.add_member(:warning_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WarningMessage'))
    ExportTask.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'SourceType'))
    ExportTask.type = Types::ExportTask
    ExportTaskAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ExportTaskAlreadyExistsFault.type = Types::ExportTaskAlreadyExistsFault
    ExportTaskNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ExportTaskNotFoundFault.type = Types::ExportTaskNotFoundFault
    ExportTasksList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTask, traits: {"smithy.api#xmlName" => "ExportTask"})
    ExportTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ExportTasksMessage.add_member(:export_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTasksList, location_name: 'ExportTasks'))
    ExportTasksMessage.type = Types::ExportTasksMessage
    FailoverDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBInstanceIdentifier'))
    FailoverDBClusterMessage.type = Types::FailoverDBClusterMessage
    FailoverDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    FailoverDBClusterResult.type = Types::FailoverDBClusterResult
    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterIdentifier, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
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
    FeatureNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
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
    GlobalCluster.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    GlobalCluster.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    GlobalCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    GlobalCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    GlobalCluster.add_member(:global_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: 'GlobalClusterMembers'))
    GlobalCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    GlobalCluster.add_member(:failover_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverState, location_name: 'FailoverState'))
    GlobalCluster.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    GlobalCluster.type = Types::GlobalCluster
    GlobalClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterAlreadyExistsFault.type = Types::GlobalClusterAlreadyExistsFault
    GlobalClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterMember.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    GlobalClusterMember.add_member(:readers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadersArnList, location_name: 'Readers'))
    GlobalClusterMember.add_member(:is_writer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsWriter'))
    GlobalClusterMember.add_member(:global_write_forwarding_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteForwardingStatus, location_name: 'GlobalWriteForwardingStatus'))
    GlobalClusterMember.add_member(:synchronization_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMemberSynchronizationStatus, location_name: 'SynchronizationStatus'))
    GlobalClusterMember.type = Types::GlobalClusterMember
    GlobalClusterMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMember, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterMemberSynchronizationStatus.add_member(:connected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "connected"}))
    GlobalClusterMemberSynchronizationStatus.add_member(:pending_resync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_RESYNC', traits: {"smithy.api#enumValue" => "pending-resync"}))
    GlobalClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterNotFoundFault.type = Types::GlobalClusterNotFoundFault
    GlobalClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterQuotaExceededFault.type = Types::GlobalClusterQuotaExceededFault
    GlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GlobalClustersMessage.add_member(:global_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterList, location_name: 'GlobalClusters'))
    GlobalClustersMessage.type = Types::GlobalClustersMessage
    IAMAuthMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    IAMAuthMode.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "REQUIRED"}))
    IAMAuthMode.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    IPRange.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    IPRange.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    IPRange.type = Types::IPRange
    IPRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPRange, traits: {"smithy.api#xmlName" => "IPRange"})
    IamRoleMissingPermissionsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IamRoleMissingPermissionsFault.type = Types::IamRoleMissingPermissionsFault
    IamRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IamRoleNotFoundFault.type = Types::IamRoleNotFoundFault
    InstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InstanceQuotaExceededFault.type = Types::InstanceQuotaExceededFault
    InsufficientAvailableIPsInSubnetFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientAvailableIPsInSubnetFault.type = Types::InsufficientAvailableIPsInSubnetFault
    InsufficientDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBClusterCapacityFault.type = Types::InsufficientDBClusterCapacityFault
    InsufficientDBInstanceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBInstanceCapacityFault.type = Types::InsufficientDBInstanceCapacityFault
    InsufficientStorageClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientStorageClusterCapacityFault.type = Types::InsufficientStorageClusterCapacityFault
    Integration.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    Integration.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn'))
    Integration.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    Integration.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    Integration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    Integration.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    Integration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'Status'))
    Integration.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Integration.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    Integration.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    Integration.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    Integration.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    Integration.type = Types::Integration
    IntegrationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationAlreadyExistsFault.type = Types::IntegrationAlreadyExistsFault
    IntegrationConflictOperationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationConflictOperationFault.type = Types::IntegrationConflictOperationFault
    IntegrationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IntegrationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    IntegrationError.type = Types::IntegrationError
    IntegrationErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationError, traits: {"smithy.api#xmlName" => "IntegrationError"})
    IntegrationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, traits: {"smithy.api#xmlName" => "Integration"})
    IntegrationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationNotFoundFault.type = Types::IntegrationNotFoundFault
    IntegrationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationQuotaExceededFault.type = Types::IntegrationQuotaExceededFault
    IntegrationStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    IntegrationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    IntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    IntegrationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    IntegrationStatus.add_member(:syncing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "syncing"}))
    IntegrationStatus.add_member(:needs_attention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEEDS_ATTENTION', traits: {"smithy.api#enumValue" => "needs_attention"}))
    InvalidBlueGreenDeploymentStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidBlueGreenDeploymentStateFault.type = Types::InvalidBlueGreenDeploymentStateFault
    InvalidCustomDBEngineVersionStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCustomDBEngineVersionStateFault.type = Types::InvalidCustomDBEngineVersionStateFault
    InvalidDBClusterAutomatedBackupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterAutomatedBackupStateFault.type = Types::InvalidDBClusterAutomatedBackupStateFault
    InvalidDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterCapacityFault.type = Types::InvalidDBClusterCapacityFault
    InvalidDBClusterEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterEndpointStateFault.type = Types::InvalidDBClusterEndpointStateFault
    InvalidDBClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterSnapshotStateFault.type = Types::InvalidDBClusterSnapshotStateFault
    InvalidDBClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterStateFault.type = Types::InvalidDBClusterStateFault
    InvalidDBInstanceAutomatedBackupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBInstanceAutomatedBackupStateFault.type = Types::InvalidDBInstanceAutomatedBackupStateFault
    InvalidDBInstanceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBInstanceStateFault.type = Types::InvalidDBInstanceStateFault
    InvalidDBParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBParameterGroupStateFault.type = Types::InvalidDBParameterGroupStateFault
    InvalidDBProxyEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBProxyEndpointStateFault.type = Types::InvalidDBProxyEndpointStateFault
    InvalidDBProxyStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBProxyStateFault.type = Types::InvalidDBProxyStateFault
    InvalidDBSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSecurityGroupStateFault.type = Types::InvalidDBSecurityGroupStateFault
    InvalidDBShardGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBShardGroupStateFault.type = Types::InvalidDBShardGroupStateFault
    InvalidDBSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSnapshotStateFault.type = Types::InvalidDBSnapshotStateFault
    InvalidDBSubnetGroupFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetGroupFault.type = Types::InvalidDBSubnetGroupFault
    InvalidDBSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetGroupStateFault.type = Types::InvalidDBSubnetGroupStateFault
    InvalidDBSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetStateFault.type = Types::InvalidDBSubnetStateFault
    InvalidEventSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidEventSubscriptionStateFault.type = Types::InvalidEventSubscriptionStateFault
    InvalidExportOnlyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidExportOnlyFault.type = Types::InvalidExportOnlyFault
    InvalidExportSourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidExportSourceStateFault.type = Types::InvalidExportSourceStateFault
    InvalidExportTaskStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidExportTaskStateFault.type = Types::InvalidExportTaskStateFault
    InvalidGlobalClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidGlobalClusterStateFault.type = Types::InvalidGlobalClusterStateFault
    InvalidIntegrationStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidIntegrationStateFault.type = Types::InvalidIntegrationStateFault
    InvalidOptionGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidOptionGroupStateFault.type = Types::InvalidOptionGroupStateFault
    InvalidResourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidResourceStateFault.type = Types::InvalidResourceStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidS3BucketFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidS3BucketFault.type = Types::InvalidS3BucketFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IssueDetails.add_member(:performance_issue_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceIssueDetails, location_name: 'PerformanceIssueDetails'))
    IssueDetails.type = Types::IssueDetails
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LifecycleSupportName.add_member(:open_source_rds_standard_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_SOURCE_RDS_STANDARD_SUPPORT', traits: {"smithy.api#enumValue" => "open-source-rds-standard-support"}))
    LifecycleSupportName.add_member(:open_source_rds_extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_SOURCE_RDS_EXTENDED_SUPPORT', traits: {"smithy.api#enumValue" => "open-source-rds-extended-support"}))
    LimitlessDatabase.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitlessDatabaseStatus, location_name: 'Status'))
    LimitlessDatabase.add_member(:min_required_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinRequiredACU'))
    LimitlessDatabase.type = Types::LimitlessDatabase
    LimitlessDatabaseStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    LimitlessDatabaseStatus.add_member(:not_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_IN_USE', traits: {"smithy.api#enumValue" => "not-in-use"}))
    LimitlessDatabaseStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    LimitlessDatabaseStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    LimitlessDatabaseStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "enabling"}))
    LimitlessDatabaseStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "disabling"}))
    LimitlessDatabaseStatus.add_member(:modifying_max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING_MAX_CAPACITY', traits: {"smithy.api#enumValue" => "modifying-max-capacity"}))
    LimitlessDatabaseStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    LocalWriteForwardingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    LocalWriteForwardingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    LocalWriteForwardingStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "enabling"}))
    LocalWriteForwardingStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "disabling"}))
    LocalWriteForwardingStatus.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "requested"}))
    LogTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MasterUserAuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "password"}))
    MasterUserAuthenticationType.add_member(:iam_db_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_DB_AUTH', traits: {"smithy.api#enumValue" => "iam-db-auth"}))
    MasterUserSecret.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretArn'))
    MasterUserSecret.add_member(:secret_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretStatus'))
    MasterUserSecret.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    MasterUserSecret.type = Types::MasterUserSecret
    MaxDBShardGroupLimitReached.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    MaxDBShardGroupLimitReached.type = Types::MaxDBShardGroupLimitReached
    Metric.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Metric.add_member(:references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricReferenceList, location_name: 'References'))
    Metric.add_member(:statistics_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatisticsDetails'))
    Metric.add_member(:metric_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricQuery, location_name: 'MetricQuery'))
    Metric.type = Types::Metric
    MetricList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric)
    MetricQuery.add_member(:performance_insights_metric_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricQuery, location_name: 'PerformanceInsightsMetricQuery'))
    MetricQuery.type = Types::MetricQuery
    MetricReference.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    MetricReference.add_member(:reference_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDetails, location_name: 'ReferenceDetails'))
    MetricReference.type = Types::MetricReference
    MetricReferenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricReference)
    MinimumEngineVersionPerAllowedValue.add_member(:allowed_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValue'))
    MinimumEngineVersionPerAllowedValue.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    MinimumEngineVersionPerAllowedValue.type = Types::MinimumEngineVersionPerAllowedValue
    MinimumEngineVersionPerAllowedValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumEngineVersionPerAllowedValue, traits: {"smithy.api#xmlName" => "MinimumEngineVersionPerAllowedValue"})
    ModifyActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn'))
    ModifyActivityStreamRequest.add_member(:audit_policy_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditPolicyState, location_name: 'AuditPolicyState'))
    ModifyActivityStreamRequest.type = Types::ModifyActivityStreamRequest
    ModifyActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ModifyActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KinesisStreamName'))
    ModifyActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: 'Status'))
    ModifyActivityStreamResponse.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: 'Mode'))
    ModifyActivityStreamResponse.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EngineNativeAuditFieldsIncluded'))
    ModifyActivityStreamResponse.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamPolicyStatus, location_name: 'PolicyStatus'))
    ModifyActivityStreamResponse.type = Types::ModifyActivityStreamResponse
    ModifyCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CertificateIdentifier'))
    ModifyCertificatesMessage.add_member(:remove_customer_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RemoveCustomerOverride'))
    ModifyCertificatesMessage.type = Types::ModifyCertificatesMessage
    ModifyCertificatesResult.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'Certificate'))
    ModifyCertificatesResult.type = Types::ModifyCertificatesResult
    ModifyCurrentDBClusterCapacityMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCurrentDBClusterCapacityMessage.add_member(:capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Capacity'))
    ModifyCurrentDBClusterCapacityMessage.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsBeforeTimeout'))
    ModifyCurrentDBClusterCapacityMessage.add_member(:timeout_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeoutAction'))
    ModifyCurrentDBClusterCapacityMessage.type = Types::ModifyCurrentDBClusterCapacityMessage
    ModifyCurrentDBClusterCapacityOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    ModifyCurrentDBClusterCapacityOutput.add_member(:pending_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PendingCapacity'))
    ModifyCurrentDBClusterCapacityOutput.add_member(:current_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'CurrentCapacity'))
    ModifyCurrentDBClusterCapacityOutput.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsBeforeTimeout'))
    ModifyCurrentDBClusterCapacityOutput.add_member(:timeout_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeoutAction'))
    ModifyCurrentDBClusterCapacityOutput.type = Types::ModifyCurrentDBClusterCapacityOutput
    ModifyCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineName, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineVersion, location_name: 'EngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDBEngineVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ModifyCustomDBEngineVersionMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomEngineVersionStatus, location_name: 'Status'))
    ModifyCustomDBEngineVersionMessage.type = Types::ModifyCustomDBEngineVersionMessage
    ModifyCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    ModifyCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3BucketName'))
    ModifyCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseInstallationFilesS3Prefix'))
    ModifyCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionManifest, location_name: 'CustomDBEngineVersionManifest'))
    ModifyCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionArn'))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    ModifyCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, location_name: 'DefaultCharacterSet'))
    ModifyCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionAMI, location_name: 'Image'))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineMediaType'))
    ModifyCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    ModifyCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedCharacterSets'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedNcharCharacterSets'))
    ModifyCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: 'SupportedTimezones'))
    ModifyCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsReadReplica'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureNameList, location_name: 'SupportedFeatureNames'))
    ModifyCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsParallelQuery'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    ModifyCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsBabelfish'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLimitlessDatabase'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsCertificateRotationWithoutRestart'))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CACertificateIdentifiersList, location_name: 'SupportedCACertificateIdentifiers'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLocalWriteForwarding'))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIntegrations'))
    ModifyCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2FeaturesSupport, location_name: 'ServerlessV2FeaturesSupport'))
    ModifyCustomDBEngineVersionOutput.type = Types::ModifyCustomDBEngineVersionOutput
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
    ModifyDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    ModifyDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    ModifyDBClusterMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: 'CloudwatchLogsExportConfiguration'))
    ModifyDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowMajorVersionUpgrade'))
    ModifyDBClusterMessage.add_member(:db_instance_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceParameterGroupName'))
    ModifyDBClusterMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    ModifyDBClusterMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    ModifyDBClusterMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'ScalingConfiguration'))
    ModifyDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyDBClusterMessage.add_member(:enable_http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableHttpEndpoint'))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    ModifyDBClusterMessage.add_member(:enable_global_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableGlobalWriteForwarding'))
    ModifyDBClusterMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterInstanceClass'))
    ModifyDBClusterMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    ModifyDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ModifyDBClusterMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    ModifyDBClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    ModifyDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    ModifyDBClusterMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    ModifyDBClusterMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    ModifyDBClusterMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    ModifyDBClusterMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    ModifyDBClusterMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    ModifyDBClusterMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    ModifyDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    ModifyDBClusterMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RotateMasterUserPassword'))
    ModifyDBClusterMessage.add_member(:enable_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableLocalWriteForwarding'))
    ModifyDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    ModifyDBClusterMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    ModifyDBClusterMessage.add_member(:allow_engine_mode_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowEngineModeChange'))
    ModifyDBClusterMessage.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointArn, location_name: 'AwsBackupRecoveryPointArn'))
    ModifyDBClusterMessage.add_member(:enable_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableLimitlessDatabase'))
    ModifyDBClusterMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    ModifyDBClusterMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: 'MasterUserAuthenticationType'))
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
    ModifyDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
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
    ModifyDBInstanceMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    ModifyDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewDBInstanceIdentifier'))
    ModifyDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    ModifyDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    ModifyDBInstanceMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainFqdn'))
    ModifyDBInstanceMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainOu'))
    ModifyDBInstanceMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainAuthSecretArn'))
    ModifyDBInstanceMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DomainDnsIps'))
    ModifyDBInstanceMessage.add_member(:disable_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DisableDomain'))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    ModifyDBInstanceMessage.add_member(:db_port_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DBPortNumber'))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    ModifyDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    ModifyDBInstanceMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    ModifyDBInstanceMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: 'CloudwatchLogsExportConfiguration'))
    ModifyDBInstanceMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    ModifyDBInstanceMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseDefaultProcessorFeatures'))
    ModifyDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyDBInstanceMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CertificateRotationRestart'))
    ModifyDBInstanceMessage.add_member(:replica_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaMode, location_name: 'ReplicaMode'))
    ModifyDBInstanceMessage.add_member(:automation_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationMode, location_name: 'AutomationMode'))
    ModifyDBInstanceMessage.add_member(:resume_full_automation_mode_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ResumeFullAutomationModeMinutes'))
    ModifyDBInstanceMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCustomerOwnedIp'))
    ModifyDBInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    ModifyDBInstanceMessage.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsBackupRecoveryPointArn, location_name: 'AwsBackupRecoveryPointArn'))
    ModifyDBInstanceMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    ModifyDBInstanceMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RotateMasterUserPassword'))
    ModifyDBInstanceMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    ModifyDBInstanceMessage.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    ModifyDBInstanceMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    ModifyDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyDBInstanceMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserAuthenticationType, location_name: 'MasterUserAuthenticationType'))
    ModifyDBInstanceMessage.type = Types::ModifyDBInstanceMessage
    ModifyDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    ModifyDBInstanceResult.type = Types::ModifyDBInstanceResult
    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.type = Types::ModifyDBParameterGroupMessage
    ModifyDBParameterGroupOutput.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    ModifyDBParameterGroupOutput.type = Types::ModifyDBParameterGroupOutput
    ModifyDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: 'DBProxyEndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyEndpointRequest.add_member(:new_db_proxy_endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointName, location_name: 'NewDBProxyEndpointName'))
    ModifyDBProxyEndpointRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'VpcSecurityGroupIds'))
    ModifyDBProxyEndpointRequest.type = Types::ModifyDBProxyEndpointRequest
    ModifyDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpoint, location_name: 'DBProxyEndpoint'))
    ModifyDBProxyEndpointResponse.type = Types::ModifyDBProxyEndpointResponse
    ModifyDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyRequest.add_member(:new_db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'NewDBProxyName'))
    ModifyDBProxyRequest.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultAuthScheme, location_name: 'DefaultAuthScheme'))
    ModifyDBProxyRequest.add_member(:auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAuthConfigList, location_name: 'Auth'))
    ModifyDBProxyRequest.add_member(:require_tls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RequireTLS'))
    ModifyDBProxyRequest.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'IdleClientTimeout'))
    ModifyDBProxyRequest.add_member(:debug_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DebugLogging'))
    ModifyDBProxyRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn'))
    ModifyDBProxyRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SecurityGroups'))
    ModifyDBProxyRequest.type = Types::ModifyDBProxyRequest
    ModifyDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxy, location_name: 'DBProxy'))
    ModifyDBProxyResponse.type = Types::ModifyDBProxyResponse
    ModifyDBProxyTargetGroupRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: 'TargetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyTargetGroupRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyTargetGroupRequest.add_member(:connection_pool_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionPoolConfiguration, location_name: 'ConnectionPoolConfig'))
    ModifyDBProxyTargetGroupRequest.add_member(:new_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewName'))
    ModifyDBProxyTargetGroupRequest.type = Types::ModifyDBProxyTargetGroupRequest
    ModifyDBProxyTargetGroupResponse.add_member(:db_proxy_target_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroup, location_name: 'DBProxyTargetGroup'))
    ModifyDBProxyTargetGroupResponse.type = Types::ModifyDBProxyTargetGroupResponse
    ModifyDBRecommendationMessage.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBRecommendationMessage.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Locale'))
    ModifyDBRecommendationMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyDBRecommendationMessage.add_member(:recommended_action_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionUpdateList, location_name: 'RecommendedActionUpdates'))
    ModifyDBRecommendationMessage.type = Types::ModifyDBRecommendationMessage
    ModifyDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBShardGroupMessage.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    ModifyDBShardGroupMessage.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    ModifyDBShardGroupMessage.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    ModifyDBShardGroupMessage.type = Types::ModifyDBShardGroupMessage
    ModifyDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupResourceId'))
    ModifyDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    ModifyDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    ModifyDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    ModifyDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    ModifyDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    ModifyDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    ModifyDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    ModifyDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupArn'))
    ModifyDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    ModifyDBShardGroupOutput.type = Types::ModifyDBShardGroupOutput
    ModifyDBSnapshotAttributeMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToAdd'))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToRemove'))
    ModifyDBSnapshotAttributeMessage.type = Types::ModifyDBSnapshotAttributeMessage
    ModifyDBSnapshotAttributeResult.add_member(:db_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAttributesResult, location_name: 'DBSnapshotAttributesResult'))
    ModifyDBSnapshotAttributeResult.type = Types::ModifyDBSnapshotAttributeResult
    ModifyDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    ModifyDBSnapshotMessage.type = Types::ModifyDBSnapshotMessage
    ModifyDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshot, location_name: 'DBSnapshot'))
    ModifyDBSnapshotResult.type = Types::ModifyDBSnapshotResult
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
    ModifyIntegrationMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationIdentifier, location_name: 'IntegrationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    ModifyIntegrationMessage.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    ModifyIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    ModifyIntegrationMessage.type = Types::ModifyIntegrationMessage
    ModifyIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    ModifyIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TargetArn'))
    ModifyIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    ModifyIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    ModifyIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    ModifyIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    ModifyIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: 'Status'))
    ModifyIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ModifyIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataFilter, location_name: 'DataFilter'))
    ModifyIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    ModifyIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    ModifyIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    ModifyIntegrationOutput.type = Types::ModifyIntegrationOutput
    ModifyOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyOptionGroupMessage.add_member(:options_to_include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionConfigurationList, location_name: 'OptionsToInclude'))
    ModifyOptionGroupMessage.add_member(:options_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionNamesList, location_name: 'OptionsToRemove'))
    ModifyOptionGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyOptionGroupMessage.type = Types::ModifyOptionGroupMessage
    ModifyOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroup, location_name: 'OptionGroup'))
    ModifyOptionGroupResult.type = Types::ModifyOptionGroupResult
    ModifyTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTenantDatabaseMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    ModifyTenantDatabaseMessage.add_member(:new_tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewTenantDBName'))
    ModifyTenantDatabaseMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    ModifyTenantDatabaseMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RotateMasterUserPassword'))
    ModifyTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    ModifyTenantDatabaseMessage.type = Types::ModifyTenantDatabaseMessage
    ModifyTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabase, location_name: 'TenantDatabase'))
    ModifyTenantDatabaseResult.type = Types::ModifyTenantDatabaseResult
    NetworkTypeNotSupported.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NetworkTypeNotSupported.type = Types::NetworkTypeNotSupported
    Option.add_member(:option_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionName'))
    Option.add_member(:option_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionDescription'))
    Option.add_member(:persistent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Persistent'))
    Option.add_member(:permanent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Permanent'))
    Option.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    Option.add_member(:option_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionVersion'))
    Option.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionSettingConfigurationList, location_name: 'OptionSettings'))
    Option.add_member(:db_security_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupMembershipList, location_name: 'DBSecurityGroupMemberships'))
    Option.add_member(:vpc_security_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroupMemberships'))
    Option.type = Types::Option
    OptionConfiguration.add_member(:option_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OptionConfiguration.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    OptionConfiguration.add_member(:option_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionVersion'))
    OptionConfiguration.add_member(:db_security_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: 'DBSecurityGroupMemberships'))
    OptionConfiguration.add_member(:vpc_security_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupMemberships'))
    OptionConfiguration.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionSettingsList, location_name: 'OptionSettings'))
    OptionConfiguration.type = Types::OptionConfiguration
    OptionConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionConfiguration, traits: {"smithy.api#xmlName" => "OptionConfiguration"})
    OptionGroup.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    OptionGroup.add_member(:option_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupDescription'))
    OptionGroup.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName'))
    OptionGroup.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    OptionGroup.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsList, location_name: 'Options'))
    OptionGroup.add_member(:allows_vpc_and_non_vpc_instance_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowsVpcAndNonVpcInstanceMemberships'))
    OptionGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    OptionGroup.add_member(:option_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupArn'))
    OptionGroup.add_member(:source_option_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceOptionGroup'))
    OptionGroup.add_member(:source_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceAccountId'))
    OptionGroup.add_member(:copy_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CopyTimestamp'))
    OptionGroup.type = Types::OptionGroup
    OptionGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OptionGroupAlreadyExistsFault.type = Types::OptionGroupAlreadyExistsFault
    OptionGroupMembership.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    OptionGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    OptionGroupMembership.type = Types::OptionGroupMembership
    OptionGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupMembership, traits: {"smithy.api#xmlName" => "OptionGroupMembership"})
    OptionGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OptionGroupNotFoundFault.type = Types::OptionGroupNotFoundFault
    OptionGroupOption.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    OptionGroupOption.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    OptionGroupOption.add_member(:engine_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineName'))
    OptionGroupOption.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    OptionGroupOption.add_member(:minimum_required_minor_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumRequiredMinorEngineVersion'))
    OptionGroupOption.add_member(:port_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PortRequired'))
    OptionGroupOption.add_member(:default_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DefaultPort'))
    OptionGroupOption.add_member(:options_depended_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsDependedOn, location_name: 'OptionsDependedOn'))
    OptionGroupOption.add_member(:options_conflicts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsConflictsWith, location_name: 'OptionsConflictsWith'))
    OptionGroupOption.add_member(:persistent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Persistent'))
    OptionGroupOption.add_member(:permanent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Permanent'))
    OptionGroupOption.add_member(:requires_auto_minor_engine_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiresAutoMinorEngineVersionUpgrade'))
    OptionGroupOption.add_member(:vpc_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'VpcOnly'))
    OptionGroupOption.add_member(:supports_option_version_downgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsOptionVersionDowngrade'))
    OptionGroupOption.add_member(:option_group_option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOptionSettingsList, location_name: 'OptionGroupOptionSettings'))
    OptionGroupOption.add_member(:option_group_option_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOptionVersionsList, location_name: 'OptionGroupOptionVersions'))
    OptionGroupOption.add_member(:copyable_cross_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyableCrossAccount'))
    OptionGroupOption.type = Types::OptionGroupOption
    OptionGroupOptionSetting.add_member(:setting_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SettingName'))
    OptionGroupOptionSetting.add_member(:setting_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SettingDescription'))
    OptionGroupOptionSetting.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultValue'))
    OptionGroupOptionSetting.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyType'))
    OptionGroupOptionSetting.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    OptionGroupOptionSetting.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    OptionGroupOptionSetting.add_member(:is_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRequired'))
    OptionGroupOptionSetting.add_member(:minimum_engine_version_per_allowed_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumEngineVersionPerAllowedValueList, location_name: 'MinimumEngineVersionPerAllowedValue'))
    OptionGroupOptionSetting.type = Types::OptionGroupOptionSetting
    OptionGroupOptionSettingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOptionSetting, traits: {"smithy.api#xmlName" => "OptionGroupOptionSetting"})
    OptionGroupOptionVersionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionVersion, traits: {"smithy.api#xmlName" => "OptionVersion"})
    OptionGroupOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOption, traits: {"smithy.api#xmlName" => "OptionGroupOption"})
    OptionGroupOptionsMessage.add_member(:option_group_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOptionsList, location_name: 'OptionGroupOptions'))
    OptionGroupOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    OptionGroupOptionsMessage.type = Types::OptionGroupOptionsMessage
    OptionGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OptionGroupQuotaExceededFault.type = Types::OptionGroupQuotaExceededFault
    OptionGroupsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroup, traits: {"smithy.api#xmlName" => "OptionGroup"})
    OptionNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    OptionSetting.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    OptionSetting.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PotentiallySensitiveOptionSettingValue, location_name: 'Value'))
    OptionSetting.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultValue'))
    OptionSetting.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    OptionSetting.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyType'))
    OptionSetting.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    OptionSetting.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    OptionSetting.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    OptionSetting.add_member(:is_collection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsCollection'))
    OptionSetting.type = Types::OptionSetting
    OptionSettingConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionSetting, traits: {"smithy.api#xmlName" => "OptionSetting"})
    OptionSettingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionSetting, traits: {"smithy.api#xmlName" => "OptionSetting"})
    OptionVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    OptionVersion.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefault'))
    OptionVersion.type = Types::OptionVersion
    OptionsConflictsWith.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "OptionConflictName"})
    OptionsDependedOn.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "OptionName"})
    OptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Option, traits: {"smithy.api#xmlName" => "Option"})
    OrderableDBInstanceOption.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    OrderableDBInstanceOption.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    OrderableDBInstanceOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    OrderableDBInstanceOption.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    OrderableDBInstanceOption.add_member(:availability_zone_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZoneGroup'))
    OrderableDBInstanceOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones'))
    OrderableDBInstanceOption.add_member(:multi_az_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZCapable'))
    OrderableDBInstanceOption.add_member(:read_replica_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadReplicaCapable'))
    OrderableDBInstanceOption.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Vpc'))
    OrderableDBInstanceOption.add_member(:supports_storage_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsStorageEncryption'))
    OrderableDBInstanceOption.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    OrderableDBInstanceOption.add_member(:supports_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIops'))
    OrderableDBInstanceOption.add_member(:supports_storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsStorageThroughput'))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsEnhancedMonitoring'))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIAMDatabaseAuthentication'))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsPerformanceInsights'))
    OrderableDBInstanceOption.add_member(:min_storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinStorageSize'))
    OrderableDBInstanceOption.add_member(:max_storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxStorageSize'))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinIopsPerDbInstance'))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxIopsPerDbInstance'))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinIopsPerGib'))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxIopsPerGib'))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinStorageThroughputPerDbInstance'))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxStorageThroughputPerDbInstance'))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinStorageThroughputPerIops'))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxStorageThroughputPerIops'))
    OrderableDBInstanceOption.add_member(:available_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: 'AvailableProcessorFeatures'))
    OrderableDBInstanceOption.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    OrderableDBInstanceOption.add_member(:supports_storage_autoscaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsStorageAutoscaling'))
    OrderableDBInstanceOption.add_member(:supports_kerberos_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsKerberosAuthentication'))
    OrderableDBInstanceOption.add_member(:outpost_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OutpostCapable'))
    OrderableDBInstanceOption.add_member(:supported_activity_stream_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamModeList, location_name: 'SupportedActivityStreamModes'))
    OrderableDBInstanceOption.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    OrderableDBInstanceOption.add_member(:supported_network_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SupportedNetworkTypes'))
    OrderableDBInstanceOption.add_member(:supports_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsClusters'))
    OrderableDBInstanceOption.add_member(:supports_dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsDedicatedLogVolume'))
    OrderableDBInstanceOption.add_member(:supports_http_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsHttpEndpoint'))
    OrderableDBInstanceOption.type = Types::OrderableDBInstanceOption
    OrderableDBInstanceOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, traits: {"smithy.api#xmlName" => "OrderableDBInstanceOption"})
    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: 'OrderableDBInstanceOptions'))
    OrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    OrderableDBInstanceOptionsMessage.type = Types::OrderableDBInstanceOptionsMessage
    Outpost.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    Outpost.type = Types::Outpost
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PotentiallySensitiveParameterValue, location_name: 'ParameterValue'))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyType'))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    Parameter.add_member(:apply_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyMethod, location_name: 'ApplyMethod'))
    Parameter.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
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
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    PendingModifiedValues.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    PendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    PendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    PendingModifiedValues.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    PendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    PendingModifiedValues.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    PendingModifiedValues.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    PendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    PendingModifiedValues.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    PendingModifiedValues.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: 'PendingCloudwatchLogsExports'))
    PendingModifiedValues.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    PendingModifiedValues.add_member(:automation_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomationMode, location_name: 'AutomationMode'))
    PendingModifiedValues.add_member(:resume_full_automation_mode_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ResumeFullAutomationModeTime'))
    PendingModifiedValues.add_member(:multi_tenant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiTenant'))
    PendingModifiedValues.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IAMDatabaseAuthenticationEnabled'))
    PendingModifiedValues.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    PendingModifiedValues.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    PendingModifiedValues.type = Types::PendingModifiedValues
    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Dimensions'))
    PerformanceInsightsMetricDimensionGroup.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Group'))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Limit'))
    PerformanceInsightsMetricDimensionGroup.type = Types::PerformanceInsightsMetricDimensionGroup
    PerformanceInsightsMetricQuery.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceInsightsMetricDimensionGroup, location_name: 'GroupBy'))
    PerformanceInsightsMetricQuery.add_member(:metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Metric'))
    PerformanceInsightsMetricQuery.type = Types::PerformanceInsightsMetricQuery
    PerformanceIssueDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    PerformanceIssueDetails.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    PerformanceIssueDetails.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricList, location_name: 'Metrics'))
    PerformanceIssueDetails.add_member(:analysis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Analysis'))
    PerformanceIssueDetails.type = Types::PerformanceIssueDetails
    PointInTimeRestoreNotEnabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PointInTimeRestoreNotEnabledFault.type = Types::PointInTimeRestoreNotEnabledFault
    ProcessorFeature.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ProcessorFeature.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    ProcessorFeature.type = Types::ProcessorFeature
    ProcessorFeatureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeature, traits: {"smithy.api#xmlName" => "ProcessorFeature"})
    PromoteReadReplicaDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromoteReadReplicaDBClusterMessage.type = Types::PromoteReadReplicaDBClusterMessage
    PromoteReadReplicaDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    PromoteReadReplicaDBClusterResult.type = Types::PromoteReadReplicaDBClusterResult
    PromoteReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromoteReadReplicaMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    PromoteReadReplicaMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    PromoteReadReplicaMessage.type = Types::PromoteReadReplicaMessage
    PromoteReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    PromoteReadReplicaResult.type = Types::PromoteReadReplicaResult
    ProvisionedIopsNotAvailableInAZFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ProvisionedIopsNotAvailableInAZFault.type = Types::ProvisionedIopsNotAvailableInAZFault
    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstancesOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstanceId'))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:db_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DBInstanceCount'))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    PurchaseReservedDBInstancesOfferingMessage.type = Types::PurchaseReservedDBInstancesOfferingMessage
    PurchaseReservedDBInstancesOfferingResult.add_member(:reserved_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstance, location_name: 'ReservedDBInstance'))
    PurchaseReservedDBInstancesOfferingResult.type = Types::PurchaseReservedDBInstancesOfferingResult
    Range.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'From'))
    Range.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'To'))
    Range.add_member(:step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Step'))
    Range.type = Types::Range
    RangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range, traits: {"smithy.api#xmlName" => "Range"})
    RdsCustomClusterConfiguration.add_member(:interconnect_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InterconnectSubnetId'))
    RdsCustomClusterConfiguration.add_member(:transit_gateway_multicast_domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TransitGatewayMulticastDomainId'))
    RdsCustomClusterConfiguration.add_member(:replica_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaMode, location_name: 'ReplicaMode'))
    RdsCustomClusterConfiguration.type = Types::RdsCustomClusterConfiguration
    ReadReplicaDBClusterIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaDBClusterIdentifier"})
    ReadReplicaDBInstanceIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaDBInstanceIdentifier"})
    ReadReplicaIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaIdentifier"})
    ReadersArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    RebootDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBClusterMessage.type = Types::RebootDBClusterMessage
    RebootDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RebootDBClusterResult.type = Types::RebootDBClusterResult
    RebootDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ForceFailover'))
    RebootDBInstanceMessage.type = Types::RebootDBInstanceMessage
    RebootDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RebootDBInstanceResult.type = Types::RebootDBInstanceResult
    RebootDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBShardGroupMessage.type = Types::RebootDBShardGroupMessage
    RebootDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupResourceId'))
    RebootDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupIdentifier, location_name: 'DBShardGroupIdentifier'))
    RebootDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    RebootDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxACU'))
    RebootDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinACU'))
    RebootDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ComputeRedundancy'))
    RebootDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    RebootDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RebootDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    RebootDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBShardGroupArn'))
    RebootDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    RebootDBShardGroupOutput.type = Types::RebootDBShardGroupOutput
    RecommendedAction.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId'))
    RecommendedAction.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    RecommendedAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    RecommendedAction.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Operation'))
    RecommendedAction.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionParameterList, location_name: 'Parameters'))
    RecommendedAction.add_member(:apply_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ApplyModes'))
    RecommendedAction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    RecommendedAction.add_member(:issue_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueDetails, location_name: 'IssueDetails'))
    RecommendedAction.add_member(:context_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContextAttributeList, location_name: 'ContextAttributes'))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedAction)
    RecommendedActionParameter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    RecommendedActionParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    RecommendedActionParameter.type = Types::RecommendedActionParameter
    RecommendedActionParameterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionParameter)
    RecommendedActionUpdate.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommendedActionUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommendedActionUpdate.type = Types::RecommendedActionUpdate
    RecommendedActionUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionUpdate)
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount'))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency'))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    ReferenceDetails.add_member(:scalar_reference_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarReferenceDetails, location_name: 'ScalarReferenceDetails'))
    ReferenceDetails.type = Types::ReferenceDetails
    RegisterDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyName, location_name: 'DBProxyName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupName, location_name: 'TargetGroupName'))
    RegisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DBInstanceIdentifiers'))
    RegisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DBClusterIdentifiers'))
    RegisterDBProxyTargetsRequest.type = Types::RegisterDBProxyTargetsRequest
    RegisterDBProxyTargetsResponse.add_member(:db_proxy_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'DBProxyTargets'))
    RegisterDBProxyTargetsResponse.type = Types::RegisterDBProxyTargetsResponse
    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.type = Types::RemoveFromGlobalClusterMessage
    RemoveFromGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    RemoveFromGlobalClusterResult.type = Types::RemoveFromGlobalClusterResult
    RemoveRoleFromDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    RemoveRoleFromDBClusterMessage.type = Types::RemoveRoleFromDBClusterMessage
    RemoveRoleFromDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.type = Types::RemoveRoleFromDBInstanceMessage
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.type = Types::RemoveSourceIdentifierFromSubscriptionMessage
    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    RemoveSourceIdentifierFromSubscriptionResult.type = Types::RemoveSourceIdentifierFromSubscriptionResult
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    ReplicaMode.add_member(:open_read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_READ_ONLY', traits: {"smithy.api#enumValue" => "open-read-only"}))
    ReplicaMode.add_member(:mounted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOUNTED', traits: {"smithy.api#enumValue" => "mounted"}))
    ReservedDBInstance.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstanceId'))
    ReservedDBInstance.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstancesOfferingId'))
    ReservedDBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    ReservedDBInstance.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ReservedDBInstance.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedDBInstance.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedDBInstance.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedDBInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedDBInstance.add_member(:db_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DBInstanceCount'))
    ReservedDBInstance.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    ReservedDBInstance.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedDBInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ'))
    ReservedDBInstance.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    ReservedDBInstance.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedDBInstance.add_member(:reserved_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstanceArn'))
    ReservedDBInstance.add_member(:lease_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LeaseId'))
    ReservedDBInstance.type = Types::ReservedDBInstance
    ReservedDBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedDBInstanceAlreadyExistsFault.type = Types::ReservedDBInstanceAlreadyExistsFault
    ReservedDBInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstance, traits: {"smithy.api#xmlName" => "ReservedDBInstance"})
    ReservedDBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedDBInstanceMessage.add_member(:reserved_db_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstanceList, location_name: 'ReservedDBInstances'))
    ReservedDBInstanceMessage.type = Types::ReservedDBInstanceMessage
    ReservedDBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedDBInstanceNotFoundFault.type = Types::ReservedDBInstanceNotFoundFault
    ReservedDBInstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedDBInstanceQuotaExceededFault.type = Types::ReservedDBInstanceQuotaExceededFault
    ReservedDBInstancesOffering.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedDBInstancesOfferingId'))
    ReservedDBInstancesOffering.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    ReservedDBInstancesOffering.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedDBInstancesOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedDBInstancesOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedDBInstancesOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedDBInstancesOffering.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    ReservedDBInstancesOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedDBInstancesOffering.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ'))
    ReservedDBInstancesOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedDBInstancesOffering.type = Types::ReservedDBInstancesOffering
    ReservedDBInstancesOfferingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstancesOffering, traits: {"smithy.api#xmlName" => "ReservedDBInstancesOffering"})
    ReservedDBInstancesOfferingMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingList, location_name: 'ReservedDBInstancesOfferings'))
    ReservedDBInstancesOfferingMessage.type = Types::ReservedDBInstancesOfferingMessage
    ReservedDBInstancesOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedDBInstancesOfferingNotFoundFault.type = Types::ReservedDBInstancesOfferingNotFoundFault
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
    RestoreDBClusterFromS3Message.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    RestoreDBClusterFromS3Message.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    RestoreDBClusterFromS3Message.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    RestoreDBClusterFromS3Message.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterFromS3Message.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterFromS3Message.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterFromS3Message.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    RestoreDBClusterFromS3Message.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterFromS3Message.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    RestoreDBClusterFromS3Message.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBClusterFromS3Message.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    RestoreDBClusterFromS3Message.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    RestoreDBClusterFromS3Message.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterFromS3Message.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    RestoreDBClusterFromS3Message.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterFromS3Message.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBClusterFromS3Message.add_member(:source_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceEngine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:source_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceEngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    RestoreDBClusterFromS3Message.add_member(:s3_ingestion_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3IngestionRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    RestoreDBClusterFromS3Message.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterFromS3Message.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterFromS3Message.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBClusterFromS3Message.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    RestoreDBClusterFromS3Message.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    RestoreDBClusterFromS3Message.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterFromS3Message.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBClusterFromS3Message.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterFromS3Message.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    RestoreDBClusterFromS3Message.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    RestoreDBClusterFromS3Message.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBClusterFromS3Message.type = Types::RestoreDBClusterFromS3Message
    RestoreDBClusterFromS3Result.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterFromS3Result.type = Types::RestoreDBClusterFromS3Result
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
    RestoreDBClusterFromSnapshotMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    RestoreDBClusterFromSnapshotMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'ScalingConfiguration'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterInstanceClass'))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterFromSnapshotMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    RestoreDBClusterFromSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreDBClusterFromSnapshotMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterFromSnapshotMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: 'RdsCustomClusterConfiguration'))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBClusterFromSnapshotMessage.type = Types::RestoreDBClusterFromSnapshotMessage
    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterFromSnapshotResult.type = Types::RestoreDBClusterFromSnapshotResult
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestoreType'))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier'))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestoreToTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseLatestRestorableTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBClusterToPointInTimeMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'BacktrackWindow'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterToPointInTimeMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterInstanceClass'))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterToPointInTimeMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreDBClusterToPointInTimeMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    RestoreDBClusterToPointInTimeMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDbClusterResourceId'))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterToPointInTimeMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'ScalingConfiguration'))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineMode'))
    RestoreDBClusterToPointInTimeMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsCustomClusterConfiguration, location_name: 'RdsCustomClusterConfiguration'))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBClusterToPointInTimeMessage.type = Types::RestoreDBClusterToPointInTimeMessage
    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterToPointInTimeResult.type = Types::RestoreDBClusterToPointInTimeResult
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainFqdn'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainOu'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainAuthSecretArn'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DomainDnsIps'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseDefaultProcessorFeatures'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCustomerOwnedIp'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomIamInstanceProfile'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    RestoreDBInstanceFromDBSnapshotMessage.type = Types::RestoreDBInstanceFromDBSnapshotMessage
    RestoreDBInstanceFromDBSnapshotResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RestoreDBInstanceFromDBSnapshotResult.type = Types::RestoreDBInstanceFromDBSnapshotResult
    RestoreDBInstanceFromS3Message.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    RestoreDBInstanceFromS3Message.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    RestoreDBInstanceFromS3Message.add_member(:db_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: 'DBSecurityGroups'))
    RestoreDBInstanceFromS3Message.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBInstanceFromS3Message.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    RestoreDBInstanceFromS3Message.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBInstanceFromS3Message.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    RestoreDBInstanceFromS3Message.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    RestoreDBInstanceFromS3Message.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    RestoreDBInstanceFromS3Message.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    RestoreDBInstanceFromS3Message.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBInstanceFromS3Message.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    RestoreDBInstanceFromS3Message.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    RestoreDBInstanceFromS3Message.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    RestoreDBInstanceFromS3Message.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    RestoreDBInstanceFromS3Message.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    RestoreDBInstanceFromS3Message.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    RestoreDBInstanceFromS3Message.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBInstanceFromS3Message.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreDBInstanceFromS3Message.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBInstanceFromS3Message.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBInstanceFromS3Message.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    RestoreDBInstanceFromS3Message.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBInstanceFromS3Message.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    RestoreDBInstanceFromS3Message.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBInstanceFromS3Message.add_member(:source_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceEngine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:source_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceEngineVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    RestoreDBInstanceFromS3Message.add_member(:s3_ingestion_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3IngestionRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseInsightsMode, location_name: 'DatabaseInsightsMode'))
    RestoreDBInstanceFromS3Message.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PerformanceInsightsRetentionPeriod'))
    RestoreDBInstanceFromS3Message.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBInstanceFromS3Message.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    RestoreDBInstanceFromS3Message.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseDefaultProcessorFeatures'))
    RestoreDBInstanceFromS3Message.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBInstanceFromS3Message.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    RestoreDBInstanceFromS3Message.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBInstanceFromS3Message.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    RestoreDBInstanceFromS3Message.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    RestoreDBInstanceFromS3Message.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    RestoreDBInstanceFromS3Message.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    RestoreDBInstanceFromS3Message.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBInstanceFromS3Message.type = Types::RestoreDBInstanceFromS3Message
    RestoreDBInstanceFromS3Result.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RestoreDBInstanceFromS3Result.type = Types::RestoreDBInstanceFromS3Result
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBInstanceIdentifier'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceToPointInTimeMessage.add_member(:restore_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestoreTime'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseLatestRestorableTime'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'StorageThroughput'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainFqdn'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainOu'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainAuthSecretArn'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'DomainDnsIps'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: 'ProcessorFeatures'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'UseDefaultProcessorFeatures'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDbiResourceId'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxAllocatedStorage'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCustomerOwnedIp'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkType'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBInstanceAutomatedBackupsArn'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupTarget'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomIamInstanceProfile'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DedicatedLogVolume'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineLifecycleSupport'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterUserPassword'))
    RestoreDBInstanceToPointInTimeMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserSecretKmsKeyId'))
    RestoreDBInstanceToPointInTimeMessage.type = Types::RestoreDBInstanceToPointInTimeMessage
    RestoreDBInstanceToPointInTimeResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RestoreDBInstanceToPointInTimeResult.type = Types::RestoreDBInstanceToPointInTimeResult
    RestoreWindow.add_member(:earliest_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EarliestTime'))
    RestoreWindow.add_member(:latest_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LatestTime'))
    RestoreWindow.type = Types::RestoreWindow
    RevokeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeDBSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupId'))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    RevokeDBSecurityGroupIngressMessage.type = Types::RevokeDBSecurityGroupIngressMessage
    RevokeDBSecurityGroupIngressResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: 'DBSecurityGroup'))
    RevokeDBSecurityGroupIngressResult.type = Types::RevokeDBSecurityGroupIngressResult
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ScalarReferenceDetails.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value'))
    ScalarReferenceDetails.type = Types::ScalarReferenceDetails
    ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinCapacity'))
    ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxCapacity'))
    ScalingConfiguration.add_member(:auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoPause'))
    ScalingConfiguration.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsUntilAutoPause'))
    ScalingConfiguration.add_member(:timeout_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeoutAction'))
    ScalingConfiguration.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsBeforeTimeout'))
    ScalingConfiguration.type = Types::ScalingConfiguration
    ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinCapacity'))
    ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxCapacity'))
    ScalingConfigurationInfo.add_member(:auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoPause'))
    ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsUntilAutoPause'))
    ScalingConfigurationInfo.add_member(:timeout_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimeoutAction'))
    ScalingConfigurationInfo.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsBeforeTimeout'))
    ScalingConfigurationInfo.type = Types::ScalingConfigurationInfo
    ServerlessV2FeaturesSupport.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2FeaturesSupport.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2FeaturesSupport.type = Types::ServerlessV2FeaturesSupport
    ServerlessV2ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfiguration.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsUntilAutoPause'))
    ServerlessV2ScalingConfiguration.type = Types::ServerlessV2ScalingConfiguration
    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SecondsUntilAutoPause'))
    ServerlessV2ScalingConfigurationInfo.type = Types::ServerlessV2ScalingConfigurationInfo
    SharedSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SharedSnapshotQuotaExceededFault.type = Types::SharedSnapshotQuotaExceededFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceClusterNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceClusterNotSupportedFault.type = Types::SourceClusterNotSupportedFault
    SourceDatabaseNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceDatabaseNotSupportedFault.type = Types::SourceDatabaseNotSupportedFault
    SourceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceRegion.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RegionName'))
    SourceRegion.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    SourceRegion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    SourceRegion.add_member(:supports_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsDBInstanceAutomatedBackupsReplication'))
    SourceRegion.type = Types::SourceRegion
    SourceRegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRegion, traits: {"smithy.api#xmlName" => "SourceRegion"})
    SourceRegionMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    SourceRegionMessage.add_member(:source_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRegionList, location_name: 'SourceRegions'))
    SourceRegionMessage.type = Types::SourceRegionMessage
    SourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_instance', traits: {"smithy.api#enumValue" => "db-instance"}))
    SourceType.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_parameter_group', traits: {"smithy.api#enumValue" => "db-parameter-group"}))
    SourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_security_group', traits: {"smithy.api#enumValue" => "db-security-group"}))
    SourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_snapshot', traits: {"smithy.api#enumValue" => "db-snapshot"}))
    SourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster', traits: {"smithy.api#enumValue" => "db-cluster"}))
    SourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster_snapshot', traits: {"smithy.api#enumValue" => "db-cluster-snapshot"}))
    SourceType.add_member(:custom_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom_engine_version', traits: {"smithy.api#enumValue" => "custom-engine-version"}))
    SourceType.add_member(:db_proxy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_proxy', traits: {"smithy.api#enumValue" => "db-proxy"}))
    SourceType.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'blue_green_deployment', traits: {"smithy.api#enumValue" => "blue-green-deployment"}))
    SourceType.add_member(:db_shard_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_shard_group', traits: {"smithy.api#enumValue" => "db-shard-group"}))
    SourceType.add_member(:zero_etl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'zero_etl', traits: {"smithy.api#enumValue" => "zero-etl"}))
    StartActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: 'Mode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ApplyImmediately'))
    StartActivityStreamRequest.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EngineNativeAuditFieldsIncluded'))
    StartActivityStreamRequest.type = Types::StartActivityStreamRequest
    StartActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    StartActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KinesisStreamName'))
    StartActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: 'Status'))
    StartActivityStreamResponse.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: 'Mode'))
    StartActivityStreamResponse.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EngineNativeAuditFieldsIncluded'))
    StartActivityStreamResponse.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    StartActivityStreamResponse.type = Types::StartActivityStreamResponse
    StartDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBClusterMessage.type = Types::StartDBClusterMessage
    StartDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StartDBClusterResult.type = Types::StartDBClusterResult
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBInstanceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'PreSignedUrl'))
    StartDBInstanceAutomatedBackupsReplicationMessage.type = Types::StartDBInstanceAutomatedBackupsReplicationMessage
    StartDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: 'DBInstanceAutomatedBackup'))
    StartDBInstanceAutomatedBackupsReplicationResult.type = Types::StartDBInstanceAutomatedBackupsReplicationResult
    StartDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBInstanceMessage.type = Types::StartDBInstanceMessage
    StartDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    StartDBInstanceResult.type = Types::StartDBInstanceResult
    StartExportTaskMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    StartExportTaskMessage.add_member(:export_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExportOnly'))
    StartExportTaskMessage.type = Types::StartExportTaskMessage
    StartExportTaskOutput.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportTaskIdentifier'))
    StartExportTaskOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    StartExportTaskOutput.add_member(:export_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExportOnly'))
    StartExportTaskOutput.add_member(:snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotTime'))
    StartExportTaskOutput.add_member(:task_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskStartTime'))
    StartExportTaskOutput.add_member(:task_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TaskEndTime'))
    StartExportTaskOutput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Bucket'))
    StartExportTaskOutput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Prefix'))
    StartExportTaskOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    StartExportTaskOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    StartExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    StartExportTaskOutput.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    StartExportTaskOutput.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalExtractedDataInGB'))
    StartExportTaskOutput.add_member(:failure_cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureCause'))
    StartExportTaskOutput.add_member(:warning_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WarningMessage'))
    StartExportTaskOutput.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'SourceType'))
    StartExportTaskOutput.type = Types::StartExportTaskOutput
    StopActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopActivityStreamRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ApplyImmediately'))
    StopActivityStreamRequest.type = Types::StopActivityStreamRequest
    StopActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    StopActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KinesisStreamName'))
    StopActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: 'Status'))
    StopActivityStreamResponse.type = Types::StopActivityStreamResponse
    StopDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBClusterMessage.type = Types::StopDBClusterMessage
    StopDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StopDBClusterResult.type = Types::StopDBClusterResult
    StopDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBInstanceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBInstanceAutomatedBackupsReplicationMessage.type = Types::StopDBInstanceAutomatedBackupsReplicationMessage
    StopDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: 'DBInstanceAutomatedBackup'))
    StopDBInstanceAutomatedBackupsReplicationResult.type = Types::StopDBInstanceAutomatedBackupsReplicationResult
    StopDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBInstanceMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSnapshotIdentifier'))
    StopDBInstanceMessage.type = Types::StopDBInstanceMessage
    StopDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    StopDBInstanceResult.type = Types::StopDBInstanceResult
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StorageTypeNotAvailableFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageTypeNotAvailableFault.type = Types::StorageTypeNotAvailableFault
    StorageTypeNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageTypeNotSupportedFault.type = Types::StorageTypeNotSupportedFault
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier'))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'SubnetAvailabilityZone'))
    Subnet.add_member(:subnet_outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Outpost, location_name: 'SubnetOutpost'))
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
    SupportedEngineLifecycle.add_member(:lifecycle_support_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleSupportName, location_name: 'LifecycleSupportName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.add_member(:lifecycle_support_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LifecycleSupportStartDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.add_member(:lifecycle_support_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LifecycleSupportEndDate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.type = Types::SupportedEngineLifecycle
    SupportedEngineLifecycleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedEngineLifecycle, traits: {"smithy.api#xmlName" => "SupportedEngineLifecycle"})
    SupportedTimezonesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, traits: {"smithy.api#xmlName" => "Timezone"})
    SwitchoverBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentIdentifier, location_name: 'BlueGreenDeploymentIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverBlueGreenDeploymentRequest.add_member(:switchover_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverTimeout, location_name: 'SwitchoverTimeout'))
    SwitchoverBlueGreenDeploymentRequest.type = Types::SwitchoverBlueGreenDeploymentRequest
    SwitchoverBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeployment, location_name: 'BlueGreenDeployment'))
    SwitchoverBlueGreenDeploymentResponse.type = Types::SwitchoverBlueGreenDeploymentResponse
    SwitchoverDetail.add_member(:source_member, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseArn, location_name: 'SourceMember'))
    SwitchoverDetail.add_member(:target_member, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseArn, location_name: 'TargetMember'))
    SwitchoverDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverDetailStatus, location_name: 'Status'))
    SwitchoverDetail.type = Types::SwitchoverDetail
    SwitchoverDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverDetail)
    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterIdentifier, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.type = Types::SwitchoverGlobalClusterMessage
    SwitchoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    SwitchoverGlobalClusterResult.type = Types::SwitchoverGlobalClusterResult
    SwitchoverReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverReadReplicaMessage.type = Types::SwitchoverReadReplicaMessage
    SwitchoverReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    SwitchoverReadReplicaResult.type = Types::SwitchoverReadReplicaResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagListMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    TagListMessage.type = Types::TagListMessage
    TargetConnectionNetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    TargetConnectionNetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    TargetGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroup)
    TargetHealth.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetState, location_name: 'State'))
    TargetHealth.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetHealthReason, location_name: 'Reason'))
    TargetHealth.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    TargetHealth.type = Types::TargetHealth
    TargetHealthReason.add_member(:unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNREACHABLE', traits: {"smithy.api#enumValue" => "UNREACHABLE"}))
    TargetHealthReason.add_member(:connection_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_FAILED', traits: {"smithy.api#enumValue" => "CONNECTION_FAILED"}))
    TargetHealthReason.add_member(:auth_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTH_FAILURE', traits: {"smithy.api#enumValue" => "AUTH_FAILURE"}))
    TargetHealthReason.add_member(:pending_proxy_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_PROXY_CAPACITY', traits: {"smithy.api#enumValue" => "PENDING_PROXY_CAPACITY"}))
    TargetHealthReason.add_member(:invalid_replication_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_REPLICATION_STATE', traits: {"smithy.api#enumValue" => "INVALID_REPLICATION_STATE"}))
    TargetHealthReason.add_member(:promoted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMOTED', traits: {"smithy.api#enumValue" => "PROMOTED"}))
    TargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTarget)
    TargetRole.add_member(:read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_WRITE', traits: {"smithy.api#enumValue" => "READ_WRITE"}))
    TargetRole.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    TargetRole.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    TargetState.add_member(:registering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'registering', traits: {"smithy.api#enumValue" => "REGISTERING"}))
    TargetState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'available', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TargetState.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unavailable', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    TargetState.add_member(:unused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unused', traits: {"smithy.api#enumValue" => "UNUSED"}))
    TargetType.add_member(:rds_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_INSTANCE', traits: {"smithy.api#enumValue" => "RDS_INSTANCE"}))
    TargetType.add_member(:rds_serverless_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS_SERVERLESS_ENDPOINT', traits: {"smithy.api#enumValue" => "RDS_SERVERLESS_ENDPOINT"}))
    TargetType.add_member(:tracked_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACKED_CLUSTER', traits: {"smithy.api#enumValue" => "TRACKED_CLUSTER"}))
    TenantDatabase.add_member(:tenant_database_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'TenantDatabaseCreateTime'))
    TenantDatabase.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    TenantDatabase.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName'))
    TenantDatabase.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    TenantDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    TenantDatabase.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    TenantDatabase.add_member(:tenant_database_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDatabaseResourceId'))
    TenantDatabase.add_member(:tenant_database_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDatabaseARN'))
    TenantDatabase.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    TenantDatabase.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NcharCharacterSetName'))
    TenantDatabase.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeletionProtection'))
    TenantDatabase.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabasePendingModifiedValues, location_name: 'PendingModifiedValues'))
    TenantDatabase.add_member(:master_user_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MasterUserSecret, location_name: 'MasterUserSecret'))
    TenantDatabase.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    TenantDatabase.type = Types::TenantDatabase
    TenantDatabaseAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TenantDatabaseAlreadyExistsFault.type = Types::TenantDatabaseAlreadyExistsFault
    TenantDatabaseNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TenantDatabaseNotFoundFault.type = Types::TenantDatabaseNotFoundFault
    TenantDatabasePendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    TenantDatabasePendingModifiedValues.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TenantDBName'))
    TenantDatabasePendingModifiedValues.type = Types::TenantDatabasePendingModifiedValues
    TenantDatabaseQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TenantDatabaseQuotaExceededFault.type = Types::TenantDatabaseQuotaExceededFault
    TenantDatabasesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabase, traits: {"smithy.api#xmlName" => "TenantDatabase"})
    TenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    TenantDatabasesMessage.add_member(:tenant_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabasesList, location_name: 'TenantDatabases'))
    TenantDatabasesMessage.type = Types::TenantDatabasesMessage
    Timezone.add_member(:timezone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimezoneName'))
    Timezone.type = Types::Timezone
    UnsupportedDBEngineVersionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedDBEngineVersionFault.type = Types::UnsupportedDBEngineVersionFault
    UpgradeTarget.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    UpgradeTarget.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    UpgradeTarget.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpgradeTarget.add_member(:auto_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoUpgrade'))
    UpgradeTarget.add_member(:is_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMajorVersionUpgrade'))
    UpgradeTarget.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineModeList, location_name: 'SupportedEngineModes'))
    UpgradeTarget.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsParallelQuery'))
    UpgradeTarget.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsGlobalDatabases'))
    UpgradeTarget.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsBabelfish'))
    UpgradeTarget.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLimitlessDatabase'))
    UpgradeTarget.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsLocalWriteForwarding'))
    UpgradeTarget.add_member(:supports_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsIntegrations'))
    UpgradeTarget.type = Types::UpgradeTarget
    UserAuthConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UserAuthConfig.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthUserName, location_name: 'UserName'))
    UserAuthConfig.add_member(:auth_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthScheme, location_name: 'AuthScheme'))
    UserAuthConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SecretArn'))
    UserAuthConfig.add_member(:iam_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: 'IAMAuth'))
    UserAuthConfig.add_member(:client_password_auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPasswordAuthType, location_name: 'ClientPasswordAuthType'))
    UserAuthConfig.type = Types::UserAuthConfig
    UserAuthConfigInfo.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UserAuthConfigInfo.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    UserAuthConfigInfo.add_member(:auth_scheme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthScheme, location_name: 'AuthScheme'))
    UserAuthConfigInfo.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretArn'))
    UserAuthConfigInfo.add_member(:iam_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: 'IAMAuth'))
    UserAuthConfigInfo.add_member(:client_password_auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPasswordAuthType, location_name: 'ClientPasswordAuthType'))
    UserAuthConfigInfo.type = Types::UserAuthConfigInfo
    UserAuthConfigInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAuthConfigInfo)
    UserAuthConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAuthConfig)
    ValidDBInstanceModificationsMessage.add_member(:storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: 'Storage'))
    ValidDBInstanceModificationsMessage.add_member(:valid_processor_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: 'ValidProcessorFeatures'))
    ValidDBInstanceModificationsMessage.add_member(:supports_dedicated_log_volume, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsDedicatedLogVolume'))
    ValidDBInstanceModificationsMessage.type = Types::ValidDBInstanceModificationsMessage
    ValidStorageOptions.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ValidStorageOptions.add_member(:storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangeList, location_name: 'StorageSize'))
    ValidStorageOptions.add_member(:provisioned_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangeList, location_name: 'ProvisionedIops'))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: 'IopsToStorageRatio'))
    ValidStorageOptions.add_member(:provisioned_storage_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangeList, location_name: 'ProvisionedStorageThroughput'))
    ValidStorageOptions.add_member(:storage_throughput_to_iops_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: 'StorageThroughputToIopsRatio'))
    ValidStorageOptions.add_member(:supports_storage_autoscaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsStorageAutoscaling'))
    ValidStorageOptions.type = Types::ValidStorageOptions
    ValidStorageOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidStorageOptions, traits: {"smithy.api#xmlName" => "ValidStorageOptions"})
    ValidUpgradeTargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeTarget, traits: {"smithy.api#xmlName" => "UpgradeTarget"})
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcSecurityGroupId'))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"})
    WriteForwardingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    WriteForwardingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    WriteForwardingStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "enabling"}))
    WriteForwardingStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "disabling"}))
    WriteForwardingStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "unknown"}))

    AmazonRDSv19 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rds#AmazonRDSv19"
      service.name = "AmazonRDSv19"
      service.version = "2014-10-31"
      service.traits = {"aws.api#service" => {"sdkId" => "RDS", "arnNamespace" => "rds", "cloudFormationName" => "RDS", "cloudTrailEventSource" => "rds.amazonaws.com", "endpointPrefix" => "rds"}, "aws.auth#sigv4" => {"name" => "rds"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Relational Database Service", "smithy.api#xmlNamespace" => {"uri" => "http://rds.amazonaws.com/doc/2014-10-31/"}}
      service.add_operation(:add_role_to_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddRoleToDBCluster"
        operation.name = "AddRoleToDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddRoleToDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:add_role_to_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddRoleToDBInstance"
        operation.name = "AddRoleToDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddRoleToDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceRoleAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceRoleQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:add_source_identifier_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddSourceIdentifierToSubscription"
        operation.name = "AddSourceIdentifierToSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_db_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AuthorizeDBSecurityGroupIngress"
        operation.name = "AuthorizeDBSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDBSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDBSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:backtrack_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#BacktrackDBCluster"
        operation.name = "BacktrackDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BacktrackDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BacktrackDBClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:cancel_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExportTaskStateFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBClusterParameterGroup"
        operation.name = "CopyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBClusterSnapshot"
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
        operation.id = "com.amazonaws.rds#CopyDBParameterGroup"
        operation.name = "CopyDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBSnapshot"
        operation.name = "CopyDBSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAvailabilityZoneNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyOptionGroup"
        operation.name = "CopyOptionGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyOptionGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyOptionGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateBlueGreenDeployment"
        operation.name = "CreateBlueGreenDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBlueGreenDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBlueGreenDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceClusterNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDatabaseNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateCustomDBEngineVersion"
        operation.name = "CreateCustomDBEngineVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDBEngineVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDBEngineVersionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDBEngineVersionFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ImagePropertiesNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBCluster"
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
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBClusterEndpoint"
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
        operation.id = "com.amazonaws.rds#CreateDBClusterParameterGroup"
        operation.name = "CreateDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBClusterSnapshot"
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
        operation.id = "com.amazonaws.rds#CreateDBInstance"
        operation.name = "CreateDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
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
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBInstanceReadReplica"
        operation.name = "CreateDBInstanceReadReplica"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceReadReplicaMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceReadReplicaResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotAllowedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBParameterGroup"
        operation.name = "CreateDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBProxy"
        operation.name = "CreateDBProxy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBProxyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBProxyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.traits = {}
      end)
      service.add_operation(:create_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBProxyEndpoint"
        operation.name = "CreateDBProxyEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBProxyEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBProxyEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.traits = {}
      end)
      service.add_operation(:create_db_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSecurityGroup"
        operation.name = "CreateDBSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSecurityGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBShardGroup"
        operation.name = "CreateDBShardGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBShardGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBShardGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDBShardGroupLimitReached)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDBEngineVersionFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSnapshot"
        operation.name = "CreateDBSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSubnetGroup"
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
        operation.id = "com.amazonaws.rds#CreateEventSubscription"
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
        operation.id = "com.amazonaws.rds#CreateGlobalCluster"
        operation.name = "CreateGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:create_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateOptionGroup"
        operation.name = "CreateOptionGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOptionGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOptionGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateTenantDatabase"
        operation.name = "CreateTenantDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantDatabaseMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteBlueGreenDeployment"
        operation.name = "DeleteBlueGreenDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBlueGreenDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBlueGreenDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteCustomDBEngineVersion"
        operation.name = "DeleteCustomDBEngineVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDBEngineVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDBEngineVersionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBCluster"
        operation.name = "DeleteDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_automated_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterAutomatedBackup"
        operation.name = "DeleteDBClusterAutomatedBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterAutomatedBackupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterAutomatedBackupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterAutomatedBackupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterEndpoint"
        operation.name = "DeleteDBClusterEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterParameterGroup"
        operation.name = "DeleteDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterSnapshot"
        operation.name = "DeleteDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBInstance"
        operation.name = "DeleteDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance_automated_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBInstanceAutomatedBackup"
        operation.name = "DeleteDBInstanceAutomatedBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceAutomatedBackupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceAutomatedBackupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceAutomatedBackupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBParameterGroup"
        operation.name = "DeleteDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBProxy"
        operation.name = "DeleteDBProxy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBProxyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBProxyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBProxyEndpoint"
        operation.name = "DeleteDBProxyEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBProxyEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBProxyEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyEndpointStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSecurityGroup"
        operation.name = "DeleteDBSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBShardGroup"
        operation.name = "DeleteDBShardGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBShardGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBShardGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSnapshot"
        operation.name = "DeleteDBSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSubnetGroup"
        operation.name = "DeleteDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSubscriptionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteGlobalCluster"
        operation.name = "DeleteGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteOptionGroup"
        operation.name = "DeleteOptionGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOptionGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOptionGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteTenantDatabase"
        operation.name = "DeleteTenantDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantDatabaseMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:deregister_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeregisterDBProxyTargets"
        operation.name = "DeregisterDBProxyTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDBProxyTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDBProxyTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttributesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_blue_green_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeBlueGreenDeployments"
        operation.name = "DescribeBlueGreenDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBlueGreenDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBlueGreenDeploymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBlueGreenDeployments.new
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_db_cluster_automated_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterAutomatedBackups"
        operation.name = "DescribeDBClusterAutomatedBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterAutomatedBackupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterAutomatedBackups.new
      end)
      service.add_operation(:describe_db_cluster_backtracks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterBacktracks"
        operation.name = "DescribeDBClusterBacktracks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterBacktracksMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterBacktrackMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterBacktrackNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterBacktracks.new
      end)
      service.add_operation(:describe_db_cluster_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterEndpoints"
        operation.name = "DescribeDBClusterEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterEndpointsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterEndpoints.new
      end)
      service.add_operation(:describe_db_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterParameterGroups"
        operation.name = "DescribeDBClusterParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameterGroups.new
      end)
      service.add_operation(:describe_db_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterParameters"
        operation.name = "DescribeDBClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameters.new
      end)
      service.add_operation(:describe_db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterSnapshotAttributes"
        operation.name = "DescribeDBClusterSnapshotAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterSnapshots"
        operation.name = "DescribeDBClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterSnapshots.new
      end)
      service.add_operation(:describe_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusters"
        operation.name = "DescribeDBClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusters.new
      end)
      service.add_operation(:describe_db_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBEngineVersions"
        operation.name = "DescribeDBEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDBEngineVersionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBEngineVersions.new
      end)
      service.add_operation(:describe_db_instance_automated_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBInstanceAutomatedBackups"
        operation.name = "DescribeDBInstanceAutomatedBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBInstanceAutomatedBackupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBInstanceAutomatedBackups.new
      end)
      service.add_operation(:describe_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBInstances"
        operation.name = "DescribeDBInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"], "smithy.test#smokeTests" => [{"id" => "DescribeDBInstancesFailure", "params" => {"DBInstanceIdentifier" => "fake-id"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBInstances.new
      end)
      service.add_operation(:describe_db_log_files, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBLogFiles"
        operation.name = "DescribeDBLogFiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBLogFilesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBLogFilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotReadyFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBLogFiles.new
      end)
      service.add_operation(:describe_db_major_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBMajorEngineVersions"
        operation.name = "DescribeDBMajorEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBMajorEngineVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBMajorEngineVersionsResponse)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBMajorEngineVersions.new
      end)
      service.add_operation(:describe_db_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBParameterGroups"
        operation.name = "DescribeDBParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameterGroups.new
      end)
      service.add_operation(:describe_db_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBParameters"
        operation.name = "DescribeDBParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameters.new
      end)
      service.add_operation(:describe_db_proxies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxies"
        operation.name = "DescribeDBProxies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxies.new
      end)
      service.add_operation(:describe_db_proxy_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyEndpoints"
        operation.name = "DescribeDBProxyEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyEndpoints.new
      end)
      service.add_operation(:describe_db_proxy_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyTargetGroups"
        operation.name = "DescribeDBProxyTargetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyTargetGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyTargetGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyTargetGroups.new
      end)
      service.add_operation(:describe_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyTargets"
        operation.name = "DescribeDBProxyTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBProxyTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyTargets.new
      end)
      service.add_operation(:describe_db_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBRecommendations"
        operation.name = "DescribeDBRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBRecommendationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBRecommendationsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBRecommendations.new
      end)
      service.add_operation(:describe_db_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSecurityGroups"
        operation.name = "DescribeDBSecurityGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSecurityGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSecurityGroups.new
      end)
      service.add_operation(:describe_db_shard_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBShardGroups"
        operation.name = "DescribeDBShardGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBShardGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBShardGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshotAttributes"
        operation.name = "DescribeDBSnapshotAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_snapshot_tenant_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshotTenantDatabases"
        operation.name = "DescribeDBSnapshotTenantDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSnapshotTenantDatabasesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabasesMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSnapshotTenantDatabases.new
      end)
      service.add_operation(:describe_db_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshots"
        operation.name = "DescribeDBSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeDBSnapshots.new
      end)
      service.add_operation(:describe_db_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSubnetGroups"
        operation.name = "DescribeDBSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEngineDefaultClusterParameters"
        operation.name = "DescribeEngineDefaultClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
        operation.traits = {}
      end)
      service.add_operation(:describe_engine_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEngineDefaultParameters"
        operation.name = "DescribeEngineDefaultParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineDefaultParameters.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_export_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportTasksMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTasksMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExportTasks.new
      end)
      service.add_operation(:describe_global_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeGlobalClusters"
        operation.name = "DescribeGlobalClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClustersMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalClusters.new
      end)
      service.add_operation(:describe_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeIntegrations"
        operation.name = "DescribeIntegrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeIntegrations.new
      end)
      service.add_operation(:describe_option_group_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOptionGroupOptions"
        operation.name = "DescribeOptionGroupOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptionGroupOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptionGroupOptions.new
      end)
      service.add_operation(:describe_option_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOptionGroups"
        operation.name = "DescribeOptionGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptionGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOptionGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptionGroups.new
      end)
      service.add_operation(:describe_orderable_db_instance_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOrderableDBInstanceOptions"
        operation.name = "DescribeOrderableDBInstanceOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableDBInstanceOptions.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:describe_reserved_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeReservedDBInstances"
        operation.name = "DescribeReservedDBInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedDBInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstanceMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstanceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedDBInstances.new
      end)
      service.add_operation(:describe_reserved_db_instances_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeReservedDBInstancesOfferings"
        operation.name = "DescribeReservedDBInstancesOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedDBInstancesOfferingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedDBInstancesOfferings.new
      end)
      service.add_operation(:describe_source_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeSourceRegions"
        operation.name = "DescribeSourceRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceRegionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRegionMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSourceRegions.new
      end)
      service.add_operation(:describe_tenant_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeTenantDatabases"
        operation.name = "DescribeTenantDatabases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTenantDatabasesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabasesMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTenantDatabases.new
      end)
      service.add_operation(:describe_valid_db_instance_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeValidDBInstanceModifications"
        operation.name = "DescribeValidDBInstanceModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:disable_http_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DisableHttpEndpoint"
        operation.name = "DisableHttpEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableHttpEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableHttpEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:download_db_log_file_portion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DownloadDBLogFilePortion"
        operation.name = "DownloadDBLogFilePortion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotReadyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBLogFileNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DownloadDBLogFilePortion.new
      end)
      service.add_operation(:enable_http_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#EnableHttpEndpoint"
        operation.name = "EnableHttpEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableHttpEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableHttpEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#FailoverDBCluster"
        operation.name = "FailoverDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#FailoverGlobalCluster"
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
        operation.id = "com.amazonaws.rds#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyActivityStream"
        operation.name = "ModifyActivityStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyActivityStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyActivityStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCertificates"
        operation.name = "ModifyCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCertificatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCertificatesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_current_db_cluster_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCurrentDBClusterCapacity"
        operation.name = "ModifyCurrentDBClusterCapacity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCurrentDBClusterCapacityMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCurrentDBClusterCapacityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCustomDBEngineVersion"
        operation.name = "ModifyCustomDBEngineVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDBEngineVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDBEngineVersionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDBEngineVersionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCustomDBEngineVersionStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBCluster"
        operation.name = "ModifyDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotAvailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBClusterEndpoint"
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
        operation.id = "com.amazonaws.rds#ModifyDBClusterParameterGroup"
        operation.name = "ModifyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBClusterSnapshotAttribute"
        operation.name = "ModifyDBClusterSnapshotAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBInstance"
        operation.name = "ModifyDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBParameterGroup"
        operation.name = "ModifyDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxy"
        operation.name = "ModifyDBProxy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxyEndpoint"
        operation.name = "ModifyDBProxyEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxyTargetGroup"
        operation.name = "ModifyDBProxyTargetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyTargetGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBProxyTargetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBRecommendation"
        operation.name = "ModifyDBRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBRecommendationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBRecommendationMessage)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBShardGroup"
        operation.name = "ModifyDBShardGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBShardGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBShardGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSnapshot"
        operation.name = "ModifyDBSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSnapshotAttribute"
        operation.name = "ModifyDBSnapshotAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSnapshotAttributeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSnapshotAttributeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSubnetGroup"
        operation.name = "ModifyDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyEventSubscription"
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
        operation.id = "com.amazonaws.rds#ModifyGlobalCluster"
        operation.name = "ModifyGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyIntegration"
        operation.name = "ModifyIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIntegrationStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyOptionGroup"
        operation.name = "ModifyOptionGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyOptionGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyOptionGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOptionGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyTenantDatabase"
        operation.name = "ModifyTenantDatabase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTenantDatabaseMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyTenantDatabaseResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:promote_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PromoteReadReplica"
        operation.name = "PromoteReadReplica"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:promote_read_replica_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PromoteReadReplicaDBCluster"
        operation.name = "PromoteReadReplicaDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_db_instances_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PurchaseReservedDBInstancesOffering"
        operation.name = "PurchaseReservedDBInstancesOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedDBInstancesOfferingMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedDBInstancesOfferingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBCluster"
        operation.name = "RebootDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBInstance"
        operation.name = "RebootDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBShardGroup"
        operation.name = "RebootDBShardGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBShardGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBShardGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:register_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RegisterDBProxyTargets"
        operation.name = "RegisterDBProxyTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDBProxyTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDBProxyTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetAlreadyRegisteredFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientAvailableIPsInSubnetFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_from_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveFromGlobalCluster"
        operation.name = "RemoveFromGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveRoleFromDBCluster"
        operation.name = "RemoveRoleFromDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveRoleFromDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveRoleFromDBInstance"
        operation.name = "RemoveRoleFromDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveRoleFromDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_source_identifier_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveSourceIdentifierFromSubscription"
        operation.name = "RemoveSourceIdentifierFromSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBShardGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotTenantDatabaseNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ResetDBClusterParameterGroup"
        operation.name = "ResetDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ResetDBParameterGroup"
        operation.name = "ResetDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterFromS3"
        operation.name = "RestoreDBClusterFromS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromS3Message)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromS3Result)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterFromSnapshot"
        operation.name = "RestoreDBClusterFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterToPointInTime"
        operation.name = "RestoreDBClusterToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAutomatedBackupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_from_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceFromDBSnapshot"
        operation.name = "RestoreDBInstanceFromDBSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceFromDBSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceFromDBSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceFromS3"
        operation.name = "RestoreDBInstanceFromS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceFromS3Message)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceFromS3Result)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceToPointInTime"
        operation.name = "RestoreDBInstanceToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceToPointInTimeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBInstanceToPointInTimeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeNotSupported)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRestoreNotEnabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TenantDatabaseQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_db_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RevokeDBSecurityGroupIngress"
        operation.name = "RevokeDBSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeDBSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeDBSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:start_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartActivityStream"
        operation.name = "StartActivityStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartActivityStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartActivityStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:start_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBCluster"
        operation.name = "StartDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:start_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBInstance"
        operation.name = "StartDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:start_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplication"
        operation.name = "StartDBInstanceAutomatedBackupsReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBInstanceAutomatedBackupsReplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBInstanceAutomatedBackupsReplicationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceAutomatedBackupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:start_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleMissingPermissionsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExportOnlyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExportSourceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopActivityStream"
        operation.name = "StopActivityStream"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopActivityStreamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopActivityStreamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBCluster"
        operation.name = "StopDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBShardGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBInstance"
        operation.name = "StopDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplication"
        operation.name = "StopDBInstanceAutomatedBackupsReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBInstanceAutomatedBackupsReplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBInstanceAutomatedBackupsReplicationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:switchover_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverBlueGreenDeployment"
        operation.name = "SwitchoverBlueGreenDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverBlueGreenDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverBlueGreenDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentStateFault)
        operation.traits = {}
      end)
      service.add_operation(:switchover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverGlobalCluster"
        operation.name = "SwitchoverGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:switchover_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverReadReplica"
        operation.name = "SwitchoverReadReplica"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverReadReplicaMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverReadReplicaResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
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
