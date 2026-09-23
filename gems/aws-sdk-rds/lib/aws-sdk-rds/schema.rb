# frozen_string_literal: true

# This is generated code!

module Aws::RDS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AccountAttributesMessage", name: "AccountAttributesMessage")
    AccountQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AccountQuota", name: "AccountQuota")
    AccountQuotaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#AccountQuotaList", name: "AccountQuotaList")
    ActivityStreamMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ActivityStreamMode", name: "ActivityStreamMode")
    ActivityStreamModeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ActivityStreamModeList", name: "ActivityStreamModeList")
    ActivityStreamPolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ActivityStreamPolicyStatus", name: "ActivityStreamPolicyStatus")
    ActivityStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ActivityStreamStatus", name: "ActivityStreamStatus")
    AddRoleToDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AddRoleToDBClusterMessage", name: "AddRoleToDBClusterMessage")
    AddRoleToDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AddRoleToDBInstanceMessage", name: "AddRoleToDBInstanceMessage")
    AddSourceIdentifierToSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AddSourceIdentifierToSubscriptionMessage", name: "AddSourceIdentifierToSubscriptionMessage")
    AddSourceIdentifierToSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AddSourceIdentifierToSubscriptionResult", name: "AddSourceIdentifierToSubscriptionResult")
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AddTagsToResourceMessage", name: "AddTagsToResourceMessage")
    ApplyMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ApplyMethod", name: "ApplyMethod")
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ApplyPendingMaintenanceActionMessage", name: "ApplyPendingMaintenanceActionMessage")
    ApplyPendingMaintenanceActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ApplyPendingMaintenanceActionResult", name: "ApplyPendingMaintenanceActionResult")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#AttributeValueList", name: "AttributeValueList")
    AuditPolicyState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#AuditPolicyState", name: "AuditPolicyState")
    AuthScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#AuthScheme", name: "AuthScheme")
    AuthUserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#AuthUserName", name: "AuthUserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AuthorizationAlreadyExistsFault", name: "AuthorizationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AuthorizationNotFoundFault", name: "AuthorizationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AuthorizationQuotaExceededFault", name: "AuthorizationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizeDBSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AuthorizeDBSecurityGroupIngressMessage", name: "AuthorizeDBSecurityGroupIngressMessage")
    AuthorizeDBSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AuthorizeDBSecurityGroupIngressResult", name: "AuthorizeDBSecurityGroupIngressResult")
    AutomationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#AutomationMode", name: "AutomationMode")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#AvailabilityZoneList", name: "AvailabilityZoneList")
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#AvailabilityZones", name: "AvailabilityZones")
    AvailableProcessorFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#AvailableProcessorFeature", name: "AvailableProcessorFeature")
    AvailableProcessorFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#AvailableProcessorFeatureList", name: "AvailableProcessorFeatureList")
    AwsBackupRecoveryPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#AwsBackupRecoveryPointArn", name: "AwsBackupRecoveryPointArn", traits: {"smithy.api#length" => {"min" => 43, "max" => 350}, "smithy.api#pattern" => "^arn:aws[a-z-]*:backup:[-a-z0-9]+:[0-9]{12}:[-a-z]+:([a-z0-9\\-]+:)?[a-z][a-z0-9\\-]{0,255}$"})
    BacktrackDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BacktrackDBClusterMessage", name: "BacktrackDBClusterMessage")
    BacktrackDBClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BacktrackDBClusterOutput", name: "BacktrackDBClusterOutput")
    BackupPolicyNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BackupPolicyNotFoundFault", name: "BackupPolicyNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BackupPolicyNotFoundFault", "httpResponseCode" => 404}, "smithy.api#deprecated" => {"message" => "Please avoid using this fault"}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    BlueGreenDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BlueGreenDeployment", name: "BlueGreenDeployment")
    BlueGreenDeploymentAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentAlreadyExistsFault", name: "BlueGreenDeploymentAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BlueGreenDeploymentAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlueGreenDeploymentIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentIdentifier", name: "BlueGreenDeploymentIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    BlueGreenDeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentList", name: "BlueGreenDeploymentList")
    BlueGreenDeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentName", name: "BlueGreenDeploymentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    BlueGreenDeploymentNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentNotFoundFault", name: "BlueGreenDeploymentNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BlueGreenDeploymentNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    BlueGreenDeploymentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentStatus", name: "BlueGreenDeploymentStatus")
    BlueGreenDeploymentStatusDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentStatusDetails", name: "BlueGreenDeploymentStatusDetails")
    BlueGreenDeploymentTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentTask", name: "BlueGreenDeploymentTask")
    BlueGreenDeploymentTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentTaskList", name: "BlueGreenDeploymentTaskList")
    BlueGreenDeploymentTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentTaskName", name: "BlueGreenDeploymentTaskName")
    BlueGreenDeploymentTaskStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BlueGreenDeploymentTaskStatus", name: "BlueGreenDeploymentTaskStatus")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rds#Boolean", name: "Boolean")
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.rds#BooleanOptional", name: "BooleanOptional")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => ".*"})
    CACertificateIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#CACertificateIdentifiersList", name: "CACertificateIdentifiersList")
    CancelExportTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CancelExportTaskMessage", name: "CancelExportTaskMessage")
    CancelExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CancelExportTaskOutput", name: "CancelExportTaskOutput")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Certificate", name: "Certificate")
    CertificateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CertificateDetails", name: "CertificateDetails")
    CertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#CertificateList", name: "CertificateList")
    CertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CertificateMessage", name: "CertificateMessage")
    CertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CertificateNotFoundFault", name: "CertificateNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CharacterSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CharacterSet", name: "CharacterSet")
    ClientPasswordAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ClientPasswordAuthType", name: "ClientPasswordAuthType")
    CloudwatchLogsExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CloudwatchLogsExportConfiguration", name: "CloudwatchLogsExportConfiguration")
    ClusterPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ClusterPendingModifiedValues", name: "ClusterPendingModifiedValues")
    ClusterScalabilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ClusterScalabilityType", name: "ClusterScalabilityType")
    ConnectionPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ConnectionPoolConfiguration", name: "ConnectionPoolConfiguration")
    ConnectionPoolConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ConnectionPoolConfigurationInfo", name: "ConnectionPoolConfigurationInfo")
    ContextAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ContextAttribute", name: "ContextAttribute")
    ContextAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ContextAttributeList", name: "ContextAttributeList")
    CopyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBClusterParameterGroupMessage", name: "CopyDBClusterParameterGroupMessage")
    CopyDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBClusterParameterGroupResult", name: "CopyDBClusterParameterGroupResult")
    CopyDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBClusterSnapshotMessage", name: "CopyDBClusterSnapshotMessage")
    CopyDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBClusterSnapshotResult", name: "CopyDBClusterSnapshotResult")
    CopyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBParameterGroupMessage", name: "CopyDBParameterGroupMessage")
    CopyDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBParameterGroupResult", name: "CopyDBParameterGroupResult")
    CopyDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBSnapshotMessage", name: "CopyDBSnapshotMessage")
    CopyDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyDBSnapshotResult", name: "CopyDBSnapshotResult")
    CopyOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyOptionGroupMessage", name: "CopyOptionGroupMessage")
    CopyOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CopyOptionGroupResult", name: "CopyOptionGroupResult")
    CreateBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateBlueGreenDeploymentRequest", name: "CreateBlueGreenDeploymentRequest")
    CreateBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateBlueGreenDeploymentResponse", name: "CreateBlueGreenDeploymentResponse")
    CreateCustomDBEngineVersionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateCustomDBEngineVersionFault", name: "CreateCustomDBEngineVersionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CreateCustomDBEngineVersionFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateCustomDBEngineVersionMessage", name: "CreateCustomDBEngineVersionMessage")
    CreateCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateCustomDBEngineVersionOutput", name: "CreateCustomDBEngineVersionOutput")
    CreateDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterEndpointMessage", name: "CreateDBClusterEndpointMessage")
    CreateDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterEndpointOutput", name: "CreateDBClusterEndpointOutput")
    CreateDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterMessage", name: "CreateDBClusterMessage")
    CreateDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterParameterGroupMessage", name: "CreateDBClusterParameterGroupMessage")
    CreateDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterParameterGroupResult", name: "CreateDBClusterParameterGroupResult")
    CreateDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterResult", name: "CreateDBClusterResult")
    CreateDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterSnapshotMessage", name: "CreateDBClusterSnapshotMessage")
    CreateDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBClusterSnapshotResult", name: "CreateDBClusterSnapshotResult")
    CreateDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBInstanceMessage", name: "CreateDBInstanceMessage")
    CreateDBInstanceReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBInstanceReadReplicaMessage", name: "CreateDBInstanceReadReplicaMessage")
    CreateDBInstanceReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBInstanceReadReplicaResult", name: "CreateDBInstanceReadReplicaResult")
    CreateDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBInstanceResult", name: "CreateDBInstanceResult")
    CreateDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBParameterGroupMessage", name: "CreateDBParameterGroupMessage")
    CreateDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBParameterGroupResult", name: "CreateDBParameterGroupResult")
    CreateDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBProxyEndpointRequest", name: "CreateDBProxyEndpointRequest")
    CreateDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBProxyEndpointResponse", name: "CreateDBProxyEndpointResponse")
    CreateDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBProxyRequest", name: "CreateDBProxyRequest")
    CreateDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBProxyResponse", name: "CreateDBProxyResponse")
    CreateDBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSecurityGroupMessage", name: "CreateDBSecurityGroupMessage")
    CreateDBSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSecurityGroupResult", name: "CreateDBSecurityGroupResult")
    CreateDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBShardGroupMessage", name: "CreateDBShardGroupMessage")
    CreateDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBShardGroupOutput", name: "CreateDBShardGroupOutput")
    CreateDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSnapshotMessage", name: "CreateDBSnapshotMessage")
    CreateDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSnapshotResult", name: "CreateDBSnapshotResult")
    CreateDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSubnetGroupMessage", name: "CreateDBSubnetGroupMessage")
    CreateDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateDBSubnetGroupResult", name: "CreateDBSubnetGroupResult")
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateEventSubscriptionMessage", name: "CreateEventSubscriptionMessage")
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateEventSubscriptionResult", name: "CreateEventSubscriptionResult")
    CreateGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateGlobalClusterMessage", name: "CreateGlobalClusterMessage")
    CreateGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateGlobalClusterResult", name: "CreateGlobalClusterResult")
    CreateIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateIntegrationMessage", name: "CreateIntegrationMessage")
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateIntegrationOutput", name: "CreateIntegrationOutput")
    CreateOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateOptionGroupMessage", name: "CreateOptionGroupMessage")
    CreateOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateOptionGroupResult", name: "CreateOptionGroupResult")
    CreateTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateTenantDatabaseMessage", name: "CreateTenantDatabaseMessage")
    CreateTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CreateTenantDatabaseResult", name: "CreateTenantDatabaseResult")
    CustomAvailabilityZoneNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CustomAvailabilityZoneNotFoundFault", name: "CustomAvailabilityZoneNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomAvailabilityZoneNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDBEngineVersionAMI = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CustomDBEngineVersionAMI", name: "CustomDBEngineVersionAMI")
    CustomDBEngineVersionAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CustomDBEngineVersionAlreadyExistsFault", name: "CustomDBEngineVersionAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomDBEngineVersionManifest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#CustomDBEngineVersionManifest", name: "CustomDBEngineVersionManifest", traits: {"smithy.api#length" => {"min" => 1, "max" => 51000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    CustomDBEngineVersionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CustomDBEngineVersionNotFoundFault", name: "CustomDBEngineVersionNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDBEngineVersionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#CustomDBEngineVersionQuotaExceededFault", name: "CustomDBEngineVersionQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDBEngineVersionQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomEngineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#CustomEngineName", name: "CustomEngineName", traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[A-Za-z0-9-]{1,35}$"})
    CustomEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#CustomEngineVersion", name: "CustomEngineVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[a-z0-9_.-]{1,60}$"})
    CustomEngineVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#CustomEngineVersionStatus", name: "CustomEngineVersionStatus")
    DBCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBCluster", name: "DBCluster")
    DBClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterAlreadyExistsFault", name: "DBClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterAutomatedBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterAutomatedBackup", name: "DBClusterAutomatedBackup")
    DBClusterAutomatedBackupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterAutomatedBackupList", name: "DBClusterAutomatedBackupList")
    DBClusterAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterAutomatedBackupMessage", name: "DBClusterAutomatedBackupMessage")
    DBClusterAutomatedBackupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterAutomatedBackupNotFoundFault", name: "DBClusterAutomatedBackupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAutomatedBackupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterAutomatedBackupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterAutomatedBackupQuotaExceededFault", name: "DBClusterAutomatedBackupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAutomatedBackupQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterBacktrack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterBacktrack", name: "DBClusterBacktrack")
    DBClusterBacktrackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterBacktrackList", name: "DBClusterBacktrackList")
    DBClusterBacktrackMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterBacktrackMessage", name: "DBClusterBacktrackMessage")
    DBClusterBacktrackNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterBacktrackNotFoundFault", name: "DBClusterBacktrackNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterBacktrackNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterEndpoint", name: "DBClusterEndpoint")
    DBClusterEndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterEndpointAlreadyExistsFault", name: "DBClusterEndpointAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterEndpointList", name: "DBClusterEndpointList")
    DBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterEndpointMessage", name: "DBClusterEndpointMessage")
    DBClusterEndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterEndpointNotFoundFault", name: "DBClusterEndpointNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterEndpointQuotaExceededFault", name: "DBClusterEndpointQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DBClusterIdentifier", name: "DBClusterIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    DBClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterList", name: "DBClusterList")
    DBClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterMember", name: "DBClusterMember")
    DBClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterMemberList", name: "DBClusterMemberList")
    DBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterMessage", name: "DBClusterMessage")
    DBClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterNotFoundFault", name: "DBClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterOptionGroupMemberships = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterOptionGroupMemberships", name: "DBClusterOptionGroupMemberships")
    DBClusterOptionGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterOptionGroupStatus", name: "DBClusterOptionGroupStatus")
    DBClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterParameterGroup", name: "DBClusterParameterGroup")
    DBClusterParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterParameterGroupList", name: "DBClusterParameterGroupList")
    DBClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterParameterGroupNotFoundFault", name: "DBClusterParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterParameterGroupsMessage", name: "DBClusterParameterGroupsMessage")
    DBClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterQuotaExceededFault", name: "DBClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterRole", name: "DBClusterRole")
    DBClusterRoleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterRoleAlreadyExistsFault", name: "DBClusterRoleAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterRoleNotFoundFault", name: "DBClusterRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterRoleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterRoleQuotaExceededFault", name: "DBClusterRoleQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterRoles", name: "DBClusterRoles")
    DBClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshot", name: "DBClusterSnapshot")
    DBClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshotAlreadyExistsFault", name: "DBClusterSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshotAttribute", name: "DBClusterSnapshotAttribute")
    DBClusterSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterSnapshotAttributeList", name: "DBClusterSnapshotAttributeList")
    DBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshotAttributesResult", name: "DBClusterSnapshotAttributesResult")
    DBClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterSnapshotList", name: "DBClusterSnapshotList")
    DBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshotMessage", name: "DBClusterSnapshotMessage")
    DBClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterSnapshotNotFoundFault", name: "DBClusterSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBClusterStatusInfo", name: "DBClusterStatusInfo")
    DBClusterStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBClusterStatusInfoList", name: "DBClusterStatusInfoList")
    DBEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBEngineVersion", name: "DBEngineVersion")
    DBEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBEngineVersionList", name: "DBEngineVersionList")
    DBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBEngineVersionMessage", name: "DBEngineVersionMessage")
    DBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstance", name: "DBInstance")
    DBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAlreadyExistsFault", name: "DBInstanceAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceAutomatedBackup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackup", name: "DBInstanceAutomatedBackup")
    DBInstanceAutomatedBackupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupList", name: "DBInstanceAutomatedBackupList")
    DBInstanceAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupMessage", name: "DBInstanceAutomatedBackupMessage")
    DBInstanceAutomatedBackupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupNotFoundFault", name: "DBInstanceAutomatedBackupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAutomatedBackupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceAutomatedBackupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupQuotaExceededFault", name: "DBInstanceAutomatedBackupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAutomatedBackupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceAutomatedBackupsReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupsReplication", name: "DBInstanceAutomatedBackupsReplication")
    DBInstanceAutomatedBackupsReplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBInstanceAutomatedBackupsReplicationList", name: "DBInstanceAutomatedBackupsReplicationList")
    DBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBInstanceList", name: "DBInstanceList")
    DBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceMessage", name: "DBInstanceMessage")
    DBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceNotFoundFault", name: "DBInstanceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceNotReadyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceNotReadyFault", name: "DBInstanceNotReadyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotReady", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceRole", name: "DBInstanceRole")
    DBInstanceRoleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceRoleAlreadyExistsFault", name: "DBInstanceRoleAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceRoleNotFoundFault", name: "DBInstanceRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceRoleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceRoleQuotaExceededFault", name: "DBInstanceRoleQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceRoleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceRoles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBInstanceRoles", name: "DBInstanceRoles")
    DBInstanceStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBInstanceStatusInfo", name: "DBInstanceStatusInfo")
    DBInstanceStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBInstanceStatusInfoList", name: "DBInstanceStatusInfoList")
    DBLogFileNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBLogFileNotFoundFault", name: "DBLogFileNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBLogFileNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBMajorEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBMajorEngineVersion", name: "DBMajorEngineVersion")
    DBMajorEngineVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBMajorEngineVersionsList", name: "DBMajorEngineVersionsList")
    DBParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroup", name: "DBParameterGroup")
    DBParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroupAlreadyExistsFault", name: "DBParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBParameterGroupList", name: "DBParameterGroupList")
    DBParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroupNotFoundFault", name: "DBParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroupQuotaExceededFault", name: "DBParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroupStatus", name: "DBParameterGroupStatus")
    DBParameterGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBParameterGroupStatusList", name: "DBParameterGroupStatusList")
    DBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBParameterGroupsMessage", name: "DBParameterGroupsMessage")
    DBProxy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxy", name: "DBProxy")
    DBProxyAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyAlreadyExistsFault", name: "DBProxyAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyEndpoint", name: "DBProxyEndpoint")
    DBProxyEndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyEndpointAlreadyExistsFault", name: "DBProxyEndpointAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBProxyEndpointList", name: "DBProxyEndpointList")
    DBProxyEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DBProxyEndpointName", name: "DBProxyEndpointName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyEndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyEndpointNotFoundFault", name: "DBProxyEndpointNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyEndpointQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyEndpointQuotaExceededFault", name: "DBProxyEndpointQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyEndpointQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#DBProxyEndpointStatus", name: "DBProxyEndpointStatus")
    DBProxyEndpointTargetRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#DBProxyEndpointTargetRole", name: "DBProxyEndpointTargetRole")
    DBProxyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBProxyList", name: "DBProxyList")
    DBProxyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DBProxyName", name: "DBProxyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyNotFoundFault", name: "DBProxyNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyQuotaExceededFault", name: "DBProxyQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#DBProxyStatus", name: "DBProxyStatus")
    DBProxyTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyTarget", name: "DBProxyTarget")
    DBProxyTargetAlreadyRegisteredFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyTargetAlreadyRegisteredFault", name: "DBProxyTargetAlreadyRegisteredFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetAlreadyRegisteredFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBProxyTargetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyTargetGroup", name: "DBProxyTargetGroup")
    DBProxyTargetGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DBProxyTargetGroupName", name: "DBProxyTargetGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBProxyTargetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyTargetGroupNotFoundFault", name: "DBProxyTargetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBProxyTargetNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBProxyTargetNotFoundFault", name: "DBProxyTargetNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBProxyTargetNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBRecommendation", name: "DBRecommendation")
    DBRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBRecommendationList", name: "DBRecommendationList")
    DBRecommendationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBRecommendationMessage", name: "DBRecommendationMessage")
    DBRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBRecommendationsMessage", name: "DBRecommendationsMessage")
    DBSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroup", name: "DBSecurityGroup")
    DBSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupAlreadyExistsFault", name: "DBSecurityGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupMembership", name: "DBSecurityGroupMembership")
    DBSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSecurityGroupMembershipList", name: "DBSecurityGroupMembershipList")
    DBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupMessage", name: "DBSecurityGroupMessage")
    DBSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSecurityGroupNameList", name: "DBSecurityGroupNameList")
    DBSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupNotFoundFault", name: "DBSecurityGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSecurityGroupNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupNotSupportedFault", name: "DBSecurityGroupNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSecurityGroupQuotaExceededFault", name: "DBSecurityGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.DBSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSecurityGroups", name: "DBSecurityGroups")
    DBShardGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBShardGroup", name: "DBShardGroup")
    DBShardGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBShardGroupAlreadyExistsFault", name: "DBShardGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBShardGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBShardGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DBShardGroupIdentifier", name: "DBShardGroupIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    DBShardGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBShardGroupNotFoundFault", name: "DBShardGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBShardGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBShardGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBShardGroupsList", name: "DBShardGroupsList")
    DBSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshot", name: "DBSnapshot")
    DBSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotAlreadyExistsFault", name: "DBSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotAttribute", name: "DBSnapshotAttribute")
    DBSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSnapshotAttributeList", name: "DBSnapshotAttributeList")
    DBSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotAttributesResult", name: "DBSnapshotAttributesResult")
    DBSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSnapshotList", name: "DBSnapshotList")
    DBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotMessage", name: "DBSnapshotMessage")
    DBSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotNotFoundFault", name: "DBSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotTenantDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotTenantDatabase", name: "DBSnapshotTenantDatabase")
    DBSnapshotTenantDatabaseNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotTenantDatabaseNotFoundFault", name: "DBSnapshotTenantDatabaseNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotTenantDatabaseNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotTenantDatabasesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSnapshotTenantDatabasesList", name: "DBSnapshotTenantDatabasesList")
    DBSnapshotTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSnapshotTenantDatabasesMessage", name: "DBSnapshotTenantDatabasesMessage")
    DBSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroup", name: "DBSubnetGroup")
    DBSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupAlreadyExistsFault", name: "DBSubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupDoesNotCoverEnoughAZs", name: "DBSubnetGroupDoesNotCoverEnoughAZs", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupMessage", name: "DBSubnetGroupMessage")
    DBSubnetGroupNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupNotAllowedFault", name: "DBSubnetGroupNotAllowedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupNotFoundFault", name: "DBSubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetGroupQuotaExceededFault", name: "DBSubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DBSubnetGroups", name: "DBSubnetGroups")
    DBSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBSubnetQuotaExceededFault", name: "DBSubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBUpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DBUpgradeDependencyFailureFault", name: "DBUpgradeDependencyFailureFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DBUpgradeDependencyFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DataFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DataFilter", name: "DataFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 25600}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \"\\\\\\-$,*.:?+\\/]*$"})
    DatabaseArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#DatabaseArn", name: "DatabaseArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[A-Za-z][0-9A-Za-z-:._]*$"})
    DatabaseInsightsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#DatabaseInsightsMode", name: "DatabaseInsightsMode")
    DefaultAuthScheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#DefaultAuthScheme", name: "DefaultAuthScheme")
    DeleteBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteBlueGreenDeploymentRequest", name: "DeleteBlueGreenDeploymentRequest")
    DeleteBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteBlueGreenDeploymentResponse", name: "DeleteBlueGreenDeploymentResponse")
    DeleteCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteCustomDBEngineVersionMessage", name: "DeleteCustomDBEngineVersionMessage")
    DeleteCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteCustomDBEngineVersionOutput", name: "DeleteCustomDBEngineVersionOutput")
    DeleteDBClusterAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterAutomatedBackupMessage", name: "DeleteDBClusterAutomatedBackupMessage")
    DeleteDBClusterAutomatedBackupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterAutomatedBackupResult", name: "DeleteDBClusterAutomatedBackupResult")
    DeleteDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterEndpointMessage", name: "DeleteDBClusterEndpointMessage")
    DeleteDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterEndpointOutput", name: "DeleteDBClusterEndpointOutput")
    DeleteDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterMessage", name: "DeleteDBClusterMessage")
    DeleteDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterParameterGroupMessage", name: "DeleteDBClusterParameterGroupMessage")
    DeleteDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterResult", name: "DeleteDBClusterResult")
    DeleteDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterSnapshotMessage", name: "DeleteDBClusterSnapshotMessage")
    DeleteDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBClusterSnapshotResult", name: "DeleteDBClusterSnapshotResult")
    DeleteDBInstanceAutomatedBackupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBInstanceAutomatedBackupMessage", name: "DeleteDBInstanceAutomatedBackupMessage")
    DeleteDBInstanceAutomatedBackupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBInstanceAutomatedBackupResult", name: "DeleteDBInstanceAutomatedBackupResult")
    DeleteDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBInstanceMessage", name: "DeleteDBInstanceMessage")
    DeleteDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBInstanceResult", name: "DeleteDBInstanceResult")
    DeleteDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBParameterGroupMessage", name: "DeleteDBParameterGroupMessage")
    DeleteDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBProxyEndpointRequest", name: "DeleteDBProxyEndpointRequest")
    DeleteDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBProxyEndpointResponse", name: "DeleteDBProxyEndpointResponse")
    DeleteDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBProxyRequest", name: "DeleteDBProxyRequest")
    DeleteDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBProxyResponse", name: "DeleteDBProxyResponse")
    DeleteDBSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBSecurityGroupMessage", name: "DeleteDBSecurityGroupMessage")
    DeleteDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBShardGroupMessage", name: "DeleteDBShardGroupMessage")
    DeleteDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBShardGroupOutput", name: "DeleteDBShardGroupOutput")
    DeleteDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBSnapshotMessage", name: "DeleteDBSnapshotMessage")
    DeleteDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBSnapshotResult", name: "DeleteDBSnapshotResult")
    DeleteDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteDBSubnetGroupMessage", name: "DeleteDBSubnetGroupMessage")
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteEventSubscriptionMessage", name: "DeleteEventSubscriptionMessage")
    DeleteEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteEventSubscriptionResult", name: "DeleteEventSubscriptionResult")
    DeleteGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteGlobalClusterMessage", name: "DeleteGlobalClusterMessage")
    DeleteGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteGlobalClusterResult", name: "DeleteGlobalClusterResult")
    DeleteIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteIntegrationMessage", name: "DeleteIntegrationMessage")
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteIntegrationOutput", name: "DeleteIntegrationOutput")
    DeleteOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteOptionGroupMessage", name: "DeleteOptionGroupMessage")
    DeleteTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteTenantDatabaseMessage", name: "DeleteTenantDatabaseMessage")
    DeleteTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeleteTenantDatabaseResult", name: "DeleteTenantDatabaseResult")
    DeregisterDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeregisterDBProxyTargetsRequest", name: "DeregisterDBProxyTargetsRequest")
    DeregisterDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DeregisterDBProxyTargetsResponse", name: "DeregisterDBProxyTargetsResponse")
    DescribeAccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeAccountAttributesMessage", name: "DescribeAccountAttributesMessage")
    DescribeBlueGreenDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeBlueGreenDeploymentsRequest", name: "DescribeBlueGreenDeploymentsRequest")
    DescribeBlueGreenDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeBlueGreenDeploymentsResponse", name: "DescribeBlueGreenDeploymentsResponse")
    DescribeCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeCertificatesMessage", name: "DescribeCertificatesMessage")
    DescribeDBClusterAutomatedBackupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterAutomatedBackupsMessage", name: "DescribeDBClusterAutomatedBackupsMessage")
    DescribeDBClusterBacktracksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterBacktracksMessage", name: "DescribeDBClusterBacktracksMessage")
    DescribeDBClusterEndpointsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterEndpointsMessage", name: "DescribeDBClusterEndpointsMessage")
    DescribeDBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterParameterGroupsMessage", name: "DescribeDBClusterParameterGroupsMessage")
    DescribeDBClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterParametersMessage", name: "DescribeDBClusterParametersMessage")
    DescribeDBClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterParametersOutput", name: "DescribeDBClusterParametersOutput")
    DescribeDBClusterSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterSnapshotAttributesMessage", name: "DescribeDBClusterSnapshotAttributesMessage")
    DescribeDBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterSnapshotAttributesResult", name: "DescribeDBClusterSnapshotAttributesResult")
    DescribeDBClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClusterSnapshotsMessage", name: "DescribeDBClusterSnapshotsMessage")
    DescribeDBClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBClustersMessage", name: "DescribeDBClustersMessage")
    DescribeDBEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBEngineVersionsMessage", name: "DescribeDBEngineVersionsMessage")
    DescribeDBInstanceAutomatedBackupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBInstanceAutomatedBackupsMessage", name: "DescribeDBInstanceAutomatedBackupsMessage")
    DescribeDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBInstancesMessage", name: "DescribeDBInstancesMessage")
    DescribeDBLogFilesDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBLogFilesDetails", name: "DescribeDBLogFilesDetails")
    DescribeDBLogFilesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DescribeDBLogFilesList", name: "DescribeDBLogFilesList")
    DescribeDBLogFilesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBLogFilesMessage", name: "DescribeDBLogFilesMessage")
    DescribeDBLogFilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBLogFilesResponse", name: "DescribeDBLogFilesResponse")
    DescribeDBMajorEngineVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBMajorEngineVersionsRequest", name: "DescribeDBMajorEngineVersionsRequest")
    DescribeDBMajorEngineVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBMajorEngineVersionsResponse", name: "DescribeDBMajorEngineVersionsResponse")
    DescribeDBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBParameterGroupsMessage", name: "DescribeDBParameterGroupsMessage")
    DescribeDBParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBParametersMessage", name: "DescribeDBParametersMessage")
    DescribeDBParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBParametersOutput", name: "DescribeDBParametersOutput")
    DescribeDBProxiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxiesRequest", name: "DescribeDBProxiesRequest")
    DescribeDBProxiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxiesResponse", name: "DescribeDBProxiesResponse")
    DescribeDBProxyEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyEndpointsRequest", name: "DescribeDBProxyEndpointsRequest")
    DescribeDBProxyEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyEndpointsResponse", name: "DescribeDBProxyEndpointsResponse")
    DescribeDBProxyTargetGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyTargetGroupsRequest", name: "DescribeDBProxyTargetGroupsRequest")
    DescribeDBProxyTargetGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyTargetGroupsResponse", name: "DescribeDBProxyTargetGroupsResponse")
    DescribeDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyTargetsRequest", name: "DescribeDBProxyTargetsRequest")
    DescribeDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBProxyTargetsResponse", name: "DescribeDBProxyTargetsResponse")
    DescribeDBRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBRecommendationsMessage", name: "DescribeDBRecommendationsMessage")
    DescribeDBSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSecurityGroupsMessage", name: "DescribeDBSecurityGroupsMessage")
    DescribeDBShardGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBShardGroupsMessage", name: "DescribeDBShardGroupsMessage")
    DescribeDBShardGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBShardGroupsResponse", name: "DescribeDBShardGroupsResponse")
    DescribeDBSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSnapshotAttributesMessage", name: "DescribeDBSnapshotAttributesMessage")
    DescribeDBSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSnapshotAttributesResult", name: "DescribeDBSnapshotAttributesResult")
    DescribeDBSnapshotTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSnapshotTenantDatabasesMessage", name: "DescribeDBSnapshotTenantDatabasesMessage")
    DescribeDBSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSnapshotsMessage", name: "DescribeDBSnapshotsMessage")
    DescribeDBSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeDBSubnetGroupsMessage", name: "DescribeDBSubnetGroupsMessage")
    DescribeEngineDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEngineDefaultClusterParametersMessage", name: "DescribeEngineDefaultClusterParametersMessage")
    DescribeEngineDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEngineDefaultClusterParametersResult", name: "DescribeEngineDefaultClusterParametersResult")
    DescribeEngineDefaultParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEngineDefaultParametersMessage", name: "DescribeEngineDefaultParametersMessage")
    DescribeEngineDefaultParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEngineDefaultParametersResult", name: "DescribeEngineDefaultParametersResult")
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEventCategoriesMessage", name: "DescribeEventCategoriesMessage")
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEventSubscriptionsMessage", name: "DescribeEventSubscriptionsMessage")
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeEventsMessage", name: "DescribeEventsMessage")
    DescribeExportTasksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeExportTasksMessage", name: "DescribeExportTasksMessage")
    DescribeGlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeGlobalClustersMessage", name: "DescribeGlobalClustersMessage")
    DescribeIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeIntegrationsMessage", name: "DescribeIntegrationsMessage")
    DescribeIntegrationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeIntegrationsResponse", name: "DescribeIntegrationsResponse")
    DescribeOptionGroupOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeOptionGroupOptionsMessage", name: "DescribeOptionGroupOptionsMessage")
    DescribeOptionGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeOptionGroupsMessage", name: "DescribeOptionGroupsMessage")
    DescribeOptionGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeOptionGroupsOutput", name: "DescribeOptionGroupsOutput")
    DescribeOrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeOrderableDBInstanceOptionsMessage", name: "DescribeOrderableDBInstanceOptionsMessage")
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribePendingMaintenanceActionsMessage", name: "DescribePendingMaintenanceActionsMessage")
    DescribeReservedDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeReservedDBInstancesMessage", name: "DescribeReservedDBInstancesMessage")
    DescribeReservedDBInstancesOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeReservedDBInstancesOfferingsMessage", name: "DescribeReservedDBInstancesOfferingsMessage")
    DescribeSourceRegionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeSourceRegionsMessage", name: "DescribeSourceRegionsMessage")
    DescribeTenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeTenantDatabasesMessage", name: "DescribeTenantDatabasesMessage")
    DescribeValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeValidDBInstanceModificationsMessage", name: "DescribeValidDBInstanceModificationsMessage")
    DescribeValidDBInstanceModificationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DescribeValidDBInstanceModificationsResult", name: "DescribeValidDBInstanceModificationsResult")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    DisableHttpEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DisableHttpEndpointRequest", name: "DisableHttpEndpointRequest")
    DisableHttpEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DisableHttpEndpointResponse", name: "DisableHttpEndpointResponse")
    DocLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DocLink", name: "DocLink")
    DocLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DocLinkList", name: "DocLinkList")
    DomainMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DomainMembership", name: "DomainMembership")
    DomainMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DomainMembershipList", name: "DomainMembershipList")
    DomainNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DomainNotFoundFault", name: "DomainNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DomainNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rds#Double", name: "Double")
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.rds#DoubleOptional", name: "DoubleOptional")
    DoubleRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DoubleRange", name: "DoubleRange")
    DoubleRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#DoubleRangeList", name: "DoubleRangeList")
    DownloadDBLogFilePortionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DownloadDBLogFilePortionMessage", name: "DownloadDBLogFilePortionMessage")
    DownloadDBLogFilePortionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#DownloadDBLogFilePortionOutput", name: "DownloadDBLogFilePortionOutput")
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EC2SecurityGroup", name: "EC2SecurityGroup")
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EC2SecurityGroupList", name: "EC2SecurityGroupList")
    Ec2ImagePropertiesNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Ec2ImagePropertiesNotSupportedFault", name: "Ec2ImagePropertiesNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "Ec2ImagePropertiesNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EnableHttpEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EnableHttpEndpointRequest", name: "EnableHttpEndpointRequest")
    EnableHttpEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EnableHttpEndpointResponse", name: "EnableHttpEndpointResponse")
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.rds#EncryptionContextMap", name: "EncryptionContextMap")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Endpoint", name: "Endpoint")
    EndpointNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#EndpointNetworkType", name: "EndpointNetworkType")
    Engine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#Engine", name: "Engine", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EngineDefaults", name: "EngineDefaults")
    EngineFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#EngineFamily", name: "EngineFamily")
    EngineModeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EngineModeList", name: "EngineModeList")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Event", name: "Event")
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EventCategoriesList", name: "EventCategoriesList")
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventCategoriesMap", name: "EventCategoriesMap")
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EventCategoriesMapList", name: "EventCategoriesMapList")
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventCategoriesMessage", name: "EventCategoriesMessage")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EventList", name: "EventList")
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventSubscription", name: "EventSubscription")
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventSubscriptionQuotaExceededFault", name: "EventSubscriptionQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#EventSubscriptionsList", name: "EventSubscriptionsList")
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventSubscriptionsMessage", name: "EventSubscriptionsMessage")
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#EventsMessage", name: "EventsMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#ExceptionMessage", name: "ExceptionMessage")
    ExportSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ExportSourceType", name: "ExportSourceType")
    ExportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ExportTask", name: "ExportTask")
    ExportTaskAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ExportTaskAlreadyExistsFault", name: "ExportTaskAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ExportTaskAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ExportTaskNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ExportTaskNotFoundFault", name: "ExportTaskNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ExportTaskNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ExportTasksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ExportTasksList", name: "ExportTasksList")
    ExportTasksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ExportTasksMessage", name: "ExportTasksMessage")
    FailoverDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#FailoverDBClusterMessage", name: "FailoverDBClusterMessage")
    FailoverDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#FailoverDBClusterResult", name: "FailoverDBClusterResult")
    FailoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#FailoverGlobalClusterMessage", name: "FailoverGlobalClusterMessage")
    FailoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#FailoverGlobalClusterResult", name: "FailoverGlobalClusterResult")
    FailoverState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#FailoverState", name: "FailoverState")
    FailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#FailoverStatus", name: "FailoverStatus")
    FeatureNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#FeatureNameList", name: "FeatureNameList")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#FilterList", name: "FilterList")
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#FilterValueList", name: "FilterValueList")
    GlobalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalCluster", name: "GlobalCluster")
    GlobalClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalClusterAlreadyExistsFault", name: "GlobalClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#GlobalClusterIdentifier", name: "GlobalClusterIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    GlobalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#GlobalClusterList", name: "GlobalClusterList")
    GlobalClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalClusterMember", name: "GlobalClusterMember")
    GlobalClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#GlobalClusterMemberList", name: "GlobalClusterMemberList")
    GlobalClusterMemberSynchronizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#GlobalClusterMemberSynchronizationStatus", name: "GlobalClusterMemberSynchronizationStatus")
    GlobalClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalClusterNotFoundFault", name: "GlobalClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GlobalClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalClusterQuotaExceededFault", name: "GlobalClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#GlobalClustersMessage", name: "GlobalClustersMessage")
    IAMAuthMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#IAMAuthMode", name: "IAMAuthMode")
    IPRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IPRange", name: "IPRange")
    IPRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#IPRangeList", name: "IPRangeList")
    IamRoleMissingPermissionsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IamRoleMissingPermissionsFault", name: "IamRoleMissingPermissionsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IamRoleMissingPermissions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IamRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IamRoleNotFoundFault", name: "IamRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IamRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InstanceQuotaExceededFault", name: "InstanceQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientAvailableIPsInSubnetFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InsufficientAvailableIPsInSubnetFault", name: "InsufficientAvailableIPsInSubnetFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientAvailableIPsInSubnetFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InsufficientDBClusterCapacityFault", name: "InsufficientDBClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBClusterCapacityFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientDBInstanceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InsufficientDBInstanceCapacityFault", name: "InsufficientDBInstanceCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBInstanceCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientStorageClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InsufficientStorageClusterCapacityFault", name: "InsufficientStorageClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientStorageClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#Integer", name: "Integer")
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#IntegerOptional", name: "IntegerOptional")
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Integration", name: "Integration")
    IntegrationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IntegrationAlreadyExistsFault", name: "IntegrationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#IntegrationArn", name: "IntegrationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:rds(-[a-z]*)?:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntegrationConflictOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IntegrationConflictOperationFault", name: "IntegrationConflictOperationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#IntegrationDescription", name: "IntegrationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => ".*"})
    IntegrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IntegrationError", name: "IntegrationError")
    IntegrationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#IntegrationErrorList", name: "IntegrationErrorList")
    IntegrationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#IntegrationIdentifier", name: "IntegrationIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-\\/]+$"})
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#IntegrationList", name: "IntegrationList")
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#IntegrationName", name: "IntegrationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z](?:-?[a-zA-Z0-9]+)*$"})
    IntegrationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IntegrationNotFoundFault", name: "IntegrationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IntegrationQuotaExceededFault", name: "IntegrationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#IntegrationStatus", name: "IntegrationStatus")
    InvalidBlueGreenDeploymentStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidBlueGreenDeploymentStateFault", name: "InvalidBlueGreenDeploymentStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidBlueGreenDeploymentStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCustomDBEngineVersionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidCustomDBEngineVersionStateFault", name: "InvalidCustomDBEngineVersionStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCustomDBEngineVersionStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterAutomatedBackupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBClusterAutomatedBackupStateFault", name: "InvalidDBClusterAutomatedBackupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterAutomatedBackupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBClusterCapacityFault", name: "InvalidDBClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterCapacityFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBClusterEndpointStateFault", name: "InvalidDBClusterEndpointStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterEndpointStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBClusterSnapshotStateFault", name: "InvalidDBClusterSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBClusterStateFault", name: "InvalidDBClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceAutomatedBackupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBInstanceAutomatedBackupStateFault", name: "InvalidDBInstanceAutomatedBackupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceAutomatedBackupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBInstanceStateFault", name: "InvalidDBInstanceStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBParameterGroupStateFault", name: "InvalidDBParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBProxyEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBProxyEndpointStateFault", name: "InvalidDBProxyEndpointStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBProxyEndpointStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBProxyStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBProxyStateFault", name: "InvalidDBProxyStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBProxyStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBSecurityGroupStateFault", name: "InvalidDBSecurityGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBShardGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBShardGroupStateFault", name: "InvalidDBShardGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBShardGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBSnapshotStateFault", name: "InvalidDBSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBSubnetGroupFault", name: "InvalidDBSubnetGroupFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBSubnetGroupStateFault", name: "InvalidDBSubnetGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidDBSubnetStateFault", name: "InvalidDBSubnetStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidEventSubscriptionStateFault", name: "InvalidEventSubscriptionStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSubscriptionState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportOnlyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidExportOnlyFault", name: "InvalidExportOnlyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportOnly", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportSourceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidExportSourceStateFault", name: "InvalidExportSourceStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportSourceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidExportTaskStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidExportTaskStateFault", name: "InvalidExportTaskStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidExportTaskStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGlobalClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidGlobalClusterStateFault", name: "InvalidGlobalClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidIntegrationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidIntegrationStateFault", name: "InvalidIntegrationStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidIntegrationStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidOptionGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidOptionGroupStateFault", name: "InvalidOptionGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidOptionGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidResourceStateFault", name: "InvalidResourceStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidRestoreFault", name: "InvalidRestoreFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestoreFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidS3BucketFault", name: "InvalidS3BucketFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#IssueDetails", name: "IssueDetails")
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#KMSKeyNotAccessibleFault", name: "KMSKeyNotAccessibleFault", traits: {"aws.protocols#awsQueryError" => {"code" => "KMSKeyNotAccessibleFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#KeyList", name: "KeyList")
    KmsKeyIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#KmsKeyIdOrArn", name: "KmsKeyIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9_:\\-\\/]+$"})
    LifecycleSupportName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#LifecycleSupportName", name: "LifecycleSupportName")
    LimitlessDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#LimitlessDatabase", name: "LimitlessDatabase")
    LimitlessDatabaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#LimitlessDatabaseStatus", name: "LimitlessDatabaseStatus")
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ListTagsForResourceMessage", name: "ListTagsForResourceMessage")
    LocalWriteForwardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#LocalWriteForwardingStatus", name: "LocalWriteForwardingStatus")
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#LogTypeList", name: "LogTypeList")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#Long", name: "Long")
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#LongOptional", name: "LongOptional")
    MajorEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#MajorEngineVersion", name: "MajorEngineVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#Marker", name: "Marker", traits: {"smithy.api#length" => {"min" => 1, "max" => 340}})
    MasterUserAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#MasterUserAuthenticationType", name: "MasterUserAuthenticationType")
    MasterUserSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#MasterUserSecret", name: "MasterUserSecret")
    MaxDBShardGroupLimitReached = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#MaxDBShardGroupLimitReached", name: "MaxDBShardGroupLimitReached", traits: {"aws.protocols#awsQueryError" => {"code" => "MaxDBShardGroupLimitReached", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#MaxRecords", name: "MaxRecords", traits: {"smithy.api#range" => {"min" => 20, "max" => 100}})
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Metric", name: "Metric")
    MetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#MetricList", name: "MetricList")
    MetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#MetricQuery", name: "MetricQuery")
    MetricReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#MetricReference", name: "MetricReference")
    MetricReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#MetricReferenceList", name: "MetricReferenceList")
    MinimumEngineVersionPerAllowedValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#MinimumEngineVersionPerAllowedValue", name: "MinimumEngineVersionPerAllowedValue")
    MinimumEngineVersionPerAllowedValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#MinimumEngineVersionPerAllowedValueList", name: "MinimumEngineVersionPerAllowedValueList")
    ModifyActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyActivityStreamRequest", name: "ModifyActivityStreamRequest")
    ModifyActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyActivityStreamResponse", name: "ModifyActivityStreamResponse")
    ModifyCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCertificatesMessage", name: "ModifyCertificatesMessage")
    ModifyCertificatesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCertificatesResult", name: "ModifyCertificatesResult")
    ModifyCurrentDBClusterCapacityMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCurrentDBClusterCapacityMessage", name: "ModifyCurrentDBClusterCapacityMessage")
    ModifyCurrentDBClusterCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCurrentDBClusterCapacityOutput", name: "ModifyCurrentDBClusterCapacityOutput")
    ModifyCustomDBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCustomDBEngineVersionMessage", name: "ModifyCustomDBEngineVersionMessage")
    ModifyCustomDBEngineVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyCustomDBEngineVersionOutput", name: "ModifyCustomDBEngineVersionOutput")
    ModifyDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterEndpointMessage", name: "ModifyDBClusterEndpointMessage")
    ModifyDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterEndpointOutput", name: "ModifyDBClusterEndpointOutput")
    ModifyDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterMessage", name: "ModifyDBClusterMessage")
    ModifyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterParameterGroupMessage", name: "ModifyDBClusterParameterGroupMessage")
    ModifyDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterParameterGroupOutput", name: "ModifyDBClusterParameterGroupOutput")
    ModifyDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterResult", name: "ModifyDBClusterResult")
    ModifyDBClusterSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterSnapshotAttributeMessage", name: "ModifyDBClusterSnapshotAttributeMessage")
    ModifyDBClusterSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBClusterSnapshotAttributeResult", name: "ModifyDBClusterSnapshotAttributeResult")
    ModifyDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBInstanceMessage", name: "ModifyDBInstanceMessage")
    ModifyDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBInstanceResult", name: "ModifyDBInstanceResult")
    ModifyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBParameterGroupMessage", name: "ModifyDBParameterGroupMessage")
    ModifyDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBParameterGroupOutput", name: "ModifyDBParameterGroupOutput")
    ModifyDBProxyEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyEndpointRequest", name: "ModifyDBProxyEndpointRequest")
    ModifyDBProxyEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyEndpointResponse", name: "ModifyDBProxyEndpointResponse")
    ModifyDBProxyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyRequest", name: "ModifyDBProxyRequest")
    ModifyDBProxyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyResponse", name: "ModifyDBProxyResponse")
    ModifyDBProxyTargetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyTargetGroupRequest", name: "ModifyDBProxyTargetGroupRequest")
    ModifyDBProxyTargetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBProxyTargetGroupResponse", name: "ModifyDBProxyTargetGroupResponse")
    ModifyDBRecommendationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBRecommendationMessage", name: "ModifyDBRecommendationMessage")
    ModifyDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBShardGroupMessage", name: "ModifyDBShardGroupMessage")
    ModifyDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBShardGroupOutput", name: "ModifyDBShardGroupOutput")
    ModifyDBSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSnapshotAttributeMessage", name: "ModifyDBSnapshotAttributeMessage")
    ModifyDBSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSnapshotAttributeResult", name: "ModifyDBSnapshotAttributeResult")
    ModifyDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSnapshotMessage", name: "ModifyDBSnapshotMessage")
    ModifyDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSnapshotResult", name: "ModifyDBSnapshotResult")
    ModifyDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSubnetGroupMessage", name: "ModifyDBSubnetGroupMessage")
    ModifyDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyDBSubnetGroupResult", name: "ModifyDBSubnetGroupResult")
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyEventSubscriptionMessage", name: "ModifyEventSubscriptionMessage")
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyEventSubscriptionResult", name: "ModifyEventSubscriptionResult")
    ModifyGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyGlobalClusterMessage", name: "ModifyGlobalClusterMessage")
    ModifyGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyGlobalClusterResult", name: "ModifyGlobalClusterResult")
    ModifyIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyIntegrationMessage", name: "ModifyIntegrationMessage")
    ModifyIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyIntegrationOutput", name: "ModifyIntegrationOutput")
    ModifyOptionGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyOptionGroupMessage", name: "ModifyOptionGroupMessage")
    ModifyOptionGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyOptionGroupResult", name: "ModifyOptionGroupResult")
    ModifyTenantDatabaseMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyTenantDatabaseMessage", name: "ModifyTenantDatabaseMessage")
    ModifyTenantDatabaseResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ModifyTenantDatabaseResult", name: "ModifyTenantDatabaseResult")
    NetworkTypeNotSupported = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#NetworkTypeNotSupported", name: "NetworkTypeNotSupported", traits: {"aws.protocols#awsQueryError" => {"code" => "NetworkTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Option = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Option", name: "Option")
    OptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionConfiguration", name: "OptionConfiguration")
    OptionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionConfigurationList", name: "OptionConfigurationList")
    OptionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroup", name: "OptionGroup")
    OptionGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupAlreadyExistsFault", name: "OptionGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptionGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupMembership", name: "OptionGroupMembership")
    OptionGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionGroupMembershipList", name: "OptionGroupMembershipList")
    OptionGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupNotFoundFault", name: "OptionGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OptionGroupOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupOption", name: "OptionGroupOption")
    OptionGroupOptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupOptionSetting", name: "OptionGroupOptionSetting")
    OptionGroupOptionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionGroupOptionSettingsList", name: "OptionGroupOptionSettingsList")
    OptionGroupOptionVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionGroupOptionVersionsList", name: "OptionGroupOptionVersionsList")
    OptionGroupOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionGroupOptionsList", name: "OptionGroupOptionsList")
    OptionGroupOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupOptionsMessage", name: "OptionGroupOptionsMessage")
    OptionGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionGroupQuotaExceededFault", name: "OptionGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OptionGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionGroupsList", name: "OptionGroupsList")
    OptionNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionNamesList", name: "OptionNamesList")
    OptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionSetting", name: "OptionSetting")
    OptionSettingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionSettingConfigurationList", name: "OptionSettingConfigurationList")
    OptionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionSettingsList", name: "OptionSettingsList")
    OptionVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OptionVersion", name: "OptionVersion")
    OptionsConflictsWith = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionsConflictsWith", name: "OptionsConflictsWith")
    OptionsDependedOn = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionsDependedOn", name: "OptionsDependedOn")
    OptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OptionsList", name: "OptionsList")
    OrderableDBInstanceOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OrderableDBInstanceOption", name: "OrderableDBInstanceOption")
    OrderableDBInstanceOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#OrderableDBInstanceOptionsList", name: "OrderableDBInstanceOptionsList")
    OrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#OrderableDBInstanceOptionsMessage", name: "OrderableDBInstanceOptionsMessage")
    Outpost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Outpost", name: "Outpost")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Parameter", name: "Parameter")
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ParametersList", name: "ParametersList")
    PendingCloudwatchLogsExports = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PendingCloudwatchLogsExports", name: "PendingCloudwatchLogsExports")
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PendingMaintenanceAction", name: "PendingMaintenanceAction")
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#PendingMaintenanceActionDetails", name: "PendingMaintenanceActionDetails")
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#PendingMaintenanceActions", name: "PendingMaintenanceActions")
    PendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PendingMaintenanceActionsMessage", name: "PendingMaintenanceActionsMessage")
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PendingModifiedValues", name: "PendingModifiedValues")
    PerformanceInsightsMetricDimensionGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PerformanceInsightsMetricDimensionGroup", name: "PerformanceInsightsMetricDimensionGroup")
    PerformanceInsightsMetricQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PerformanceInsightsMetricQuery", name: "PerformanceInsightsMetricQuery")
    PerformanceIssueDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PerformanceIssueDetails", name: "PerformanceIssueDetails")
    PointInTimeRestoreNotEnabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PointInTimeRestoreNotEnabledFault", name: "PointInTimeRestoreNotEnabledFault", traits: {"aws.protocols#awsQueryError" => {"code" => "PointInTimeRestoreNotEnabled", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PotentiallySensitiveOptionSettingValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#PotentiallySensitiveOptionSettingValue", name: "PotentiallySensitiveOptionSettingValue", traits: {"smithy.api#sensitive" => {}})
    PotentiallySensitiveParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#PotentiallySensitiveParameterValue", name: "PotentiallySensitiveParameterValue")
    ProcessorFeature = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ProcessorFeature", name: "ProcessorFeature")
    ProcessorFeatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ProcessorFeatureList", name: "ProcessorFeatureList")
    PromoteReadReplicaDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PromoteReadReplicaDBClusterMessage", name: "PromoteReadReplicaDBClusterMessage")
    PromoteReadReplicaDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PromoteReadReplicaDBClusterResult", name: "PromoteReadReplicaDBClusterResult")
    PromoteReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PromoteReadReplicaMessage", name: "PromoteReadReplicaMessage")
    PromoteReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PromoteReadReplicaResult", name: "PromoteReadReplicaResult")
    ProvisionedIopsNotAvailableInAZFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ProvisionedIopsNotAvailableInAZFault", name: "ProvisionedIopsNotAvailableInAZFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ProvisionedIopsNotAvailableInAZFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PurchaseReservedDBInstancesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PurchaseReservedDBInstancesOfferingMessage", name: "PurchaseReservedDBInstancesOfferingMessage")
    PurchaseReservedDBInstancesOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#PurchaseReservedDBInstancesOfferingResult", name: "PurchaseReservedDBInstancesOfferingResult")
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Range", name: "Range")
    RangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#RangeList", name: "RangeList")
    RdsCustomClusterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RdsCustomClusterConfiguration", name: "RdsCustomClusterConfiguration")
    ReadReplicaDBClusterIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReadReplicaDBClusterIdentifierList", name: "ReadReplicaDBClusterIdentifierList")
    ReadReplicaDBInstanceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReadReplicaDBInstanceIdentifierList", name: "ReadReplicaDBInstanceIdentifierList")
    ReadReplicaIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReadReplicaIdentifierList", name: "ReadReplicaIdentifierList")
    ReadersArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReadersArnList", name: "ReadersArnList")
    RebootDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBClusterMessage", name: "RebootDBClusterMessage")
    RebootDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBClusterResult", name: "RebootDBClusterResult")
    RebootDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBInstanceMessage", name: "RebootDBInstanceMessage")
    RebootDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBInstanceResult", name: "RebootDBInstanceResult")
    RebootDBShardGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBShardGroupMessage", name: "RebootDBShardGroupMessage")
    RebootDBShardGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RebootDBShardGroupOutput", name: "RebootDBShardGroupOutput")
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RecommendedAction", name: "RecommendedAction")
    RecommendedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#RecommendedActionList", name: "RecommendedActionList")
    RecommendedActionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RecommendedActionParameter", name: "RecommendedActionParameter")
    RecommendedActionParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#RecommendedActionParameterList", name: "RecommendedActionParameterList")
    RecommendedActionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RecommendedActionUpdate", name: "RecommendedActionUpdate")
    RecommendedActionUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#RecommendedActionUpdateList", name: "RecommendedActionUpdateList")
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RecurringCharge", name: "RecurringCharge")
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#RecurringChargeList", name: "RecurringChargeList")
    ReferenceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReferenceDetails", name: "ReferenceDetails")
    RegisterDBProxyTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RegisterDBProxyTargetsRequest", name: "RegisterDBProxyTargetsRequest")
    RegisterDBProxyTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RegisterDBProxyTargetsResponse", name: "RegisterDBProxyTargetsResponse")
    RemoveFromGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveFromGlobalClusterMessage", name: "RemoveFromGlobalClusterMessage")
    RemoveFromGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveFromGlobalClusterResult", name: "RemoveFromGlobalClusterResult")
    RemoveRoleFromDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveRoleFromDBClusterMessage", name: "RemoveRoleFromDBClusterMessage")
    RemoveRoleFromDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveRoleFromDBInstanceMessage", name: "RemoveRoleFromDBInstanceMessage")
    RemoveSourceIdentifierFromSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveSourceIdentifierFromSubscriptionMessage", name: "RemoveSourceIdentifierFromSubscriptionMessage")
    RemoveSourceIdentifierFromSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveSourceIdentifierFromSubscriptionResult", name: "RemoveSourceIdentifierFromSubscriptionResult")
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RemoveTagsFromResourceMessage", name: "RemoveTagsFromResourceMessage")
    ReplicaMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#ReplicaMode", name: "ReplicaMode")
    ReservedDBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstance", name: "ReservedDBInstance")
    ReservedDBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstanceAlreadyExistsFault", name: "ReservedDBInstanceAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedDBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReservedDBInstanceList", name: "ReservedDBInstanceList")
    ReservedDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstanceMessage", name: "ReservedDBInstanceMessage")
    ReservedDBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstanceNotFoundFault", name: "ReservedDBInstanceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedDBInstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstanceQuotaExceededFault", name: "ReservedDBInstanceQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedDBInstancesOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstancesOffering", name: "ReservedDBInstancesOffering")
    ReservedDBInstancesOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ReservedDBInstancesOfferingList", name: "ReservedDBInstancesOfferingList")
    ReservedDBInstancesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstancesOfferingMessage", name: "ReservedDBInstancesOfferingMessage")
    ReservedDBInstancesOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ReservedDBInstancesOfferingNotFoundFault", name: "ReservedDBInstancesOfferingNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedDBInstancesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResetDBClusterParameterGroupMessage", name: "ResetDBClusterParameterGroupMessage")
    ResetDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResetDBClusterParameterGroupOutput", name: "ResetDBClusterParameterGroupOutput")
    ResetDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResetDBParameterGroupMessage", name: "ResetDBParameterGroupMessage")
    ResetDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResetDBParameterGroupOutput", name: "ResetDBParameterGroupOutput")
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResourceNotFoundFault", name: "ResourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ResourcePendingMaintenanceActions", name: "ResourcePendingMaintenanceActions")
    RestoreDBClusterFromS3Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterFromS3Message", name: "RestoreDBClusterFromS3Message")
    RestoreDBClusterFromS3Result = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterFromS3Result", name: "RestoreDBClusterFromS3Result")
    RestoreDBClusterFromSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterFromSnapshotMessage", name: "RestoreDBClusterFromSnapshotMessage")
    RestoreDBClusterFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterFromSnapshotResult", name: "RestoreDBClusterFromSnapshotResult")
    RestoreDBClusterToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterToPointInTimeMessage", name: "RestoreDBClusterToPointInTimeMessage")
    RestoreDBClusterToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBClusterToPointInTimeResult", name: "RestoreDBClusterToPointInTimeResult")
    RestoreDBInstanceFromDBSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceFromDBSnapshotMessage", name: "RestoreDBInstanceFromDBSnapshotMessage")
    RestoreDBInstanceFromDBSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceFromDBSnapshotResult", name: "RestoreDBInstanceFromDBSnapshotResult")
    RestoreDBInstanceFromS3Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceFromS3Message", name: "RestoreDBInstanceFromS3Message")
    RestoreDBInstanceFromS3Result = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceFromS3Result", name: "RestoreDBInstanceFromS3Result")
    RestoreDBInstanceToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceToPointInTimeMessage", name: "RestoreDBInstanceToPointInTimeMessage")
    RestoreDBInstanceToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreDBInstanceToPointInTimeResult", name: "RestoreDBInstanceToPointInTimeResult")
    RestoreWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RestoreWindow", name: "RestoreWindow")
    RevokeDBSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RevokeDBSecurityGroupIngressMessage", name: "RevokeDBSecurityGroupIngressMessage")
    RevokeDBSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#RevokeDBSecurityGroupIngressResult", name: "RevokeDBSecurityGroupIngressResult")
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SNSInvalidTopicFault", name: "SNSInvalidTopicFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SNSNoAuthorizationFault", name: "SNSNoAuthorizationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SNSTopicArnNotFoundFault", name: "SNSTopicArnNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScalarReferenceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ScalarReferenceDetails", name: "ScalarReferenceDetails")
    ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ScalingConfiguration", name: "ScalingConfiguration")
    ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ScalingConfigurationInfo", name: "ScalingConfigurationInfo")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerlessV2FeaturesSupport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ServerlessV2FeaturesSupport", name: "ServerlessV2FeaturesSupport")
    ServerlessV2ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ServerlessV2ScalingConfiguration", name: "ServerlessV2ScalingConfiguration")
    ServerlessV2ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ServerlessV2ScalingConfigurationInfo", name: "ServerlessV2ScalingConfigurationInfo")
    SharedSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SharedSnapshotQuotaExceededFault", name: "SharedSnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SharedSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SnapshotQuotaExceededFault", name: "SnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#SourceArn", name: "SourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:rds(-[a-z]*)?:[a-z0-9\\-]*:[0-9]*:(cluster|db):[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    SourceClusterNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SourceClusterNotSupportedFault", name: "SourceClusterNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SourceClusterNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceDatabaseNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SourceDatabaseNotSupportedFault", name: "SourceDatabaseNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SourceDatabaseNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SourceIdsList", name: "SourceIdsList")
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SourceNotFoundFault", name: "SourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceRegion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SourceRegion", name: "SourceRegion")
    SourceRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SourceRegionList", name: "SourceRegionList")
    SourceRegionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SourceRegionMessage", name: "SourceRegionMessage")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#SourceType", name: "SourceType")
    StartActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartActivityStreamRequest", name: "StartActivityStreamRequest")
    StartActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartActivityStreamResponse", name: "StartActivityStreamResponse")
    StartDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBClusterMessage", name: "StartDBClusterMessage")
    StartDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBClusterResult", name: "StartDBClusterResult")
    StartDBInstanceAutomatedBackupsReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplicationMessage", name: "StartDBInstanceAutomatedBackupsReplicationMessage")
    StartDBInstanceAutomatedBackupsReplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplicationResult", name: "StartDBInstanceAutomatedBackupsReplicationResult")
    StartDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBInstanceMessage", name: "StartDBInstanceMessage")
    StartDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartDBInstanceResult", name: "StartDBInstanceResult")
    StartExportTaskMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartExportTaskMessage", name: "StartExportTaskMessage")
    StartExportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StartExportTaskOutput", name: "StartExportTaskOutput")
    StopActivityStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopActivityStreamRequest", name: "StopActivityStreamRequest")
    StopActivityStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopActivityStreamResponse", name: "StopActivityStreamResponse")
    StopDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBClusterMessage", name: "StopDBClusterMessage")
    StopDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBClusterResult", name: "StopDBClusterResult")
    StopDBInstanceAutomatedBackupsReplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplicationMessage", name: "StopDBInstanceAutomatedBackupsReplicationMessage")
    StopDBInstanceAutomatedBackupsReplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplicationResult", name: "StopDBInstanceAutomatedBackupsReplicationResult")
    StopDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBInstanceMessage", name: "StopDBInstanceMessage")
    StopDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StopDBInstanceResult", name: "StopDBInstanceResult")
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StorageQuotaExceededFault", name: "StorageQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "StorageQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotAvailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StorageTypeNotAvailableFault", name: "StorageTypeNotAvailableFault", traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#StorageTypeNotSupportedFault", name: "StorageTypeNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#String", name: "String")
    String255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#String255", name: "String255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#StringList", name: "StringList")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Subnet", name: "Subnet")
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SubnetAlreadyInUse", name: "SubnetAlreadyInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SubnetList", name: "SubnetList")
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SubscriptionAlreadyExistFault", name: "SubscriptionAlreadyExistFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SubscriptionCategoryNotFoundFault", name: "SubscriptionCategoryNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SubscriptionNotFoundFault", name: "SubscriptionNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedCharacterSetsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SupportedCharacterSetsList", name: "SupportedCharacterSetsList")
    SupportedEngineLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SupportedEngineLifecycle", name: "SupportedEngineLifecycle")
    SupportedEngineLifecycleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SupportedEngineLifecycleList", name: "SupportedEngineLifecycleList")
    SupportedTimezonesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SupportedTimezonesList", name: "SupportedTimezonesList")
    SwitchoverBlueGreenDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverBlueGreenDeploymentRequest", name: "SwitchoverBlueGreenDeploymentRequest")
    SwitchoverBlueGreenDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverBlueGreenDeploymentResponse", name: "SwitchoverBlueGreenDeploymentResponse")
    SwitchoverDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverDetail", name: "SwitchoverDetail")
    SwitchoverDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#SwitchoverDetailList", name: "SwitchoverDetailList")
    SwitchoverDetailStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#SwitchoverDetailStatus", name: "SwitchoverDetailStatus")
    SwitchoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverGlobalClusterMessage", name: "SwitchoverGlobalClusterMessage")
    SwitchoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverGlobalClusterResult", name: "SwitchoverGlobalClusterResult")
    SwitchoverReadReplicaMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverReadReplicaMessage", name: "SwitchoverReadReplicaMessage")
    SwitchoverReadReplicaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#SwitchoverReadReplicaResult", name: "SwitchoverReadReplicaResult")
    SwitchoverTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.rds#SwitchoverTimeout", name: "SwitchoverTimeout", traits: {"smithy.api#range" => {"min" => 30}})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.rds#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#TagList", name: "TagList")
    TagListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TagListMessage", name: "TagListMessage")
    TargetConnectionNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#TargetConnectionNetworkType", name: "TargetConnectionNetworkType")
    TargetDBClusterParameterGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#TargetDBClusterParameterGroupName", name: "TargetDBClusterParameterGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z](?!.*--)[0-9A-Za-z-]*[^-]|^default(?!.*--)(?!.*\\.\\.)[0-9A-Za-z-.]*[^-]$"})
    TargetDBInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#TargetDBInstanceClass", name: "TargetDBInstanceClass", traits: {"smithy.api#length" => {"min" => 5, "max" => 20}, "smithy.api#pattern" => "^db\\.[0-9a-z]{2,6}\\.[0-9a-z]{4,9}$"})
    TargetDBParameterGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#TargetDBParameterGroupName", name: "TargetDBParameterGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z](?!.*--)[0-9A-Za-z-]*[^-]|^default(?!.*--)(?!.*\\.\\.)[0-9A-Za-z-.]*[^-]$"})
    TargetEngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#TargetEngineVersion", name: "TargetEngineVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9A-Za-z-_.]+$"})
    TargetGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#TargetGroupList", name: "TargetGroupList")
    TargetHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TargetHealth", name: "TargetHealth")
    TargetHealthReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#TargetHealthReason", name: "TargetHealthReason")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#TargetList", name: "TargetList")
    TargetRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#TargetRole", name: "TargetRole")
    TargetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#TargetState", name: "TargetState")
    TargetStorageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.rds#TargetStorageType", name: "TargetStorageType")
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#TargetType", name: "TargetType")
    TenantDatabase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabase", name: "TenantDatabase")
    TenantDatabaseAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabaseAlreadyExistsFault", name: "TenantDatabaseAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TenantDatabaseNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabaseNotFoundFault", name: "TenantDatabaseNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TenantDatabasePendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabasePendingModifiedValues", name: "TenantDatabasePendingModifiedValues")
    TenantDatabaseQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabaseQuotaExceededFault", name: "TenantDatabaseQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TenantDatabaseQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TenantDatabasesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#TenantDatabasesList", name: "TenantDatabasesList")
    TenantDatabasesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#TenantDatabasesMessage", name: "TenantDatabasesMessage")
    Timezone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#Timezone", name: "Timezone")
    UnsupportedDBEngineVersionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#UnsupportedDBEngineVersionFault", name: "UnsupportedDBEngineVersionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedDBEngineVersion", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpgradeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#UpgradeTarget", name: "UpgradeTarget")
    UserAuthConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#UserAuthConfig", name: "UserAuthConfig")
    UserAuthConfigInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#UserAuthConfigInfo", name: "UserAuthConfigInfo")
    UserAuthConfigInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#UserAuthConfigInfoList", name: "UserAuthConfigInfoList")
    UserAuthConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#UserAuthConfigList", name: "UserAuthConfigList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ValidDBInstanceModificationsMessage", name: "ValidDBInstanceModificationsMessage")
    ValidStorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#ValidStorageOptions", name: "ValidStorageOptions")
    ValidStorageOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ValidStorageOptionsList", name: "ValidStorageOptionsList")
    ValidUpgradeTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#ValidUpgradeTargetList", name: "ValidUpgradeTargetList")
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList")
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.rds#VpcSecurityGroupMembership", name: "VpcSecurityGroupMembership")
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.rds#VpcSecurityGroupMembershipList", name: "VpcSecurityGroupMembershipList")
    WriteForwardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.rds#WriteForwardingStatus", name: "WriteForwardingStatus")

    AccountAttributesMessage.add_member(:account_quotas, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountQuotaList, name: "AccountQuotas"))
    AccountAttributesMessage.type = Types::AccountAttributesMessage
    AccountQuota.add_member(:account_quota_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountQuotaName"))
    AccountQuota.add_member(:used, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Used"))
    AccountQuota.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Max"))
    AccountQuota.type = Types::AccountQuota
    AccountQuotaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountQuota, name: "member", traits: {"smithy.api#xmlName" => "AccountQuota"}))
    ActivityStreamMode.add_member(:sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sync", traits: {"smithy.api#enumValue" => "sync"}))
    ActivityStreamMode.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "async", traits: {"smithy.api#enumValue" => "async"}))
    ActivityStreamModeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ActivityStreamPolicyStatus.add_member(:locked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "locked", traits: {"smithy.api#enumValue" => "locked"}))
    ActivityStreamPolicyStatus.add_member(:unlocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unlocked", traits: {"smithy.api#enumValue" => "unlocked"}))
    ActivityStreamPolicyStatus.add_member(:locking_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "locking_policy", traits: {"smithy.api#enumValue" => "locking-policy"}))
    ActivityStreamPolicyStatus.add_member(:unlocking_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unlocking_policy", traits: {"smithy.api#enumValue" => "unlocking-policy"}))
    ActivityStreamStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopped", traits: {"smithy.api#enumValue" => "stopped"}))
    ActivityStreamStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "starting", traits: {"smithy.api#enumValue" => "starting"}))
    ActivityStreamStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "started", traits: {"smithy.api#enumValue" => "started"}))
    ActivityStreamStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "stopping", traits: {"smithy.api#enumValue" => "stopping"}))
    AddRoleToDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName"))
    AddRoleToDBClusterMessage.type = Types::AddRoleToDBClusterMessage
    AddRoleToDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBInstanceMessage.type = Types::AddRoleToDBInstanceMessage
    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.type = Types::AddSourceIdentifierToSubscriptionMessage
    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    AddSourceIdentifierToSubscriptionResult.type = Types::AddSourceIdentifierToSubscriptionResult
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    ApplyMethod.add_member(:immediate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "immediate", traits: {"smithy.api#enumValue" => "immediate"}))
    ApplyMethod.add_member(:pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "pending_reboot", traits: {"smithy.api#enumValue" => "pending-reboot"}))
    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResult.type = Types::ApplyPendingMaintenanceActionResult
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AttributeValue"}))
    AuditPolicyState.add_member(:locked_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCKED_POLICY", traits: {"smithy.api#enumValue" => "locked"}))
    AuditPolicyState.add_member(:unlocked_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNLOCKED_POLICY", traits: {"smithy.api#enumValue" => "unlocked"}))
    AuthScheme.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS", traits: {"smithy.api#enumValue" => "SECRETS"}))
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationQuotaExceededFault.type = Types::AuthorizationQuotaExceededFault
    AuthorizeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupId"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    AuthorizeDBSecurityGroupIngressMessage.type = Types::AuthorizeDBSecurityGroupIngressMessage
    AuthorizeDBSecurityGroupIngressResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroup, name: "DBSecurityGroup"))
    AuthorizeDBSecurityGroupIngressResult.type = Types::AuthorizeDBSecurityGroupIngressResult
    AutomationMode.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "full"}))
    AutomationMode.add_member(:all_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_PAUSED", traits: {"smithy.api#enumValue" => "all-paused"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    AvailabilityZones.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    AvailableProcessorFeature.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailableProcessorFeature.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultValue"))
    AvailableProcessorFeature.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    AvailableProcessorFeature.type = Types::AvailableProcessorFeature
    AvailableProcessorFeatureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableProcessorFeature, name: "member", traits: {"smithy.api#xmlName" => "AvailableProcessorFeature"}))
    BacktrackDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BacktrackDBClusterMessage.add_member(:backtrack_to, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackTo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BacktrackDBClusterMessage.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Force"))
    BacktrackDBClusterMessage.add_member(:use_earliest_time_on_point_in_time_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseEarliestTimeOnPointInTimeUnavailable"))
    BacktrackDBClusterMessage.type = Types::BacktrackDBClusterMessage
    BacktrackDBClusterOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    BacktrackDBClusterOutput.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BacktrackIdentifier"))
    BacktrackDBClusterOutput.add_member(:backtrack_to, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackTo"))
    BacktrackDBClusterOutput.add_member(:backtracked_from, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackedFrom"))
    BacktrackDBClusterOutput.add_member(:backtrack_request_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackRequestCreationTime"))
    BacktrackDBClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    BacktrackDBClusterOutput.type = Types::BacktrackDBClusterOutput
    BackupPolicyNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BackupPolicyNotFoundFault.type = Types::BackupPolicyNotFoundFault
    BlueGreenDeployment.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentIdentifier, name: "BlueGreenDeploymentIdentifier"))
    BlueGreenDeployment.add_member(:blue_green_deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentName, name: "BlueGreenDeploymentName"))
    BlueGreenDeployment.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseArn, name: "Source"))
    BlueGreenDeployment.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseArn, name: "Target"))
    BlueGreenDeployment.add_member(:switchover_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SwitchoverDetailList, name: "SwitchoverDetails"))
    BlueGreenDeployment.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentTaskList, name: "Tasks"))
    BlueGreenDeployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentStatus, name: "Status"))
    BlueGreenDeployment.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentStatusDetails, name: "StatusDetails"))
    BlueGreenDeployment.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    BlueGreenDeployment.add_member(:delete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeleteTime"))
    BlueGreenDeployment.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    BlueGreenDeployment.type = Types::BlueGreenDeployment
    BlueGreenDeploymentAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BlueGreenDeploymentAlreadyExistsFault.type = Types::BlueGreenDeploymentAlreadyExistsFault
    BlueGreenDeploymentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeployment, name: "member"))
    BlueGreenDeploymentNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BlueGreenDeploymentNotFoundFault.type = Types::BlueGreenDeploymentNotFoundFault
    BlueGreenDeploymentTask.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentTaskName, name: "Name"))
    BlueGreenDeploymentTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentTaskStatus, name: "Status"))
    BlueGreenDeploymentTask.type = Types::BlueGreenDeploymentTask
    BlueGreenDeploymentTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentTask, name: "member"))
    CACertificateIdentifiersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    CancelExportTaskMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelExportTaskMessage.type = Types::CancelExportTaskMessage
    CancelExportTaskOutput.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier"))
    CancelExportTaskOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    CancelExportTaskOutput.add_member(:export_only, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExportOnly"))
    CancelExportTaskOutput.add_member(:snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotTime"))
    CancelExportTaskOutput.add_member(:task_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskStartTime"))
    CancelExportTaskOutput.add_member(:task_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskEndTime"))
    CancelExportTaskOutput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Bucket"))
    CancelExportTaskOutput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    CancelExportTaskOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    CancelExportTaskOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CancelExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CancelExportTaskOutput.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    CancelExportTaskOutput.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalExtractedDataInGB"))
    CancelExportTaskOutput.add_member(:failure_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureCause"))
    CancelExportTaskOutput.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    CancelExportTaskOutput.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "SourceType"))
    CancelExportTaskOutput.type = Types::CancelExportTaskOutput
    Certificate.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateType"))
    Certificate.add_member(:thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Thumbprint"))
    Certificate.add_member(:valid_from, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidFrom"))
    Certificate.add_member(:valid_till, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidTill"))
    Certificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateArn"))
    Certificate.add_member(:customer_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CustomerOverride"))
    Certificate.add_member(:customer_override_valid_till, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CustomerOverrideValidTill"))
    Certificate.type = Types::Certificate
    CertificateDetails.add_member(:ca_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CAIdentifier"))
    CertificateDetails.add_member(:valid_till, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ValidTill"))
    CertificateDetails.type = Types::CertificateDetails
    CertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "member", traits: {"smithy.api#xmlName" => "Certificate"}))
    CertificateMessage.add_member(:default_certificate_for_new_launches, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultCertificateForNewLaunches"))
    CertificateMessage.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateList, name: "Certificates"))
    CertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CertificateMessage.type = Types::CertificateMessage
    CertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CertificateNotFoundFault.type = Types::CertificateNotFoundFault
    CharacterSet.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    CharacterSet.add_member(:character_set_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetDescription"))
    CharacterSet.type = Types::CharacterSet
    ClientPasswordAuthType.add_member(:mysql_native_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYSQL_NATIVE_PASSWORD", traits: {"smithy.api#enumValue" => "MYSQL_NATIVE_PASSWORD"}))
    ClientPasswordAuthType.add_member(:mysql_caching_sha2_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYSQL_CACHING_SHA2_PASSWORD", traits: {"smithy.api#enumValue" => "MYSQL_CACHING_SHA2_PASSWORD"}))
    ClientPasswordAuthType.add_member(:postgres_scram_sha_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTGRES_SCRAM_SHA_256", traits: {"smithy.api#enumValue" => "POSTGRES_SCRAM_SHA_256"}))
    ClientPasswordAuthType.add_member(:postgres_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTGRES_MD5", traits: {"smithy.api#enumValue" => "POSTGRES_MD5"}))
    ClientPasswordAuthType.add_member(:sql_server_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_SERVER_AUTHENTICATION", traits: {"smithy.api#enumValue" => "SQL_SERVER_AUTHENTICATION"}))
    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableLogTypes"))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "DisableLogTypes"))
    CloudwatchLogsExportConfiguration.type = Types::CloudwatchLogsExportConfiguration
    ClusterPendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingCloudwatchLogsExports, name: "PendingCloudwatchLogsExports"))
    ClusterPendingModifiedValues.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    ClusterPendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    ClusterPendingModifiedValues.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IAMDatabaseAuthenticationEnabled"))
    ClusterPendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ClusterPendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    ClusterPendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    ClusterPendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    ClusterPendingModifiedValues.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsCustomClusterConfiguration, name: "RdsCustomClusterConfiguration"))
    ClusterPendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    ClusterPendingModifiedValues.add_member(:certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetails, name: "CertificateDetails"))
    ClusterPendingModifiedValues.type = Types::ClusterPendingModifiedValues
    ClusterScalabilityType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    ClusterScalabilityType.add_member(:limitless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMITLESS", traits: {"smithy.api#enumValue" => "limitless"}))
    ClusterScalabilityType.add_member(:scaleout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCALEOUT", traits: {"smithy.api#enumValue" => "scaleout"}))
    ConnectionPoolConfiguration.add_member(:max_connections_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxConnectionsPercent"))
    ConnectionPoolConfiguration.add_member(:max_idle_connections_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxIdleConnectionsPercent"))
    ConnectionPoolConfiguration.add_member(:connection_borrow_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ConnectionBorrowTimeout"))
    ConnectionPoolConfiguration.add_member(:session_pinning_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SessionPinningFilters"))
    ConnectionPoolConfiguration.add_member(:init_query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InitQuery"))
    ConnectionPoolConfiguration.type = Types::ConnectionPoolConfiguration
    ConnectionPoolConfigurationInfo.add_member(:max_connections_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConnectionsPercent"))
    ConnectionPoolConfigurationInfo.add_member(:max_idle_connections_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxIdleConnectionsPercent"))
    ConnectionPoolConfigurationInfo.add_member(:connection_borrow_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ConnectionBorrowTimeout"))
    ConnectionPoolConfigurationInfo.add_member(:session_pinning_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SessionPinningFilters"))
    ConnectionPoolConfigurationInfo.add_member(:init_query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InitQuery"))
    ConnectionPoolConfigurationInfo.type = Types::ConnectionPoolConfigurationInfo
    ContextAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    ContextAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    ContextAttribute.type = Types::ContextAttribute
    ContextAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextAttribute, name: "member"))
    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterParameterGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBClusterParameterGroupMessage.type = Types::CopyDBClusterParameterGroupMessage
    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "DBClusterParameterGroup"))
    CopyDBClusterParameterGroupResult.type = Types::CopyDBClusterParameterGroupResult
    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBClusterSnapshotMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CopyDBClusterSnapshotMessage.type = Types::CopyDBClusterSnapshotMessage
    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    CopyDBClusterSnapshotResult.type = Types::CopyDBClusterSnapshotResult
    CopyDBParameterGroupMessage.add_member(:source_db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBParameterGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBParameterGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBParameterGroupMessage.type = Types::CopyDBParameterGroupMessage
    CopyDBParameterGroupResult.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroup, name: "DBParameterGroup"))
    CopyDBParameterGroupResult.type = Types::CopyDBParameterGroupResult
    CopyDBSnapshotMessage.add_member(:source_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBSnapshotMessage.add_member(:target_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CopyDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyDBSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTags"))
    CopyDBSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PreSignedUrl"))
    CopyDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    CopyDBSnapshotMessage.add_member(:target_custom_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetCustomAvailabilityZone"))
    CopyDBSnapshotMessage.add_member(:snapshot_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotTarget"))
    CopyDBSnapshotMessage.add_member(:copy_option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyOptionGroup"))
    CopyDBSnapshotMessage.add_member(:snapshot_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotAvailabilityZone"))
    CopyDBSnapshotMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CopyDBSnapshotMessage.type = Types::CopyDBSnapshotMessage
    CopyDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshot, name: "DBSnapshot"))
    CopyDBSnapshotResult.type = Types::CopyDBSnapshotResult
    CopyOptionGroupMessage.add_member(:source_option_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceOptionGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:target_option_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetOptionGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:target_option_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetOptionGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyOptionGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyOptionGroupMessage.type = Types::CopyOptionGroupMessage
    CopyOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroup, name: "OptionGroup"))
    CopyOptionGroupResult.type = Types::CopyOptionGroupResult
    CreateBlueGreenDeploymentRequest.add_member(:blue_green_deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentName, name: "BlueGreenDeploymentName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateBlueGreenDeploymentRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseArn, name: "Source", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateBlueGreenDeploymentRequest.add_member(:target_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetEngineVersion, name: "TargetEngineVersion"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDBParameterGroupName, name: "TargetDBParameterGroupName"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDBClusterParameterGroupName, name: "TargetDBClusterParameterGroupName"))
    CreateBlueGreenDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateBlueGreenDeploymentRequest.add_member(:target_db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDBInstanceClass, name: "TargetDBInstanceClass"))
    CreateBlueGreenDeploymentRequest.add_member(:upgrade_target_storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UpgradeTargetStorageConfig"))
    CreateBlueGreenDeploymentRequest.add_member(:target_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TargetIops"))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStorageType, name: "TargetStorageType"))
    CreateBlueGreenDeploymentRequest.add_member(:target_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TargetAllocatedStorage"))
    CreateBlueGreenDeploymentRequest.add_member(:target_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TargetStorageThroughput"))
    CreateBlueGreenDeploymentRequest.type = Types::CreateBlueGreenDeploymentRequest
    CreateBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeployment, name: "BlueGreenDeployment"))
    CreateBlueGreenDeploymentResponse.type = Types::CreateBlueGreenDeploymentResponse
    CreateCustomDBEngineVersionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CreateCustomDBEngineVersionFault.type = Types::CreateCustomDBEngineVersionFault
    CreateCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineName, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineVersion, name: "EngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "DatabaseInstallationFilesS3BucketName"))
    CreateCustomDBEngineVersionMessage.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "DatabaseInstallationFilesS3Prefix"))
    CreateCustomDBEngineVersionMessage.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "ImageId"))
    CreateCustomDBEngineVersionMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdOrArn, name: "KMSKeyId"))
    CreateCustomDBEngineVersionMessage.add_member(:source_custom_db_engine_version_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "SourceCustomDbEngineVersionIdentifier"))
    CreateCustomDBEngineVersionMessage.add_member(:use_aws_provided_latest_image, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseAwsProvidedLatestImage"))
    CreateCustomDBEngineVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateCustomDBEngineVersionMessage.add_member(:manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionManifest, name: "Manifest"))
    CreateCustomDBEngineVersionMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCustomDBEngineVersionMessage.type = Types::CreateCustomDBEngineVersionMessage
    CreateCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CreateCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    CreateCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3BucketName"))
    CreateCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3Prefix"))
    CreateCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionManifest, name: "CustomDBEngineVersionManifest"))
    CreateCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineDescription"))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionArn"))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionDescription"))
    CreateCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSet, name: "DefaultCharacterSet"))
    CreateCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionAMI, name: "Image"))
    CreateCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineMediaType"))
    CreateCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    CreateCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedCharacterSets"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedNcharCharacterSets"))
    CreateCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidUpgradeTargetList, name: "ValidUpgradeTarget"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedTimezonesList, name: "SupportedTimezones"))
    CreateCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "ExportableLogTypes"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLogExportsToCloudwatchLogs"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsReadReplica"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNameList, name: "SupportedFeatureNames"))
    CreateCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsParallelQuery"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsGlobalDatabases"))
    CreateCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsBabelfish"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLimitlessDatabase"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsCertificateRotationWithoutRestart"))
    CreateCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CACertificateIdentifiersList, name: "SupportedCACertificateIdentifiers"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLocalWriteForwarding"))
    CreateCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIntegrations"))
    CreateCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2FeaturesSupport, name: "ServerlessV2FeaturesSupport"))
    CreateCustomDBEngineVersionOutput.type = Types::CreateCustomDBEngineVersionOutput
    CreateDBClusterEndpointMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    CreateDBClusterEndpointMessage.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    CreateDBClusterEndpointMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterEndpointMessage.type = Types::CreateDBClusterEndpointMessage
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointResourceIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    CreateDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CreateDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    CreateDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomEndpointType"))
    CreateDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    CreateDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointArn"))
    CreateDBClusterEndpointOutput.type = Types::CreateDBClusterEndpointOutput
    CreateDBClusterMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    CreateDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    CreateDBClusterMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    CreateDBClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    CreateDBClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateDBClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    CreateDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSourceIdentifier"))
    CreateDBClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    CreateDBClusterMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    CreateDBClusterMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfiguration, name: "ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsCustomClusterConfiguration, name: "RdsCustomClusterConfiguration"))
    CreateDBClusterMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterInstanceClass"))
    CreateDBClusterMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    CreateDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    CreateDBClusterMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    CreateDBClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateDBClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    CreateDBClusterMessage.add_member(:enable_http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableHttpEndpoint"))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    CreateDBClusterMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    CreateDBClusterMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    CreateDBClusterMessage.add_member(:enable_global_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableGlobalWriteForwarding"))
    CreateDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    CreateDBClusterMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    CreateDBClusterMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    CreateDBClusterMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    CreateDBClusterMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    CreateDBClusterMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    CreateDBClusterMessage.add_member(:enable_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableLimitlessDatabase"))
    CreateDBClusterMessage.add_member(:cluster_scalability_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterScalabilityType, name: "ClusterScalabilityType"))
    CreateDBClusterMessage.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    CreateDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    CreateDBClusterMessage.add_member(:enable_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableLocalWriteForwarding"))
    CreateDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    CreateDBClusterMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    CreateDBClusterMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    CreateDBClusterMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserAuthenticationType, name: "MasterUserAuthenticationType"))
    CreateDBClusterMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CreateDBClusterMessage.type = Types::CreateDBClusterMessage
    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterParameterGroupMessage.type = Types::CreateDBClusterParameterGroupMessage
    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "DBClusterParameterGroup"))
    CreateDBClusterParameterGroupResult.type = Types::CreateDBClusterParameterGroupResult
    CreateDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    CreateDBClusterResult.type = Types::CreateDBClusterResult
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBClusterSnapshotMessage.type = Types::CreateDBClusterSnapshotMessage
    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    CreateDBClusterSnapshotResult.type = Types::CreateDBClusterSnapshotResult
    CreateDBInstanceMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    CreateDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    CreateDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    CreateDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    CreateDBInstanceMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupNameList, name: "DBSecurityGroups"))
    CreateDBInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateDBInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateDBInstanceMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateDBInstanceMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    CreateDBInstanceMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    CreateDBInstanceMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateDBInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    CreateDBInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    CreateDBInstanceMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    CreateDBInstanceMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    CreateDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    CreateDBInstanceMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    CreateDBInstanceMessage.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NcharCharacterSetName"))
    CreateDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateDBInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    CreateDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    CreateDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "TdeCredentialPassword"))
    CreateDBInstanceMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    CreateDBInstanceMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    CreateDBInstanceMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainFqdn"))
    CreateDBInstanceMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainOu"))
    CreateDBInstanceMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainAuthSecretArn"))
    CreateDBInstanceMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DomainDnsIps"))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    CreateDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    CreateDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    CreateDBInstanceMessage.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Timezone"))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    CreateDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateDBInstanceMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    CreateDBInstanceMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCustomerOwnedIp"))
    CreateDBInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateDBInstanceMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    CreateDBInstanceMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomIamInstanceProfile"))
    CreateDBInstanceMessage.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    CreateDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    CreateDBInstanceMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    CreateDBInstanceMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    CreateDBInstanceMessage.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    CreateDBInstanceMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    CreateDBInstanceMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    CreateDBInstanceMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserAuthenticationType, name: "MasterUserAuthenticationType"))
    CreateDBInstanceMessage.type = Types::CreateDBInstanceMessage
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBInstanceIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    CreateDBInstanceReadReplicaMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateDBInstanceReadReplicaMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateDBInstanceReadReplicaMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    CreateDBInstanceReadReplicaMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceReadReplicaMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    CreateDBInstanceReadReplicaMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateDBInstanceReadReplicaMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    CreateDBInstanceReadReplicaMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    CreateDBInstanceReadReplicaMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateDBInstanceReadReplicaMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PreSignedUrl"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceReadReplicaMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceReadReplicaMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDefaultProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainFqdn"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainOu"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainAuthSecretArn"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DomainDnsIps"))
    CreateDBInstanceReadReplicaMessage.add_member(:replica_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaMode, name: "ReplicaMode"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCustomerOwnedIp"))
    CreateDBInstanceReadReplicaMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    CreateDBInstanceReadReplicaMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    CreateDBInstanceReadReplicaMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    CreateDBInstanceReadReplicaMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomIamInstanceProfile"))
    CreateDBInstanceReadReplicaMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    CreateDBInstanceReadReplicaMessage.add_member(:upgrade_storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UpgradeStorageConfig"))
    CreateDBInstanceReadReplicaMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    CreateDBInstanceReadReplicaMessage.type = Types::CreateDBInstanceReadReplicaMessage
    CreateDBInstanceReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    CreateDBInstanceReadReplicaResult.type = Types::CreateDBInstanceReadReplicaResult
    CreateDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    CreateDBInstanceResult.type = Types::CreateDBInstanceResult
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBParameterGroupMessage.type = Types::CreateDBParameterGroupMessage
    CreateDBParameterGroupResult.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroup, name: "DBParameterGroup"))
    CreateDBParameterGroupResult.type = Types::CreateDBParameterGroupResult
    CreateDBProxyEndpointRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointName, name: "DBProxyEndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyEndpointRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    CreateDBProxyEndpointRequest.add_member(:target_role, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointTargetRole, name: "TargetRole"))
    CreateDBProxyEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBProxyEndpointRequest.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkType, name: "EndpointNetworkType"))
    CreateDBProxyEndpointRequest.type = Types::CreateDBProxyEndpointRequest
    CreateDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpoint, name: "DBProxyEndpoint"))
    CreateDBProxyEndpointResponse.type = Types::CreateDBProxyEndpointResponse
    CreateDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:engine_family, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineFamily, name: "EngineFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAuthScheme, name: "DefaultAuthScheme"))
    CreateDBProxyRequest.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAuthConfigList, name: "Auth"))
    CreateDBProxyRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBProxyRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    CreateDBProxyRequest.add_member(:require_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequireTLS"))
    CreateDBProxyRequest.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "IdleClientTimeout"))
    CreateDBProxyRequest.add_member(:debug_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DebugLogging"))
    CreateDBProxyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBProxyRequest.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkType, name: "EndpointNetworkType"))
    CreateDBProxyRequest.add_member(:target_connection_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetConnectionNetworkType, name: "TargetConnectionNetworkType"))
    CreateDBProxyRequest.type = Types::CreateDBProxyRequest
    CreateDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxy, name: "DBProxy"))
    CreateDBProxyResponse.type = Types::CreateDBProxyResponse
    CreateDBSecurityGroupMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSecurityGroupMessage.add_member(:db_security_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBSecurityGroupMessage.type = Types::CreateDBSecurityGroupMessage
    CreateDBSecurityGroupResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroup, name: "DBSecurityGroup"))
    CreateDBSecurityGroupResult.type = Types::CreateDBSecurityGroupResult
    CreateDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    CreateDBShardGroupMessage.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBShardGroupMessage.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    CreateDBShardGroupMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateDBShardGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBShardGroupMessage.type = Types::CreateDBShardGroupMessage
    CreateDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupResourceId"))
    CreateDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    CreateDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    CreateDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    CreateDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    CreateDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    CreateDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CreateDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    CreateDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupArn"))
    CreateDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    CreateDBShardGroupOutput.type = Types::CreateDBShardGroupOutput
    CreateDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSnapshotMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBSnapshotMessage.type = Types::CreateDBSnapshotMessage
    CreateDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshot, name: "DBSnapshot"))
    CreateDBSnapshotResult.type = Types::CreateDBSnapshotResult
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDBSubnetGroupMessage.type = Types::CreateDBSubnetGroupMessage
    CreateDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    CreateDBSubnetGroupResult.type = Types::CreateDBSubnetGroupResult
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CreateGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateGlobalClusterMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    CreateGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    CreateGlobalClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    CreateGlobalClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateGlobalClusterMessage.type = Types::CreateGlobalClusterMessage
    CreateGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    CreateGlobalClusterResult.type = Types::CreateGlobalClusterResult
    CreateIntegrationMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TargetArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    CreateIntegrationMessage.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    CreateIntegrationMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIntegrationMessage.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    CreateIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    CreateIntegrationMessage.type = Types::CreateIntegrationMessage
    CreateIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    CreateIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TargetArn"))
    CreateIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    CreateIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    CreateIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    CreateIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    CreateIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    CreateIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    CreateIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    CreateIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    CreateIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:option_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateOptionGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOptionGroupMessage.type = Types::CreateOptionGroupMessage
    CreateOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroup, name: "OptionGroup"))
    CreateOptionGroupResult.type = Types::CreateOptionGroupResult
    CreateTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTenantDatabaseMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    CreateTenantDatabaseMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    CreateTenantDatabaseMessage.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NcharCharacterSetName"))
    CreateTenantDatabaseMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    CreateTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    CreateTenantDatabaseMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTenantDatabaseMessage.type = Types::CreateTenantDatabaseMessage
    CreateTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabase, name: "TenantDatabase"))
    CreateTenantDatabaseResult.type = Types::CreateTenantDatabaseResult
    CustomAvailabilityZoneNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomAvailabilityZoneNotFoundFault.type = Types::CustomAvailabilityZoneNotFoundFault
    CustomDBEngineVersionAMI.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageId"))
    CustomDBEngineVersionAMI.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CustomDBEngineVersionAMI.type = Types::CustomDBEngineVersionAMI
    CustomDBEngineVersionAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomDBEngineVersionAlreadyExistsFault.type = Types::CustomDBEngineVersionAlreadyExistsFault
    CustomDBEngineVersionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomDBEngineVersionNotFoundFault.type = Types::CustomDBEngineVersionNotFoundFault
    CustomDBEngineVersionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomDBEngineVersionQuotaExceededFault.type = Types::CustomDBEngineVersionQuotaExceededFault
    CustomEngineVersionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "available"}))
    CustomEngineVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "inactive", traits: {"smithy.api#enumValue" => "inactive"}))
    CustomEngineVersionStatus.add_member(:inactive_except_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "inactive_except_restore", traits: {"smithy.api#enumValue" => "inactive-except-restore"}))
    DBCluster.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    DBCluster.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DBCluster.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    DBCluster.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    DBCluster.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    DBCluster.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBCluster.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroup"))
    DBCluster.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroup"))
    DBCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentProgress"))
    DBCluster.add_member(:earliest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EarliestRestorableTime"))
    DBCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBCluster.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReaderEndpoint"))
    DBCluster.add_member(:custom_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "CustomEndpoints"))
    DBCluster.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    DBCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBCluster.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LatestRestorableTime"))
    DBCluster.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    DBCluster.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBCluster.add_member(:db_cluster_option_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterOptionGroupMemberships, name: "DBClusterOptionGroupMemberships"))
    DBCluster.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    DBCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    DBCluster.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationSourceIdentifier"))
    DBCluster.add_member(:read_replica_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadReplicaIdentifierList, name: "ReadReplicaIdentifiers"))
    DBCluster.add_member(:status_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterStatusInfoList, name: "StatusInfos"))
    DBCluster.add_member(:db_cluster_members, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterMemberList, name: "DBClusterMembers"))
    DBCluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    DBCluster.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostedZoneId"))
    DBCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBCluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBCluster.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DBCluster.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterArn"))
    DBCluster.add_member(:associated_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterRoles, name: "AssociatedRoles"))
    DBCluster.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IAMDatabaseAuthenticationEnabled"))
    DBCluster.add_member(:clone_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CloneGroupId"))
    DBCluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    DBCluster.add_member(:earliest_backtrack_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EarliestBacktrackTime"))
    DBCluster.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    DBCluster.add_member(:backtrack_consumed_change_records, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackConsumedChangeRecords"))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnabledCloudwatchLogsExports"))
    DBCluster.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Capacity"))
    DBCluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterPendingModifiedValues, name: "PendingModifiedValues"))
    DBCluster.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    DBCluster.add_member(:scaling_configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationInfo, name: "ScalingConfigurationInfo"))
    DBCluster.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsCustomClusterConfiguration, name: "RdsCustomClusterConfiguration"))
    DBCluster.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterInstanceClass"))
    DBCluster.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBCluster.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    DBCluster.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "IOOptimizedNextAllowedModificationTime"))
    DBCluster.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    DBCluster.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    DBCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    DBCluster.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "HttpEndpointEnabled"))
    DBCluster.add_member(:activity_stream_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamMode, name: "ActivityStreamMode"))
    DBCluster.add_member(:activity_stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamStatus, name: "ActivityStreamStatus"))
    DBCluster.add_member(:activity_stream_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActivityStreamKmsKeyId"))
    DBCluster.add_member(:activity_stream_kinesis_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActivityStreamKinesisStreamName"))
    DBCluster.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    DBCluster.add_member(:cross_account_clone, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CrossAccountClone"))
    DBCluster.add_member(:domain_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainMembershipList, name: "DomainMemberships"))
    DBCluster.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    DBCluster.add_member(:global_write_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteForwardingStatus, name: "GlobalWriteForwardingStatus"))
    DBCluster.add_member(:global_write_forwarding_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "GlobalWriteForwardingRequested"))
    DBCluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    DBCluster.add_member(:automatic_restart_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutomaticRestartTime"))
    DBCluster.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfigurationInfo, name: "ServerlessV2ScalingConfiguration"))
    DBCluster.add_member(:serverless_v2_platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessV2PlatformVersion"))
    DBCluster.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    DBCluster.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    DBCluster.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    DBCluster.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PerformanceInsightsEnabled"))
    DBCluster.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    DBCluster.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    DBCluster.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    DBCluster.add_member(:master_user_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserSecret, name: "MasterUserSecret"))
    DBCluster.add_member(:local_write_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalWriteForwardingStatus, name: "LocalWriteForwardingStatus"))
    DBCluster.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsBackupRecoveryPointArn"))
    DBCluster.add_member(:limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitlessDatabase, name: "LimitlessDatabase"))
    DBCluster.add_member(:cluster_scalability_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterScalabilityType, name: "ClusterScalabilityType"))
    DBCluster.add_member(:certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetails, name: "CertificateDetails"))
    DBCluster.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    DBCluster.type = Types::DBCluster
    DBClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterAlreadyExistsFault.type = Types::DBClusterAlreadyExistsFault
    DBClusterAutomatedBackup.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBClusterAutomatedBackup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBClusterAutomatedBackup.add_member(:db_cluster_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterAutomatedBackupsArn"))
    DBClusterAutomatedBackup.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBClusterAutomatedBackup.add_member(:restore_window, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreWindow, name: "RestoreWindow"))
    DBClusterAutomatedBackup.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBClusterAutomatedBackup.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DBClusterAutomatedBackup.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Region"))
    DBClusterAutomatedBackup.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DBClusterAutomatedBackup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterAutomatedBackup.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IAMDatabaseAuthenticationEnabled"))
    DBClusterAutomatedBackup.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    DBClusterAutomatedBackup.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBClusterAutomatedBackup.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage"))
    DBClusterAutomatedBackup.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBClusterAutomatedBackup.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterArn"))
    DBClusterAutomatedBackup.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    DBClusterAutomatedBackup.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    DBClusterAutomatedBackup.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DBClusterAutomatedBackup.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBClusterAutomatedBackup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBClusterAutomatedBackup.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBClusterAutomatedBackup.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    DBClusterAutomatedBackup.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBClusterAutomatedBackup.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsBackupRecoveryPointArn"))
    DBClusterAutomatedBackup.type = Types::DBClusterAutomatedBackup
    DBClusterAutomatedBackupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterAutomatedBackup, name: "member", traits: {"smithy.api#xmlName" => "DBClusterAutomatedBackup"}))
    DBClusterAutomatedBackupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterAutomatedBackupMessage.add_member(:db_cluster_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterAutomatedBackupList, name: "DBClusterAutomatedBackups"))
    DBClusterAutomatedBackupMessage.type = Types::DBClusterAutomatedBackupMessage
    DBClusterAutomatedBackupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterAutomatedBackupNotFoundFault.type = Types::DBClusterAutomatedBackupNotFoundFault
    DBClusterAutomatedBackupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterAutomatedBackupQuotaExceededFault.type = Types::DBClusterAutomatedBackupQuotaExceededFault
    DBClusterBacktrack.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBClusterBacktrack.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BacktrackIdentifier"))
    DBClusterBacktrack.add_member(:backtrack_to, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackTo"))
    DBClusterBacktrack.add_member(:backtracked_from, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackedFrom"))
    DBClusterBacktrack.add_member(:backtrack_request_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "BacktrackRequestCreationTime"))
    DBClusterBacktrack.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterBacktrack.type = Types::DBClusterBacktrack
    DBClusterBacktrackList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterBacktrack, name: "member", traits: {"smithy.api#xmlName" => "DBClusterBacktrack"}))
    DBClusterBacktrackMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterBacktrackMessage.add_member(:db_cluster_backtracks, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterBacktrackList, name: "DBClusterBacktracks"))
    DBClusterBacktrackMessage.type = Types::DBClusterBacktrackMessage
    DBClusterBacktrackNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterBacktrackNotFoundFault.type = Types::DBClusterBacktrackNotFoundFault
    DBClusterEndpoint.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointResourceIdentifier"))
    DBClusterEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBClusterEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterEndpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    DBClusterEndpoint.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomEndpointType"))
    DBClusterEndpoint.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    DBClusterEndpoint.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointArn"))
    DBClusterEndpoint.type = Types::DBClusterEndpoint
    DBClusterEndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterEndpointAlreadyExistsFault.type = Types::DBClusterEndpointAlreadyExistsFault
    DBClusterEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterEndpoint, name: "member", traits: {"smithy.api#xmlName" => "DBClusterEndpointList"}))
    DBClusterEndpointMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterEndpointMessage.add_member(:db_cluster_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterEndpointList, name: "DBClusterEndpoints"))
    DBClusterEndpointMessage.type = Types::DBClusterEndpointMessage
    DBClusterEndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterEndpointNotFoundFault.type = Types::DBClusterEndpointNotFoundFault
    DBClusterEndpointQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterEndpointQuotaExceededFault.type = Types::DBClusterEndpointQuotaExceededFault
    DBClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "member", traits: {"smithy.api#xmlName" => "DBCluster"}))
    DBClusterMember.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBClusterMember.add_member(:is_cluster_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsClusterWriter"))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupStatus"))
    DBClusterMember.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    DBClusterMember.type = Types::DBClusterMember
    DBClusterMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterMember, name: "member", traits: {"smithy.api#xmlName" => "DBClusterMember"}))
    DBClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterMessage.add_member(:db_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterList, name: "DBClusters"))
    DBClusterMessage.type = Types::DBClusterMessage
    DBClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterNotFoundFault.type = Types::DBClusterNotFoundFault
    DBClusterOptionGroupMemberships.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterOptionGroupStatus, name: "member", traits: {"smithy.api#xmlName" => "DBClusterOptionGroup"}))
    DBClusterOptionGroupStatus.add_member(:db_cluster_option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterOptionGroupName"))
    DBClusterOptionGroupStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterOptionGroupStatus.type = Types::DBClusterOptionGroupStatus
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DBClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupArn"))
    DBClusterParameterGroup.type = Types::DBClusterParameterGroup
    DBClusterParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroup, name: "member", traits: {"smithy.api#xmlName" => "DBClusterParameterGroup"}))
    DBClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterParameterGroupNotFoundFault.type = Types::DBClusterParameterGroupNotFoundFault
    DBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterParameterGroupList, name: "DBClusterParameterGroups"))
    DBClusterParameterGroupsMessage.type = Types::DBClusterParameterGroupsMessage
    DBClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterQuotaExceededFault.type = Types::DBClusterQuotaExceededFault
    DBClusterRole.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    DBClusterRole.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterRole.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName"))
    DBClusterRole.type = Types::DBClusterRole
    DBClusterRoleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterRoleAlreadyExistsFault.type = Types::DBClusterRoleAlreadyExistsFault
    DBClusterRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterRoleNotFoundFault.type = Types::DBClusterRoleNotFoundFault
    DBClusterRoleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterRoleQuotaExceededFault.type = Types::DBClusterRoleQuotaExceededFault
    DBClusterRoles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterRole, name: "member", traits: {"smithy.api#xmlName" => "DBClusterRole"}))
    DBClusterSnapshot.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshot.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBClusterSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotCreateTime"))
    DBClusterSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBClusterSnapshot.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    DBClusterSnapshot.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage"))
    DBClusterSnapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterSnapshot.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBClusterSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBClusterSnapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    DBClusterSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBClusterSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBClusterSnapshot.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DBClusterSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DBClusterSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    DBClusterSnapshot.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBClusterSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IAMDatabaseAuthenticationEnabled"))
    DBClusterSnapshot.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBClusterSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBClusterSnapshot.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBClusterSnapshot.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DBClusterSnapshot.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    DBClusterSnapshot.type = Types::DBClusterSnapshot
    DBClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterSnapshotAlreadyExistsFault.type = Types::DBClusterSnapshotAlreadyExistsFault
    DBClusterSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName"))
    DBClusterSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    DBClusterSnapshotAttribute.type = Types::DBClusterSnapshotAttribute
    DBClusterSnapshotAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttribute, name: "member", traits: {"smithy.api#xmlName" => "DBClusterSnapshotAttribute"}))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributeList, name: "DBClusterSnapshotAttributes"))
    DBClusterSnapshotAttributesResult.type = Types::DBClusterSnapshotAttributesResult
    DBClusterSnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "member", traits: {"smithy.api#xmlName" => "DBClusterSnapshot"}))
    DBClusterSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotList, name: "DBClusterSnapshots"))
    DBClusterSnapshotMessage.type = Types::DBClusterSnapshotMessage
    DBClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBClusterSnapshotNotFoundFault.type = Types::DBClusterSnapshotNotFoundFault
    DBClusterStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusType"))
    DBClusterStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Normal"))
    DBClusterStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBClusterStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DBClusterStatusInfo.type = Types::DBClusterStatusInfo
    DBClusterStatusInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterStatusInfo, name: "member", traits: {"smithy.api#xmlName" => "DBClusterStatusInfo"}))
    DBEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBEngineVersion.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    DBEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBEngineVersion.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3BucketName"))
    DBEngineVersion.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3Prefix"))
    DBEngineVersion.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionManifest, name: "CustomDBEngineVersionManifest"))
    DBEngineVersion.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionArn"))
    DBEngineVersion.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:default_character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSet, name: "DefaultCharacterSet"))
    DBEngineVersion.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionAMI, name: "Image"))
    DBEngineVersion.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineMediaType"))
    DBEngineVersion.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    DBEngineVersion.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    DBEngineVersion.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedCharacterSets"))
    DBEngineVersion.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedNcharCharacterSets"))
    DBEngineVersion.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidUpgradeTargetList, name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedTimezonesList, name: "SupportedTimezones"))
    DBEngineVersion.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsReadReplica"))
    DBEngineVersion.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    DBEngineVersion.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNameList, name: "SupportedFeatureNames"))
    DBEngineVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBEngineVersion.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsParallelQuery"))
    DBEngineVersion.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsGlobalDatabases"))
    DBEngineVersion.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBEngineVersion.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsBabelfish"))
    DBEngineVersion.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLimitlessDatabase"))
    DBEngineVersion.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsCertificateRotationWithoutRestart"))
    DBEngineVersion.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CACertificateIdentifiersList, name: "SupportedCACertificateIdentifiers"))
    DBEngineVersion.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLocalWriteForwarding"))
    DBEngineVersion.add_member(:supports_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIntegrations"))
    DBEngineVersion.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2FeaturesSupport, name: "ServerlessV2FeaturesSupport"))
    DBEngineVersion.type = Types::DBEngineVersion
    DBEngineVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBEngineVersion, name: "member", traits: {"smithy.api#xmlName" => "DBEngineVersion"}))
    DBEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBEngineVersionMessage.add_member(:db_engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: DBEngineVersionList, name: "DBEngineVersions"))
    DBEngineVersionMessage.type = Types::DBEngineVersionMessage
    DBInstance.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DBInstance.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBInstance.add_member(:db_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceStatus"))
    DBInstance.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBInstance.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    DBInstance.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    DBInstance.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage"))
    DBInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "InstanceCreateTime"))
    DBInstance.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    DBInstance.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BackupRetentionPeriod"))
    DBInstance.add_member(:db_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupMembershipList, name: "DBSecurityGroups"))
    DBInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    DBInstance.add_member(:db_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroupStatusList, name: "DBParameterGroups"))
    DBInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    DBInstance.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    DBInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    DBInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedValues, name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LatestRestorableTime"))
    DBInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZ"))
    DBInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:read_replica_source_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadReplicaSourceDBInstanceIdentifier"))
    DBInstance.add_member(:read_replica_db_instance_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadReplicaDBInstanceIdentifierList, name: "ReadReplicaDBInstanceIdentifiers"))
    DBInstance.add_member(:read_replica_db_cluster_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadReplicaDBClusterIdentifierList, name: "ReadReplicaDBClusterIdentifiers"))
    DBInstance.add_member(:replica_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaMode, name: "ReplicaMode"))
    DBInstance.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DBInstance.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    DBInstance.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBInstance.add_member(:option_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupMembershipList, name: "OptionGroupMemberships"))
    DBInstance.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    DBInstance.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NcharCharacterSetName"))
    DBInstance.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecondaryAvailabilityZone"))
    DBInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PubliclyAccessible"))
    DBInstance.add_member(:status_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceStatusInfoList, name: "StatusInfos"))
    DBInstance.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBInstance.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    DBInstance.add_member(:db_instance_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DbInstancePort"))
    DBInstance.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBInstance.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "StorageEncrypted"))
    DBInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBInstance.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DBInstance.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    DBInstance.add_member(:domain_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainMembershipList, name: "DomainMemberships"))
    DBInstance.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CopyTagsToSnapshot"))
    DBInstance.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    DBInstance.add_member(:enhanced_monitoring_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EnhancedMonitoringResourceArn"))
    DBInstance.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    DBInstance.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    DBInstance.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceArn"))
    DBInstance.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Timezone"))
    DBInstance.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IAMDatabaseAuthenticationEnabled"))
    DBInstance.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    DBInstance.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PerformanceInsightsEnabled"))
    DBInstance.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    DBInstance.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnabledCloudwatchLogsExports"))
    DBInstance.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    DBInstance.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeletionProtection"))
    DBInstance.add_member(:associated_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceRoles, name: "AssociatedRoles"))
    DBInstance.add_member(:listener_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ListenerEndpoint"))
    DBInstance.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    DBInstance.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBInstance.add_member(:automation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationMode, name: "AutomationMode"))
    DBInstance.add_member(:resume_full_automation_mode_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ResumeFullAutomationModeTime"))
    DBInstance.add_member(:customer_owned_ip_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CustomerOwnedIpEnabled"))
    DBInstance.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    DBInstance.add_member(:activity_stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamStatus, name: "ActivityStreamStatus"))
    DBInstance.add_member(:activity_stream_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActivityStreamKmsKeyId"))
    DBInstance.add_member(:activity_stream_kinesis_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActivityStreamKinesisStreamName"))
    DBInstance.add_member(:activity_stream_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamMode, name: "ActivityStreamMode"))
    DBInstance.add_member(:activity_stream_engine_native_audit_fields_included, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ActivityStreamEngineNativeAuditFieldsIncluded"))
    DBInstance.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsBackupRecoveryPointArn"))
    DBInstance.add_member(:db_instance_automated_backups_replications, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackupsReplicationList, name: "DBInstanceAutomatedBackupsReplications"))
    DBInstance.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    DBInstance.add_member(:automatic_restart_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutomaticRestartTime"))
    DBInstance.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomIamInstanceProfile"))
    DBInstance.add_member(:activity_stream_policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamPolicyStatus, name: "ActivityStreamPolicyStatus"))
    DBInstance.add_member(:certificate_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetails, name: "CertificateDetails"))
    DBInstance.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    DBInstance.add_member(:master_user_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserSecret, name: "MasterUserSecret"))
    DBInstance.add_member(:read_replica_source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadReplicaSourceDBClusterIdentifier"))
    DBInstance.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PercentProgress"))
    DBInstance.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    DBInstance.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DedicatedLogVolume"))
    DBInstance.add_member(:is_storage_config_upgrade_available, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IsStorageConfigUpgradeAvailable"))
    DBInstance.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    DBInstance.type = Types::DBInstance
    DBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceAlreadyExistsFault.type = Types::DBInstanceAlreadyExistsFault
    DBInstanceAutomatedBackup.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceArn"))
    DBInstanceAutomatedBackup.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DBInstanceAutomatedBackup.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Region"))
    DBInstanceAutomatedBackup.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBInstanceAutomatedBackup.add_member(:restore_window, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreWindow, name: "RestoreWindow"))
    DBInstanceAutomatedBackup.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage"))
    DBInstanceAutomatedBackup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBInstanceAutomatedBackup.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBInstanceAutomatedBackup.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    DBInstanceAutomatedBackup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBInstanceAutomatedBackup.add_member(:instance_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "InstanceCreateTime"))
    DBInstanceAutomatedBackup.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBInstanceAutomatedBackup.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBInstanceAutomatedBackup.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBInstanceAutomatedBackup.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DBInstanceAutomatedBackup.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    DBInstanceAutomatedBackup.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBInstanceAutomatedBackup.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    DBInstanceAutomatedBackup.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    DBInstanceAutomatedBackup.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Encrypted"))
    DBInstanceAutomatedBackup.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBInstanceAutomatedBackup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBInstanceAutomatedBackup.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Timezone"))
    DBInstanceAutomatedBackup.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IAMDatabaseAuthenticationEnabled"))
    DBInstanceAutomatedBackup.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceAutomatedBackupsArn"))
    DBInstanceAutomatedBackup.add_member(:db_instance_automated_backups_replications, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackupsReplicationList, name: "DBInstanceAutomatedBackupsReplications"))
    DBInstanceAutomatedBackup.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    DBInstanceAutomatedBackup.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    DBInstanceAutomatedBackup.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsBackupRecoveryPointArn"))
    DBInstanceAutomatedBackup.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    DBInstanceAutomatedBackup.type = Types::DBInstanceAutomatedBackup
    DBInstanceAutomatedBackupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackup, name: "member", traits: {"smithy.api#xmlName" => "DBInstanceAutomatedBackup"}))
    DBInstanceAutomatedBackupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackupList, name: "DBInstanceAutomatedBackups"))
    DBInstanceAutomatedBackupMessage.type = Types::DBInstanceAutomatedBackupMessage
    DBInstanceAutomatedBackupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceAutomatedBackupNotFoundFault.type = Types::DBInstanceAutomatedBackupNotFoundFault
    DBInstanceAutomatedBackupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceAutomatedBackupQuotaExceededFault.type = Types::DBInstanceAutomatedBackupQuotaExceededFault
    DBInstanceAutomatedBackupsReplication.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceAutomatedBackupsArn"))
    DBInstanceAutomatedBackupsReplication.type = Types::DBInstanceAutomatedBackupsReplication
    DBInstanceAutomatedBackupsReplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackupsReplication, name: "member", traits: {"smithy.api#xmlName" => "DBInstanceAutomatedBackupsReplication"}))
    DBInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "member", traits: {"smithy.api#xmlName" => "DBInstance"}))
    DBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceList, name: "DBInstances"))
    DBInstanceMessage.type = Types::DBInstanceMessage
    DBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceNotFoundFault.type = Types::DBInstanceNotFoundFault
    DBInstanceNotReadyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceNotReadyFault.type = Types::DBInstanceNotReadyFault
    DBInstanceRole.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    DBInstanceRole.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName"))
    DBInstanceRole.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBInstanceRole.type = Types::DBInstanceRole
    DBInstanceRoleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceRoleAlreadyExistsFault.type = Types::DBInstanceRoleAlreadyExistsFault
    DBInstanceRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceRoleNotFoundFault.type = Types::DBInstanceRoleNotFoundFault
    DBInstanceRoleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBInstanceRoleQuotaExceededFault.type = Types::DBInstanceRoleQuotaExceededFault
    DBInstanceRoles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceRole, name: "member", traits: {"smithy.api#xmlName" => "DBInstanceRole"}))
    DBInstanceStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusType"))
    DBInstanceStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Normal"))
    DBInstanceStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBInstanceStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DBInstanceStatusInfo.type = Types::DBInstanceStatusInfo
    DBInstanceStatusInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceStatusInfo, name: "member", traits: {"smithy.api#xmlName" => "DBInstanceStatusInfo"}))
    DBLogFileNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBLogFileNotFoundFault.type = Types::DBLogFileNotFoundFault
    DBMajorEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBMajorEngineVersion.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    DBMajorEngineVersion.add_member(:supported_engine_lifecycles, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedEngineLifecycleList, name: "SupportedEngineLifecycles"))
    DBMajorEngineVersion.type = Types::DBMajorEngineVersion
    DBMajorEngineVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBMajorEngineVersion, name: "member", traits: {"smithy.api#xmlName" => "DBMajorEngineVersion"}))
    DBParameterGroup.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    DBParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DBParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DBParameterGroup.add_member(:db_parameter_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupArn"))
    DBParameterGroup.type = Types::DBParameterGroup
    DBParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupAlreadyExistsFault.type = Types::DBParameterGroupAlreadyExistsFault
    DBParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroup, name: "member", traits: {"smithy.api#xmlName" => "DBParameterGroup"}))
    DBParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupNotFoundFault.type = Types::DBParameterGroupNotFoundFault
    DBParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBParameterGroupQuotaExceededFault.type = Types::DBParameterGroupQuotaExceededFault
    DBParameterGroupStatus.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    DBParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyStatus"))
    DBParameterGroupStatus.type = Types::DBParameterGroupStatus
    DBParameterGroupStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroupStatus, name: "member", traits: {"smithy.api#xmlName" => "DBParameterGroup"}))
    DBParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBParameterGroupsMessage.add_member(:db_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBParameterGroupList, name: "DBParameterGroups"))
    DBParameterGroupsMessage.type = Types::DBParameterGroupsMessage
    DBProxy.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyName"))
    DBProxy.add_member(:db_proxy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyArn"))
    DBProxy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyStatus, name: "Status"))
    DBProxy.add_member(:engine_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineFamily"))
    DBProxy.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBProxy.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    DBProxy.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSubnetIds"))
    DBProxy.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultAuthScheme"))
    DBProxy.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAuthConfigInfoList, name: "Auth"))
    DBProxy.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn"))
    DBProxy.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBProxy.add_member(:require_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequireTLS"))
    DBProxy.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IdleClientTimeout"))
    DBProxy.add_member(:debug_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DebugLogging"))
    DBProxy.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedDate"))
    DBProxy.add_member(:updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedDate"))
    DBProxy.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkType, name: "EndpointNetworkType"))
    DBProxy.add_member(:target_connection_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetConnectionNetworkType, name: "TargetConnectionNetworkType"))
    DBProxy.type = Types::DBProxy
    DBProxyAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyAlreadyExistsFault.type = Types::DBProxyAlreadyExistsFault
    DBProxyEndpoint.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyEndpointName"))
    DBProxyEndpoint.add_member(:db_proxy_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyEndpointArn"))
    DBProxyEndpoint.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyName"))
    DBProxyEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointStatus, name: "Status"))
    DBProxyEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBProxyEndpoint.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    DBProxyEndpoint.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSubnetIds"))
    DBProxyEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBProxyEndpoint.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedDate"))
    DBProxyEndpoint.add_member(:target_role, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointTargetRole, name: "TargetRole"))
    DBProxyEndpoint.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault"))
    DBProxyEndpoint.add_member(:endpoint_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointNetworkType, name: "EndpointNetworkType"))
    DBProxyEndpoint.type = Types::DBProxyEndpoint
    DBProxyEndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyEndpointAlreadyExistsFault.type = Types::DBProxyEndpointAlreadyExistsFault
    DBProxyEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpoint, name: "member"))
    DBProxyEndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyEndpointNotFoundFault.type = Types::DBProxyEndpointNotFoundFault
    DBProxyEndpointQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyEndpointQuotaExceededFault.type = Types::DBProxyEndpointQuotaExceededFault
    DBProxyEndpointStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    DBProxyEndpointStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "modifying"}))
    DBProxyEndpointStatus.add_member(:incompatible_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_NETWORK", traits: {"smithy.api#enumValue" => "incompatible-network"}))
    DBProxyEndpointStatus.add_member(:insufficient_resource_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_RESOURCE_LIMITS", traits: {"smithy.api#enumValue" => "insufficient-resource-limits"}))
    DBProxyEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "creating"}))
    DBProxyEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    DBProxyEndpointTargetRole.add_member(:read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_WRITE", traits: {"smithy.api#enumValue" => "READ_WRITE"}))
    DBProxyEndpointTargetRole.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    DBProxyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxy, name: "member"))
    DBProxyNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyNotFoundFault.type = Types::DBProxyNotFoundFault
    DBProxyQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyQuotaExceededFault.type = Types::DBProxyQuotaExceededFault
    DBProxyStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    DBProxyStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "modifying"}))
    DBProxyStatus.add_member(:incompatible_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_NETWORK", traits: {"smithy.api#enumValue" => "incompatible-network"}))
    DBProxyStatus.add_member(:insufficient_resource_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_RESOURCE_LIMITS", traits: {"smithy.api#enumValue" => "insufficient-resource-limits"}))
    DBProxyStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "creating"}))
    DBProxyStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    DBProxyStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "suspended"}))
    DBProxyStatus.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "suspending"}))
    DBProxyStatus.add_member(:reactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REACTIVATING", traits: {"smithy.api#enumValue" => "reactivating"}))
    DBProxyTarget.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetArn"))
    DBProxyTarget.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBProxyTarget.add_member(:tracked_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrackedClusterId"))
    DBProxyTarget.add_member(:rds_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RdsResourceId"))
    DBProxyTarget.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBProxyTarget.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "Type"))
    DBProxyTarget.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetRole, name: "Role"))
    DBProxyTarget.add_member(:target_health, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealth, name: "TargetHealth"))
    DBProxyTarget.type = Types::DBProxyTarget
    DBProxyTargetAlreadyRegisteredFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyTargetAlreadyRegisteredFault.type = Types::DBProxyTargetAlreadyRegisteredFault
    DBProxyTargetGroup.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBProxyName"))
    DBProxyTargetGroup.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetGroupName"))
    DBProxyTargetGroup.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetGroupArn"))
    DBProxyTargetGroup.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault"))
    DBProxyTargetGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBProxyTargetGroup.add_member(:connection_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPoolConfigurationInfo, name: "ConnectionPoolConfig"))
    DBProxyTargetGroup.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedDate"))
    DBProxyTargetGroup.add_member(:updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedDate"))
    DBProxyTargetGroup.type = Types::DBProxyTargetGroup
    DBProxyTargetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyTargetGroupNotFoundFault.type = Types::DBProxyTargetGroupNotFoundFault
    DBProxyTargetNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBProxyTargetNotFoundFault.type = Types::DBProxyTargetNotFoundFault
    DBRecommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecommendationId"))
    DBRecommendation.add_member(:type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TypeId"))
    DBRecommendation.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    DBRecommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    DBRecommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBRecommendation.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedTime"))
    DBRecommendation.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedTime"))
    DBRecommendation.add_member(:detection, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Detection"))
    DBRecommendation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Recommendation"))
    DBRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DBRecommendation.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    DBRecommendation.add_member(:recommended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionList, name: "RecommendedActions"))
    DBRecommendation.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Category"))
    DBRecommendation.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DBRecommendation.add_member(:type_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TypeDetection"))
    DBRecommendation.add_member(:type_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TypeRecommendation"))
    DBRecommendation.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Impact"))
    DBRecommendation.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdditionalInfo"))
    DBRecommendation.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: DocLinkList, name: "Links"))
    DBRecommendation.add_member(:issue_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueDetails, name: "IssueDetails"))
    DBRecommendation.type = Types::DBRecommendation
    DBRecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBRecommendation, name: "member"))
    DBRecommendationMessage.add_member(:db_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: DBRecommendation, name: "DBRecommendation"))
    DBRecommendationMessage.type = Types::DBRecommendationMessage
    DBRecommendationsMessage.add_member(:db_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: DBRecommendationList, name: "DBRecommendations"))
    DBRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBRecommendationsMessage.type = Types::DBRecommendationsMessage
    DBSecurityGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerId"))
    DBSecurityGroup.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName"))
    DBSecurityGroup.add_member(:db_security_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupDescription"))
    DBSecurityGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroupList, name: "EC2SecurityGroups"))
    DBSecurityGroup.add_member(:ip_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: IPRangeList, name: "IPRanges"))
    DBSecurityGroup.add_member(:db_security_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupArn"))
    DBSecurityGroup.type = Types::DBSecurityGroup
    DBSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSecurityGroupAlreadyExistsFault.type = Types::DBSecurityGroupAlreadyExistsFault
    DBSecurityGroupMembership.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName"))
    DBSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBSecurityGroupMembership.type = Types::DBSecurityGroupMembership
    DBSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "DBSecurityGroup"}))
    DBSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBSecurityGroupMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroups, name: "DBSecurityGroups"))
    DBSecurityGroupMessage.type = Types::DBSecurityGroupMessage
    DBSecurityGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "DBSecurityGroupName"}))
    DBSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSecurityGroupNotFoundFault.type = Types::DBSecurityGroupNotFoundFault
    DBSecurityGroupNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSecurityGroupNotSupportedFault.type = Types::DBSecurityGroupNotSupportedFault
    DBSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSecurityGroupQuotaExceededFault.type = Types::DBSecurityGroupQuotaExceededFault
    DBSecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "DBSecurityGroup"}))
    DBShardGroup.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupResourceId"))
    DBShardGroup.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    DBShardGroup.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DBShardGroup.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    DBShardGroup.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    DBShardGroup.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    DBShardGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBShardGroup.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    DBShardGroup.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DBShardGroup.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupArn"))
    DBShardGroup.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBShardGroup.type = Types::DBShardGroup
    DBShardGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBShardGroupAlreadyExistsFault.type = Types::DBShardGroupAlreadyExistsFault
    DBShardGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBShardGroupNotFoundFault.type = Types::DBShardGroupNotFoundFault
    DBShardGroupsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroup, name: "member", traits: {"smithy.api#xmlName" => "DBShardGroup"}))
    DBSnapshot.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    DBSnapshot.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotCreateTime"))
    DBSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DBSnapshot.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AllocatedStorage"))
    DBSnapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DBSnapshot.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DBSnapshot.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    DBSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBSnapshot.add_member(:instance_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "InstanceCreateTime"))
    DBSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DBSnapshot.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DBSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DBSnapshot.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    DBSnapshot.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    DBSnapshot.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    DBSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    DBSnapshot.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    DBSnapshot.add_member(:source_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBSnapshotIdentifier"))
    DBSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    DBSnapshot.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    DBSnapshot.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Encrypted"))
    DBSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    DBSnapshot.add_member(:db_snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotArn"))
    DBSnapshot.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Timezone"))
    DBSnapshot.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IAMDatabaseAuthenticationEnabled"))
    DBSnapshot.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    DBSnapshot.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DBSnapshot.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBSnapshot.add_member(:snapshot_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotTarget"))
    DBSnapshot.add_member(:original_snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "OriginalSnapshotCreateTime"))
    DBSnapshot.add_member(:snapshot_database_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotDatabaseTime"))
    DBSnapshot.add_member(:db_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSystemId"))
    DBSnapshot.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    DBSnapshot.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DedicatedLogVolume"))
    DBSnapshot.add_member(:snapshot_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotAvailabilityZone"))
    DBSnapshot.type = Types::DBSnapshot
    DBSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSnapshotAlreadyExistsFault.type = Types::DBSnapshotAlreadyExistsFault
    DBSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName"))
    DBSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    DBSnapshotAttribute.type = Types::DBSnapshotAttribute
    DBSnapshotAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotAttribute, name: "member", traits: {"smithy.api#xmlName" => "DBSnapshotAttribute"}))
    DBSnapshotAttributesResult.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    DBSnapshotAttributesResult.add_member(:db_snapshot_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotAttributeList, name: "DBSnapshotAttributes"))
    DBSnapshotAttributesResult.type = Types::DBSnapshotAttributesResult
    DBSnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshot, name: "member", traits: {"smithy.api#xmlName" => "DBSnapshot"}))
    DBSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBSnapshotMessage.add_member(:db_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotList, name: "DBSnapshots"))
    DBSnapshotMessage.type = Types::DBSnapshotMessage
    DBSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSnapshotNotFoundFault.type = Types::DBSnapshotNotFoundFault
    DBSnapshotTenantDatabase.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    DBSnapshotTenantDatabase.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DBSnapshotTenantDatabase.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DBSnapshotTenantDatabase.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    DBSnapshotTenantDatabase.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DBSnapshotTenantDatabase.add_member(:tenant_database_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TenantDatabaseCreateTime"))
    DBSnapshotTenantDatabase.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName"))
    DBSnapshotTenantDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    DBSnapshotTenantDatabase.add_member(:tenant_database_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDatabaseResourceId"))
    DBSnapshotTenantDatabase.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    DBSnapshotTenantDatabase.add_member(:db_snapshot_tenant_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotTenantDatabaseARN"))
    DBSnapshotTenantDatabase.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NcharCharacterSetName"))
    DBSnapshotTenantDatabase.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DBSnapshotTenantDatabase.type = Types::DBSnapshotTenantDatabase
    DBSnapshotTenantDatabaseNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSnapshotTenantDatabaseNotFoundFault.type = Types::DBSnapshotTenantDatabaseNotFoundFault
    DBSnapshotTenantDatabasesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotTenantDatabase, name: "member", traits: {"smithy.api#xmlName" => "DBSnapshotTenantDatabase"}))
    DBSnapshotTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_tenant_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotTenantDatabasesList, name: "DBSnapshotTenantDatabases"))
    DBSnapshotTenantDatabasesMessage.type = Types::DBSnapshotTenantDatabasesMessage
    DBSubnetGroup.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupArn"))
    DBSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SupportedNetworkTypes"))
    DBSubnetGroup.type = Types::DBSubnetGroup
    DBSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupAlreadyExistsFault.type = Types::DBSubnetGroupAlreadyExistsFault
    DBSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupDoesNotCoverEnoughAZs.type = Types::DBSubnetGroupDoesNotCoverEnoughAZs
    DBSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroups, name: "DBSubnetGroups"))
    DBSubnetGroupMessage.type = Types::DBSubnetGroupMessage
    DBSubnetGroupNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupNotAllowedFault.type = Types::DBSubnetGroupNotAllowedFault
    DBSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupNotFoundFault.type = Types::DBSubnetGroupNotFoundFault
    DBSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetGroupQuotaExceededFault.type = Types::DBSubnetGroupQuotaExceededFault
    DBSubnetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "member", traits: {"smithy.api#xmlName" => "DBSubnetGroup"}))
    DBSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBSubnetQuotaExceededFault.type = Types::DBSubnetQuotaExceededFault
    DBUpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DBUpgradeDependencyFailureFault.type = Types::DBUpgradeDependencyFailureFault
    DatabaseInsightsMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    DatabaseInsightsMode.add_member(:advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADVANCED", traits: {"smithy.api#enumValue" => "advanced"}))
    DefaultAuthScheme.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_AUTH", traits: {"smithy.api#enumValue" => "IAM_AUTH"}))
    DefaultAuthScheme.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DeleteBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentIdentifier, name: "BlueGreenDeploymentIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteBlueGreenDeploymentRequest.add_member(:delete_target, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeleteTarget"))
    DeleteBlueGreenDeploymentRequest.type = Types::DeleteBlueGreenDeploymentRequest
    DeleteBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeployment, name: "BlueGreenDeployment"))
    DeleteBlueGreenDeploymentResponse.type = Types::DeleteBlueGreenDeploymentResponse
    DeleteCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineName, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineVersion, name: "EngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDBEngineVersionMessage.type = Types::DeleteCustomDBEngineVersionMessage
    DeleteCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DeleteCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    DeleteCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DeleteCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3BucketName"))
    DeleteCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3Prefix"))
    DeleteCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionManifest, name: "CustomDBEngineVersionManifest"))
    DeleteCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineDescription"))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionArn"))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionDescription"))
    DeleteCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSet, name: "DefaultCharacterSet"))
    DeleteCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionAMI, name: "Image"))
    DeleteCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineMediaType"))
    DeleteCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    DeleteCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedCharacterSets"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedNcharCharacterSets"))
    DeleteCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidUpgradeTargetList, name: "ValidUpgradeTarget"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedTimezonesList, name: "SupportedTimezones"))
    DeleteCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "ExportableLogTypes"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLogExportsToCloudwatchLogs"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsReadReplica"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNameList, name: "SupportedFeatureNames"))
    DeleteCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsParallelQuery"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsGlobalDatabases"))
    DeleteCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsBabelfish"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLimitlessDatabase"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsCertificateRotationWithoutRestart"))
    DeleteCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CACertificateIdentifiersList, name: "SupportedCACertificateIdentifiers"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLocalWriteForwarding"))
    DeleteCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIntegrations"))
    DeleteCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2FeaturesSupport, name: "ServerlessV2FeaturesSupport"))
    DeleteCustomDBEngineVersionOutput.type = Types::DeleteCustomDBEngineVersionOutput
    DeleteDBClusterAutomatedBackupMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterAutomatedBackupMessage.type = Types::DeleteDBClusterAutomatedBackupMessage
    DeleteDBClusterAutomatedBackupResult.add_member(:db_cluster_automated_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterAutomatedBackup, name: "DBClusterAutomatedBackup"))
    DeleteDBClusterAutomatedBackupResult.type = Types::DeleteDBClusterAutomatedBackupResult
    DeleteDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterEndpointMessage.type = Types::DeleteDBClusterEndpointMessage
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointResourceIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DeleteDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DeleteDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    DeleteDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomEndpointType"))
    DeleteDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    DeleteDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointArn"))
    DeleteDBClusterEndpointOutput.type = Types::DeleteDBClusterEndpointOutput
    DeleteDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.add_member(:delete_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeleteAutomatedBackups"))
    DeleteDBClusterMessage.type = Types::DeleteDBClusterMessage
    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterParameterGroupMessage.type = Types::DeleteDBClusterParameterGroupMessage
    DeleteDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    DeleteDBClusterResult.type = Types::DeleteDBClusterResult
    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterSnapshotMessage.type = Types::DeleteDBClusterSnapshotMessage
    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshot, name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.type = Types::DeleteDBClusterSnapshotResult
    DeleteDBInstanceAutomatedBackupMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DeleteDBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceAutomatedBackupsArn"))
    DeleteDBInstanceAutomatedBackupMessage.type = Types::DeleteDBInstanceAutomatedBackupMessage
    DeleteDBInstanceAutomatedBackupResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackup, name: "DBInstanceAutomatedBackup"))
    DeleteDBInstanceAutomatedBackupResult.type = Types::DeleteDBInstanceAutomatedBackupResult
    DeleteDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBInstanceMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SkipFinalSnapshot"))
    DeleteDBInstanceMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalDBSnapshotIdentifier"))
    DeleteDBInstanceMessage.add_member(:delete_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeleteAutomatedBackups"))
    DeleteDBInstanceMessage.type = Types::DeleteDBInstanceMessage
    DeleteDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    DeleteDBInstanceResult.type = Types::DeleteDBInstanceResult
    DeleteDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBParameterGroupMessage.type = Types::DeleteDBParameterGroupMessage
    DeleteDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointName, name: "DBProxyEndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBProxyEndpointRequest.type = Types::DeleteDBProxyEndpointRequest
    DeleteDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpoint, name: "DBProxyEndpoint"))
    DeleteDBProxyEndpointResponse.type = Types::DeleteDBProxyEndpointResponse
    DeleteDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBProxyRequest.type = Types::DeleteDBProxyRequest
    DeleteDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxy, name: "DBProxy"))
    DeleteDBProxyResponse.type = Types::DeleteDBProxyResponse
    DeleteDBSecurityGroupMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSecurityGroupMessage.type = Types::DeleteDBSecurityGroupMessage
    DeleteDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBShardGroupMessage.type = Types::DeleteDBShardGroupMessage
    DeleteDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupResourceId"))
    DeleteDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    DeleteDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DeleteDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    DeleteDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    DeleteDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    DeleteDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DeleteDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    DeleteDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    DeleteDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupArn"))
    DeleteDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    DeleteDBShardGroupOutput.type = Types::DeleteDBShardGroupOutput
    DeleteDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSnapshotMessage.type = Types::DeleteDBSnapshotMessage
    DeleteDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshot, name: "DBSnapshot"))
    DeleteDBSnapshotResult.type = Types::DeleteDBSnapshotResult
    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSubnetGroupMessage.type = Types::DeleteDBSubnetGroupMessage
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    DeleteEventSubscriptionResult.type = Types::DeleteEventSubscriptionResult
    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalClusterMessage.type = Types::DeleteGlobalClusterMessage
    DeleteGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    DeleteGlobalClusterResult.type = Types::DeleteGlobalClusterResult
    DeleteIntegrationMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "IntegrationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationMessage.type = Types::DeleteIntegrationMessage
    DeleteIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    DeleteIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TargetArn"))
    DeleteIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    DeleteIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    DeleteIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    DeleteIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    DeleteIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    DeleteIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DeleteIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    DeleteIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    DeleteIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    DeleteIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeleteOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteOptionGroupMessage.type = Types::DeleteOptionGroupMessage
    DeleteTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTenantDatabaseMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SkipFinalSnapshot"))
    DeleteTenantDatabaseMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalDBSnapshotIdentifier"))
    DeleteTenantDatabaseMessage.type = Types::DeleteTenantDatabaseMessage
    DeleteTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabase, name: "TenantDatabase"))
    DeleteTenantDatabaseResult.type = Types::DeleteTenantDatabaseResult
    DeregisterDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroupName, name: "TargetGroupName"))
    DeregisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DBInstanceIdentifiers"))
    DeregisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DBClusterIdentifiers"))
    DeregisterDBProxyTargetsRequest.type = Types::DeregisterDBProxyTargetsRequest
    DeregisterDBProxyTargetsResponse.type = Types::DeregisterDBProxyTargetsResponse
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeBlueGreenDeploymentsRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentIdentifier, name: "BlueGreenDeploymentIdentifier"))
    DescribeBlueGreenDeploymentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeBlueGreenDeploymentsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeBlueGreenDeploymentsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeBlueGreenDeploymentsRequest.type = Types::DescribeBlueGreenDeploymentsRequest
    DescribeBlueGreenDeploymentsResponse.add_member(:blue_green_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentList, name: "BlueGreenDeployments"))
    DescribeBlueGreenDeploymentsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeBlueGreenDeploymentsResponse.type = Types::DescribeBlueGreenDeploymentsResponse
    DescribeCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    DescribeCertificatesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCertificatesMessage.type = Types::DescribeCertificatesMessage
    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterAutomatedBackupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterAutomatedBackupsMessage.type = Types::DescribeDBClusterAutomatedBackupsMessage
    DescribeDBClusterBacktracksMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterBacktracksMessage.add_member(:backtrack_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BacktrackIdentifier"))
    DescribeDBClusterBacktracksMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterBacktracksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterBacktracksMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterBacktracksMessage.type = Types::DescribeDBClusterBacktracksMessage
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterEndpointsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterEndpointsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterEndpointsMessage.type = Types::DescribeDBClusterEndpointsMessage
    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParameterGroupsMessage.type = Types::DescribeDBClusterParameterGroupsMessage
    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeDBClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParametersMessage.type = Types::DescribeDBClusterParametersMessage
    DescribeDBClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DescribeDBClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterParametersOutput.type = Types::DescribeDBClusterParametersOutput
    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterSnapshotAttributesMessage.type = Types::DescribeDBClusterSnapshotAttributesMessage
    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributesResult, name: "DBClusterSnapshotAttributesResult"))
    DescribeDBClusterSnapshotAttributesResult.type = Types::DescribeDBClusterSnapshotAttributesResult
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeShared"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludePublic"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterResourceId"))
    DescribeDBClusterSnapshotsMessage.type = Types::DescribeDBClusterSnapshotsMessage
    DescribeDBClustersMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    DescribeDBClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBClustersMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeShared"))
    DescribeDBClustersMessage.type = Types::DescribeDBClustersMessage
    DescribeDBEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    DescribeDBEngineVersionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultOnly"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ListSupportedCharacterSets"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ListSupportedTimezones"))
    DescribeDBEngineVersionsMessage.add_member(:include_all, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IncludeAll"))
    DescribeDBEngineVersionsMessage.type = Types::DescribeDBEngineVersionsMessage
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceAutomatedBackupsArn"))
    DescribeDBInstanceAutomatedBackupsMessage.type = Types::DescribeDBInstanceAutomatedBackupsMessage
    DescribeDBInstancesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBInstancesMessage.type = Types::DescribeDBInstancesMessage
    DescribeDBLogFilesDetails.add_member(:log_file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogFileName"))
    DescribeDBLogFilesDetails.add_member(:last_written, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastWritten"))
    DescribeDBLogFilesDetails.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Size"))
    DescribeDBLogFilesDetails.type = Types::DescribeDBLogFilesDetails
    DescribeDBLogFilesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeDBLogFilesDetails, name: "member", traits: {"smithy.api#xmlName" => "DescribeDBLogFilesDetails"}))
    DescribeDBLogFilesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBLogFilesMessage.add_member(:filename_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FilenameContains"))
    DescribeDBLogFilesMessage.add_member(:file_last_written, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FileLastWritten"))
    DescribeDBLogFilesMessage.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FileSize"))
    DescribeDBLogFilesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBLogFilesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBLogFilesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBLogFilesMessage.type = Types::DescribeDBLogFilesMessage
    DescribeDBLogFilesResponse.add_member(:describe_db_log_files, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeDBLogFilesList, name: "DescribeDBLogFiles"))
    DescribeDBLogFilesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBLogFilesResponse.type = Types::DescribeDBLogFilesResponse
    DescribeDBMajorEngineVersionsRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "Engine"))
    DescribeDBMajorEngineVersionsRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorEngineVersion, name: "MajorEngineVersion"))
    DescribeDBMajorEngineVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeDBMajorEngineVersionsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBMajorEngineVersionsRequest.type = Types::DescribeDBMajorEngineVersionsRequest
    DescribeDBMajorEngineVersionsResponse.add_member(:db_major_engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: DBMajorEngineVersionsList, name: "DBMajorEngineVersions"))
    DescribeDBMajorEngineVersionsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBMajorEngineVersionsResponse.type = Types::DescribeDBMajorEngineVersionsResponse
    DescribeDBParameterGroupsMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    DescribeDBParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBParameterGroupsMessage.type = Types::DescribeDBParameterGroupsMessage
    DescribeDBParametersMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeDBParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBParametersMessage.type = Types::DescribeDBParametersMessage
    DescribeDBParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DescribeDBParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBParametersOutput.type = Types::DescribeDBParametersOutput
    DescribeDBProxiesRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName"))
    DescribeDBProxiesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBProxiesRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxiesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBProxiesRequest.type = Types::DescribeDBProxiesRequest
    DescribeDBProxiesResponse.add_member(:db_proxies, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyList, name: "DBProxies"))
    DescribeDBProxiesResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxiesResponse.type = Types::DescribeDBProxiesResponse
    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName"))
    DescribeDBProxyEndpointsRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointName, name: "DBProxyEndpointName"))
    DescribeDBProxyEndpointsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBProxyEndpointsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyEndpointsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBProxyEndpointsRequest.type = Types::DescribeDBProxyEndpointsRequest
    DescribeDBProxyEndpointsResponse.add_member(:db_proxy_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointList, name: "DBProxyEndpoints"))
    DescribeDBProxyEndpointsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyEndpointsResponse.type = Types::DescribeDBProxyEndpointsResponse
    DescribeDBProxyTargetGroupsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBProxyTargetGroupsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroupName, name: "TargetGroupName"))
    DescribeDBProxyTargetGroupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBProxyTargetGroupsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyTargetGroupsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBProxyTargetGroupsRequest.type = Types::DescribeDBProxyTargetGroupsRequest
    DescribeDBProxyTargetGroupsResponse.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupList, name: "TargetGroups"))
    DescribeDBProxyTargetGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyTargetGroupsResponse.type = Types::DescribeDBProxyTargetGroupsResponse
    DescribeDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroupName, name: "TargetGroupName"))
    DescribeDBProxyTargetsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBProxyTargetsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyTargetsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBProxyTargetsRequest.type = Types::DescribeDBProxyTargetsRequest
    DescribeDBProxyTargetsResponse.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "Targets"))
    DescribeDBProxyTargetsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBProxyTargetsResponse.type = Types::DescribeDBProxyTargetsResponse
    DescribeDBRecommendationsMessage.add_member(:last_updated_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastUpdatedAfter"))
    DescribeDBRecommendationsMessage.add_member(:last_updated_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastUpdatedBefore"))
    DescribeDBRecommendationsMessage.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Locale"))
    DescribeDBRecommendationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBRecommendationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBRecommendationsMessage.type = Types::DescribeDBRecommendationsMessage
    DescribeDBSecurityGroupsMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName"))
    DescribeDBSecurityGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBSecurityGroupsMessage.type = Types::DescribeDBSecurityGroupsMessage
    DescribeDBShardGroupsMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    DescribeDBShardGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBShardGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBShardGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeDBShardGroupsMessage.type = Types::DescribeDBShardGroupsMessage
    DescribeDBShardGroupsResponse.add_member(:db_shard_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupsList, name: "DBShardGroups"))
    DescribeDBShardGroupsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBShardGroupsResponse.type = Types::DescribeDBShardGroupsResponse
    DescribeDBSnapshotAttributesMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBSnapshotAttributesMessage.type = Types::DescribeDBSnapshotAttributesMessage
    DescribeDBSnapshotAttributesResult.add_member(:db_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotAttributesResult, name: "DBSnapshotAttributesResult"))
    DescribeDBSnapshotAttributesResult.type = Types::DescribeDBSnapshotAttributesResult
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBSnapshotTenantDatabasesMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DescribeDBSnapshotTenantDatabasesMessage.type = Types::DescribeDBSnapshotTenantDatabasesMessage
    DescribeDBSnapshotsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeDBSnapshotsMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeDBSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeShared"))
    DescribeDBSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludePublic"))
    DescribeDBSnapshotsMessage.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    DescribeDBSnapshotsMessage.type = Types::DescribeDBSnapshotsMessage
    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    DescribeDBSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDBSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDBSubnetGroupsMessage.type = Types::DescribeDBSubnetGroupsMessage
    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineDefaultClusterParametersMessage.type = Types::DescribeEngineDefaultClusterParametersMessage
    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineDefaults, name: "EngineDefaults"))
    DescribeEngineDefaultClusterParametersResult.type = Types::DescribeEngineDefaultClusterParametersResult
    DescribeEngineDefaultParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEngineDefaultParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineDefaultParametersMessage.type = Types::DescribeEngineDefaultParametersMessage
    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineDefaults, name: "EngineDefaults"))
    DescribeEngineDefaultParametersResult.type = Types::DescribeEngineDefaultParametersResult
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeExportTasksMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier"))
    DescribeExportTasksMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    DescribeExportTasksMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeExportTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeExportTasksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecords, name: "MaxRecords"))
    DescribeExportTasksMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "SourceType"))
    DescribeExportTasksMessage.type = Types::DescribeExportTasksMessage
    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    DescribeGlobalClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeGlobalClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeGlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeGlobalClustersMessage.type = Types::DescribeGlobalClustersMessage
    DescribeIntegrationsMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "IntegrationIdentifier"))
    DescribeIntegrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeIntegrationsMessage.type = Types::DescribeIntegrationsMessage
    DescribeIntegrationsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeIntegrationsResponse.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationList, name: "Integrations"))
    DescribeIntegrationsResponse.type = Types::DescribeIntegrationsResponse
    DescribeOptionGroupOptionsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOptionGroupOptionsMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    DescribeOptionGroupOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeOptionGroupOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOptionGroupOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOptionGroupOptionsMessage.type = Types::DescribeOptionGroupOptionsMessage
    DescribeOptionGroupsMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    DescribeOptionGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeOptionGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOptionGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOptionGroupsMessage.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    DescribeOptionGroupsMessage.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    DescribeOptionGroupsMessage.type = Types::DescribeOptionGroupsMessage
    DescribeOptionGroupsOutput.add_member(:option_groups_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupsList, name: "OptionGroupsList"))
    DescribeOptionGroupsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOptionGroupsOutput.type = Types::DescribeOptionGroupsOutput
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:availability_zone_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZoneGroup"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Vpc"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOrderableDBInstanceOptionsMessage.type = Types::DescribeOrderableDBInstanceOptionsMessage
    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstanceId"))
    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstancesOfferingId"))
    DescribeReservedDBInstancesMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DescribeReservedDBInstancesMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Duration"))
    DescribeReservedDBInstancesMessage.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    DescribeReservedDBInstancesMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    DescribeReservedDBInstancesMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    DescribeReservedDBInstancesMessage.add_member(:lease_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LeaseId"))
    DescribeReservedDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReservedDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedDBInstancesMessage.type = Types::DescribeReservedDBInstancesMessage
    DescribeReservedDBInstancesOfferingsMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstancesOfferingId"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Duration"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedDBInstancesOfferingsMessage.type = Types::DescribeReservedDBInstancesOfferingsMessage
    DescribeSourceRegionsMessage.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegionName"))
    DescribeSourceRegionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeSourceRegionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSourceRegionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeSourceRegionsMessage.type = Types::DescribeSourceRegionsMessage
    DescribeTenantDatabasesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    DescribeTenantDatabasesMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName"))
    DescribeTenantDatabasesMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeTenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeTenantDatabasesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeTenantDatabasesMessage.type = Types::DescribeTenantDatabasesMessage
    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeValidDBInstanceModificationsMessage.type = Types::DescribeValidDBInstanceModificationsMessage
    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidDBInstanceModificationsMessage, name: "ValidDBInstanceModificationsMessage"))
    DescribeValidDBInstanceModificationsResult.type = Types::DescribeValidDBInstanceModificationsResult
    DisableHttpEndpointRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableHttpEndpointRequest.type = Types::DisableHttpEndpointRequest
    DisableHttpEndpointResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    DisableHttpEndpointResponse.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "HttpEndpointEnabled"))
    DisableHttpEndpointResponse.type = Types::DisableHttpEndpointResponse
    DocLink.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    DocLink.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url"))
    DocLink.type = Types::DocLink
    DocLinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocLink, name: "member"))
    DomainMembership.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    DomainMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DomainMembership.add_member(:fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FQDN"))
    DomainMembership.add_member(:iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IAMRoleName"))
    DomainMembership.add_member(:ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OU"))
    DomainMembership.add_member(:auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthSecretArn"))
    DomainMembership.add_member(:dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DnsIps"))
    DomainMembership.type = Types::DomainMembership
    DomainMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainMembership, name: "member", traits: {"smithy.api#xmlName" => "DomainMembership"}))
    DomainNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DomainNotFoundFault.type = Types::DomainNotFoundFault
    DoubleRange.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "From"))
    DoubleRange.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "To"))
    DoubleRange.type = Types::DoubleRange
    DoubleRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleRange, name: "member", traits: {"smithy.api#xmlName" => "DoubleRange"}))
    DownloadDBLogFilePortionMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DownloadDBLogFilePortionMessage.add_member(:log_file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogFileName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DownloadDBLogFilePortionMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DownloadDBLogFilePortionMessage.add_member(:number_of_lines, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfLines"))
    DownloadDBLogFilePortionMessage.type = Types::DownloadDBLogFilePortionMessage
    DownloadDBLogFilePortionOutput.add_member(:log_file_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "LogFileData"))
    DownloadDBLogFilePortionOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DownloadDBLogFilePortionOutput.add_member(:additional_data_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AdditionalDataPending"))
    DownloadDBLogFilePortionOutput.type = Types::DownloadDBLogFilePortionOutput
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupId"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "EC2SecurityGroup"}))
    Ec2ImagePropertiesNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    Ec2ImagePropertiesNotSupportedFault.type = Types::Ec2ImagePropertiesNotSupportedFault
    EnableHttpEndpointRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableHttpEndpointRequest.type = Types::EnableHttpEndpointRequest
    EnableHttpEndpointResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    EnableHttpEndpointResponse.add_member(:http_endpoint_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "HttpEndpointEnabled"))
    EnableHttpEndpointResponse.type = Types::EnableHttpEndpointResponse
    EncryptionContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EncryptionContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    Endpoint.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostedZoneId"))
    Endpoint.type = Types::Endpoint
    EndpointNetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    EndpointNetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    EndpointNetworkType.add_member(:dual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL", traits: {"smithy.api#enumValue" => "DUAL"}))
    EngineDefaults.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    EngineDefaults.type = Types::EngineDefaults
    EngineFamily.add_member(:mysql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYSQL", traits: {"smithy.api#enumValue" => "MYSQL"}))
    EngineFamily.add_member(:postgresql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTGRESQL", traits: {"smithy.api#enumValue" => "POSTGRESQL"}))
    EngineFamily.add_member(:sqlserver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQLSERVER", traits: {"smithy.api#enumValue" => "SQLSERVER"}))
    EngineModeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    Event.type = Types::Event
    EventCategoriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "EventCategory"}))
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventCategoriesMap.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMap, name: "member", traits: {"smithy.api#xmlName" => "EventCategoriesMap"}))
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMapList, name: "EventCategoriesMapList"))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#xmlName" => "Event"}))
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    EventSubscription.add_member(:event_subscription_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventSubscriptionArn"))
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
    ExportSourceType.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOT", traits: {"smithy.api#enumValue" => "SNAPSHOT"}))
    ExportSourceType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER", traits: {"smithy.api#enumValue" => "CLUSTER"}))
    ExportTask.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier"))
    ExportTask.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    ExportTask.add_member(:export_only, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExportOnly"))
    ExportTask.add_member(:snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotTime"))
    ExportTask.add_member(:task_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskStartTime"))
    ExportTask.add_member(:task_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskEndTime"))
    ExportTask.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Bucket"))
    ExportTask.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    ExportTask.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    ExportTask.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ExportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ExportTask.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    ExportTask.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalExtractedDataInGB"))
    ExportTask.add_member(:failure_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureCause"))
    ExportTask.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    ExportTask.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "SourceType"))
    ExportTask.type = Types::ExportTask
    ExportTaskAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ExportTaskAlreadyExistsFault.type = Types::ExportTaskAlreadyExistsFault
    ExportTaskNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ExportTaskNotFoundFault.type = Types::ExportTaskNotFoundFault
    ExportTasksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTask, name: "member", traits: {"smithy.api#xmlName" => "ExportTask"}))
    ExportTasksMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ExportTasksMessage.add_member(:export_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTasksList, name: "ExportTasks"))
    ExportTasksMessage.type = Types::ExportTasksMessage
    FailoverDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBInstanceIdentifier"))
    FailoverDBClusterMessage.type = Types::FailoverDBClusterMessage
    FailoverDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    FailoverDBClusterResult.type = Types::FailoverDBClusterResult
    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterIdentifier, name: "TargetDbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowDataLoss"))
    FailoverGlobalClusterMessage.add_member(:switchover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Switchover"))
    FailoverGlobalClusterMessage.type = Types::FailoverGlobalClusterMessage
    FailoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    FailoverGlobalClusterResult.type = Types::FailoverGlobalClusterResult
    FailoverState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverStatus, name: "Status"))
    FailoverState.add_member(:from_db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FromDbClusterArn"))
    FailoverState.add_member(:to_db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ToDbClusterArn"))
    FailoverState.add_member(:is_data_loss_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDataLossAllowed"))
    FailoverState.type = Types::FailoverState
    FailoverStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    FailoverStatus.add_member(:failing_over, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILING_OVER", traits: {"smithy.api#enumValue" => "failing-over"}))
    FailoverStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "cancelling"}))
    FeatureNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member", traits: {"smithy.api#xmlName" => "Filter"}))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Value"}))
    GlobalCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier"))
    GlobalCluster.add_member(:global_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalClusterResourceId"))
    GlobalCluster.add_member(:global_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalClusterArn"))
    GlobalCluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    GlobalCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    GlobalCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    GlobalCluster.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    GlobalCluster.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    GlobalCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    GlobalCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    GlobalCluster.add_member(:global_cluster_members, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMemberList, name: "GlobalClusterMembers"))
    GlobalCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    GlobalCluster.add_member(:failover_state, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverState, name: "FailoverState"))
    GlobalCluster.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    GlobalCluster.type = Types::GlobalCluster
    GlobalClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterAlreadyExistsFault.type = Types::GlobalClusterAlreadyExistsFault
    GlobalClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "member", traits: {"smithy.api#xmlName" => "GlobalClusterMember"}))
    GlobalClusterMember.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterArn"))
    GlobalClusterMember.add_member(:readers, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadersArnList, name: "Readers"))
    GlobalClusterMember.add_member(:is_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsWriter"))
    GlobalClusterMember.add_member(:global_write_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteForwardingStatus, name: "GlobalWriteForwardingStatus"))
    GlobalClusterMember.add_member(:synchronization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMemberSynchronizationStatus, name: "SynchronizationStatus"))
    GlobalClusterMember.type = Types::GlobalClusterMember
    GlobalClusterMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterMember, name: "member", traits: {"smithy.api#xmlName" => "GlobalClusterMember"}))
    GlobalClusterMemberSynchronizationStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "connected"}))
    GlobalClusterMemberSynchronizationStatus.add_member(:pending_resync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_RESYNC", traits: {"smithy.api#enumValue" => "pending-resync"}))
    GlobalClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterNotFoundFault.type = Types::GlobalClusterNotFoundFault
    GlobalClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalClusterQuotaExceededFault.type = Types::GlobalClusterQuotaExceededFault
    GlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GlobalClustersMessage.add_member(:global_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterList, name: "GlobalClusters"))
    GlobalClustersMessage.type = Types::GlobalClustersMessage
    IAMAuthMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    IAMAuthMode.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    IAMAuthMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    IPRange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    IPRange.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    IPRange.type = Types::IPRange
    IPRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPRange, name: "member", traits: {"smithy.api#xmlName" => "IPRange"}))
    IamRoleMissingPermissionsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IamRoleMissingPermissionsFault.type = Types::IamRoleMissingPermissionsFault
    IamRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IamRoleNotFoundFault.type = Types::IamRoleNotFoundFault
    InstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InstanceQuotaExceededFault.type = Types::InstanceQuotaExceededFault
    InsufficientAvailableIPsInSubnetFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientAvailableIPsInSubnetFault.type = Types::InsufficientAvailableIPsInSubnetFault
    InsufficientDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientDBClusterCapacityFault.type = Types::InsufficientDBClusterCapacityFault
    InsufficientDBInstanceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientDBInstanceCapacityFault.type = Types::InsufficientDBInstanceCapacityFault
    InsufficientStorageClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientStorageClusterCapacityFault.type = Types::InsufficientStorageClusterCapacityFault
    Integration.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    Integration.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TargetArn"))
    Integration.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    Integration.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    Integration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    Integration.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    Integration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    Integration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Integration.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    Integration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    Integration.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    Integration.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    Integration.type = Types::Integration
    IntegrationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationAlreadyExistsFault.type = Types::IntegrationAlreadyExistsFault
    IntegrationConflictOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationConflictOperationFault.type = Types::IntegrationConflictOperationFault
    IntegrationError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IntegrationError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    IntegrationError.type = Types::IntegrationError
    IntegrationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationError, name: "member", traits: {"smithy.api#xmlName" => "IntegrationError"}))
    IntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "member", traits: {"smithy.api#xmlName" => "Integration"}))
    IntegrationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationNotFoundFault.type = Types::IntegrationNotFoundFault
    IntegrationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationQuotaExceededFault.type = Types::IntegrationQuotaExceededFault
    IntegrationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "creating"}))
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    IntegrationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "modifying"}))
    IntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    IntegrationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    IntegrationStatus.add_member(:syncing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNCING", traits: {"smithy.api#enumValue" => "syncing"}))
    IntegrationStatus.add_member(:needs_attention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEEDS_ATTENTION", traits: {"smithy.api#enumValue" => "needs_attention"}))
    InvalidBlueGreenDeploymentStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidBlueGreenDeploymentStateFault.type = Types::InvalidBlueGreenDeploymentStateFault
    InvalidCustomDBEngineVersionStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCustomDBEngineVersionStateFault.type = Types::InvalidCustomDBEngineVersionStateFault
    InvalidDBClusterAutomatedBackupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterAutomatedBackupStateFault.type = Types::InvalidDBClusterAutomatedBackupStateFault
    InvalidDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterCapacityFault.type = Types::InvalidDBClusterCapacityFault
    InvalidDBClusterEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterEndpointStateFault.type = Types::InvalidDBClusterEndpointStateFault
    InvalidDBClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterSnapshotStateFault.type = Types::InvalidDBClusterSnapshotStateFault
    InvalidDBClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBClusterStateFault.type = Types::InvalidDBClusterStateFault
    InvalidDBInstanceAutomatedBackupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBInstanceAutomatedBackupStateFault.type = Types::InvalidDBInstanceAutomatedBackupStateFault
    InvalidDBInstanceStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBInstanceStateFault.type = Types::InvalidDBInstanceStateFault
    InvalidDBParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBParameterGroupStateFault.type = Types::InvalidDBParameterGroupStateFault
    InvalidDBProxyEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBProxyEndpointStateFault.type = Types::InvalidDBProxyEndpointStateFault
    InvalidDBProxyStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBProxyStateFault.type = Types::InvalidDBProxyStateFault
    InvalidDBSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSecurityGroupStateFault.type = Types::InvalidDBSecurityGroupStateFault
    InvalidDBShardGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBShardGroupStateFault.type = Types::InvalidDBShardGroupStateFault
    InvalidDBSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSnapshotStateFault.type = Types::InvalidDBSnapshotStateFault
    InvalidDBSubnetGroupFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSubnetGroupFault.type = Types::InvalidDBSubnetGroupFault
    InvalidDBSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSubnetGroupStateFault.type = Types::InvalidDBSubnetGroupStateFault
    InvalidDBSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDBSubnetStateFault.type = Types::InvalidDBSubnetStateFault
    InvalidEventSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidEventSubscriptionStateFault.type = Types::InvalidEventSubscriptionStateFault
    InvalidExportOnlyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidExportOnlyFault.type = Types::InvalidExportOnlyFault
    InvalidExportSourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidExportSourceStateFault.type = Types::InvalidExportSourceStateFault
    InvalidExportTaskStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidExportTaskStateFault.type = Types::InvalidExportTaskStateFault
    InvalidGlobalClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidGlobalClusterStateFault.type = Types::InvalidGlobalClusterStateFault
    InvalidIntegrationStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidIntegrationStateFault.type = Types::InvalidIntegrationStateFault
    InvalidOptionGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidOptionGroupStateFault.type = Types::InvalidOptionGroupStateFault
    InvalidResourceStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidResourceStateFault.type = Types::InvalidResourceStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidS3BucketFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidS3BucketFault.type = Types::InvalidS3BucketFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IssueDetails.add_member(:performance_issue_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceIssueDetails, name: "PerformanceIssueDetails"))
    IssueDetails.type = Types::IssueDetails
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    LifecycleSupportName.add_member(:open_source_rds_standard_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_SOURCE_RDS_STANDARD_SUPPORT", traits: {"smithy.api#enumValue" => "open-source-rds-standard-support"}))
    LifecycleSupportName.add_member(:open_source_rds_extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_SOURCE_RDS_EXTENDED_SUPPORT", traits: {"smithy.api#enumValue" => "open-source-rds-extended-support"}))
    LimitlessDatabase.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitlessDatabaseStatus, name: "Status"))
    LimitlessDatabase.add_member(:min_required_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinRequiredACU"))
    LimitlessDatabase.type = Types::LimitlessDatabase
    LimitlessDatabaseStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    LimitlessDatabaseStatus.add_member(:not_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "not-in-use"}))
    LimitlessDatabaseStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    LimitlessDatabaseStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    LimitlessDatabaseStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "enabling"}))
    LimitlessDatabaseStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "disabling"}))
    LimitlessDatabaseStatus.add_member(:modifying_max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING_MAX_CAPACITY", traits: {"smithy.api#enumValue" => "modifying-max-capacity"}))
    LimitlessDatabaseStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    LocalWriteForwardingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    LocalWriteForwardingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    LocalWriteForwardingStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "enabling"}))
    LocalWriteForwardingStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "disabling"}))
    LocalWriteForwardingStatus.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "requested"}))
    LogTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MasterUserAuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    MasterUserAuthenticationType.add_member(:iam_db_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_DB_AUTH", traits: {"smithy.api#enumValue" => "iam-db-auth"}))
    MasterUserSecret.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn"))
    MasterUserSecret.add_member(:secret_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretStatus"))
    MasterUserSecret.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    MasterUserSecret.type = Types::MasterUserSecret
    MaxDBShardGroupLimitReached.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    MaxDBShardGroupLimitReached.type = Types::MaxDBShardGroupLimitReached
    Metric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Metric.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReferenceList, name: "References"))
    Metric.add_member(:statistics_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatisticsDetails"))
    Metric.add_member(:metric_query, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricQuery, name: "MetricQuery"))
    Metric.type = Types::Metric
    MetricList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "member"))
    MetricQuery.add_member(:performance_insights_metric_query, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricQuery, name: "PerformanceInsightsMetricQuery"))
    MetricQuery.type = Types::MetricQuery
    MetricReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    MetricReference.add_member(:reference_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDetails, name: "ReferenceDetails"))
    MetricReference.type = Types::MetricReference
    MetricReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricReference, name: "member"))
    MinimumEngineVersionPerAllowedValue.add_member(:allowed_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValue"))
    MinimumEngineVersionPerAllowedValue.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    MinimumEngineVersionPerAllowedValue.type = Types::MinimumEngineVersionPerAllowedValue
    MinimumEngineVersionPerAllowedValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumEngineVersionPerAllowedValue, name: "member", traits: {"smithy.api#xmlName" => "MinimumEngineVersionPerAllowedValue"}))
    ModifyActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    ModifyActivityStreamRequest.add_member(:audit_policy_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditPolicyState, name: "AuditPolicyState"))
    ModifyActivityStreamRequest.type = Types::ModifyActivityStreamRequest
    ModifyActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ModifyActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KinesisStreamName"))
    ModifyActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamStatus, name: "Status"))
    ModifyActivityStreamResponse.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamMode, name: "Mode"))
    ModifyActivityStreamResponse.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EngineNativeAuditFieldsIncluded"))
    ModifyActivityStreamResponse.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamPolicyStatus, name: "PolicyStatus"))
    ModifyActivityStreamResponse.type = Types::ModifyActivityStreamResponse
    ModifyCertificatesMessage.add_member(:certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CertificateIdentifier"))
    ModifyCertificatesMessage.add_member(:remove_customer_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RemoveCustomerOverride"))
    ModifyCertificatesMessage.type = Types::ModifyCertificatesMessage
    ModifyCertificatesResult.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "Certificate"))
    ModifyCertificatesResult.type = Types::ModifyCertificatesResult
    ModifyCurrentDBClusterCapacityMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCurrentDBClusterCapacityMessage.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Capacity"))
    ModifyCurrentDBClusterCapacityMessage.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsBeforeTimeout"))
    ModifyCurrentDBClusterCapacityMessage.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimeoutAction"))
    ModifyCurrentDBClusterCapacityMessage.type = Types::ModifyCurrentDBClusterCapacityMessage
    ModifyCurrentDBClusterCapacityOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    ModifyCurrentDBClusterCapacityOutput.add_member(:pending_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PendingCapacity"))
    ModifyCurrentDBClusterCapacityOutput.add_member(:current_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "CurrentCapacity"))
    ModifyCurrentDBClusterCapacityOutput.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsBeforeTimeout"))
    ModifyCurrentDBClusterCapacityOutput.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimeoutAction"))
    ModifyCurrentDBClusterCapacityOutput.type = Types::ModifyCurrentDBClusterCapacityOutput
    ModifyCustomDBEngineVersionMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineName, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDBEngineVersionMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineVersion, name: "EngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDBEngineVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ModifyCustomDBEngineVersionMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEngineVersionStatus, name: "Status"))
    ModifyCustomDBEngineVersionMessage.type = Types::ModifyCustomDBEngineVersionMessage
    ModifyCustomDBEngineVersionOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyCustomDBEngineVersionOutput.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    ModifyCustomDBEngineVersionOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3BucketName"))
    ModifyCustomDBEngineVersionOutput.add_member(:database_installation_files_s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseInstallationFilesS3Prefix"))
    ModifyCustomDBEngineVersionOutput.add_member(:custom_db_engine_version_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionManifest, name: "CustomDBEngineVersionManifest"))
    ModifyCustomDBEngineVersionOutput.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupFamily"))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineDescription"))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionArn"))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineVersionDescription"))
    ModifyCustomDBEngineVersionOutput.add_member(:default_character_set, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSet, name: "DefaultCharacterSet"))
    ModifyCustomDBEngineVersionOutput.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDBEngineVersionAMI, name: "Image"))
    ModifyCustomDBEngineVersionOutput.add_member(:db_engine_media_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBEngineMediaType"))
    ModifyCustomDBEngineVersionOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    ModifyCustomDBEngineVersionOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedCharacterSets"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_nchar_character_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedCharacterSetsList, name: "SupportedNcharCharacterSets"))
    ModifyCustomDBEngineVersionOutput.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidUpgradeTargetList, name: "ValidUpgradeTarget"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_timezones, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedTimezonesList, name: "SupportedTimezones"))
    ModifyCustomDBEngineVersionOutput.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "ExportableLogTypes"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLogExportsToCloudwatchLogs"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsReadReplica"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_feature_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureNameList, name: "SupportedFeatureNames"))
    ModifyCustomDBEngineVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsParallelQuery"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsGlobalDatabases"))
    ModifyCustomDBEngineVersionOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsBabelfish"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsLimitlessDatabase"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_certificate_rotation_without_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsCertificateRotationWithoutRestart"))
    ModifyCustomDBEngineVersionOutput.add_member(:supported_ca_certificate_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: CACertificateIdentifiersList, name: "SupportedCACertificateIdentifiers"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLocalWriteForwarding"))
    ModifyCustomDBEngineVersionOutput.add_member(:supports_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIntegrations"))
    ModifyCustomDBEngineVersionOutput.add_member(:serverless_v2_features_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2FeaturesSupport, name: "ServerlessV2FeaturesSupport"))
    ModifyCustomDBEngineVersionOutput.type = Types::ModifyCustomDBEngineVersionOutput
    ModifyDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    ModifyDBClusterEndpointMessage.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    ModifyDBClusterEndpointMessage.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    ModifyDBClusterEndpointMessage.type = Types::ModifyDBClusterEndpointMessage
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointResourceIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    ModifyDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointType"))
    ModifyDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomEndpointType"))
    ModifyDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StaticMembers"))
    ModifyDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExcludedMembers"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterEndpointArn"))
    ModifyDBClusterEndpointOutput.type = Types::ModifyDBClusterEndpointOutput
    ModifyDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewDBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    ModifyDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    ModifyDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    ModifyDBClusterMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogsExportConfiguration, name: "CloudwatchLogsExportConfiguration"))
    ModifyDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowMajorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:db_instance_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceParameterGroupName"))
    ModifyDBClusterMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    ModifyDBClusterMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    ModifyDBClusterMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfiguration, name: "ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    ModifyDBClusterMessage.add_member(:enable_http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableHttpEndpoint"))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    ModifyDBClusterMessage.add_member(:enable_global_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableGlobalWriteForwarding"))
    ModifyDBClusterMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterInstanceClass"))
    ModifyDBClusterMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    ModifyDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    ModifyDBClusterMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    ModifyDBClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    ModifyDBClusterMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    ModifyDBClusterMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    ModifyDBClusterMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    ModifyDBClusterMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    ModifyDBClusterMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RotateMasterUserPassword"))
    ModifyDBClusterMessage.add_member(:enable_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableLocalWriteForwarding"))
    ModifyDBClusterMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    ModifyDBClusterMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    ModifyDBClusterMessage.add_member(:allow_engine_mode_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowEngineModeChange"))
    ModifyDBClusterMessage.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsBackupRecoveryPointArn, name: "AwsBackupRecoveryPointArn"))
    ModifyDBClusterMessage.add_member(:enable_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableLimitlessDatabase"))
    ModifyDBClusterMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    ModifyDBClusterMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserAuthenticationType, name: "MasterUserAuthenticationType"))
    ModifyDBClusterMessage.type = Types::ModifyDBClusterMessage
    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.type = Types::ModifyDBClusterParameterGroupMessage
    ModifyDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ModifyDBClusterParameterGroupOutput.type = Types::ModifyDBClusterParameterGroupOutput
    ModifyDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    ModifyDBClusterResult.type = Types::ModifyDBClusterResult
    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToAdd"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToRemove"))
    ModifyDBClusterSnapshotAttributeMessage.type = Types::ModifyDBClusterSnapshotAttributeMessage
    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterSnapshotAttributesResult, name: "DBClusterSnapshotAttributesResult"))
    ModifyDBClusterSnapshotAttributeResult.type = Types::ModifyDBClusterSnapshotAttributeResult
    ModifyDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    ModifyDBInstanceMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    ModifyDBInstanceMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupNameList, name: "DBSecurityGroups"))
    ModifyDBInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyDBInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    ModifyDBInstanceMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyDBInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    ModifyDBInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyDBInstanceMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowMajorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    ModifyDBInstanceMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    ModifyDBInstanceMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    ModifyDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "TdeCredentialPassword"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    ModifyDBInstanceMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainFqdn"))
    ModifyDBInstanceMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainOu"))
    ModifyDBInstanceMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainAuthSecretArn"))
    ModifyDBInstanceMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DomainDnsIps"))
    ModifyDBInstanceMessage.add_member(:disable_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DisableDomain"))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    ModifyDBInstanceMessage.add_member(:db_port_number, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DBPortNumber"))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PromotionTier"))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    ModifyDBInstanceMessage.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    ModifyDBInstanceMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudwatchLogsExportConfiguration, name: "CloudwatchLogsExportConfiguration"))
    ModifyDBInstanceMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDefaultProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    ModifyDBInstanceMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CertificateRotationRestart"))
    ModifyDBInstanceMessage.add_member(:replica_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaMode, name: "ReplicaMode"))
    ModifyDBInstanceMessage.add_member(:automation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationMode, name: "AutomationMode"))
    ModifyDBInstanceMessage.add_member(:resume_full_automation_mode_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ResumeFullAutomationModeMinutes"))
    ModifyDBInstanceMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCustomerOwnedIp"))
    ModifyDBInstanceMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    ModifyDBInstanceMessage.add_member(:aws_backup_recovery_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsBackupRecoveryPointArn, name: "AwsBackupRecoveryPointArn"))
    ModifyDBInstanceMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RotateMasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    ModifyDBInstanceMessage.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    ModifyDBInstanceMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    ModifyDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyDBInstanceMessage.add_member(:master_user_authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserAuthenticationType, name: "MasterUserAuthenticationType"))
    ModifyDBInstanceMessage.type = Types::ModifyDBInstanceMessage
    ModifyDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    ModifyDBInstanceResult.type = Types::ModifyDBInstanceResult
    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.type = Types::ModifyDBParameterGroupMessage
    ModifyDBParameterGroupOutput.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    ModifyDBParameterGroupOutput.type = Types::ModifyDBParameterGroupOutput
    ModifyDBProxyEndpointRequest.add_member(:db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointName, name: "DBProxyEndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyEndpointRequest.add_member(:new_db_proxy_endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpointName, name: "NewDBProxyEndpointName"))
    ModifyDBProxyEndpointRequest.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "VpcSecurityGroupIds"))
    ModifyDBProxyEndpointRequest.type = Types::ModifyDBProxyEndpointRequest
    ModifyDBProxyEndpointResponse.add_member(:db_proxy_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyEndpoint, name: "DBProxyEndpoint"))
    ModifyDBProxyEndpointResponse.type = Types::ModifyDBProxyEndpointResponse
    ModifyDBProxyRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyRequest.add_member(:new_db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "NewDBProxyName"))
    ModifyDBProxyRequest.add_member(:default_auth_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultAuthScheme, name: "DefaultAuthScheme"))
    ModifyDBProxyRequest.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAuthConfigList, name: "Auth"))
    ModifyDBProxyRequest.add_member(:require_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RequireTLS"))
    ModifyDBProxyRequest.add_member(:idle_client_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "IdleClientTimeout"))
    ModifyDBProxyRequest.add_member(:debug_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DebugLogging"))
    ModifyDBProxyRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn"))
    ModifyDBProxyRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SecurityGroups"))
    ModifyDBProxyRequest.type = Types::ModifyDBProxyRequest
    ModifyDBProxyResponse.add_member(:db_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxy, name: "DBProxy"))
    ModifyDBProxyResponse.type = Types::ModifyDBProxyResponse
    ModifyDBProxyTargetGroupRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroupName, name: "TargetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyTargetGroupRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBProxyTargetGroupRequest.add_member(:connection_pool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPoolConfiguration, name: "ConnectionPoolConfig"))
    ModifyDBProxyTargetGroupRequest.add_member(:new_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewName"))
    ModifyDBProxyTargetGroupRequest.type = Types::ModifyDBProxyTargetGroupRequest
    ModifyDBProxyTargetGroupResponse.add_member(:db_proxy_target_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroup, name: "DBProxyTargetGroup"))
    ModifyDBProxyTargetGroupResponse.type = Types::ModifyDBProxyTargetGroupResponse
    ModifyDBRecommendationMessage.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecommendationId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBRecommendationMessage.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Locale"))
    ModifyDBRecommendationMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyDBRecommendationMessage.add_member(:recommended_action_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionUpdateList, name: "RecommendedActionUpdates"))
    ModifyDBRecommendationMessage.type = Types::ModifyDBRecommendationMessage
    ModifyDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBShardGroupMessage.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    ModifyDBShardGroupMessage.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    ModifyDBShardGroupMessage.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    ModifyDBShardGroupMessage.type = Types::ModifyDBShardGroupMessage
    ModifyDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupResourceId"))
    ModifyDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    ModifyDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    ModifyDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    ModifyDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    ModifyDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    ModifyDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    ModifyDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    ModifyDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupArn"))
    ModifyDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ModifyDBShardGroupOutput.type = Types::ModifyDBShardGroupOutput
    ModifyDBSnapshotAttributeMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToAdd"))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "ValuesToRemove"))
    ModifyDBSnapshotAttributeMessage.type = Types::ModifyDBSnapshotAttributeMessage
    ModifyDBSnapshotAttributeResult.add_member(:db_snapshot_attributes_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshotAttributesResult, name: "DBSnapshotAttributesResult"))
    ModifyDBSnapshotAttributeResult.type = Types::ModifyDBSnapshotAttributeResult
    ModifyDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    ModifyDBSnapshotMessage.type = Types::ModifyDBSnapshotMessage
    ModifyDBSnapshotResult.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSnapshot, name: "DBSnapshot"))
    ModifyDBSnapshotResult.type = Types::ModifyDBSnapshotResult
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupDescription"))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.type = Types::ModifyDBSubnetGroupMessage
    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSubnetGroup, name: "DBSubnetGroup"))
    ModifyDBSubnetGroupResult.type = Types::ModifyDBSubnetGroupResult
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "NewGlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    ModifyGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyGlobalClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowMajorVersionUpgrade"))
    ModifyGlobalClusterMessage.type = Types::ModifyGlobalClusterMessage
    ModifyGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    ModifyGlobalClusterResult.type = Types::ModifyGlobalClusterResult
    ModifyIntegrationMessage.add_member(:integration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "IntegrationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    ModifyIntegrationMessage.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    ModifyIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    ModifyIntegrationMessage.type = Types::ModifyIntegrationMessage
    ModifyIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    ModifyIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TargetArn"))
    ModifyIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    ModifyIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    ModifyIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    ModifyIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    ModifyIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "Status"))
    ModifyIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ModifyIntegrationOutput.add_member(:data_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFilter, name: "DataFilter"))
    ModifyIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    ModifyIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    ModifyIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    ModifyIntegrationOutput.type = Types::ModifyIntegrationOutput
    ModifyOptionGroupMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyOptionGroupMessage.add_member(:options_to_include, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionConfigurationList, name: "OptionsToInclude"))
    ModifyOptionGroupMessage.add_member(:options_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionNamesList, name: "OptionsToRemove"))
    ModifyOptionGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyOptionGroupMessage.type = Types::ModifyOptionGroupMessage
    ModifyOptionGroupResult.add_member(:option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroup, name: "OptionGroup"))
    ModifyOptionGroupResult.type = Types::ModifyOptionGroupResult
    ModifyTenantDatabaseMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTenantDatabaseMessage.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyTenantDatabaseMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:new_tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewTenantDBName"))
    ModifyTenantDatabaseMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:rotate_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RotateMasterUserPassword"))
    ModifyTenantDatabaseMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    ModifyTenantDatabaseMessage.type = Types::ModifyTenantDatabaseMessage
    ModifyTenantDatabaseResult.add_member(:tenant_database, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabase, name: "TenantDatabase"))
    ModifyTenantDatabaseResult.type = Types::ModifyTenantDatabaseResult
    NetworkTypeNotSupported.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NetworkTypeNotSupported.type = Types::NetworkTypeNotSupported
    Option.add_member(:option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionName"))
    Option.add_member(:option_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionDescription"))
    Option.add_member(:persistent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Persistent"))
    Option.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Permanent"))
    Option.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    Option.add_member(:option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionVersion"))
    Option.add_member(:option_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionSettingConfigurationList, name: "OptionSettings"))
    Option.add_member(:db_security_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupMembershipList, name: "DBSecurityGroupMemberships"))
    Option.add_member(:vpc_security_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroupMemberships"))
    Option.type = Types::Option
    OptionConfiguration.add_member(:option_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    OptionConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    OptionConfiguration.add_member(:option_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionVersion"))
    OptionConfiguration.add_member(:db_security_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupNameList, name: "DBSecurityGroupMemberships"))
    OptionConfiguration.add_member(:vpc_security_group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupMemberships"))
    OptionConfiguration.add_member(:option_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionSettingsList, name: "OptionSettings"))
    OptionConfiguration.type = Types::OptionConfiguration
    OptionConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionConfiguration, name: "member", traits: {"smithy.api#xmlName" => "OptionConfiguration"}))
    OptionGroup.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    OptionGroup.add_member(:option_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupDescription"))
    OptionGroup.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    OptionGroup.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    OptionGroup.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionsList, name: "Options"))
    OptionGroup.add_member(:allows_vpc_and_non_vpc_instance_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowsVpcAndNonVpcInstanceMemberships"))
    OptionGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    OptionGroup.add_member(:option_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupArn"))
    OptionGroup.add_member(:source_option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceOptionGroup"))
    OptionGroup.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceAccountId"))
    OptionGroup.add_member(:copy_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CopyTimestamp"))
    OptionGroup.type = Types::OptionGroup
    OptionGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    OptionGroupAlreadyExistsFault.type = Types::OptionGroupAlreadyExistsFault
    OptionGroupMembership.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    OptionGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    OptionGroupMembership.type = Types::OptionGroupMembership
    OptionGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "OptionGroupMembership"}))
    OptionGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    OptionGroupNotFoundFault.type = Types::OptionGroupNotFoundFault
    OptionGroupOption.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    OptionGroupOption.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    OptionGroupOption.add_member(:engine_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineName"))
    OptionGroupOption.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    OptionGroupOption.add_member(:minimum_required_minor_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumRequiredMinorEngineVersion"))
    OptionGroupOption.add_member(:port_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PortRequired"))
    OptionGroupOption.add_member(:default_port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DefaultPort"))
    OptionGroupOption.add_member(:options_depended_on, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionsDependedOn, name: "OptionsDependedOn"))
    OptionGroupOption.add_member(:options_conflicts_with, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionsConflictsWith, name: "OptionsConflictsWith"))
    OptionGroupOption.add_member(:persistent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Persistent"))
    OptionGroupOption.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Permanent"))
    OptionGroupOption.add_member(:requires_auto_minor_engine_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequiresAutoMinorEngineVersionUpgrade"))
    OptionGroupOption.add_member(:vpc_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "VpcOnly"))
    OptionGroupOption.add_member(:supports_option_version_downgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsOptionVersionDowngrade"))
    OptionGroupOption.add_member(:option_group_option_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupOptionSettingsList, name: "OptionGroupOptionSettings"))
    OptionGroupOption.add_member(:option_group_option_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupOptionVersionsList, name: "OptionGroupOptionVersions"))
    OptionGroupOption.add_member(:copyable_cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyableCrossAccount"))
    OptionGroupOption.type = Types::OptionGroupOption
    OptionGroupOptionSetting.add_member(:setting_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SettingName"))
    OptionGroupOptionSetting.add_member(:setting_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SettingDescription"))
    OptionGroupOptionSetting.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultValue"))
    OptionGroupOptionSetting.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyType"))
    OptionGroupOptionSetting.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    OptionGroupOptionSetting.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    OptionGroupOptionSetting.add_member(:is_required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsRequired"))
    OptionGroupOptionSetting.add_member(:minimum_engine_version_per_allowed_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumEngineVersionPerAllowedValueList, name: "MinimumEngineVersionPerAllowedValue"))
    OptionGroupOptionSetting.type = Types::OptionGroupOptionSetting
    OptionGroupOptionSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupOptionSetting, name: "member", traits: {"smithy.api#xmlName" => "OptionGroupOptionSetting"}))
    OptionGroupOptionVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionVersion, name: "member", traits: {"smithy.api#xmlName" => "OptionVersion"}))
    OptionGroupOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupOption, name: "member", traits: {"smithy.api#xmlName" => "OptionGroupOption"}))
    OptionGroupOptionsMessage.add_member(:option_group_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroupOptionsList, name: "OptionGroupOptions"))
    OptionGroupOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    OptionGroupOptionsMessage.type = Types::OptionGroupOptionsMessage
    OptionGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    OptionGroupQuotaExceededFault.type = Types::OptionGroupQuotaExceededFault
    OptionGroupsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionGroup, name: "member", traits: {"smithy.api#xmlName" => "OptionGroup"}))
    OptionNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    OptionSetting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    OptionSetting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PotentiallySensitiveOptionSettingValue, name: "Value"))
    OptionSetting.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultValue"))
    OptionSetting.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    OptionSetting.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyType"))
    OptionSetting.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    OptionSetting.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    OptionSetting.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    OptionSetting.add_member(:is_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsCollection"))
    OptionSetting.type = Types::OptionSetting
    OptionSettingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionSetting, name: "member", traits: {"smithy.api#xmlName" => "OptionSetting"}))
    OptionSettingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionSetting, name: "member", traits: {"smithy.api#xmlName" => "OptionSetting"}))
    OptionVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version"))
    OptionVersion.add_member(:is_default, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefault"))
    OptionVersion.type = Types::OptionVersion
    OptionsConflictsWith.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "OptionConflictName"}))
    OptionsDependedOn.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "OptionName"}))
    OptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Option, name: "member", traits: {"smithy.api#xmlName" => "Option"}))
    OrderableDBInstanceOption.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    OrderableDBInstanceOption.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    OrderableDBInstanceOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    OrderableDBInstanceOption.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    OrderableDBInstanceOption.add_member(:availability_zone_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZoneGroup"))
    OrderableDBInstanceOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    OrderableDBInstanceOption.add_member(:multi_az_capable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZCapable"))
    OrderableDBInstanceOption.add_member(:read_replica_capable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReadReplicaCapable"))
    OrderableDBInstanceOption.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Vpc"))
    OrderableDBInstanceOption.add_member(:supports_storage_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsStorageEncryption"))
    OrderableDBInstanceOption.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    OrderableDBInstanceOption.add_member(:supports_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIops"))
    OrderableDBInstanceOption.add_member(:supports_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsStorageThroughput"))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsEnhancedMonitoring"))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsIAMDatabaseAuthentication"))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsPerformanceInsights"))
    OrderableDBInstanceOption.add_member(:min_storage_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinStorageSize"))
    OrderableDBInstanceOption.add_member(:max_storage_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxStorageSize"))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinIopsPerGib"))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxIopsPerGib"))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinStorageThroughputPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxStorageThroughputPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_storage_throughput_per_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinStorageThroughputPerIops"))
    OrderableDBInstanceOption.add_member(:max_storage_throughput_per_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxStorageThroughputPerIops"))
    OrderableDBInstanceOption.add_member(:available_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableProcessorFeatureList, name: "AvailableProcessorFeatures"))
    OrderableDBInstanceOption.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    OrderableDBInstanceOption.add_member(:supports_storage_autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsStorageAutoscaling"))
    OrderableDBInstanceOption.add_member(:supports_kerberos_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsKerberosAuthentication"))
    OrderableDBInstanceOption.add_member(:outpost_capable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OutpostCapable"))
    OrderableDBInstanceOption.add_member(:supported_activity_stream_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamModeList, name: "SupportedActivityStreamModes"))
    OrderableDBInstanceOption.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsGlobalDatabases"))
    OrderableDBInstanceOption.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SupportedNetworkTypes"))
    OrderableDBInstanceOption.add_member(:supports_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsClusters"))
    OrderableDBInstanceOption.add_member(:supports_dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsDedicatedLogVolume"))
    OrderableDBInstanceOption.add_member(:supports_http_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsHttpEndpoint"))
    OrderableDBInstanceOption.type = Types::OrderableDBInstanceOption
    OrderableDBInstanceOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableDBInstanceOption, name: "member", traits: {"smithy.api#xmlName" => "OrderableDBInstanceOption"}))
    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableDBInstanceOptionsList, name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    OrderableDBInstanceOptionsMessage.type = Types::OrderableDBInstanceOptionsMessage
    Outpost.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    Outpost.type = Types::Outpost
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PotentiallySensitiveParameterValue, name: "ParameterValue"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyType"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    Parameter.add_member(:apply_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplyMethod, name: "ApplyMethod"))
    Parameter.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    Parameter.type = Types::Parameter
    ParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member", traits: {"smithy.api#xmlName" => "Parameter"}))
    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogTypesToEnable"))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogTypesToDisable"))
    PendingCloudwatchLogsExports.type = Types::PendingCloudwatchLogsExports
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceAction, name: "member", traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"}))
    PendingMaintenanceActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePendingMaintenanceActions, name: "member", traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"}))
    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActions, name: "PendingMaintenanceActions"))
    PendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    PendingMaintenanceActionsMessage.type = Types::PendingMaintenanceActionsMessage
    PendingModifiedValues.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    PendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    PendingModifiedValues.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    PendingModifiedValues.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingCloudwatchLogsExports, name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    PendingModifiedValues.add_member(:automation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationMode, name: "AutomationMode"))
    PendingModifiedValues.add_member(:resume_full_automation_mode_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ResumeFullAutomationModeTime"))
    PendingModifiedValues.add_member(:multi_tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiTenant"))
    PendingModifiedValues.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "IAMDatabaseAuthenticationEnabled"))
    PendingModifiedValues.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    PendingModifiedValues.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    PendingModifiedValues.type = Types::PendingModifiedValues
    PerformanceInsightsMetricDimensionGroup.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Dimensions"))
    PerformanceInsightsMetricDimensionGroup.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Group"))
    PerformanceInsightsMetricDimensionGroup.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit"))
    PerformanceInsightsMetricDimensionGroup.type = Types::PerformanceInsightsMetricDimensionGroup
    PerformanceInsightsMetricQuery.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceInsightsMetricDimensionGroup, name: "GroupBy"))
    PerformanceInsightsMetricQuery.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Metric"))
    PerformanceInsightsMetricQuery.type = Types::PerformanceInsightsMetricQuery
    PerformanceIssueDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    PerformanceIssueDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    PerformanceIssueDetails.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricList, name: "Metrics"))
    PerformanceIssueDetails.add_member(:analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Analysis"))
    PerformanceIssueDetails.type = Types::PerformanceIssueDetails
    PointInTimeRestoreNotEnabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    PointInTimeRestoreNotEnabledFault.type = Types::PointInTimeRestoreNotEnabledFault
    ProcessorFeature.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ProcessorFeature.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    ProcessorFeature.type = Types::ProcessorFeature
    ProcessorFeatureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeature, name: "member", traits: {"smithy.api#xmlName" => "ProcessorFeature"}))
    PromoteReadReplicaDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromoteReadReplicaDBClusterMessage.type = Types::PromoteReadReplicaDBClusterMessage
    PromoteReadReplicaDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    PromoteReadReplicaDBClusterResult.type = Types::PromoteReadReplicaDBClusterResult
    PromoteReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromoteReadReplicaMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    PromoteReadReplicaMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    PromoteReadReplicaMessage.type = Types::PromoteReadReplicaMessage
    PromoteReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    PromoteReadReplicaResult.type = Types::PromoteReadReplicaResult
    ProvisionedIopsNotAvailableInAZFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ProvisionedIopsNotAvailableInAZFault.type = Types::ProvisionedIopsNotAvailableInAZFault
    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstancesOfferingId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstanceId"))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:db_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DBInstanceCount"))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PurchaseReservedDBInstancesOfferingMessage.type = Types::PurchaseReservedDBInstancesOfferingMessage
    PurchaseReservedDBInstancesOfferingResult.add_member(:reserved_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedDBInstance, name: "ReservedDBInstance"))
    PurchaseReservedDBInstancesOfferingResult.type = Types::PurchaseReservedDBInstancesOfferingResult
    Range.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "From"))
    Range.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "To"))
    Range.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Step"))
    Range.type = Types::Range
    RangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "member", traits: {"smithy.api#xmlName" => "Range"}))
    RdsCustomClusterConfiguration.add_member(:interconnect_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InterconnectSubnetId"))
    RdsCustomClusterConfiguration.add_member(:transit_gateway_multicast_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TransitGatewayMulticastDomainId"))
    RdsCustomClusterConfiguration.add_member(:replica_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaMode, name: "ReplicaMode"))
    RdsCustomClusterConfiguration.type = Types::RdsCustomClusterConfiguration
    ReadReplicaDBClusterIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ReadReplicaDBClusterIdentifier"}))
    ReadReplicaDBInstanceIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ReadReplicaDBInstanceIdentifier"}))
    ReadReplicaIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ReadReplicaIdentifier"}))
    ReadersArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    RebootDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBClusterMessage.type = Types::RebootDBClusterMessage
    RebootDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RebootDBClusterResult.type = Types::RebootDBClusterResult
    RebootDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ForceFailover"))
    RebootDBInstanceMessage.type = Types::RebootDBInstanceMessage
    RebootDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    RebootDBInstanceResult.type = Types::RebootDBInstanceResult
    RebootDBShardGroupMessage.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBShardGroupMessage.type = Types::RebootDBShardGroupMessage
    RebootDBShardGroupOutput.add_member(:db_shard_group_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupResourceId"))
    RebootDBShardGroupOutput.add_member(:db_shard_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBShardGroupIdentifier, name: "DBShardGroupIdentifier"))
    RebootDBShardGroupOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier"))
    RebootDBShardGroupOutput.add_member(:max_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxACU"))
    RebootDBShardGroupOutput.add_member(:min_acu, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinACU"))
    RebootDBShardGroupOutput.add_member(:compute_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ComputeRedundancy"))
    RebootDBShardGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    RebootDBShardGroupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RebootDBShardGroupOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    RebootDBShardGroupOutput.add_member(:db_shard_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBShardGroupArn"))
    RebootDBShardGroupOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    RebootDBShardGroupOutput.type = Types::RebootDBShardGroupOutput
    RecommendedAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActionId"))
    RecommendedAction.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    RecommendedAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    RecommendedAction.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Operation"))
    RecommendedAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionParameterList, name: "Parameters"))
    RecommendedAction.add_member(:apply_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ApplyModes"))
    RecommendedAction.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    RecommendedAction.add_member(:issue_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueDetails, name: "IssueDetails"))
    RecommendedAction.add_member(:context_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextAttributeList, name: "ContextAttributes"))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedAction, name: "member"))
    RecommendedActionParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    RecommendedActionParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    RecommendedActionParameter.type = Types::RecommendedActionParameter
    RecommendedActionParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionParameter, name: "member"))
    RecommendedActionUpdate.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommendedActionUpdate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RecommendedActionUpdate.type = Types::RecommendedActionUpdate
    RecommendedActionUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionUpdate, name: "member"))
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecurringChargeFrequency"))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringCharge, name: "member", traits: {"smithy.api#xmlName" => "RecurringCharge"}))
    ReferenceDetails.add_member(:scalar_reference_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarReferenceDetails, name: "ScalarReferenceDetails"))
    ReferenceDetails.type = Types::ReferenceDetails
    RegisterDBProxyTargetsRequest.add_member(:db_proxy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyName, name: "DBProxyName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterDBProxyTargetsRequest.add_member(:target_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroupName, name: "TargetGroupName"))
    RegisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DBInstanceIdentifiers"))
    RegisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DBClusterIdentifiers"))
    RegisterDBProxyTargetsRequest.type = Types::RegisterDBProxyTargetsRequest
    RegisterDBProxyTargetsResponse.add_member(:db_proxy_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "DBProxyTargets"))
    RegisterDBProxyTargetsResponse.type = Types::RegisterDBProxyTargetsResponse
    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.type = Types::RemoveFromGlobalClusterMessage
    RemoveFromGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    RemoveFromGlobalClusterResult.type = Types::RemoveFromGlobalClusterResult
    RemoveRoleFromDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName"))
    RemoveRoleFromDBClusterMessage.type = Types::RemoveRoleFromDBClusterMessage
    RemoveRoleFromDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FeatureName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBInstanceMessage.type = Types::RemoveRoleFromDBInstanceMessage
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.type = Types::RemoveSourceIdentifierFromSubscriptionMessage
    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    RemoveSourceIdentifierFromSubscriptionResult.type = Types::RemoveSourceIdentifierFromSubscriptionResult
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    ReplicaMode.add_member(:open_read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_READ_ONLY", traits: {"smithy.api#enumValue" => "open-read-only"}))
    ReplicaMode.add_member(:mounted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOUNTED", traits: {"smithy.api#enumValue" => "mounted"}))
    ReservedDBInstance.add_member(:reserved_db_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstanceId"))
    ReservedDBInstance.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstancesOfferingId"))
    ReservedDBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    ReservedDBInstance.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ReservedDBInstance.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedDBInstance.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedDBInstance.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedDBInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrencyCode"))
    ReservedDBInstance.add_member(:db_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DBInstanceCount"))
    ReservedDBInstance.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    ReservedDBInstance.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedDBInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZ"))
    ReservedDBInstance.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    ReservedDBInstance.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedDBInstance.add_member(:reserved_db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstanceArn"))
    ReservedDBInstance.add_member(:lease_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LeaseId"))
    ReservedDBInstance.type = Types::ReservedDBInstance
    ReservedDBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedDBInstanceAlreadyExistsFault.type = Types::ReservedDBInstanceAlreadyExistsFault
    ReservedDBInstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedDBInstance, name: "member", traits: {"smithy.api#xmlName" => "ReservedDBInstance"}))
    ReservedDBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedDBInstanceMessage.add_member(:reserved_db_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedDBInstanceList, name: "ReservedDBInstances"))
    ReservedDBInstanceMessage.type = Types::ReservedDBInstanceMessage
    ReservedDBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedDBInstanceNotFoundFault.type = Types::ReservedDBInstanceNotFoundFault
    ReservedDBInstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedDBInstanceQuotaExceededFault.type = Types::ReservedDBInstanceQuotaExceededFault
    ReservedDBInstancesOffering.add_member(:reserved_db_instances_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedDBInstancesOfferingId"))
    ReservedDBInstancesOffering.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    ReservedDBInstancesOffering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedDBInstancesOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedDBInstancesOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedDBInstancesOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrencyCode"))
    ReservedDBInstancesOffering.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    ReservedDBInstancesOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedDBInstancesOffering.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MultiAZ"))
    ReservedDBInstancesOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedDBInstancesOffering.type = Types::ReservedDBInstancesOffering
    ReservedDBInstancesOfferingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedDBInstancesOffering, name: "member", traits: {"smithy.api#xmlName" => "ReservedDBInstancesOffering"}))
    ReservedDBInstancesOfferingMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedDBInstancesOfferingList, name: "ReservedDBInstancesOfferings"))
    ReservedDBInstancesOfferingMessage.type = Types::ReservedDBInstancesOfferingMessage
    ReservedDBInstancesOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedDBInstancesOfferingNotFoundFault.type = Types::ReservedDBInstancesOfferingNotFoundFault
    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ResetAllParameters"))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    ResetDBClusterParameterGroupMessage.type = Types::ResetDBClusterParameterGroupMessage
    ResetDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    ResetDBClusterParameterGroupOutput.type = Types::ResetDBClusterParameterGroupOutput
    ResetDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ResetAllParameters"))
    ResetDBParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    ResetDBParameterGroupMessage.type = Types::ResetDBParameterGroupMessage
    ResetDBParameterGroupOutput.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    ResetDBParameterGroupOutput.type = Types::ResetDBParameterGroupOutput
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMaintenanceActionDetails, name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    RestoreDBClusterFromS3Message.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    RestoreDBClusterFromS3Message.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    RestoreDBClusterFromS3Message.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    RestoreDBClusterFromS3Message.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromS3Message.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromS3Message.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBClusterFromS3Message.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RestoreDBClusterFromS3Message.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBClusterFromS3Message.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    RestoreDBClusterFromS3Message.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBClusterFromS3Message.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    RestoreDBClusterFromS3Message.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    RestoreDBClusterFromS3Message.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBClusterFromS3Message.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    RestoreDBClusterFromS3Message.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBClusterFromS3Message.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterFromS3Message.add_member(:source_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEngine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:source_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    RestoreDBClusterFromS3Message.add_member(:s3_ingestion_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3IngestionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromS3Message.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    RestoreDBClusterFromS3Message.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromS3Message.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBClusterFromS3Message.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromS3Message.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    RestoreDBClusterFromS3Message.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    RestoreDBClusterFromS3Message.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBClusterFromS3Message.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBClusterFromS3Message.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromS3Message.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    RestoreDBClusterFromS3Message.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    RestoreDBClusterFromS3Message.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBClusterFromS3Message.type = Types::RestoreDBClusterFromS3Message
    RestoreDBClusterFromS3Result.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RestoreDBClusterFromS3Result.type = Types::RestoreDBClusterFromS3Result
    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZones, name: "AvailabilityZones"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterFromSnapshotMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    RestoreDBClusterFromSnapshotMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfiguration, name: "ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterInstanceClass"))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    RestoreDBClusterFromSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreDBClusterFromSnapshotMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsCustomClusterConfiguration, name: "RdsCustomClusterConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    RestoreDBClusterFromSnapshotMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBClusterFromSnapshotMessage.type = Types::RestoreDBClusterFromSnapshotMessage
    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.type = Types::RestoreDBClusterFromSnapshotResult
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RestoreType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RestoreToTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseLatestRestorableTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterToPointInTimeMessage.add_member(:backtrack_window, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "BacktrackWindow"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterParameterGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBClusterToPointInTimeMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterInstanceClass"))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreDBClusterToPointInTimeMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    RestoreDBClusterToPointInTimeMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDbClusterResourceId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessV2ScalingConfiguration, name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfiguration, name: "ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineMode"))
    RestoreDBClusterToPointInTimeMessage.add_member(:rds_custom_cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsCustomClusterConfiguration, name: "RdsCustomClusterConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    RestoreDBClusterToPointInTimeMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBClusterToPointInTimeMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBClusterToPointInTimeMessage.type = Types::RestoreDBClusterToPointInTimeMessage
    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.type = Types::RestoreDBClusterToPointInTimeResult
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "TdeCredentialPassword"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainFqdn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainOu"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainAuthSecretArn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DomainDnsIps"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCustomerOwnedIp"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomIamInstanceProfile"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterSnapshotIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceFromDBSnapshotMessage.type = Types::RestoreDBInstanceFromDBSnapshotMessage
    RestoreDBInstanceFromDBSnapshotResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    RestoreDBInstanceFromDBSnapshotResult.type = Types::RestoreDBInstanceFromDBSnapshotResult
    RestoreDBInstanceFromS3Message.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    RestoreDBInstanceFromS3Message.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    RestoreDBInstanceFromS3Message.add_member(:db_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroupNameList, name: "DBSecurityGroups"))
    RestoreDBInstanceFromS3Message.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBInstanceFromS3Message.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    RestoreDBInstanceFromS3Message.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    RestoreDBInstanceFromS3Message.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    RestoreDBInstanceFromS3Message.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredBackupWindow"))
    RestoreDBInstanceFromS3Message.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBInstanceFromS3Message.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    RestoreDBInstanceFromS3Message.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    RestoreDBInstanceFromS3Message.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceFromS3Message.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    RestoreDBInstanceFromS3Message.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    RestoreDBInstanceFromS3Message.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    RestoreDBInstanceFromS3Message.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreDBInstanceFromS3Message.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBInstanceFromS3Message.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBInstanceFromS3Message.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "StorageEncrypted"))
    RestoreDBInstanceFromS3Message.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MonitoringInterval"))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MonitoringRoleArn"))
    RestoreDBInstanceFromS3Message.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceFromS3Message.add_member(:source_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEngine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:source_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceEngineVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    RestoreDBInstanceFromS3Message.add_member(:s3_ingestion_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3IngestionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceFromS3Message.add_member(:database_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseInsightsMode, name: "DatabaseInsightsMode"))
    RestoreDBInstanceFromS3Message.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnablePerformanceInsights"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PerformanceInsightsKMSKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBInstanceFromS3Message.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromS3Message.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBInstanceFromS3Message.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    RestoreDBInstanceFromS3Message.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBInstanceFromS3Message.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    RestoreDBInstanceFromS3Message.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    RestoreDBInstanceFromS3Message.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    RestoreDBInstanceFromS3Message.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBInstanceFromS3Message.type = Types::RestoreDBInstanceFromS3Message
    RestoreDBInstanceFromS3Result.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    RestoreDBInstanceFromS3Result.type = Types::RestoreDBInstanceFromS3Result
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBInstanceIdentifier"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBInstanceToPointInTimeMessage.add_member(:restore_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RestoreTime"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseLatestRestorableTime"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceClass"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSubnetGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LicenseModel"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Iops"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "StorageThroughput"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OptionGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "CopyTagsToSnapshot"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TdeCredentialArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "TdeCredentialPassword"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Domain"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainIAMRoleName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainFqdn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainOu"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_auth_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainAuthSecretArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_dns_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "DomainDnsIps"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorFeatureList, name: "ProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_default_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBParameterGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeletionProtection"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDbiResourceId"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxAllocatedStorage"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_customer_owned_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCustomerOwnedIp"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkType"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_automated_backups_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBInstanceAutomatedBackupsArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:backup_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BackupTarget"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:custom_iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomIamInstanceProfile"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AllocatedStorage"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DedicatedLogVolume"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CACertificateIdentifier"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine_lifecycle_support, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineLifecycleSupport"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:manage_master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterUserPassword"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:master_user_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUserSecretKmsKeyId"))
    RestoreDBInstanceToPointInTimeMessage.type = Types::RestoreDBInstanceToPointInTimeMessage
    RestoreDBInstanceToPointInTimeResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    RestoreDBInstanceToPointInTimeResult.type = Types::RestoreDBInstanceToPointInTimeResult
    RestoreWindow.add_member(:earliest_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EarliestTime"))
    RestoreWindow.add_member(:latest_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LatestTime"))
    RestoreWindow.type = Types::RestoreWindow
    RevokeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeDBSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupId"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    RevokeDBSecurityGroupIngressMessage.type = Types::RevokeDBSecurityGroupIngressMessage
    RevokeDBSecurityGroupIngressResult.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: DBSecurityGroup, name: "DBSecurityGroup"))
    RevokeDBSecurityGroupIngressResult.type = Types::RevokeDBSecurityGroupIngressResult
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ScalarReferenceDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value"))
    ScalarReferenceDetails.type = Types::ScalarReferenceDetails
    ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinCapacity"))
    ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxCapacity"))
    ScalingConfiguration.add_member(:auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoPause"))
    ScalingConfiguration.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsUntilAutoPause"))
    ScalingConfiguration.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimeoutAction"))
    ScalingConfiguration.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsBeforeTimeout"))
    ScalingConfiguration.type = Types::ScalingConfiguration
    ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MinCapacity"))
    ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxCapacity"))
    ScalingConfigurationInfo.add_member(:auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoPause"))
    ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsUntilAutoPause"))
    ScalingConfigurationInfo.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimeoutAction"))
    ScalingConfigurationInfo.add_member(:seconds_before_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsBeforeTimeout"))
    ScalingConfigurationInfo.type = Types::ScalingConfigurationInfo
    ServerlessV2FeaturesSupport.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2FeaturesSupport.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2FeaturesSupport.type = Types::ServerlessV2FeaturesSupport
    ServerlessV2ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsUntilAutoPause"))
    ServerlessV2ScalingConfiguration.type = Types::ServerlessV2ScalingConfiguration
    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MinCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "MaxCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SecondsUntilAutoPause"))
    ServerlessV2ScalingConfigurationInfo.type = Types::ServerlessV2ScalingConfigurationInfo
    SharedSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SharedSnapshotQuotaExceededFault.type = Types::SharedSnapshotQuotaExceededFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceClusterNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SourceClusterNotSupportedFault.type = Types::SourceClusterNotSupportedFault
    SourceDatabaseNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SourceDatabaseNotSupportedFault.type = Types::SourceDatabaseNotSupportedFault
    SourceIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SourceId"}))
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceRegion.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegionName"))
    SourceRegion.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    SourceRegion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    SourceRegion.add_member(:supports_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsDBInstanceAutomatedBackupsReplication"))
    SourceRegion.type = Types::SourceRegion
    SourceRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRegion, name: "member", traits: {"smithy.api#xmlName" => "SourceRegion"}))
    SourceRegionMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    SourceRegionMessage.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRegionList, name: "SourceRegions"))
    SourceRegionMessage.type = Types::SourceRegionMessage
    SourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_instance", traits: {"smithy.api#enumValue" => "db-instance"}))
    SourceType.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_parameter_group", traits: {"smithy.api#enumValue" => "db-parameter-group"}))
    SourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_security_group", traits: {"smithy.api#enumValue" => "db-security-group"}))
    SourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_snapshot", traits: {"smithy.api#enumValue" => "db-snapshot"}))
    SourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_cluster", traits: {"smithy.api#enumValue" => "db-cluster"}))
    SourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_cluster_snapshot", traits: {"smithy.api#enumValue" => "db-cluster-snapshot"}))
    SourceType.add_member(:custom_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "custom_engine_version", traits: {"smithy.api#enumValue" => "custom-engine-version"}))
    SourceType.add_member(:db_proxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_proxy", traits: {"smithy.api#enumValue" => "db-proxy"}))
    SourceType.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "blue_green_deployment", traits: {"smithy.api#enumValue" => "blue-green-deployment"}))
    SourceType.add_member(:db_shard_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "db_shard_group", traits: {"smithy.api#enumValue" => "db-shard-group"}))
    SourceType.add_member(:zero_etl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "zero_etl", traits: {"smithy.api#enumValue" => "zero-etl"}))
    StartActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamMode, name: "Mode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartActivityStreamRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ApplyImmediately"))
    StartActivityStreamRequest.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EngineNativeAuditFieldsIncluded"))
    StartActivityStreamRequest.type = Types::StartActivityStreamRequest
    StartActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    StartActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KinesisStreamName"))
    StartActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamStatus, name: "Status"))
    StartActivityStreamResponse.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamMode, name: "Mode"))
    StartActivityStreamResponse.add_member(:engine_native_audit_fields_included, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EngineNativeAuditFieldsIncluded"))
    StartActivityStreamResponse.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    StartActivityStreamResponse.type = Types::StartActivityStreamResponse
    StartDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBClusterMessage.type = Types::StartDBClusterMessage
    StartDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    StartDBClusterResult.type = Types::StartDBClusterResult
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "BackupRetentionPeriod"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "PreSignedUrl"))
    StartDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    StartDBInstanceAutomatedBackupsReplicationMessage.type = Types::StartDBInstanceAutomatedBackupsReplicationMessage
    StartDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackup, name: "DBInstanceAutomatedBackup"))
    StartDBInstanceAutomatedBackupsReplicationResult.type = Types::StartDBInstanceAutomatedBackupsReplicationResult
    StartDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBInstanceMessage.type = Types::StartDBInstanceMessage
    StartDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    StartDBInstanceResult.type = Types::StartDBInstanceResult
    StartExportTaskMessage.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartExportTaskMessage.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    StartExportTaskMessage.add_member(:export_only, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExportOnly"))
    StartExportTaskMessage.type = Types::StartExportTaskMessage
    StartExportTaskOutput.add_member(:export_task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExportTaskIdentifier"))
    StartExportTaskOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    StartExportTaskOutput.add_member(:export_only, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExportOnly"))
    StartExportTaskOutput.add_member(:snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotTime"))
    StartExportTaskOutput.add_member(:task_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskStartTime"))
    StartExportTaskOutput.add_member(:task_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TaskEndTime"))
    StartExportTaskOutput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Bucket"))
    StartExportTaskOutput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3Prefix"))
    StartExportTaskOutput.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    StartExportTaskOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    StartExportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    StartExportTaskOutput.add_member(:percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentProgress"))
    StartExportTaskOutput.add_member(:total_extracted_data_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalExtractedDataInGB"))
    StartExportTaskOutput.add_member(:failure_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureCause"))
    StartExportTaskOutput.add_member(:warning_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarningMessage"))
    StartExportTaskOutput.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "SourceType"))
    StartExportTaskOutput.type = Types::StartExportTaskOutput
    StopActivityStreamRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopActivityStreamRequest.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ApplyImmediately"))
    StopActivityStreamRequest.type = Types::StopActivityStreamRequest
    StopActivityStreamResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    StopActivityStreamResponse.add_member(:kinesis_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KinesisStreamName"))
    StopActivityStreamResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityStreamStatus, name: "Status"))
    StopActivityStreamResponse.type = Types::StopActivityStreamResponse
    StopDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBClusterMessage.type = Types::StopDBClusterMessage
    StopDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: DBCluster, name: "DBCluster"))
    StopDBClusterResult.type = Types::StopDBClusterResult
    StopDBInstanceAutomatedBackupsReplicationMessage.add_member(:source_db_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDBInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBInstanceAutomatedBackupsReplicationMessage.type = Types::StopDBInstanceAutomatedBackupsReplicationMessage
    StopDBInstanceAutomatedBackupsReplicationResult.add_member(:db_instance_automated_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceAutomatedBackup, name: "DBInstanceAutomatedBackup"))
    StopDBInstanceAutomatedBackupsReplicationResult.type = Types::StopDBInstanceAutomatedBackupsReplicationResult
    StopDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBInstanceMessage.add_member(:db_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBSnapshotIdentifier"))
    StopDBInstanceMessage.type = Types::StopDBInstanceMessage
    StopDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    StopDBInstanceResult.type = Types::StopDBInstanceResult
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StorageTypeNotAvailableFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageTypeNotAvailableFault.type = Types::StorageTypeNotAvailableFault
    StorageTypeNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    StorageTypeNotSupportedFault.type = Types::StorageTypeNotSupportedFault
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: Outpost, name: "SubnetOutpost"))
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
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SupportedCharacterSetsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CharacterSet, name: "member", traits: {"smithy.api#xmlName" => "CharacterSet"}))
    SupportedEngineLifecycle.add_member(:lifecycle_support_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleSupportName, name: "LifecycleSupportName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.add_member(:lifecycle_support_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LifecycleSupportStartDate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.add_member(:lifecycle_support_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LifecycleSupportEndDate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportedEngineLifecycle.type = Types::SupportedEngineLifecycle
    SupportedEngineLifecycleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedEngineLifecycle, name: "member", traits: {"smithy.api#xmlName" => "SupportedEngineLifecycle"}))
    SupportedTimezonesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "member", traits: {"smithy.api#xmlName" => "Timezone"}))
    SwitchoverBlueGreenDeploymentRequest.add_member(:blue_green_deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentIdentifier, name: "BlueGreenDeploymentIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverBlueGreenDeploymentRequest.add_member(:switchover_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: SwitchoverTimeout, name: "SwitchoverTimeout"))
    SwitchoverBlueGreenDeploymentRequest.type = Types::SwitchoverBlueGreenDeploymentRequest
    SwitchoverBlueGreenDeploymentResponse.add_member(:blue_green_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeployment, name: "BlueGreenDeployment"))
    SwitchoverBlueGreenDeploymentResponse.type = Types::SwitchoverBlueGreenDeploymentResponse
    SwitchoverDetail.add_member(:source_member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseArn, name: "SourceMember"))
    SwitchoverDetail.add_member(:target_member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseArn, name: "TargetMember"))
    SwitchoverDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SwitchoverDetailStatus, name: "Status"))
    SwitchoverDetail.type = Types::SwitchoverDetail
    SwitchoverDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SwitchoverDetail, name: "member"))
    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalClusterIdentifier, name: "GlobalClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterIdentifier, name: "TargetDbClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.type = Types::SwitchoverGlobalClusterMessage
    SwitchoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalCluster, name: "GlobalCluster"))
    SwitchoverGlobalClusterResult.type = Types::SwitchoverGlobalClusterResult
    SwitchoverReadReplicaMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverReadReplicaMessage.type = Types::SwitchoverReadReplicaMessage
    SwitchoverReadReplicaResult.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstance, name: "DBInstance"))
    SwitchoverReadReplicaResult.type = Types::SwitchoverReadReplicaResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TagListMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    TagListMessage.type = Types::TagListMessage
    TargetConnectionNetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    TargetConnectionNetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    TargetGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTargetGroup, name: "member"))
    TargetHealth.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetState, name: "State"))
    TargetHealth.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetHealthReason, name: "Reason"))
    TargetHealth.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    TargetHealth.type = Types::TargetHealth
    TargetHealthReason.add_member(:unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNREACHABLE", traits: {"smithy.api#enumValue" => "UNREACHABLE"}))
    TargetHealthReason.add_member(:connection_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_FAILED", traits: {"smithy.api#enumValue" => "CONNECTION_FAILED"}))
    TargetHealthReason.add_member(:auth_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTH_FAILURE", traits: {"smithy.api#enumValue" => "AUTH_FAILURE"}))
    TargetHealthReason.add_member(:pending_proxy_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_PROXY_CAPACITY", traits: {"smithy.api#enumValue" => "PENDING_PROXY_CAPACITY"}))
    TargetHealthReason.add_member(:invalid_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REPLICATION_STATE", traits: {"smithy.api#enumValue" => "INVALID_REPLICATION_STATE"}))
    TargetHealthReason.add_member(:promoted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMOTED", traits: {"smithy.api#enumValue" => "PROMOTED"}))
    TargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DBProxyTarget, name: "member"))
    TargetRole.add_member(:read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_WRITE", traits: {"smithy.api#enumValue" => "READ_WRITE"}))
    TargetRole.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    TargetRole.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    TargetState.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "registering", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    TargetState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TargetState.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unavailable", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    TargetState.add_member(:unused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unused", traits: {"smithy.api#enumValue" => "UNUSED"}))
    TargetType.add_member(:rds_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_INSTANCE", traits: {"smithy.api#enumValue" => "RDS_INSTANCE"}))
    TargetType.add_member(:rds_serverless_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_SERVERLESS_ENDPOINT", traits: {"smithy.api#enumValue" => "RDS_SERVERLESS_ENDPOINT"}))
    TargetType.add_member(:tracked_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACKED_CLUSTER", traits: {"smithy.api#enumValue" => "TRACKED_CLUSTER"}))
    TenantDatabase.add_member(:tenant_database_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "TenantDatabaseCreateTime"))
    TenantDatabase.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBInstanceIdentifier"))
    TenantDatabase.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName"))
    TenantDatabase.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    TenantDatabase.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    TenantDatabase.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbiResourceId"))
    TenantDatabase.add_member(:tenant_database_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDatabaseResourceId"))
    TenantDatabase.add_member(:tenant_database_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDatabaseARN"))
    TenantDatabase.add_member(:character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CharacterSetName"))
    TenantDatabase.add_member(:nchar_character_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NcharCharacterSetName"))
    TenantDatabase.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeletionProtection"))
    TenantDatabase.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabasePendingModifiedValues, name: "PendingModifiedValues"))
    TenantDatabase.add_member(:master_user_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterUserSecret, name: "MasterUserSecret"))
    TenantDatabase.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    TenantDatabase.type = Types::TenantDatabase
    TenantDatabaseAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TenantDatabaseAlreadyExistsFault.type = Types::TenantDatabaseAlreadyExistsFault
    TenantDatabaseNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TenantDatabaseNotFoundFault.type = Types::TenantDatabaseNotFoundFault
    TenantDatabasePendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    TenantDatabasePendingModifiedValues.add_member(:tenant_db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TenantDBName"))
    TenantDatabasePendingModifiedValues.type = Types::TenantDatabasePendingModifiedValues
    TenantDatabaseQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TenantDatabaseQuotaExceededFault.type = Types::TenantDatabaseQuotaExceededFault
    TenantDatabasesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabase, name: "member", traits: {"smithy.api#xmlName" => "TenantDatabase"}))
    TenantDatabasesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    TenantDatabasesMessage.add_member(:tenant_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDatabasesList, name: "TenantDatabases"))
    TenantDatabasesMessage.type = Types::TenantDatabasesMessage
    Timezone.add_member(:timezone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TimezoneName"))
    Timezone.type = Types::Timezone
    UnsupportedDBEngineVersionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnsupportedDBEngineVersionFault.type = Types::UnsupportedDBEngineVersionFault
    UpgradeTarget.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    UpgradeTarget.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    UpgradeTarget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsMajorVersionUpgrade"))
    UpgradeTarget.add_member(:supported_engine_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineModeList, name: "SupportedEngineModes"))
    UpgradeTarget.add_member(:supports_parallel_query, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsParallelQuery"))
    UpgradeTarget.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsGlobalDatabases"))
    UpgradeTarget.add_member(:supports_babelfish, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsBabelfish"))
    UpgradeTarget.add_member(:supports_limitless_database, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLimitlessDatabase"))
    UpgradeTarget.add_member(:supports_local_write_forwarding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsLocalWriteForwarding"))
    UpgradeTarget.add_member(:supports_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "SupportsIntegrations"))
    UpgradeTarget.type = Types::UpgradeTarget
    UserAuthConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UserAuthConfig.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthUserName, name: "UserName"))
    UserAuthConfig.add_member(:auth_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthScheme, name: "AuthScheme"))
    UserAuthConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SecretArn"))
    UserAuthConfig.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMAuthMode, name: "IAMAuth"))
    UserAuthConfig.add_member(:client_password_auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPasswordAuthType, name: "ClientPasswordAuthType"))
    UserAuthConfig.type = Types::UserAuthConfig
    UserAuthConfigInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UserAuthConfigInfo.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    UserAuthConfigInfo.add_member(:auth_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthScheme, name: "AuthScheme"))
    UserAuthConfigInfo.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn"))
    UserAuthConfigInfo.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMAuthMode, name: "IAMAuth"))
    UserAuthConfigInfo.add_member(:client_password_auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPasswordAuthType, name: "ClientPasswordAuthType"))
    UserAuthConfigInfo.type = Types::UserAuthConfigInfo
    UserAuthConfigInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAuthConfigInfo, name: "member"))
    UserAuthConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAuthConfig, name: "member"))
    ValidDBInstanceModificationsMessage.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidStorageOptionsList, name: "Storage"))
    ValidDBInstanceModificationsMessage.add_member(:valid_processor_features, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableProcessorFeatureList, name: "ValidProcessorFeatures"))
    ValidDBInstanceModificationsMessage.add_member(:supports_dedicated_log_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsDedicatedLogVolume"))
    ValidDBInstanceModificationsMessage.type = Types::ValidDBInstanceModificationsMessage
    ValidStorageOptions.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StorageType"))
    ValidStorageOptions.add_member(:storage_size, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeList, name: "StorageSize"))
    ValidStorageOptions.add_member(:provisioned_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeList, name: "ProvisionedIops"))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleRangeList, name: "IopsToStorageRatio"))
    ValidStorageOptions.add_member(:provisioned_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: RangeList, name: "ProvisionedStorageThroughput"))
    ValidStorageOptions.add_member(:storage_throughput_to_iops_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleRangeList, name: "StorageThroughputToIopsRatio"))
    ValidStorageOptions.add_member(:supports_storage_autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SupportsStorageAutoscaling"))
    ValidStorageOptions.type = Types::ValidStorageOptions
    ValidStorageOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidStorageOptions, name: "member", traits: {"smithy.api#xmlName" => "ValidStorageOptions"}))
    ValidUpgradeTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpgradeTarget, name: "member", traits: {"smithy.api#xmlName" => "UpgradeTarget"}))
    VpcSecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"}))
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"}))
    WriteForwardingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    WriteForwardingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    WriteForwardingStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "enabling"}))
    WriteForwardingStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "disabling"}))
    WriteForwardingStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "unknown"}))

    AmazonRDSv19 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.rds#AmazonRDSv19"
      service.name = "AmazonRDSv19"
      service.version = "2014-10-31"
      service.traits = {"aws.api#service" => {"sdkId" => "RDS", "arnNamespace" => "rds", "cloudFormationName" => "RDS", "cloudTrailEventSource" => "rds.amazonaws.com", "endpointPrefix" => "rds"}, "aws.auth#sigv4" => {"name" => "rds"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Relational Database Service", "smithy.api#xmlNamespace" => {"uri" => "http://rds.amazonaws.com/doc/2014-10-31/"}}
      service.add_operation(:add_role_to_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddRoleToDBCluster"
        operation.name = "AddRoleToDBCluster"
        operation.input = AddRoleToDBClusterMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterRoleAlreadyExistsFault
        operation.errors << DBClusterRoleQuotaExceededFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:add_role_to_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddRoleToDBInstance"
        operation.name = "AddRoleToDBInstance"
        operation.input = AddRoleToDBInstanceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBInstanceRoleAlreadyExistsFault
        operation.errors << DBInstanceRoleQuotaExceededFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:add_source_identifier_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddSourceIdentifierToSubscription"
        operation.name = "AddSourceIdentifierToSubscription"
        operation.input = AddSourceIdentifierToSubscriptionMessage
        operation.output = AddSourceIdentifierToSubscriptionResult
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSnapshotTenantDatabaseNotFoundFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << InvalidDBClusterEndpointStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << TenantDatabaseNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ApplyPendingMaintenanceActionMessage
        operation.output = ApplyPendingMaintenanceActionResult
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_db_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#AuthorizeDBSecurityGroupIngress"
        operation.name = "AuthorizeDBSecurityGroupIngress"
        operation.input = AuthorizeDBSecurityGroupIngressMessage
        operation.output = AuthorizeDBSecurityGroupIngressResult
        operation.errors << AuthorizationAlreadyExistsFault
        operation.errors << AuthorizationQuotaExceededFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:backtrack_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#BacktrackDBCluster"
        operation.name = "BacktrackDBCluster"
        operation.input = BacktrackDBClusterMessage
        operation.output = BacktrackDBClusterOutput
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CancelExportTask"
        operation.name = "CancelExportTask"
        operation.input = CancelExportTaskMessage
        operation.output = CancelExportTaskOutput
        operation.errors << ExportTaskNotFoundFault
        operation.errors << InvalidExportTaskStateFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBClusterParameterGroup"
        operation.name = "CopyDBClusterParameterGroup"
        operation.input = CopyDBClusterParameterGroupMessage
        operation.output = CopyDBClusterParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBClusterSnapshot"
        operation.name = "CopyDBClusterSnapshot"
        operation.input = CopyDBClusterSnapshotMessage
        operation.output = CopyDBClusterSnapshotResult
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBParameterGroup"
        operation.name = "CopyDBParameterGroup"
        operation.input = CopyDBParameterGroupMessage
        operation.output = CopyDBParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:copy_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyDBSnapshot"
        operation.name = "CopyDBSnapshot"
        operation.input = CopyDBSnapshotMessage
        operation.output = CopyDBSnapshotResult
        operation.errors << CustomAvailabilityZoneNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:copy_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CopyOptionGroup"
        operation.name = "CopyOptionGroup"
        operation.input = CopyOptionGroupMessage
        operation.output = CopyOptionGroupResult
        operation.errors << OptionGroupAlreadyExistsFault
        operation.errors << OptionGroupNotFoundFault
        operation.errors << OptionGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateBlueGreenDeployment"
        operation.name = "CreateBlueGreenDeployment"
        operation.input = CreateBlueGreenDeploymentRequest
        operation.output = CreateBlueGreenDeploymentResponse
        operation.errors << BlueGreenDeploymentAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << SourceClusterNotSupportedFault
        operation.errors << SourceDatabaseNotSupportedFault
        operation.errors << StorageQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateCustomDBEngineVersion"
        operation.name = "CreateCustomDBEngineVersion"
        operation.input = CreateCustomDBEngineVersionMessage
        operation.output = CreateCustomDBEngineVersionOutput
        operation.errors << CreateCustomDBEngineVersionFault
        operation.errors << CustomDBEngineVersionAlreadyExistsFault
        operation.errors << CustomDBEngineVersionNotFoundFault
        operation.errors << CustomDBEngineVersionQuotaExceededFault
        operation.errors << Ec2ImagePropertiesNotSupportedFault
        operation.errors << InvalidCustomDBEngineVersionStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBCluster"
        operation.name = "CreateDBCluster"
        operation.input = CreateDBClusterMessage
        operation.output = CreateDBClusterResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSubnetGroupFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBClusterEndpoint"
        operation.name = "CreateDBClusterEndpoint"
        operation.input = CreateDBClusterEndpointMessage
        operation.output = CreateDBClusterEndpointOutput
        operation.errors << DBClusterEndpointAlreadyExistsFault
        operation.errors << DBClusterEndpointQuotaExceededFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBClusterParameterGroup"
        operation.name = "CreateDBClusterParameterGroup"
        operation.input = CreateDBClusterParameterGroupMessage
        operation.output = CreateDBClusterParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBClusterSnapshot"
        operation.name = "CreateDBClusterSnapshot"
        operation.input = CreateDBClusterSnapshotMessage
        operation.output = CreateDBClusterSnapshotResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBInstance"
        operation.name = "CreateDBInstance"
        operation.input = CreateDBInstanceMessage
        operation.output = CreateDBInstanceResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << BackupPolicyNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBInstanceReadReplica"
        operation.name = "CreateDBInstanceReadReplica"
        operation.input = CreateDBInstanceReadReplicaMessage
        operation.output = CreateDBInstanceReadReplicaResult
        operation.errors << CertificateNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotAllowedFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSubnetGroupFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBParameterGroup"
        operation.name = "CreateDBParameterGroup"
        operation.input = CreateDBParameterGroupMessage
        operation.output = CreateDBParameterGroupResult
        operation.errors << DBParameterGroupAlreadyExistsFault
        operation.errors << DBParameterGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBProxy"
        operation.name = "CreateDBProxy"
        operation.input = CreateDBProxyRequest
        operation.output = CreateDBProxyResponse
        operation.errors << DBProxyAlreadyExistsFault
        operation.errors << DBProxyQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.traits = {}
      end)
      service.add_operation(:create_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBProxyEndpoint"
        operation.name = "CreateDBProxyEndpoint"
        operation.input = CreateDBProxyEndpointRequest
        operation.output = CreateDBProxyEndpointResponse
        operation.errors << DBProxyEndpointAlreadyExistsFault
        operation.errors << DBProxyEndpointQuotaExceededFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.errors << InvalidSubnet
        operation.traits = {}
      end)
      service.add_operation(:create_db_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSecurityGroup"
        operation.name = "CreateDBSecurityGroup"
        operation.input = CreateDBSecurityGroupMessage
        operation.output = CreateDBSecurityGroupResult
        operation.errors << DBSecurityGroupAlreadyExistsFault
        operation.errors << DBSecurityGroupNotSupportedFault
        operation.errors << DBSecurityGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBShardGroup"
        operation.name = "CreateDBShardGroup"
        operation.input = CreateDBShardGroupMessage
        operation.output = CreateDBShardGroupOutput
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBShardGroupAlreadyExistsFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << MaxDBShardGroupLimitReached
        operation.errors << NetworkTypeNotSupported
        operation.errors << UnsupportedDBEngineVersionFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSnapshot"
        operation.name = "CreateDBSnapshot"
        operation.input = CreateDBSnapshotMessage
        operation.output = CreateDBSnapshotResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateDBSubnetGroup"
        operation.name = "CreateDBSubnetGroup"
        operation.input = CreateDBSubnetGroupMessage
        operation.output = CreateDBSubnetGroupResult
        operation.errors << DBSubnetGroupAlreadyExistsFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupQuotaExceededFault
        operation.errors << DBSubnetQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = CreateEventSubscriptionMessage
        operation.output = CreateEventSubscriptionResult
        operation.errors << EventSubscriptionQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionAlreadyExistFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateGlobalCluster"
        operation.name = "CreateGlobalCluster"
        operation.input = CreateGlobalClusterMessage
        operation.output = CreateGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterAlreadyExistsFault
        operation.errors << GlobalClusterQuotaExceededFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBShardGroupStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = CreateIntegrationMessage
        operation.output = CreateIntegrationOutput
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << IntegrationAlreadyExistsFault
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationQuotaExceededFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:create_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateOptionGroup"
        operation.name = "CreateOptionGroup"
        operation.input = CreateOptionGroupMessage
        operation.output = CreateOptionGroupResult
        operation.errors << OptionGroupAlreadyExistsFault
        operation.errors << OptionGroupQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#CreateTenantDatabase"
        operation.name = "CreateTenantDatabase"
        operation.input = CreateTenantDatabaseMessage
        operation.output = CreateTenantDatabaseResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << TenantDatabaseAlreadyExistsFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteBlueGreenDeployment"
        operation.name = "DeleteBlueGreenDeployment"
        operation.input = DeleteBlueGreenDeploymentRequest
        operation.output = DeleteBlueGreenDeploymentResponse
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.errors << InvalidBlueGreenDeploymentStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteCustomDBEngineVersion"
        operation.name = "DeleteCustomDBEngineVersion"
        operation.input = DeleteCustomDBEngineVersionMessage
        operation.output = DeleteCustomDBEngineVersionOutput
        operation.errors << CustomDBEngineVersionNotFoundFault
        operation.errors << InvalidCustomDBEngineVersionStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBCluster"
        operation.name = "DeleteDBCluster"
        operation.input = DeleteDBClusterMessage
        operation.output = DeleteDBClusterResult
        operation.errors << DBClusterAutomatedBackupQuotaExceededFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_automated_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterAutomatedBackup"
        operation.name = "DeleteDBClusterAutomatedBackup"
        operation.input = DeleteDBClusterAutomatedBackupMessage
        operation.output = DeleteDBClusterAutomatedBackupResult
        operation.errors << DBClusterAutomatedBackupNotFoundFault
        operation.errors << InvalidDBClusterAutomatedBackupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterEndpoint"
        operation.name = "DeleteDBClusterEndpoint"
        operation.input = DeleteDBClusterEndpointMessage
        operation.output = DeleteDBClusterEndpointOutput
        operation.errors << DBClusterEndpointNotFoundFault
        operation.errors << InvalidDBClusterEndpointStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterParameterGroup"
        operation.name = "DeleteDBClusterParameterGroup"
        operation.input = DeleteDBClusterParameterGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBClusterSnapshot"
        operation.name = "DeleteDBClusterSnapshot"
        operation.input = DeleteDBClusterSnapshotMessage
        operation.output = DeleteDBClusterSnapshotResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBInstance"
        operation.name = "DeleteDBInstance"
        operation.input = DeleteDBInstanceMessage
        operation.output = DeleteDBInstanceResult
        operation.errors << DBInstanceAutomatedBackupQuotaExceededFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance_automated_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBInstanceAutomatedBackup"
        operation.name = "DeleteDBInstanceAutomatedBackup"
        operation.input = DeleteDBInstanceAutomatedBackupMessage
        operation.output = DeleteDBInstanceAutomatedBackupResult
        operation.errors << DBInstanceAutomatedBackupNotFoundFault
        operation.errors << InvalidDBInstanceAutomatedBackupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBParameterGroup"
        operation.name = "DeleteDBParameterGroup"
        operation.input = DeleteDBParameterGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBProxy"
        operation.name = "DeleteDBProxy"
        operation.input = DeleteDBProxyRequest
        operation.output = DeleteDBProxyResponse
        operation.errors << DBProxyNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBProxyEndpoint"
        operation.name = "DeleteDBProxyEndpoint"
        operation.input = DeleteDBProxyEndpointRequest
        operation.output = DeleteDBProxyEndpointResponse
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << InvalidDBProxyEndpointStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSecurityGroup"
        operation.name = "DeleteDBSecurityGroup"
        operation.input = DeleteDBSecurityGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBShardGroup"
        operation.name = "DeleteDBShardGroup"
        operation.input = DeleteDBShardGroupMessage
        operation.output = DeleteDBShardGroupOutput
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBShardGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSnapshot"
        operation.name = "DeleteDBSnapshot"
        operation.input = DeleteDBSnapshotMessage
        operation.output = DeleteDBSnapshotResult
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteDBSubnetGroup"
        operation.name = "DeleteDBSubnetGroup"
        operation.input = DeleteDBSubnetGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidDBSubnetStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = DeleteEventSubscriptionMessage
        operation.output = DeleteEventSubscriptionResult
        operation.errors << InvalidEventSubscriptionStateFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteGlobalCluster"
        operation.name = "DeleteGlobalCluster"
        operation.input = DeleteGlobalClusterMessage
        operation.output = DeleteGlobalClusterResult
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationMessage
        operation.output = DeleteIntegrationOutput
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << InvalidIntegrationStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteOptionGroup"
        operation.name = "DeleteOptionGroup"
        operation.input = DeleteOptionGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidOptionGroupStateFault
        operation.errors << OptionGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeleteTenantDatabase"
        operation.name = "DeleteTenantDatabase"
        operation.input = DeleteTenantDatabaseMessage
        operation.output = DeleteTenantDatabaseResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << TenantDatabaseNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:deregister_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DeregisterDBProxyTargets"
        operation.name = "DeregisterDBProxyTargets"
        operation.input = DeregisterDBProxyTargetsRequest
        operation.output = DeregisterDBProxyTargetsResponse
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << DBProxyTargetNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = DescribeAccountAttributesMessage
        operation.output = AccountAttributesMessage
        operation.traits = {}
      end)
      service.add_operation(:describe_blue_green_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeBlueGreenDeployments"
        operation.name = "DescribeBlueGreenDeployments"
        operation.input = DescribeBlueGreenDeploymentsRequest
        operation.output = DescribeBlueGreenDeploymentsResponse
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBlueGreenDeployments.new
      end)
      service.add_operation(:describe_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeCertificates"
        operation.name = "DescribeCertificates"
        operation.input = DescribeCertificatesMessage
        operation.output = CertificateMessage
        operation.errors << CertificateNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCertificates.new
      end)
      service.add_operation(:describe_db_cluster_automated_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterAutomatedBackups"
        operation.name = "DescribeDBClusterAutomatedBackups"
        operation.input = DescribeDBClusterAutomatedBackupsMessage
        operation.output = DBClusterAutomatedBackupMessage
        operation.errors << DBClusterAutomatedBackupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterAutomatedBackups.new
      end)
      service.add_operation(:describe_db_cluster_backtracks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterBacktracks"
        operation.name = "DescribeDBClusterBacktracks"
        operation.input = DescribeDBClusterBacktracksMessage
        operation.output = DBClusterBacktrackMessage
        operation.errors << DBClusterBacktrackNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterBacktracks.new
      end)
      service.add_operation(:describe_db_cluster_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterEndpoints"
        operation.name = "DescribeDBClusterEndpoints"
        operation.input = DescribeDBClusterEndpointsMessage
        operation.output = DBClusterEndpointMessage
        operation.errors << DBClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterEndpoints.new
      end)
      service.add_operation(:describe_db_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterParameterGroups"
        operation.name = "DescribeDBClusterParameterGroups"
        operation.input = DescribeDBClusterParameterGroupsMessage
        operation.output = DBClusterParameterGroupsMessage
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameterGroups.new
      end)
      service.add_operation(:describe_db_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterParameters"
        operation.name = "DescribeDBClusterParameters"
        operation.input = DescribeDBClusterParametersMessage
        operation.output = DescribeDBClusterParametersOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameters.new
      end)
      service.add_operation(:describe_db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterSnapshotAttributes"
        operation.name = "DescribeDBClusterSnapshotAttributes"
        operation.input = DescribeDBClusterSnapshotAttributesMessage
        operation.output = DescribeDBClusterSnapshotAttributesResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusterSnapshots"
        operation.name = "DescribeDBClusterSnapshots"
        operation.input = DescribeDBClusterSnapshotsMessage
        operation.output = DBClusterSnapshotMessage
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterSnapshots.new
      end)
      service.add_operation(:describe_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBClusters"
        operation.name = "DescribeDBClusters"
        operation.input = DescribeDBClustersMessage
        operation.output = DBClusterMessage
        operation.errors << DBClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusters.new
      end)
      service.add_operation(:describe_db_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBEngineVersions"
        operation.name = "DescribeDBEngineVersions"
        operation.input = DescribeDBEngineVersionsMessage
        operation.output = DBEngineVersionMessage
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDBEngineVersionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBEngineVersions.new
      end)
      service.add_operation(:describe_db_instance_automated_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBInstanceAutomatedBackups"
        operation.name = "DescribeDBInstanceAutomatedBackups"
        operation.input = DescribeDBInstanceAutomatedBackupsMessage
        operation.output = DBInstanceAutomatedBackupMessage
        operation.errors << DBInstanceAutomatedBackupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBInstanceAutomatedBackups.new
      end)
      service.add_operation(:describe_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBInstances"
        operation.name = "DescribeDBInstances"
        operation.input = DescribeDBInstancesMessage
        operation.output = DBInstanceMessage
        operation.errors << DBInstanceNotFoundFault
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"], "smithy.test#smokeTests" => [{"id" => "DescribeDBInstancesFailure", "params" => {"DBInstanceIdentifier" => "fake-id"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBInstances.new
      end)
      service.add_operation(:describe_db_log_files, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBLogFiles"
        operation.name = "DescribeDBLogFiles"
        operation.input = DescribeDBLogFilesMessage
        operation.output = DescribeDBLogFilesResponse
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBInstanceNotReadyFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBLogFiles.new
      end)
      service.add_operation(:describe_db_major_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBMajorEngineVersions"
        operation.name = "DescribeDBMajorEngineVersions"
        operation.input = DescribeDBMajorEngineVersionsRequest
        operation.output = DescribeDBMajorEngineVersionsResponse
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBMajorEngineVersions.new
      end)
      service.add_operation(:describe_db_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBParameterGroups"
        operation.name = "DescribeDBParameterGroups"
        operation.input = DescribeDBParameterGroupsMessage
        operation.output = DBParameterGroupsMessage
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameterGroups.new
      end)
      service.add_operation(:describe_db_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBParameters"
        operation.name = "DescribeDBParameters"
        operation.input = DescribeDBParametersMessage
        operation.output = DescribeDBParametersOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameters.new
      end)
      service.add_operation(:describe_db_proxies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxies"
        operation.name = "DescribeDBProxies"
        operation.input = DescribeDBProxiesRequest
        operation.output = DescribeDBProxiesResponse
        operation.errors << DBProxyNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxies.new
      end)
      service.add_operation(:describe_db_proxy_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyEndpoints"
        operation.name = "DescribeDBProxyEndpoints"
        operation.input = DescribeDBProxyEndpointsRequest
        operation.output = DescribeDBProxyEndpointsResponse
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << DBProxyNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyEndpoints.new
      end)
      service.add_operation(:describe_db_proxy_target_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyTargetGroups"
        operation.name = "DescribeDBProxyTargetGroups"
        operation.input = DescribeDBProxyTargetGroupsRequest
        operation.output = DescribeDBProxyTargetGroupsResponse
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyTargetGroups.new
      end)
      service.add_operation(:describe_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBProxyTargets"
        operation.name = "DescribeDBProxyTargets"
        operation.input = DescribeDBProxyTargetsRequest
        operation.output = DescribeDBProxyTargetsResponse
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << DBProxyTargetNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBProxyTargets.new
      end)
      service.add_operation(:describe_db_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBRecommendations"
        operation.name = "DescribeDBRecommendations"
        operation.input = DescribeDBRecommendationsMessage
        operation.output = DBRecommendationsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBRecommendations.new
      end)
      service.add_operation(:describe_db_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSecurityGroups"
        operation.name = "DescribeDBSecurityGroups"
        operation.input = DescribeDBSecurityGroupsMessage
        operation.output = DBSecurityGroupMessage
        operation.errors << DBSecurityGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSecurityGroups.new
      end)
      service.add_operation(:describe_db_shard_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBShardGroups"
        operation.name = "DescribeDBShardGroups"
        operation.input = DescribeDBShardGroupsMessage
        operation.output = DescribeDBShardGroupsResponse
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBShardGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_db_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshotAttributes"
        operation.name = "DescribeDBSnapshotAttributes"
        operation.input = DescribeDBSnapshotAttributesMessage
        operation.output = DescribeDBSnapshotAttributesResult
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_db_snapshot_tenant_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshotTenantDatabases"
        operation.name = "DescribeDBSnapshotTenantDatabases"
        operation.input = DescribeDBSnapshotTenantDatabasesMessage
        operation.output = DBSnapshotTenantDatabasesMessage
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSnapshotTenantDatabases.new
      end)
      service.add_operation(:describe_db_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSnapshots"
        operation.name = "DescribeDBSnapshots"
        operation.input = DescribeDBSnapshotsMessage
        operation.output = DBSnapshotMessage
        operation.errors << DBSnapshotNotFoundFault
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeDBSnapshots.new
      end)
      service.add_operation(:describe_db_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeDBSubnetGroups"
        operation.name = "DescribeDBSubnetGroups"
        operation.input = DescribeDBSubnetGroupsMessage
        operation.output = DBSubnetGroupMessage
        operation.errors << DBSubnetGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEngineDefaultClusterParameters"
        operation.name = "DescribeEngineDefaultClusterParameters"
        operation.input = DescribeEngineDefaultClusterParametersMessage
        operation.output = DescribeEngineDefaultClusterParametersResult
        operation.traits = {}
      end)
      service.add_operation(:describe_engine_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEngineDefaultParameters"
        operation.name = "DescribeEngineDefaultParameters"
        operation.input = DescribeEngineDefaultParametersMessage
        operation.output = DescribeEngineDefaultParametersResult
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineDefaultParameters.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = DescribeEventCategoriesMessage
        operation.output = EventCategoriesMessage
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = DescribeEventSubscriptionsMessage
        operation.output = EventSubscriptionsMessage
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsMessage
        operation.output = EventsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_export_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = DescribeExportTasksMessage
        operation.output = ExportTasksMessage
        operation.errors << ExportTaskNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExportTasks.new
      end)
      service.add_operation(:describe_global_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeGlobalClusters"
        operation.name = "DescribeGlobalClusters"
        operation.input = DescribeGlobalClustersMessage
        operation.output = GlobalClustersMessage
        operation.errors << GlobalClusterNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalClusters.new
      end)
      service.add_operation(:describe_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeIntegrations"
        operation.name = "DescribeIntegrations"
        operation.input = DescribeIntegrationsMessage
        operation.output = DescribeIntegrationsResponse
        operation.errors << IntegrationNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeIntegrations.new
      end)
      service.add_operation(:describe_option_group_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOptionGroupOptions"
        operation.name = "DescribeOptionGroupOptions"
        operation.input = DescribeOptionGroupOptionsMessage
        operation.output = OptionGroupOptionsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptionGroupOptions.new
      end)
      service.add_operation(:describe_option_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOptionGroups"
        operation.name = "DescribeOptionGroups"
        operation.input = DescribeOptionGroupsMessage
        operation.output = DescribeOptionGroupsOutput
        operation.errors << OptionGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOptionGroups.new
      end)
      service.add_operation(:describe_orderable_db_instance_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeOrderableDBInstanceOptions"
        operation.name = "DescribeOrderableDBInstanceOptions"
        operation.input = DescribeOrderableDBInstanceOptionsMessage
        operation.output = OrderableDBInstanceOptionsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableDBInstanceOptions.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = DescribePendingMaintenanceActionsMessage
        operation.output = PendingMaintenanceActionsMessage
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:describe_reserved_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeReservedDBInstances"
        operation.name = "DescribeReservedDBInstances"
        operation.input = DescribeReservedDBInstancesMessage
        operation.output = ReservedDBInstanceMessage
        operation.errors << ReservedDBInstanceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedDBInstances.new
      end)
      service.add_operation(:describe_reserved_db_instances_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeReservedDBInstancesOfferings"
        operation.name = "DescribeReservedDBInstancesOfferings"
        operation.input = DescribeReservedDBInstancesOfferingsMessage
        operation.output = ReservedDBInstancesOfferingMessage
        operation.errors << ReservedDBInstancesOfferingNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedDBInstancesOfferings.new
      end)
      service.add_operation(:describe_source_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeSourceRegions"
        operation.name = "DescribeSourceRegions"
        operation.input = DescribeSourceRegionsMessage
        operation.output = SourceRegionMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSourceRegions.new
      end)
      service.add_operation(:describe_tenant_databases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeTenantDatabases"
        operation.name = "DescribeTenantDatabases"
        operation.input = DescribeTenantDatabasesMessage
        operation.output = TenantDatabasesMessage
        operation.errors << DBInstanceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTenantDatabases.new
      end)
      service.add_operation(:describe_valid_db_instance_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DescribeValidDBInstanceModifications"
        operation.name = "DescribeValidDBInstanceModifications"
        operation.input = DescribeValidDBInstanceModificationsMessage
        operation.output = DescribeValidDBInstanceModificationsResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:disable_http_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DisableHttpEndpoint"
        operation.name = "DisableHttpEndpoint"
        operation.input = DisableHttpEndpointRequest
        operation.output = DisableHttpEndpointResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:download_db_log_file_portion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#DownloadDBLogFilePortion"
        operation.name = "DownloadDBLogFilePortion"
        operation.input = DownloadDBLogFilePortionMessage
        operation.output = DownloadDBLogFilePortionOutput
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBInstanceNotReadyFault
        operation.errors << DBLogFileNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DownloadDBLogFilePortion.new
      end)
      service.add_operation(:enable_http_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#EnableHttpEndpoint"
        operation.name = "EnableHttpEndpoint"
        operation.input = EnableHttpEndpointRequest
        operation.output = EnableHttpEndpointResponse
        operation.errors << InvalidResourceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:failover_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#FailoverDBCluster"
        operation.name = "FailoverDBCluster"
        operation.input = FailoverDBClusterMessage
        operation.output = FailoverDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:failover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#FailoverGlobalCluster"
        operation.name = "FailoverGlobalCluster"
        operation.input = FailoverGlobalClusterMessage
        operation.output = FailoverGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceMessage
        operation.output = TagListMessage
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSnapshotTenantDatabaseNotFoundFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << TenantDatabaseNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyActivityStream"
        operation.name = "ModifyActivityStream"
        operation.input = ModifyActivityStreamRequest
        operation.output = ModifyActivityStreamResponse
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCertificates"
        operation.name = "ModifyCertificates"
        operation.input = ModifyCertificatesMessage
        operation.output = ModifyCertificatesResult
        operation.errors << CertificateNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_current_db_cluster_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCurrentDBClusterCapacity"
        operation.name = "ModifyCurrentDBClusterCapacity"
        operation.input = ModifyCurrentDBClusterCapacityMessage
        operation.output = ModifyCurrentDBClusterCapacityOutput
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_custom_db_engine_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyCustomDBEngineVersion"
        operation.name = "ModifyCustomDBEngineVersion"
        operation.input = ModifyCustomDBEngineVersionMessage
        operation.output = ModifyCustomDBEngineVersionOutput
        operation.errors << CustomDBEngineVersionNotFoundFault
        operation.errors << InvalidCustomDBEngineVersionStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBCluster"
        operation.name = "ModifyDBCluster"
        operation.input = ModifyDBClusterMessage
        operation.output = ModifyDBClusterResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotAvailableFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBClusterEndpoint"
        operation.name = "ModifyDBClusterEndpoint"
        operation.input = ModifyDBClusterEndpointMessage
        operation.output = ModifyDBClusterEndpointOutput
        operation.errors << DBClusterEndpointNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBClusterEndpointStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBClusterParameterGroup"
        operation.name = "ModifyDBClusterParameterGroup"
        operation.input = ModifyDBClusterParameterGroupMessage
        operation.output = ModifyDBClusterParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBClusterSnapshotAttribute"
        operation.name = "ModifyDBClusterSnapshotAttribute"
        operation.input = ModifyDBClusterSnapshotAttributeMessage
        operation.output = ModifyDBClusterSnapshotAttributeResult
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << SharedSnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBInstance"
        operation.name = "ModifyDBInstance"
        operation.input = ModifyDBInstanceMessage
        operation.output = ModifyDBInstanceResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << BackupPolicyNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBUpgradeDependencyFailureFault
        operation.errors << DomainNotFoundFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBParameterGroup"
        operation.name = "ModifyDBParameterGroup"
        operation.input = ModifyDBParameterGroupMessage
        operation.output = ModifyDBParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxy"
        operation.name = "ModifyDBProxy"
        operation.input = ModifyDBProxyRequest
        operation.output = ModifyDBProxyResponse
        operation.errors << DBProxyAlreadyExistsFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxyEndpoint"
        operation.name = "ModifyDBProxyEndpoint"
        operation.input = ModifyDBProxyEndpointRequest
        operation.output = ModifyDBProxyEndpointResponse
        operation.errors << DBProxyEndpointAlreadyExistsFault
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << InvalidDBProxyEndpointStateFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_proxy_target_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBProxyTargetGroup"
        operation.name = "ModifyDBProxyTargetGroup"
        operation.input = ModifyDBProxyTargetGroupRequest
        operation.output = ModifyDBProxyTargetGroupResponse
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBRecommendation"
        operation.name = "ModifyDBRecommendation"
        operation.input = ModifyDBRecommendationMessage
        operation.output = DBRecommendationMessage
        operation.traits = {}
      end)
      service.add_operation(:modify_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBShardGroup"
        operation.name = "ModifyDBShardGroup"
        operation.input = ModifyDBShardGroupMessage
        operation.output = ModifyDBShardGroupOutput
        operation.errors << DBShardGroupAlreadyExistsFault
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSnapshot"
        operation.name = "ModifyDBSnapshot"
        operation.input = ModifyDBSnapshotMessage
        operation.output = ModifyDBSnapshotResult
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSnapshotAttribute"
        operation.name = "ModifyDBSnapshotAttribute"
        operation.input = ModifyDBSnapshotAttributeMessage
        operation.output = ModifyDBSnapshotAttributeResult
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << SharedSnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyDBSubnetGroup"
        operation.name = "ModifyDBSubnetGroup"
        operation.input = ModifyDBSubnetGroupMessage
        operation.output = ModifyDBSubnetGroupResult
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DBSubnetQuotaExceededFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidSubnet
        operation.errors << SubnetAlreadyInUse
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ModifyEventSubscriptionMessage
        operation.output = ModifyEventSubscriptionResult
        operation.errors << EventSubscriptionQuotaExceededFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyGlobalCluster"
        operation.name = "ModifyGlobalCluster"
        operation.input = ModifyGlobalClusterMessage
        operation.output = ModifyGlobalClusterResult
        operation.errors << GlobalClusterAlreadyExistsFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyIntegration"
        operation.name = "ModifyIntegration"
        operation.input = ModifyIntegrationMessage
        operation.output = ModifyIntegrationOutput
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << InvalidIntegrationStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_option_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyOptionGroup"
        operation.name = "ModifyOptionGroup"
        operation.input = ModifyOptionGroupMessage
        operation.output = ModifyOptionGroupResult
        operation.errors << InvalidOptionGroupStateFault
        operation.errors << OptionGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_tenant_database, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ModifyTenantDatabase"
        operation.name = "ModifyTenantDatabase"
        operation.input = ModifyTenantDatabaseMessage
        operation.output = ModifyTenantDatabaseResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << TenantDatabaseAlreadyExistsFault
        operation.errors << TenantDatabaseNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:promote_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PromoteReadReplica"
        operation.name = "PromoteReadReplica"
        operation.input = PromoteReadReplicaMessage
        operation.output = PromoteReadReplicaResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:promote_read_replica_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PromoteReadReplicaDBCluster"
        operation.name = "PromoteReadReplicaDBCluster"
        operation.input = PromoteReadReplicaDBClusterMessage
        operation.output = PromoteReadReplicaDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_db_instances_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#PurchaseReservedDBInstancesOffering"
        operation.name = "PurchaseReservedDBInstancesOffering"
        operation.input = PurchaseReservedDBInstancesOfferingMessage
        operation.output = PurchaseReservedDBInstancesOfferingResult
        operation.errors << ReservedDBInstanceAlreadyExistsFault
        operation.errors << ReservedDBInstanceQuotaExceededFault
        operation.errors << ReservedDBInstancesOfferingNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBCluster"
        operation.name = "RebootDBCluster"
        operation.input = RebootDBClusterMessage
        operation.output = RebootDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBInstance"
        operation.name = "RebootDBInstance"
        operation.input = RebootDBInstanceMessage
        operation.output = RebootDBInstanceResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_shard_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RebootDBShardGroup"
        operation.name = "RebootDBShardGroup"
        operation.input = RebootDBShardGroupMessage
        operation.output = RebootDBShardGroupOutput
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << InvalidDBShardGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:register_db_proxy_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RegisterDBProxyTargets"
        operation.name = "RegisterDBProxyTargets"
        operation.input = RegisterDBProxyTargetsRequest
        operation.output = RegisterDBProxyTargetsResponse
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetAlreadyRegisteredFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << InsufficientAvailableIPsInSubnetFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBProxyStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_from_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveFromGlobalCluster"
        operation.name = "RemoveFromGlobalCluster"
        operation.input = RemoveFromGlobalClusterMessage
        operation.output = RemoveFromGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveRoleFromDBCluster"
        operation.name = "RemoveRoleFromDBCluster"
        operation.input = RemoveRoleFromDBClusterMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterRoleNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveRoleFromDBInstance"
        operation.name = "RemoveRoleFromDBInstance"
        operation.input = RemoveRoleFromDBInstanceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBInstanceRoleNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_source_identifier_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveSourceIdentifierFromSubscription"
        operation.name = "RemoveSourceIdentifierFromSubscription"
        operation.input = RemoveSourceIdentifierFromSubscriptionMessage
        operation.output = RemoveSourceIdentifierFromSubscriptionResult
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBProxyEndpointNotFoundFault
        operation.errors << DBProxyNotFoundFault
        operation.errors << DBProxyTargetGroupNotFoundFault
        operation.errors << DBShardGroupNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSnapshotTenantDatabaseNotFoundFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << InvalidDBClusterEndpointStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << TenantDatabaseNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reset_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ResetDBClusterParameterGroup"
        operation.name = "ResetDBClusterParameterGroup"
        operation.input = ResetDBClusterParameterGroupMessage
        operation.output = ResetDBClusterParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:reset_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#ResetDBParameterGroup"
        operation.name = "ResetDBParameterGroup"
        operation.input = ResetDBParameterGroupMessage
        operation.output = ResetDBParameterGroupOutput
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << InvalidDBParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterFromS3"
        operation.name = "RestoreDBClusterFromS3"
        operation.input = RestoreDBClusterFromS3Message
        operation.output = RestoreDBClusterFromS3Result
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBSubnetGroupStateFault
        operation.errors << InvalidS3BucketFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterFromSnapshot"
        operation.name = "RestoreDBClusterFromSnapshot"
        operation.input = RestoreDBClusterFromSnapshotMessage
        operation.output = RestoreDBClusterFromSnapshotResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InsufficientDBClusterCapacityFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBClusterToPointInTime"
        operation.name = "RestoreDBClusterToPointInTime"
        operation.input = RestoreDBClusterToPointInTimeMessage
        operation.output = RestoreDBClusterToPointInTimeResult
        operation.errors << DBClusterAlreadyExistsFault
        operation.errors << DBClusterAutomatedBackupNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterParameterGroupNotFoundFault
        operation.errors << DBClusterQuotaExceededFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InsufficientDBClusterCapacityFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InsufficientStorageClusterCapacityFault
        operation.errors << InvalidDBClusterSnapshotStateFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_from_db_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceFromDBSnapshot"
        operation.name = "RestoreDBInstanceFromDBSnapshot"
        operation.input = RestoreDBInstanceFromDBSnapshotMessage
        operation.output = RestoreDBInstanceFromDBSnapshotResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << BackupPolicyNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBSnapshotStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_from_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceFromS3"
        operation.name = "RestoreDBInstanceFromS3"
        operation.input = RestoreDBInstanceFromS3Message
        operation.output = RestoreDBInstanceFromS3Result
        operation.errors << AuthorizationNotFoundFault
        operation.errors << BackupPolicyNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidS3BucketFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:restore_db_instance_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RestoreDBInstanceToPointInTime"
        operation.name = "RestoreDBInstanceToPointInTime"
        operation.input = RestoreDBInstanceToPointInTimeMessage
        operation.output = RestoreDBInstanceToPointInTimeResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << BackupPolicyNotFoundFault
        operation.errors << CertificateNotFoundFault
        operation.errors << DBInstanceAlreadyExistsFault
        operation.errors << DBInstanceAutomatedBackupNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBParameterGroupNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << DomainNotFoundFault
        operation.errors << InstanceQuotaExceededFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << NetworkTypeNotSupported
        operation.errors << OptionGroupNotFoundFault
        operation.errors << PointInTimeRestoreNotEnabledFault
        operation.errors << ProvisionedIopsNotAvailableInAZFault
        operation.errors << StorageQuotaExceededFault
        operation.errors << StorageTypeNotSupportedFault
        operation.errors << TenantDatabaseQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:revoke_db_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#RevokeDBSecurityGroupIngress"
        operation.name = "RevokeDBSecurityGroupIngress"
        operation.input = RevokeDBSecurityGroupIngressMessage
        operation.output = RevokeDBSecurityGroupIngressResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << DBSecurityGroupNotFoundFault
        operation.errors << InvalidDBSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:start_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartActivityStream"
        operation.name = "StartActivityStream"
        operation.input = StartActivityStreamRequest
        operation.output = StartActivityStreamResponse
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:start_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBCluster"
        operation.name = "StartDBCluster"
        operation.input = StartDBClusterMessage
        operation.output = StartDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBShardGroupStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:start_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBInstance"
        operation.name = "StartDBInstance"
        operation.input = StartDBInstanceMessage
        operation.output = StartDBInstanceResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSubnetGroupDoesNotCoverEnoughAZs
        operation.errors << DBSubnetGroupNotFoundFault
        operation.errors << InsufficientDBInstanceCapacityFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:start_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartDBInstanceAutomatedBackupsReplication"
        operation.name = "StartDBInstanceAutomatedBackupsReplication"
        operation.input = StartDBInstanceAutomatedBackupsReplicationMessage
        operation.output = StartDBInstanceAutomatedBackupsReplicationResult
        operation.errors << DBInstanceAutomatedBackupQuotaExceededFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceAutomatedBackupStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.errors << StorageTypeNotSupportedFault
        operation.traits = {}
      end)
      service.add_operation(:start_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = StartExportTaskMessage
        operation.output = StartExportTaskOutput
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBClusterSnapshotNotFoundFault
        operation.errors << DBSnapshotNotFoundFault
        operation.errors << ExportTaskAlreadyExistsFault
        operation.errors << IamRoleMissingPermissionsFault
        operation.errors << IamRoleNotFoundFault
        operation.errors << InvalidExportOnlyFault
        operation.errors << InvalidExportSourceStateFault
        operation.errors << InvalidS3BucketFault
        operation.errors << KMSKeyNotAccessibleFault
        operation.traits = {}
      end)
      service.add_operation(:stop_activity_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopActivityStream"
        operation.name = "StopActivityStream"
        operation.input = StopActivityStreamRequest
        operation.output = StopActivityStreamResponse
        operation.errors << DBClusterNotFoundFault
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:stop_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBCluster"
        operation.name = "StopDBCluster"
        operation.input = StopDBClusterMessage
        operation.output = StopDBClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << InvalidDBShardGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:stop_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBInstance"
        operation.name = "StopDBInstance"
        operation.input = StopDBInstanceMessage
        operation.output = StopDBInstanceResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << DBSnapshotAlreadyExistsFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidDBInstanceStateFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:stop_db_instance_automated_backups_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#StopDBInstanceAutomatedBackupsReplication"
        operation.name = "StopDBInstanceAutomatedBackupsReplication"
        operation.input = StopDBInstanceAutomatedBackupsReplicationMessage
        operation.output = StopDBInstanceAutomatedBackupsReplicationResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
        operation.traits = {}
      end)
      service.add_operation(:switchover_blue_green_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverBlueGreenDeployment"
        operation.name = "SwitchoverBlueGreenDeployment"
        operation.input = SwitchoverBlueGreenDeploymentRequest
        operation.output = SwitchoverBlueGreenDeploymentResponse
        operation.errors << BlueGreenDeploymentNotFoundFault
        operation.errors << InvalidBlueGreenDeploymentStateFault
        operation.traits = {}
      end)
      service.add_operation(:switchover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverGlobalCluster"
        operation.name = "SwitchoverGlobalCluster"
        operation.input = SwitchoverGlobalClusterMessage
        operation.output = SwitchoverGlobalClusterResult
        operation.errors << DBClusterNotFoundFault
        operation.errors << GlobalClusterNotFoundFault
        operation.errors << InvalidDBClusterStateFault
        operation.errors << InvalidGlobalClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:switchover_read_replica, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.rds#SwitchoverReadReplica"
        operation.name = "SwitchoverReadReplica"
        operation.input = SwitchoverReadReplicaMessage
        operation.output = SwitchoverReadReplicaResult
        operation.errors << DBInstanceNotFoundFault
        operation.errors << InvalidDBInstanceStateFault
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
