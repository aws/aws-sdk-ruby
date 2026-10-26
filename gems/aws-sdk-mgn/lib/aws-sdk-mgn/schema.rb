# frozen_string_literal: true

# This is generated code!

module Aws::Mgn
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ARN", name: "ARN", traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 20, "max" => 2048}})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#AccountID", name: "AccountID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "[0-9]{12,}"})
    ActionCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ActionCategory", name: "ActionCategory", traits: {"smithy.api#enum" => [{"value" => "DISASTER_RECOVERY", "name" => "DISASTER_RECOVERY"}, {"value" => "OPERATING_SYSTEM", "name" => "OPERATING_SYSTEM"}, {"value" => "LICENSE_AND_SUBSCRIPTION", "name" => "LICENSE_AND_SUBSCRIPTION"}, {"value" => "VALIDATION", "name" => "VALIDATION"}, {"value" => "OBSERVABILITY", "name" => "OBSERVABILITY"}, {"value" => "REFACTORING", "name" => "REFACTORING"}, {"value" => "SECURITY", "name" => "SECURITY"}, {"value" => "NETWORKING", "name" => "NETWORKING"}, {"value" => "CONFIGURATION", "name" => "CONFIGURATION"}, {"value" => "BACKUP", "name" => "BACKUP"}, {"value" => "OTHER", "name" => "OTHER"}]})
    ActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ActionDescription", name: "ActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;\n]*$"})
    ActionID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ActionID", name: "ActionID", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9a-zA-Z]$"})
    ActionIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ActionIDs", name: "ActionIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ActionName", name: "ActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    AnalyzerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#AnalyzerType", name: "AnalyzerType", traits: {"smithy.api#enum" => [{"name" => "REACHABILITY_ANALYZER", "value" => "REACHABILITY_ANALYZER"}]})
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Application", name: "Application", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    ApplicationAggregatedStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ApplicationAggregatedStatus", name: "ApplicationAggregatedStatus")
    ApplicationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ApplicationDescription", name: "ApplicationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    ApplicationHealthStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ApplicationHealthStatus", name: "ApplicationHealthStatus", traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY"}, {"name" => "LAGGING", "value" => "LAGGING"}, {"name" => "ERROR", "value" => "ERROR"}]})
    ApplicationID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ApplicationID", name: "ApplicationID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^app-[0-9a-zA-Z]{17}$"})
    ApplicationIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ApplicationIDs", name: "ApplicationIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ApplicationIDsFilter", name: "ApplicationIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    ApplicationProgressStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ApplicationProgressStatus", name: "ApplicationProgressStatus", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "COMPLETED", "value" => "COMPLETED"}]})
    ApplicationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ApplicationsList", name: "ApplicationsList")
    ArchiveApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ArchiveApplicationInput", name: "ArchiveApplicationInput")
    ArchiveApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ArchiveApplicationOutput", name: "ArchiveApplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    ArchiveWaveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ArchiveWaveInput", name: "ArchiveWaveInput")
    ArchiveWaveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ArchiveWaveOutput", name: "ArchiveWaveOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    AssociateApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#AssociateApplicationsInput", name: "AssociateApplicationsInput")
    AssociateApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#AssociateApplicationsOutput", name: "AssociateApplicationsOutput")
    AssociateSourceServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#AssociateSourceServersInput", name: "AssociateSourceServersInput")
    AssociateSourceServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#AssociateSourceServersOutput", name: "AssociateSourceServersOutput")
    AssociateSourceServersRequestSourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#AssociateSourceServersRequestSourceServerIDs", name: "AssociateSourceServersRequestSourceServerIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BandwidthThrottling = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#BandwidthThrottling", name: "BandwidthThrottling", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    BootMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#BootMode", name: "BootMode", traits: {"smithy.api#enum" => [{"name" => "LEGACY_BIOS", "value" => "LEGACY_BIOS"}, {"name" => "UEFI", "value" => "UEFI"}, {"name" => "USE_SOURCE", "value" => "USE_SOURCE"}]})
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CPU = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CPU", name: "CPU")
    ChangeServerLifeCycleStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ChangeServerLifeCycleStateInput", name: "ChangeServerLifeCycleStateInput")
    ChangeServerLifeCycleStateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ChangeServerLifeCycleStateOutput", name: "ChangeServerLifeCycleStateOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    ChangeServerLifeCycleStateSourceServerLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ChangeServerLifeCycleStateSourceServerLifecycle", name: "ChangeServerLifeCycleStateSourceServerLifecycle")
    ChangeServerLifeCycleStateSourceServerLifecycleState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ChangeServerLifeCycleStateSourceServerLifecycleState", name: "ChangeServerLifeCycleStateSourceServerLifecycleState", traits: {"smithy.api#enum" => [{"name" => "READY_FOR_TEST", "value" => "READY_FOR_TEST"}, {"name" => "READY_FOR_CUTOVER", "value" => "READY_FOR_CUTOVER"}, {"name" => "CUTOVER", "value" => "CUTOVER"}]})
    Checksum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Checksum", name: "Checksum")
    Cidr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#Cidr", name: "Cidr", traits: {"smithy.api#length" => {"min" => 9, "max" => 18}, "smithy.api#pattern" => "^((25[0-4]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\/(1[6-9]|2[0-8])$"})
    CidrBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#CidrBlock", name: "CidrBlock", traits: {"smithy.api#pattern" => "^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]{1,2}$"})
    CidrMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CidrMapping", name: "CidrMapping")
    CidrMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#CidrMappingsList", name: "CidrMappingsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ClientIdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ClientIdempotencyToken", name: "ClientIdempotencyToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    CloudWatchLogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#CloudWatchLogGroupName", name: "CloudWatchLogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    CodeGenerationOutputFormatStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#CodeGenerationOutputFormatStatus", name: "CodeGenerationOutputFormatStatus", traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    CodeGenerationOutputFormatStatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CodeGenerationOutputFormatStatusDetails", name: "CodeGenerationOutputFormatStatusDetails")
    CodeGenerationOutputFormatStatusDetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#CodeGenerationOutputFormatStatusDetailsMap", name: "CodeGenerationOutputFormatStatusDetailsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    CodeGenerationOutputFormatType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#CodeGenerationOutputFormatType", name: "CodeGenerationOutputFormatType", traits: {"smithy.api#enum" => [{"value" => "CDK_L1", "name" => "CDK_L1"}, {"value" => "CDK_L2", "name" => "CDK_L2"}, {"value" => "TERRAFORM", "name" => "TERRAFORM"}, {"value" => "LZA", "name" => "LZA"}]})
    CodeGenerationOutputFormatTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#CodeGenerationOutputFormatTypes", name: "CodeGenerationOutputFormatTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ConflictExceptionErrors", name: "ConflictExceptionErrors")
    Connector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Connector", name: "Connector", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    ConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ConnectorArn", name: "ConnectorArn", traits: {"smithy.api#length" => {"min" => 27, "max" => 100}, "smithy.api#pattern" => "^arn:[\\w-]+:mgn:([a-z]{2}-(gov-)?[a-z]+-\\d{1})?:(\\d{12})?:connector\\/(connector-[0-9a-zA-Z]{17})$"})
    ConnectorID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ConnectorID", name: "ConnectorID", traits: {"smithy.api#length" => {"min" => 27, "max" => 27}, "smithy.api#pattern" => "^connector-[0-9a-zA-Z]{17}$"})
    ConnectorIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ConnectorIDsFilter", name: "ConnectorIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConnectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ConnectorName", name: "ConnectorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConnectorSsmCommandConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ConnectorSsmCommandConfig", name: "ConnectorSsmCommandConfig")
    ConnectorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ConnectorsList", name: "ConnectorsList")
    ConstructID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ConstructID", name: "ConstructID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ConstructProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#ConstructProperties", name: "ConstructProperties", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConstructPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ConstructPropertyKey", name: "ConstructPropertyKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 24}})
    Cpus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#Cpus", name: "Cpus", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateApplicationInput", name: "CreateApplicationInput")
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateApplicationOutput", name: "CreateApplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    CreateConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateConnectorOutput", name: "CreateConnectorOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    CreateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateConnectorRequest", name: "CreateConnectorRequest")
    CreateLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateLaunchConfigurationTemplateInput", name: "CreateLaunchConfigurationTemplateInput")
    CreateLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateLaunchConfigurationTemplateOutput", name: "CreateLaunchConfigurationTemplateOutput")
    CreateNetworkMigrationDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateNetworkMigrationDefinitionOutput", name: "CreateNetworkMigrationDefinitionOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#NetworkMigrationDefinitionResource"}]})
    CreateNetworkMigrationDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateNetworkMigrationDefinitionRequest", name: "CreateNetworkMigrationDefinitionRequest")
    CreateReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateReplicationConfigurationTemplateInput", name: "CreateReplicationConfigurationTemplateInput")
    CreateReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateReplicationConfigurationTemplateOutput", name: "CreateReplicationConfigurationTemplateOutput")
    CreateWaveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateWaveInput", name: "CreateWaveInput")
    CreateWaveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#CreateWaveOutput", name: "CreateWaveOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    DataReplicationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DataReplicationError", name: "DataReplicationError")
    DataReplicationErrorString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#DataReplicationErrorString", name: "DataReplicationErrorString", traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}, {"name" => "UNSUPPORTED_VM_CONFIGURATION", "value" => "UNSUPPORTED_VM_CONFIGURATION"}, {"name" => "LAST_SNAPSHOT_JOB_FAILED", "value" => "LAST_SNAPSHOT_JOB_FAILED"}, {"name" => "FAILED_TO_SETUP_FSX_PROXY", "value" => "FAILED_TO_SETUP_FSX_PROXY"}, {"name" => "FAILED_TO_CREATE_FSX_SNAPSHOT", "value" => "FAILED_TO_CREATE_FSX_SNAPSHOT"}]})
    DataReplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DataReplicationInfo", name: "DataReplicationInfo")
    DataReplicationInfoReplicatedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DataReplicationInfoReplicatedDisk", name: "DataReplicationInfoReplicatedDisk")
    DataReplicationInfoReplicatedDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DataReplicationInfoReplicatedDisks", name: "DataReplicationInfoReplicatedDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    DataReplicationInitiation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DataReplicationInitiation", name: "DataReplicationInitiation")
    DataReplicationInitiationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DataReplicationInitiationStep", name: "DataReplicationInitiationStep")
    DataReplicationInitiationStepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#DataReplicationInitiationStepName", name: "DataReplicationInitiationStepName", traits: {"smithy.api#enum" => [{"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}, {"value" => "SETUP_FSX_PROXY", "name" => "SETUP_FSX_PROXY"}]})
    DataReplicationInitiationStepStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#DataReplicationInitiationStepStatus", name: "DataReplicationInitiationStepStatus", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    DataReplicationInitiationSteps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DataReplicationInitiationSteps", name: "DataReplicationInitiationSteps")
    DataReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#DataReplicationState", name: "DataReplicationState", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "PENDING_SNAPSHOT_SHIPPING", "value" => "PENDING_SNAPSHOT_SHIPPING"}, {"name" => "SHIPPING_SNAPSHOT", "value" => "SHIPPING_SNAPSHOT"}]})
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteApplicationInput", name: "DeleteApplicationInput")
    DeleteApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteApplicationOutput", name: "DeleteApplicationOutput")
    DeleteConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteConnectorRequest", name: "DeleteConnectorRequest")
    DeleteJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteJobInput", name: "DeleteJobInput")
    DeleteJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteJobOutput", name: "DeleteJobOutput")
    DeleteLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteLaunchConfigurationTemplateInput", name: "DeleteLaunchConfigurationTemplateInput")
    DeleteLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteLaunchConfigurationTemplateOutput", name: "DeleteLaunchConfigurationTemplateOutput")
    DeleteNetworkMigrationDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteNetworkMigrationDefinitionRequest", name: "DeleteNetworkMigrationDefinitionRequest")
    DeleteNetworkMigrationDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteNetworkMigrationDefinitionResponse", name: "DeleteNetworkMigrationDefinitionResponse")
    DeleteOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteOperation", name: "DeleteOperation")
    DeleteReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteReplicationConfigurationTemplateInput", name: "DeleteReplicationConfigurationTemplateInput")
    DeleteReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteReplicationConfigurationTemplateOutput", name: "DeleteReplicationConfigurationTemplateOutput")
    DeleteSourceServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteSourceServerInput", name: "DeleteSourceServerInput")
    DeleteSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteSourceServerOutput", name: "DeleteSourceServerOutput")
    DeleteVcenterClientInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteVcenterClientInput", name: "DeleteVcenterClientInput")
    DeleteWaveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteWaveInput", name: "DeleteWaveInput")
    DeleteWaveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DeleteWaveOutput", name: "DeleteWaveOutput")
    DescribeJobLogItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeJobLogItemsInput", name: "DescribeJobLogItemsInput")
    DescribeJobLogItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeJobLogItemsOutput", name: "DescribeJobLogItemsOutput")
    DescribeJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeJobsInput", name: "DescribeJobsInput")
    DescribeJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeJobsOutput", name: "DescribeJobsOutput")
    DescribeJobsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeJobsRequestFilters", name: "DescribeJobsRequestFilters")
    DescribeJobsRequestFiltersJobIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DescribeJobsRequestFiltersJobIDs", name: "DescribeJobsRequestFiltersJobIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DescribeLaunchConfigurationTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeLaunchConfigurationTemplatesInput", name: "DescribeLaunchConfigurationTemplatesInput")
    DescribeLaunchConfigurationTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeLaunchConfigurationTemplatesOutput", name: "DescribeLaunchConfigurationTemplatesOutput")
    DescribeReplicationConfigurationTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeReplicationConfigurationTemplatesInput", name: "DescribeReplicationConfigurationTemplatesInput")
    DescribeReplicationConfigurationTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeReplicationConfigurationTemplatesOutput", name: "DescribeReplicationConfigurationTemplatesOutput")
    DescribeSourceServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeSourceServersInput", name: "DescribeSourceServersInput")
    DescribeSourceServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeSourceServersOutput", name: "DescribeSourceServersOutput")
    DescribeSourceServersRequestApplicationIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DescribeSourceServersRequestApplicationIDs", name: "DescribeSourceServersRequestApplicationIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DescribeSourceServersRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeSourceServersRequestFilters", name: "DescribeSourceServersRequestFilters")
    DescribeSourceServersRequestFiltersIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DescribeSourceServersRequestFiltersIDs", name: "DescribeSourceServersRequestFiltersIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DescribeVcenterClientsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeVcenterClientsInput", name: "DescribeVcenterClientsInput")
    DescribeVcenterClientsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DescribeVcenterClientsOutput", name: "DescribeVcenterClientsOutput")
    DisassociateApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisassociateApplicationsInput", name: "DisassociateApplicationsInput")
    DisassociateApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisassociateApplicationsOutput", name: "DisassociateApplicationsOutput")
    DisassociateSourceServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisassociateSourceServersInput", name: "DisassociateSourceServersInput")
    DisassociateSourceServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisassociateSourceServersOutput", name: "DisassociateSourceServersOutput")
    DisassociateSourceServersRequestSourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#DisassociateSourceServersRequestSourceServerIDs", name: "DisassociateSourceServersRequestSourceServerIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DisconnectFromServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisconnectFromServiceInput", name: "DisconnectFromServiceInput")
    DisconnectFromServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#DisconnectFromServiceOutput", name: "DisconnectFromServiceOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    Disk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Disk", name: "Disk")
    Disks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#Disks", name: "Disks", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DocumentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#DocumentVersion", name: "DocumentVersion", traits: {"smithy.api#pattern" => "^(\\$DEFAULT|\\$LATEST|[0-9]+)$"})
    EC2InstanceID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#EC2InstanceID", name: "EC2InstanceID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    EC2InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#EC2InstanceType", name: "EC2InstanceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    EC2LaunchConfigurationTemplateID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#EC2LaunchConfigurationTemplateID", name: "EC2LaunchConfigurationTemplateID", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^lt-[0-9a-z]{17}$"})
    EncryptionAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#EncryptionAlgorithm", name: "EncryptionAlgorithm", traits: {"smithy.api#enum" => [{"name" => "SHA256", "value" => "SHA256"}]})
    EnrichmentSourceS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#EnrichmentSourceS3Configuration", name: "EnrichmentSourceS3Configuration")
    EnrichmentTargetS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#EnrichmentTargetS3Configuration", name: "EnrichmentTargetS3Configuration")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ErrorDetails", name: "ErrorDetails")
    ExecutionStage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ExecutionStage", name: "ExecutionStage", traits: {"smithy.api#enum" => [{"name" => "MAPPING", "value" => "MAPPING"}, {"name" => "CODE_GENERATION", "value" => "CODE_GENERATION"}, {"name" => "DEPLOY", "value" => "DEPLOY"}, {"name" => "DEPLOYED_STACKS_DELETION", "value" => "DEPLOYED_STACKS_DELETION"}, {"name" => "ANALYZE", "value" => "ANALYZE"}]})
    ExecutionStageActivity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ExecutionStageActivity", name: "ExecutionStageActivity", traits: {"smithy.api#enum" => [{"name" => "MAPPING", "value" => "MAPPING"}, {"name" => "MAPPING_UPDATE", "value" => "MAPPING_UPDATE"}, {"name" => "CODE_GENERATION", "value" => "CODE_GENERATION"}, {"name" => "DEPLOY", "value" => "DEPLOY"}, {"name" => "DEPLOYED_STACKS_DELETION", "value" => "DEPLOYED_STACKS_DELETION"}, {"name" => "ANALYZE", "value" => "ANALYZE"}]})
    ExecutionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ExecutionStatus", name: "ExecutionStatus", traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "STARTED", "value" => "STARTED"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    ExportErrorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ExportErrorData", name: "ExportErrorData")
    ExportErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ExportErrors", name: "ExportErrors")
    ExportID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ExportID", name: "ExportID", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^export-[0-9a-zA-Z]{17}$"})
    ExportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ExportStatus", name: "ExportStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    ExportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ExportTask", name: "ExportTask")
    ExportTaskError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ExportTaskError", name: "ExportTaskError")
    ExportTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ExportTaskSummary", name: "ExportTaskSummary")
    ExportsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ExportsList", name: "ExportsList")
    FinalizeCutoverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#FinalizeCutoverInput", name: "FinalizeCutoverInput")
    FinalizeCutoverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#FinalizeCutoverOutput", name: "FinalizeCutoverOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    FirstBoot = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#FirstBoot", name: "FirstBoot", traits: {"smithy.api#enum" => [{"value" => "WAITING", "name" => "WAITING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    FqdnForActionFramework = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#FqdnForActionFramework", name: "FqdnForActionFramework", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_](([a-zA-Z0-9_\\-]{0,61}[a-zA-Z0-9_])?\\.)+[a-zA-Z]{2,63}$|^((25[0-5]|(2[0-4]|1\\d|[1-9]|)\\d)\\.?\\b){4}$|^(?:[A-Fa-f0-9]{1,4}:){7}[A-Fa-f0-9]{1,4}$"})
    FsxOntapConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#FsxOntapConfiguration", name: "FsxOntapConfiguration")
    GetLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetLaunchConfigurationInput", name: "GetLaunchConfigurationInput")
    GetLaunchConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetLaunchConfigurationOutput", name: "GetLaunchConfigurationOutput")
    GetNetworkMigrationDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetNetworkMigrationDefinitionOutput", name: "GetNetworkMigrationDefinitionOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#NetworkMigrationDefinitionResource"}]})
    GetNetworkMigrationDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetNetworkMigrationDefinitionRequest", name: "GetNetworkMigrationDefinitionRequest")
    GetNetworkMigrationMapperSegmentConstructRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetNetworkMigrationMapperSegmentConstructRequest", name: "GetNetworkMigrationMapperSegmentConstructRequest")
    GetNetworkMigrationMapperSegmentConstructResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetNetworkMigrationMapperSegmentConstructResponse", name: "GetNetworkMigrationMapperSegmentConstructResponse")
    GetReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetReplicationConfigurationInput", name: "GetReplicationConfigurationInput")
    GetReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#GetReplicationConfigurationOutput", name: "GetReplicationConfigurationOutput")
    Hash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#Hash", name: "Hash", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]{32}$"})
    IPsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#IPsList", name: "IPsList")
    ISO8601DatetimeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ISO8601DatetimeString", name: "ISO8601DatetimeString", traits: {"smithy.api#length" => {"min" => 19, "max" => 32}, "smithy.api#pattern" => "^[1-9][0-9]*-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?Z$"})
    ISO8601DurationString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ISO8601DurationString", name: "ISO8601DurationString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    IdentificationHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#IdentificationHints", name: "IdentificationHints")
    ImportErrorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportErrorData", name: "ImportErrorData")
    ImportErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ImportErrorType", name: "ImportErrorType", traits: {"smithy.api#enum" => [{"name" => "VALIDATION_ERROR", "value" => "VALIDATION_ERROR"}, {"name" => "PROCESSING_ERROR", "value" => "PROCESSING_ERROR"}]})
    ImportErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ImportErrors", name: "ImportErrors")
    ImportFileEnrichment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportFileEnrichment", name: "ImportFileEnrichment")
    ImportFileEnrichmentJobID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ImportFileEnrichmentJobID", name: "ImportFileEnrichmentJobID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ImportFileEnrichmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ImportFileEnrichmentStatus", name: "ImportFileEnrichmentStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "SUCCEEDED_WITH_WARNINGS", "name" => "SUCCEEDED_WITH_WARNINGS"}]})
    ImportFileEnrichmentsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ImportFileEnrichmentsIDsFilter", name: "ImportFileEnrichmentsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImportFileEnrichmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ImportFileEnrichmentsList", name: "ImportFileEnrichmentsList")
    ImportID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ImportID", name: "ImportID", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^import-[0-9a-zA-Z]{17}$"})
    ImportIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ImportIDsFilter", name: "ImportIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ImportList", name: "ImportList")
    ImportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ImportStatus", name: "ImportStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    ImportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTask", name: "ImportTask")
    ImportTaskError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTaskError", name: "ImportTaskError")
    ImportTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTaskSummary", name: "ImportTaskSummary")
    ImportTaskSummaryApplications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTaskSummaryApplications", name: "ImportTaskSummaryApplications")
    ImportTaskSummaryServers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTaskSummaryServers", name: "ImportTaskSummaryServers")
    ImportTaskSummaryWaves = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ImportTaskSummaryWaves", name: "ImportTaskSummaryWaves")
    InitializeServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#InitializeServiceInput", name: "InitializeServiceInput")
    InitializeServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#InitializeServiceOutput", name: "InitializeServiceOutput")
    InitiatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#InitiatedBy", name: "InitiatedBy", traits: {"smithy.api#enum" => [{"value" => "START_TEST", "name" => "START_TEST"}, {"value" => "START_CUTOVER", "name" => "START_CUTOVER"}, {"value" => "DIAGNOSTIC", "name" => "DIAGNOSTIC"}, {"value" => "TERMINATE", "name" => "TERMINATE"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternetProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#InternetProtocol", name: "InternetProtocol", traits: {"smithy.api#enum" => [{"value" => "IPV4", "name" => "IPV4"}, {"value" => "IPV6", "name" => "IPV6"}]})
    Iops = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#Iops", name: "Iops", traits: {"smithy.api#range" => {"min" => 100, "max" => 64000}})
    IpAssignmentStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#IpAssignmentStrategy", name: "IpAssignmentStrategy", traits: {"smithy.api#enum" => [{"value" => "STATIC", "name" => "STATIC"}, {"value" => "DYNAMIC", "name" => "DYNAMIC"}]})
    JmesPathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#JmesPathString", name: "JmesPathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+(\\.[a-zA-Z0-9_\\[\\]]+)*$"})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Job", name: "Job")
    JobID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#JobID", name: "JobID", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^mgnjob-[0-9a-zA-Z]{17}$"})
    JobLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#JobLog", name: "JobLog")
    JobLogEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#JobLogEvent", name: "JobLogEvent", traits: {"smithy.api#enum" => [{"name" => "JOB_START", "value" => "JOB_START"}, {"name" => "SERVER_SKIPPED", "value" => "SERVER_SKIPPED"}, {"name" => "CLEANUP_START", "value" => "CLEANUP_START"}, {"name" => "CLEANUP_END", "value" => "CLEANUP_END"}, {"name" => "CLEANUP_FAIL", "value" => "CLEANUP_FAIL"}, {"name" => "SNAPSHOT_START", "value" => "SNAPSHOT_START"}, {"name" => "SNAPSHOT_END", "value" => "SNAPSHOT_END"}, {"name" => "SNAPSHOT_FAIL", "value" => "SNAPSHOT_FAIL"}, {"name" => "USING_PREVIOUS_SNAPSHOT", "value" => "USING_PREVIOUS_SNAPSHOT"}, {"name" => "CONVERSION_START", "value" => "CONVERSION_START"}, {"name" => "CONVERSION_END", "value" => "CONVERSION_END"}, {"name" => "CONVERSION_FAIL", "value" => "CONVERSION_FAIL"}, {"name" => "LAUNCH_START", "value" => "LAUNCH_START"}, {"name" => "LAUNCH_FAILED", "value" => "LAUNCH_FAILED"}, {"name" => "JOB_CANCEL", "value" => "JOB_CANCEL"}, {"name" => "JOB_END", "value" => "JOB_END"}]})
    JobLogEventData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#JobLogEventData", name: "JobLogEventData")
    JobLogs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#JobLogs", name: "JobLogs")
    JobPostLaunchActionsLaunchStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#JobPostLaunchActionsLaunchStatus", name: "JobPostLaunchActionsLaunchStatus")
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#JobStatus", name: "JobStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    JobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#JobType", name: "JobType", traits: {"smithy.api#enum" => [{"value" => "LAUNCH", "name" => "LAUNCH"}, {"value" => "TERMINATE", "name" => "TERMINATE"}]})
    JobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#JobsList", name: "JobsList")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 276}, "smithy.api#pattern" => "^((arn:[\\w-]+:kms:([a-z]{2}-(gov-)?[a-z]+-\\d{1})?:(\\d{12})?:((alias|key)/[a-zA-Z0-9:/_-]{1,256}))|())$"})
    LargeBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LargeBoundedString", name: "LargeBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    LastKnownCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LastKnownCheck", name: "LastKnownCheck")
    LastKnownCheckStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LastKnownCheckStatus", name: "LastKnownCheckStatus", traits: {"smithy.api#enum" => [{"value" => "PASSED", "name" => "PASSED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "PENDING", "name" => "PENDING"}]})
    LastKnownCheckType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LastKnownCheckType", name: "LastKnownCheckType", traits: {"smithy.api#enum" => [{"value" => "EC2", "name" => "EC2"}, {"value" => "FSx", "name" => "FSx"}]})
    LastKnownChecksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#LastKnownChecksList", name: "LastKnownChecksList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LaunchConfigurationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LaunchConfigurationTemplate", name: "LaunchConfigurationTemplate")
    LaunchConfigurationTemplateID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LaunchConfigurationTemplateID", name: "LaunchConfigurationTemplateID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^lct-[0-9a-zA-Z]{17}$"})
    LaunchConfigurationTemplateIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#LaunchConfigurationTemplateIDs", name: "LaunchConfigurationTemplateIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchConfigurationTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#LaunchConfigurationTemplates", name: "LaunchConfigurationTemplates", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LaunchDisposition", name: "LaunchDisposition", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "STARTED", "value" => "STARTED"}]})
    LaunchStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LaunchStatus", name: "LaunchStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    LaunchTemplateDiskConf = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LaunchTemplateDiskConf", name: "LaunchTemplateDiskConf")
    LaunchedInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LaunchedInstance", name: "LaunchedInstance")
    Licensing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Licensing", name: "Licensing")
    LifeCycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycle", name: "LifeCycle")
    LifeCycleLastCutover = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastCutover", name: "LifeCycleLastCutover")
    LifeCycleLastCutoverFinalized = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastCutoverFinalized", name: "LifeCycleLastCutoverFinalized")
    LifeCycleLastCutoverInitiated = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastCutoverInitiated", name: "LifeCycleLastCutoverInitiated")
    LifeCycleLastCutoverReverted = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastCutoverReverted", name: "LifeCycleLastCutoverReverted")
    LifeCycleLastTest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastTest", name: "LifeCycleLastTest")
    LifeCycleLastTestFinalized = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastTestFinalized", name: "LifeCycleLastTestFinalized")
    LifeCycleLastTestInitiated = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastTestInitiated", name: "LifeCycleLastTestInitiated")
    LifeCycleLastTestReverted = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#LifeCycleLastTestReverted", name: "LifeCycleLastTestReverted")
    LifeCycleState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LifeCycleState", name: "LifeCycleState", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "NOT_READY", "value" => "NOT_READY"}, {"name" => "READY_FOR_TEST", "value" => "READY_FOR_TEST"}, {"name" => "TESTING", "value" => "TESTING"}, {"name" => "READY_FOR_CUTOVER", "value" => "READY_FOR_CUTOVER"}, {"name" => "CUTTING_OVER", "value" => "CUTTING_OVER"}, {"name" => "CUTOVER", "value" => "CUTOVER"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "DISCOVERED", "value" => "DISCOVERED"}, {"name" => "PENDING_INSTALLATION", "value" => "PENDING_INSTALLATION"}]})
    LifeCycleStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#LifeCycleStates", name: "LifeCycleStates", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListApplicationsInput", name: "ListApplicationsInput")
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListApplicationsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListApplicationsRequestFilters", name: "ListApplicationsRequestFilters")
    ListConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListConnectorsRequest", name: "ListConnectorsRequest")
    ListConnectorsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListConnectorsRequestFilters", name: "ListConnectorsRequestFilters")
    ListConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListConnectorsResponse", name: "ListConnectorsResponse")
    ListExportErrorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListExportErrorsInput", name: "ListExportErrorsInput")
    ListExportErrorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListExportErrorsOutput", name: "ListExportErrorsOutput")
    ListExportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListExportsInput", name: "ListExportsInput")
    ListExportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListExportsOutput", name: "ListExportsOutput")
    ListExportsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListExportsRequestFilters", name: "ListExportsRequestFilters")
    ListExportsRequestFiltersExportIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListExportsRequestFiltersExportIDs", name: "ListExportsRequestFiltersExportIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListImportErrorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportErrorsInput", name: "ListImportErrorsInput")
    ListImportErrorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportErrorsOutput", name: "ListImportErrorsOutput")
    ListImportFileEnrichmentsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportFileEnrichmentsFilters", name: "ListImportFileEnrichmentsFilters")
    ListImportFileEnrichmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportFileEnrichmentsRequest", name: "ListImportFileEnrichmentsRequest")
    ListImportFileEnrichmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportFileEnrichmentsResponse", name: "ListImportFileEnrichmentsResponse")
    ListImportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportsInput", name: "ListImportsInput")
    ListImportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportsOutput", name: "ListImportsOutput")
    ListImportsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListImportsRequestFilters", name: "ListImportsRequestFilters")
    ListManagedAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListManagedAccountsRequest", name: "ListManagedAccountsRequest")
    ListManagedAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListManagedAccountsResponse", name: "ListManagedAccountsResponse")
    ListNetworkMigrationAnalysesFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysesFilters", name: "ListNetworkMigrationAnalysesFilters")
    ListNetworkMigrationAnalysesIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysesIDsFilter", name: "ListNetworkMigrationAnalysesIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationAnalysesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysesRequest", name: "ListNetworkMigrationAnalysesRequest")
    ListNetworkMigrationAnalysesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysesResponse", name: "ListNetworkMigrationAnalysesResponse")
    ListNetworkMigrationAnalysisResultsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysisResultsFilters", name: "ListNetworkMigrationAnalysisResultsFilters")
    ListNetworkMigrationAnalysisResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysisResultsRequest", name: "ListNetworkMigrationAnalysisResultsRequest")
    ListNetworkMigrationAnalysisResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationAnalysisResultsResponse", name: "ListNetworkMigrationAnalysisResultsResponse")
    ListNetworkMigrationCodeGenerationSegmentsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationSegmentsFilters", name: "ListNetworkMigrationCodeGenerationSegmentsFilters")
    ListNetworkMigrationCodeGenerationSegmentsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationSegmentsIDsFilter", name: "ListNetworkMigrationCodeGenerationSegmentsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationCodeGenerationSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationSegmentsRequest", name: "ListNetworkMigrationCodeGenerationSegmentsRequest")
    ListNetworkMigrationCodeGenerationSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationSegmentsResponse", name: "ListNetworkMigrationCodeGenerationSegmentsResponse")
    ListNetworkMigrationCodeGenerationsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationsFilters", name: "ListNetworkMigrationCodeGenerationsFilters")
    ListNetworkMigrationCodeGenerationsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationsIDsFilter", name: "ListNetworkMigrationCodeGenerationsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationCodeGenerationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationsRequest", name: "ListNetworkMigrationCodeGenerationsRequest")
    ListNetworkMigrationCodeGenerationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationsResponse", name: "ListNetworkMigrationCodeGenerationsResponse")
    ListNetworkMigrationDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDefinitionsRequest", name: "ListNetworkMigrationDefinitionsRequest")
    ListNetworkMigrationDefinitionsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDefinitionsRequestFilters", name: "ListNetworkMigrationDefinitionsRequestFilters")
    ListNetworkMigrationDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDefinitionsResponse", name: "ListNetworkMigrationDefinitionsResponse")
    ListNetworkMigrationDeployedStacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeployedStacksRequest", name: "ListNetworkMigrationDeployedStacksRequest")
    ListNetworkMigrationDeployedStacksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeployedStacksResponse", name: "ListNetworkMigrationDeployedStacksResponse")
    ListNetworkMigrationDeployerJobFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeployerJobFilters", name: "ListNetworkMigrationDeployerJobFilters")
    ListNetworkMigrationDeployerJobIDsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeployerJobIDsFilters", name: "ListNetworkMigrationDeployerJobIDsFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeploymentsOutput", name: "ListNetworkMigrationDeploymentsOutput")
    ListNetworkMigrationDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationDeploymentsRequest", name: "ListNetworkMigrationDeploymentsRequest")
    ListNetworkMigrationExecutionRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationExecutionRequestFilters", name: "ListNetworkMigrationExecutionRequestFilters")
    ListNetworkMigrationExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationExecutionsRequest", name: "ListNetworkMigrationExecutionsRequest")
    ListNetworkMigrationExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationExecutionsResponse", name: "ListNetworkMigrationExecutionsResponse")
    ListNetworkMigrationMapperSegmentConstructTypesFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructTypesFilter", name: "ListNetworkMigrationMapperSegmentConstructTypesFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationMapperSegmentConstructsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructsFilters", name: "ListNetworkMigrationMapperSegmentConstructsFilters")
    ListNetworkMigrationMapperSegmentConstructsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructsIDsFilter", name: "ListNetworkMigrationMapperSegmentConstructsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationMapperSegmentConstructsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructsRequest", name: "ListNetworkMigrationMapperSegmentConstructsRequest")
    ListNetworkMigrationMapperSegmentConstructsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructsResponse", name: "ListNetworkMigrationMapperSegmentConstructsResponse")
    ListNetworkMigrationMapperSegmentsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentsFilters", name: "ListNetworkMigrationMapperSegmentsFilters")
    ListNetworkMigrationMapperSegmentsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentsIDsFilter", name: "ListNetworkMigrationMapperSegmentsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationMapperSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentsRequest", name: "ListNetworkMigrationMapperSegmentsRequest")
    ListNetworkMigrationMapperSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentsResponse", name: "ListNetworkMigrationMapperSegmentsResponse")
    ListNetworkMigrationMappingUpdatesFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingUpdatesFilters", name: "ListNetworkMigrationMappingUpdatesFilters")
    ListNetworkMigrationMappingUpdatesIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingUpdatesIDsFilter", name: "ListNetworkMigrationMappingUpdatesIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationMappingUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingUpdatesRequest", name: "ListNetworkMigrationMappingUpdatesRequest")
    ListNetworkMigrationMappingUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingUpdatesResponse", name: "ListNetworkMigrationMappingUpdatesResponse")
    ListNetworkMigrationMappingsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingsFilters", name: "ListNetworkMigrationMappingsFilters")
    ListNetworkMigrationMappingsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingsIDsFilter", name: "ListNetworkMigrationMappingsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListNetworkMigrationMappingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingsRequest", name: "ListNetworkMigrationMappingsRequest")
    ListNetworkMigrationMappingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListNetworkMigrationMappingsResponse", name: "ListNetworkMigrationMappingsResponse")
    ListSourceServerActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListSourceServerActionsInput", name: "ListSourceServerActionsInput")
    ListSourceServerActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListSourceServerActionsOutput", name: "ListSourceServerActionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTemplateActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListTemplateActionsInput", name: "ListTemplateActionsInput")
    ListTemplateActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListTemplateActionsOutput", name: "ListTemplateActionsOutput")
    ListWavesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListWavesInput", name: "ListWavesInput")
    ListWavesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListWavesOutput", name: "ListWavesOutput")
    ListWavesRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ListWavesRequestFilters", name: "ListWavesRequestFilters")
    LogicalID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#LogicalID", name: "LogicalID", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-]*$"})
    ManagedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ManagedAccount", name: "ManagedAccount")
    ManagedAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ManagedAccounts", name: "ManagedAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MarkAsArchivedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#MarkAsArchivedInput", name: "MarkAsArchivedInput")
    MarkAsArchivedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#MarkAsArchivedOutput", name: "MarkAsArchivedOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    MarshalledResourceDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#MarshalledResourceDefinition", name: "MarshalledResourceDefinition", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    MaxResultsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#MaxResultsType", name: "MaxResultsType", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MergeConstruct = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#MergeConstruct", name: "MergeConstruct")
    MergeConstructs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#MergeConstructs", name: "MergeConstructs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    MergeOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#MergeOperation", name: "MergeOperation")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkInterfaces", name: "NetworkInterfaces", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    NetworkMigrationAnalysesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysesList", name: "NetworkMigrationAnalysesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationAnalysisJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisJobDetails", name: "NetworkMigrationAnalysisJobDetails")
    NetworkMigrationAnalysisResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisResult", name: "NetworkMigrationAnalysisResult")
    NetworkMigrationAnalysisResultSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisResultSource", name: "NetworkMigrationAnalysisResultSource")
    NetworkMigrationAnalysisResultStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisResultStatus", name: "NetworkMigrationAnalysisResultStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    NetworkMigrationAnalysisResultTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisResultTarget", name: "NetworkMigrationAnalysisResultTarget")
    NetworkMigrationAnalysisResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationAnalysisResultsList", name: "NetworkMigrationAnalysisResultsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationCodeGenerationArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationArtifact", name: "NetworkMigrationCodeGenerationArtifact")
    NetworkMigrationCodeGenerationArtifactID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationArtifactID", name: "NetworkMigrationCodeGenerationArtifactID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    NetworkMigrationCodeGenerationArtifactSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationArtifactSubType", name: "NetworkMigrationCodeGenerationArtifactSubType", traits: {"smithy.api#enum" => [{"value" => "APPLICATION", "name" => "APPLICATION"}, {"value" => "NESTED_STACK", "name" => "NESTED_STACK"}, {"value" => "STACK", "name" => "STACK"}]})
    NetworkMigrationCodeGenerationArtifactType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationArtifactType", name: "NetworkMigrationCodeGenerationArtifactType", traits: {"smithy.api#enum" => [{"value" => "CDK_TYPESCRIPT", "name" => "CDK_TYPESCRIPT"}, {"value" => "CLOUDFORMATION_TEMPLATE", "name" => "CLOUDFORMATION_TEMPLATE"}, {"value" => "CDKTF_TYPESCRIPT", "name" => "CDKTF_TYPESCRIPT"}, {"value" => "TERRAFORM_CONFIGURATION", "name" => "TERRAFORM_CONFIGURATION"}, {"value" => "CDK_L2_TYPESCRIPT", "name" => "CDK_L2_TYPESCRIPT"}]})
    NetworkMigrationCodeGenerationArtifacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationArtifacts", name: "NetworkMigrationCodeGenerationArtifacts")
    NetworkMigrationCodeGenerationJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationJobDetails", name: "NetworkMigrationCodeGenerationJobDetails")
    NetworkMigrationCodeGenerationSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationSegment", name: "NetworkMigrationCodeGenerationSegment")
    NetworkMigrationCodeGenerationSegmentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationSegmentType", name: "NetworkMigrationCodeGenerationSegmentType", traits: {"smithy.api#enum" => [{"value" => "WORKLOAD", "name" => "WORKLOAD"}, {"value" => "APPLIANCE", "name" => "APPLIANCE"}, {"value" => "NETWORK", "name" => "NETWORK"}]})
    NetworkMigrationCodeGenerationSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationSegmentsList", name: "NetworkMigrationCodeGenerationSegmentsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationCodeGenerationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationCodeGenerationsList", name: "NetworkMigrationCodeGenerationsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationDefinitionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefinitionDescription", name: "NetworkMigrationDefinitionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    NetworkMigrationDefinitionID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefinitionID", name: "NetworkMigrationDefinitionID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^nmd-[0-9a-zA-Z]{17}$"})
    NetworkMigrationDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefinitionName", name: "NetworkMigrationDefinitionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    NetworkMigrationDefinitionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefinitionSummariesList", name: "NetworkMigrationDefinitionSummariesList")
    NetworkMigrationDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefinitionSummary", name: "NetworkMigrationDefinitionSummary")
    NetworkMigrationDefintionsIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationDefintionsIDsFilter", name: "NetworkMigrationDefintionsIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    NetworkMigrationDeployedStackDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationDeployedStackDetails", name: "NetworkMigrationDeployedStackDetails")
    NetworkMigrationDeployedStackStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationDeployedStackStatus", name: "NetworkMigrationDeployedStackStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_COMPLETE", "name" => "CREATE_COMPLETE"}, {"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "CREATE_STARTED", "name" => "CREATE_STARTED"}, {"value" => "DELETE_COMPLETE", "name" => "DELETE_COMPLETE"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}, {"value" => "DELETE_STARTED", "name" => "DELETE_STARTED"}]})
    NetworkMigrationDeployedStacksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationDeployedStacksList", name: "NetworkMigrationDeployedStacksList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationDeployerJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationDeployerJobDetails", name: "NetworkMigrationDeployerJobDetails")
    NetworkMigrationDeployerJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationDeployerJobList", name: "NetworkMigrationDeployerJobList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationExecution", name: "NetworkMigrationExecution")
    NetworkMigrationExecutionID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationExecutionID", name: "NetworkMigrationExecutionID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    NetworkMigrationExecutionIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationExecutionIDsFilter", name: "NetworkMigrationExecutionIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    NetworkMigrationExecutionStatusesFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationExecutionStatusesFilter", name: "NetworkMigrationExecutionStatusesFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    NetworkMigrationExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationExecutionsList", name: "NetworkMigrationExecutionsList")
    NetworkMigrationFailedResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationFailedResourceDetails", name: "NetworkMigrationFailedResourceDetails")
    NetworkMigrationFailedResourceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationFailedResourceStatus", name: "NetworkMigrationFailedResourceStatus", traits: {"smithy.api#enum" => [{"value" => "CREATE_FAILED", "name" => "CREATE_FAILED"}, {"value" => "DELETE_FAILED", "name" => "DELETE_FAILED"}]})
    NetworkMigrationFailedResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationFailedResourcesList", name: "NetworkMigrationFailedResourcesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NetworkMigrationJobID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationJobID", name: "NetworkMigrationJobID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    NetworkMigrationJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationJobStatus", name: "NetworkMigrationJobStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    NetworkMigrationMapperSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegment", name: "NetworkMigrationMapperSegment")
    NetworkMigrationMapperSegmentConstruct = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegmentConstruct", name: "NetworkMigrationMapperSegmentConstruct")
    NetworkMigrationMapperSegmentConstructType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegmentConstructType", name: "NetworkMigrationMapperSegmentConstructType", traits: {"smithy.api#length" => {"min" => 0, "max" => 24}, "smithy.api#pattern" => "^AWS::([A-Z\\d]){2,10}::[a-zA-Z\\d]{2,30}$"})
    NetworkMigrationMapperSegmentConstructs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegmentConstructs", name: "NetworkMigrationMapperSegmentConstructs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationMapperSegmentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegmentType", name: "NetworkMigrationMapperSegmentType", traits: {"smithy.api#enum" => [{"value" => "WORKLOAD", "name" => "WORKLOAD"}, {"value" => "APPLIANCE", "name" => "APPLIANCE"}]})
    NetworkMigrationMapperSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationMapperSegmentsList", name: "NetworkMigrationMapperSegmentsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationMappingJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationMappingJobDetails", name: "NetworkMigrationMappingJobDetails")
    NetworkMigrationMappingUpdateJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#NetworkMigrationMappingUpdateJobDetails", name: "NetworkMigrationMappingUpdateJobDetails")
    NetworkMigrationMappingUpdatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationMappingUpdatesList", name: "NetworkMigrationMappingUpdatesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    NetworkMigrationMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#NetworkMigrationMappingsList", name: "NetworkMigrationMappingsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    OS = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#OS", name: "OS")
    OperatingSystemString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#OperatingSystemString", name: "OperatingSystemString", traits: {"smithy.api#pattern" => "^(linux|windows)$"})
    OperationUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mgn#OperationUnion", name: "OperationUnion")
    OrderType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#OrderType", name: "OrderType", traits: {"smithy.api#range" => {"min" => 1001, "max" => 10000}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ParticipatingServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ParticipatingServer", name: "ParticipatingServer")
    ParticipatingServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ParticipatingServers", name: "ParticipatingServers")
    PauseReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PauseReplicationOutput", name: "PauseReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    PauseReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PauseReplicationRequest", name: "PauseReplicationRequest")
    PhysicalID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#PhysicalID", name: "PhysicalID", traits: {"smithy.api#length" => {"min" => 86, "max" => 128}, "smithy.api#pattern" => "^arn:aws:cloudformation:[a-z0-9-]+:[0-9]{12}:stack/[a-zA-Z0-9-]+/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PostLaunchActionExecutionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#PostLaunchActionExecutionStatus", name: "PostLaunchActionExecutionStatus", traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    PostLaunchActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PostLaunchActions", name: "PostLaunchActions")
    PostLaunchActionsDeploymentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#PostLaunchActionsDeploymentType", name: "PostLaunchActionsDeploymentType", traits: {"smithy.api#enum" => [{"name" => "TEST_AND_CUTOVER", "value" => "TEST_AND_CUTOVER"}, {"name" => "CUTOVER_ONLY", "value" => "CUTOVER_ONLY"}, {"name" => "TEST_ONLY", "value" => "TEST_ONLY"}]})
    PostLaunchActionsLaunchStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#PostLaunchActionsLaunchStatusList", name: "PostLaunchActionsLaunchStatusList")
    PostLaunchActionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PostLaunchActionsStatus", name: "PostLaunchActionsStatus")
    PutSourceServerActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PutSourceServerActionInput", name: "PutSourceServerActionInput")
    PutSourceServerActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PutSourceServerActionOutput", name: "PutSourceServerActionOutput")
    PutTemplateActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PutTemplateActionInput", name: "PutTemplateActionInput")
    PutTemplateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#PutTemplateActionOutput", name: "PutTemplateActionOutput")
    RemoveSourceServerActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RemoveSourceServerActionInput", name: "RemoveSourceServerActionInput")
    RemoveSourceServerActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RemoveSourceServerActionOutput", name: "RemoveSourceServerActionOutput")
    RemoveTemplateActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RemoveTemplateActionInput", name: "RemoveTemplateActionInput")
    RemoveTemplateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RemoveTemplateActionOutput", name: "RemoveTemplateActionOutput")
    ReplicationConfigurationDataPlaneRouting = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationDataPlaneRouting", name: "ReplicationConfigurationDataPlaneRouting", traits: {"smithy.api#enum" => [{"value" => "PRIVATE_IP", "name" => "PRIVATE_IP"}, {"value" => "PUBLIC_IP", "name" => "PUBLIC_IP"}]})
    ReplicationConfigurationDefaultLargeStagingDiskType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationDefaultLargeStagingDiskType", name: "ReplicationConfigurationDefaultLargeStagingDiskType", traits: {"smithy.api#enum" => [{"value" => "GP2", "name" => "GP2"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "GP3", "name" => "GP3"}]})
    ReplicationConfigurationEbsEncryption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationEbsEncryption", name: "ReplicationConfigurationEbsEncryption", traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    ReplicationConfigurationReplicatedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationReplicatedDisk", name: "ReplicationConfigurationReplicatedDisk")
    ReplicationConfigurationReplicatedDiskStagingDiskType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationReplicatedDiskStagingDiskType", name: "ReplicationConfigurationReplicatedDiskStagingDiskType", traits: {"smithy.api#enum" => [{"value" => "AUTO", "name" => "AUTO"}, {"value" => "GP2", "name" => "GP2"}, {"value" => "IO1", "name" => "IO1"}, {"value" => "SC1", "name" => "SC1"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "STANDARD", "name" => "STANDARD"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "IO2", "name" => "IO2"}, {"value" => "FSX_ONTAP", "name" => "FSX_ONTAP"}]})
    ReplicationConfigurationReplicatedDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationReplicatedDisks", name: "ReplicationConfigurationReplicatedDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ReplicationConfigurationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationTemplate", name: "ReplicationConfigurationTemplate")
    ReplicationConfigurationTemplateID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationTemplateID", name: "ReplicationConfigurationTemplateID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rct-[0-9a-zA-Z]{17}$"})
    ReplicationConfigurationTemplateIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationTemplateIDs", name: "ReplicationConfigurationTemplateIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ReplicationConfigurationTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ReplicationConfigurationTemplates", name: "ReplicationConfigurationTemplates")
    ReplicationServersSecurityGroupsIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ReplicationServersSecurityGroupsIDs", name: "ReplicationServersSecurityGroupsIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    ReplicationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicationType", name: "ReplicationType", traits: {"smithy.api#enum" => [{"name" => "AGENT_BASED", "value" => "AGENT_BASED"}, {"name" => "SNAPSHOT_SHIPPING", "value" => "SNAPSHOT_SHIPPING"}]})
    ReplicationTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ReplicationTypes", name: "ReplicationTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ReplicatorID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ReplicatorID", name: "ReplicatorID", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^i-[0-9a-zA-Z]{17}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ResumeReplicationOutput", name: "ResumeReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    ResumeReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ResumeReplicationRequest", name: "ResumeReplicationRequest")
    RetryDataReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RetryDataReplicationInput", name: "RetryDataReplicationInput")
    RetryDataReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#RetryDataReplicationOutput", name: "RetryDataReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#S3BucketName", name: "S3BucketName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9.\\-_]{1,255}$"})
    S3BucketSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#S3BucketSource", name: "S3BucketSource")
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#S3Configuration", name: "S3Configuration")
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#S3Key", name: "S3Key", traits: {"smithy.api#pattern" => "^[^\\x00]{1,1020}\\.csv$"})
    S3KeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#S3KeyName", name: "S3KeyName", traits: {"smithy.api#pattern" => "^[^\\x00]{1,1024}$"})
    S3LogBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#S3LogBucketName", name: "S3LogBucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    ScopeTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ScopeTagKey", name: "ScopeTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z0-9\\s+\\-=._:/@]*$"})
    ScopeTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ScopeTagValue", name: "ScopeTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+\\-=._:/@]*$"})
    ScopeTagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#ScopeTagsMap", name: "ScopeTagsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#sensitive" => {}})
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SecretArn", name: "SecretArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 256}, "smithy.api#pattern" => "^arn:[\\w-]+:secretsmanager:([a-z]{2}-(gov-)?[a-z]+-\\d{1})?:(\\d{12})?:secret:(.+)$"})
    SecurityGroupID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SecurityGroupID", name: "SecurityGroupID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SecurityGroupMappingStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SecurityGroupMappingStrategy", name: "SecurityGroupMappingStrategy", traits: {"smithy.api#enum" => [{"value" => "MAP", "name" => "MAP"}, {"value" => "SKIP", "name" => "SKIP"}, {"value" => "MAP_DHCP", "name" => "MAP_DHCP"}]})
    SegmentConstructDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SegmentConstructDescription", name: "SegmentConstructDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    SegmentConstructName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SegmentConstructName", name: "SegmentConstructName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    SegmentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SegmentDescription", name: "SegmentDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    SegmentID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SegmentID", name: "SegmentID", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    SegmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SegmentName", name: "SegmentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmallBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SmallBoundedString", name: "SmallBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceConfiguration", name: "SourceConfiguration")
    SourceConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SourceConfigurationList", name: "SourceConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    SourceEnvironment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SourceEnvironment", name: "SourceEnvironment", traits: {"smithy.api#enum" => [{"name" => "NSX", "value" => "NSX"}, {"name" => "VSPHERE", "value" => "VSPHERE"}, {"name" => "FORTIGATE_FIREWALL", "value" => "FORTIGATE_FIREWALL"}, {"name" => "PALO_ALTO_FIREWALL", "value" => "PALO_ALTO_FIREWALL"}, {"name" => "CISCO_ACI", "value" => "CISCO_ACI"}, {"name" => "LOGICAL_MODEL", "value" => "LOGICAL_MODEL"}, {"name" => "MODELIZE_IT", "value" => "MODELIZE_IT"}, {"name" => "AWS_DISCOVERY_COLLECTOR", "value" => "AWS_DISCOVERY_COLLECTOR"}]})
    SourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceProperties", name: "SourceProperties")
    SourceS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceS3Configuration", name: "SourceS3Configuration")
    SourceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceServer", name: "SourceServer", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    SourceServerActionDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceServerActionDocument", name: "SourceServerActionDocument")
    SourceServerActionDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SourceServerActionDocuments", name: "SourceServerActionDocuments", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SourceServerActionsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceServerActionsRequestFilters", name: "SourceServerActionsRequestFilters")
    SourceServerConnectorAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SourceServerConnectorAction", name: "SourceServerConnectorAction")
    SourceServerID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SourceServerID", name: "SourceServerID", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^s-[0-9a-zA-Z]{17}$"})
    SourceServersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SourceServersList", name: "SourceServersList")
    SplitConstruct = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SplitConstruct", name: "SplitConstruct")
    SplitConstructs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SplitConstructs", name: "SplitConstructs", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    SplitOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SplitOperation", name: "SplitOperation")
    SsmDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SsmDocument", name: "SsmDocument")
    SsmDocumentExternalParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#SsmDocumentExternalParameters", name: "SsmDocumentExternalParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SsmDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmDocumentName", name: "SsmDocumentName", traits: {"smithy.api#length" => {"min" => 3, "max" => 172}, "smithy.api#pattern" => "^([A-Za-z0-9/:_\\.-])+$"})
    SsmDocumentParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmDocumentParameterName", name: "SsmDocumentParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    SsmDocumentParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#SsmDocumentParameters", name: "SsmDocumentParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SsmDocumentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmDocumentType", name: "SsmDocumentType", traits: {"smithy.api#enum" => [{"value" => "AUTOMATION", "name" => "AUTOMATION"}, {"value" => "COMMAND", "name" => "COMMAND"}]})
    SsmDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SsmDocuments", name: "SsmDocuments", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SsmExternalParameter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.mgn#SsmExternalParameter", name: "SsmExternalParameter")
    SsmInstanceID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmInstanceID", name: "SsmInstanceID", traits: {"smithy.api#length" => {"min" => 19, "max" => 20}, "smithy.api#pattern" => "(^i-[0-9a-zA-Z]{17}$)|(^mi-[0-9a-zA-Z]{17}$)"})
    SsmParameterStoreParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#SsmParameterStoreParameter", name: "SsmParameterStoreParameter")
    SsmParameterStoreParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmParameterStoreParameterName", name: "SsmParameterStoreParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9_\\.-])+$"})
    SsmParameterStoreParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SsmParameterStoreParameterType", name: "SsmParameterStoreParameterType", traits: {"smithy.api#enum" => [{"name" => "STRING", "value" => "STRING"}, {"name" => "SECURE_STRING", "value" => "SECURE_STRING"}]})
    SsmParameterStoreParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#SsmParameterStoreParameters", name: "SsmParameterStoreParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    StartCutoverInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartCutoverInput", name: "StartCutoverInput")
    StartCutoverOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartCutoverOutput", name: "StartCutoverOutput")
    StartCutoverRequestSourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#StartCutoverRequestSourceServerIDs", name: "StartCutoverRequestSourceServerIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartExportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartExportInput", name: "StartExportInput")
    StartExportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartExportOutput", name: "StartExportOutput")
    StartImportFileEnrichmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartImportFileEnrichmentRequest", name: "StartImportFileEnrichmentRequest")
    StartImportFileEnrichmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartImportFileEnrichmentResponse", name: "StartImportFileEnrichmentResponse")
    StartImportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartImportInput", name: "StartImportInput")
    StartImportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartImportOutput", name: "StartImportOutput")
    StartNetworkMigrationAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationAnalysisRequest", name: "StartNetworkMigrationAnalysisRequest")
    StartNetworkMigrationAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationAnalysisResponse", name: "StartNetworkMigrationAnalysisResponse")
    StartNetworkMigrationCodeGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationCodeGenerationRequest", name: "StartNetworkMigrationCodeGenerationRequest")
    StartNetworkMigrationCodeGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationCodeGenerationResponse", name: "StartNetworkMigrationCodeGenerationResponse")
    StartNetworkMigrationDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationDeploymentOutput", name: "StartNetworkMigrationDeploymentOutput")
    StartNetworkMigrationDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationDeploymentRequest", name: "StartNetworkMigrationDeploymentRequest")
    StartNetworkMigrationMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingRequest", name: "StartNetworkMigrationMappingRequest")
    StartNetworkMigrationMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingResponse", name: "StartNetworkMigrationMappingResponse")
    StartNetworkMigrationMappingUpdateConstruct = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateConstruct", name: "StartNetworkMigrationMappingUpdateConstruct")
    StartNetworkMigrationMappingUpdateConstructs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateConstructs", name: "StartNetworkMigrationMappingUpdateConstructs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartNetworkMigrationMappingUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateRequest", name: "StartNetworkMigrationMappingUpdateRequest")
    StartNetworkMigrationMappingUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateResponse", name: "StartNetworkMigrationMappingUpdateResponse")
    StartNetworkMigrationMappingUpdateSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateSegment", name: "StartNetworkMigrationMappingUpdateSegment")
    StartNetworkMigrationMappingUpdateSegments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#StartNetworkMigrationMappingUpdateSegments", name: "StartNetworkMigrationMappingUpdateSegments", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartReplicationInput", name: "StartReplicationInput")
    StartReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartReplicationOutput", name: "StartReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    StartTestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartTestInput", name: "StartTestInput")
    StartTestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StartTestOutput", name: "StartTestOutput")
    StartTestRequestSourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#StartTestRequestSourceServerIDs", name: "StartTestRequestSourceServerIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StopReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StopReplicationOutput", name: "StopReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    StopReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StopReplicationRequest", name: "StopReplicationRequest")
    StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#StorageConfiguration", name: "StorageConfiguration")
    StorageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#StorageType", name: "StorageType", traits: {"smithy.api#enum" => [{"name" => "EBS", "value" => "EBS"}, {"name" => "FSX_ONTAP", "value" => "FSX_ONTAP"}]})
    StorageVirtualMachineId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#StorageVirtualMachineId", name: "StorageVirtualMachineId", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^(svm-[0-9a-f]{17,})$"})
    StrictlyPositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#StrictlyPositiveInteger", name: "StrictlyPositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    SubnetID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#SubnetID", name: "SubnetID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#TagKeys", name: "TagKeys", traits: {"smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mgn#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TargetDeployment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#TargetDeployment", name: "TargetDeployment", traits: {"smithy.api#enum" => [{"name" => "SINGLE_ACCOUNT", "value" => "SINGLE_ACCOUNT"}, {"name" => "MULTI_ACCOUNT", "value" => "MULTI_ACCOUNT"}]})
    TargetInstanceTypeRightSizingMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#TargetInstanceTypeRightSizingMethod", name: "TargetInstanceTypeRightSizingMethod", traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "BASIC", "value" => "BASIC"}]})
    TargetNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TargetNetwork", name: "TargetNetwork")
    TargetNetworkTopology = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#TargetNetworkTopology", name: "TargetNetworkTopology", traits: {"smithy.api#enum" => [{"name" => "ISOLATED_VPC", "value" => "ISOLATED_VPC"}, {"name" => "HUB_AND_SPOKE", "value" => "HUB_AND_SPOKE"}]})
    TargetNetworkUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TargetNetworkUpdate", name: "TargetNetworkUpdate")
    TargetS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TargetS3Configuration", name: "TargetS3Configuration")
    TargetS3ConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TargetS3ConfigurationUpdate", name: "TargetS3ConfigurationUpdate")
    TemplateActionDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TemplateActionDocument", name: "TemplateActionDocument")
    TemplateActionDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#TemplateActionDocuments", name: "TemplateActionDocuments", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateActionsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TemplateActionsRequestFilters", name: "TemplateActionsRequestFilters")
    TerminateTargetInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TerminateTargetInstancesInput", name: "TerminateTargetInstancesInput")
    TerminateTargetInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#TerminateTargetInstancesOutput", name: "TerminateTargetInstancesOutput")
    TerminateTargetInstancesRequestSourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#TerminateTargetInstancesRequestSourceServerIDs", name: "TerminateTargetInstancesRequestSourceServerIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Throughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#Throughput", name: "Throughput", traits: {"smithy.api#range" => {"min" => 125, "max" => 2000}})
    UnarchiveApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UnarchiveApplicationInput", name: "UnarchiveApplicationInput")
    UnarchiveApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UnarchiveApplicationOutput", name: "UnarchiveApplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    UnarchiveWaveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UnarchiveWaveInput", name: "UnarchiveWaveInput")
    UnarchiveWaveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UnarchiveWaveOutput", name: "UnarchiveWaveOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    UninitializedAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UninitializedAccountException", name: "UninitializedAccountException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UntagResourceInput", name: "UntagResourceInput")
    UpdateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateApplicationInput", name: "UpdateApplicationInput")
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateApplicationOutput", name: "UpdateApplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    UpdateConnectorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateConnectorOutput", name: "UpdateConnectorOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    UpdateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateConnectorRequest", name: "UpdateConnectorRequest")
    UpdateLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateLaunchConfigurationInput", name: "UpdateLaunchConfigurationInput")
    UpdateLaunchConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateLaunchConfigurationOutput", name: "UpdateLaunchConfigurationOutput")
    UpdateLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateLaunchConfigurationTemplateInput", name: "UpdateLaunchConfigurationTemplateInput")
    UpdateLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateLaunchConfigurationTemplateOutput", name: "UpdateLaunchConfigurationTemplateOutput")
    UpdateNetworkMigrationDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateNetworkMigrationDefinitionOutput", name: "UpdateNetworkMigrationDefinitionOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#NetworkMigrationDefinitionResource"}]})
    UpdateNetworkMigrationDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateNetworkMigrationDefinitionRequest", name: "UpdateNetworkMigrationDefinitionRequest")
    UpdateNetworkMigrationMapperSegmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateNetworkMigrationMapperSegmentOutput", name: "UpdateNetworkMigrationMapperSegmentOutput")
    UpdateNetworkMigrationMapperSegmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateNetworkMigrationMapperSegmentRequest", name: "UpdateNetworkMigrationMapperSegmentRequest")
    UpdateOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateOperation", name: "UpdateOperation")
    UpdateReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateReplicationConfigurationInput", name: "UpdateReplicationConfigurationInput")
    UpdateReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateReplicationConfigurationOutput", name: "UpdateReplicationConfigurationOutput")
    UpdateReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateReplicationConfigurationTemplateInput", name: "UpdateReplicationConfigurationTemplateInput")
    UpdateReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateReplicationConfigurationTemplateOutput", name: "UpdateReplicationConfigurationTemplateOutput")
    UpdateSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateSourceServerOutput", name: "UpdateSourceServerOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    UpdateSourceServerReplicationTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateSourceServerReplicationTypeInput", name: "UpdateSourceServerReplicationTypeInput")
    UpdateSourceServerReplicationTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateSourceServerReplicationTypeOutput", name: "UpdateSourceServerReplicationTypeOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    UpdateSourceServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateSourceServerRequest", name: "UpdateSourceServerRequest")
    UpdateWaveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateWaveInput", name: "UpdateWaveInput")
    UpdateWaveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#UpdateWaveOutput", name: "UpdateWaveOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    UserProvidedId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#UserProvidedId", name: "UserProvidedId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VcenterClient = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#VcenterClient", name: "VcenterClient")
    VcenterClientID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#VcenterClientID", name: "VcenterClientID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^vcc-[0-9a-zA-Z]{17}$"})
    VcenterClientList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#VcenterClientList", name: "VcenterClientList")
    VolumeInitializationRate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mgn#VolumeInitializationRate", name: "VolumeInitializationRate", traits: {"smithy.api#range" => {"min" => 100, "max" => 300}})
    VolumeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#VolumeType", name: "VolumeType", traits: {"smithy.api#enum" => [{"name" => "io1", "value" => "io1"}, {"name" => "io2", "value" => "io2"}, {"name" => "gp3", "value" => "gp3"}, {"name" => "gp2", "value" => "gp2"}, {"name" => "st1", "value" => "st1"}, {"name" => "sc1", "value" => "sc1"}, {"name" => "standard", "value" => "standard"}]})
    VpcID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#VpcID", name: "VpcID", traits: {"smithy.api#pattern" => "^vpc-([0-9a-f]){8}(([0-9a-f]){9})?$"})
    VpcIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#VpcIDsFilter", name: "VpcIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    VpcProvisioningStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#VpcProvisioningStrategy", name: "VpcProvisioningStrategy", traits: {"smithy.api#enum" => [{"name" => "CREATE_NEW", "value" => "CREATE_NEW"}, {"name" => "USE_EXISTING", "value" => "USE_EXISTING"}]})
    Wave = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#Wave", name: "Wave", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    WaveAggregatedStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mgn#WaveAggregatedStatus", name: "WaveAggregatedStatus")
    WaveDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#WaveDescription", name: "WaveDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    WaveHealthStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#WaveHealthStatus", name: "WaveHealthStatus", traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY"}, {"name" => "LAGGING", "value" => "LAGGING"}, {"name" => "ERROR", "value" => "ERROR"}]})
    WaveID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#WaveID", name: "WaveID", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^wave-[0-9a-zA-Z]{17}$"})
    WaveIDsFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#WaveIDsFilter", name: "WaveIDsFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    WaveName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#WaveName", name: "WaveName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    WaveProgressStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mgn#WaveProgressStatus", name: "WaveProgressStatus", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "COMPLETED", "value" => "COMPLETED"}]})
    WavesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#WavesList", name: "WavesList")
    ReferencedSegmentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mgn#referencedSegmentsList", name: "ReferencedSegmentsList")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "member"))
    Application.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    Application.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    Application.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    Application.add_member(:application_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAggregatedStatus, name: "applicationAggregatedStatus"))
    Application.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    Application.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    Application.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    Application.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    Application.type = Types::Application
    ApplicationAggregatedStatus.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastUpdateDateTime"))
    ApplicationAggregatedStatus.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationHealthStatus, name: "healthStatus"))
    ApplicationAggregatedStatus.add_member(:progress_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProgressStatus, name: "progressStatus"))
    ApplicationAggregatedStatus.add_member(:total_source_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "totalSourceServers", traits: {"smithy.api#default" => 0}))
    ApplicationAggregatedStatus.type = Types::ApplicationAggregatedStatus
    ApplicationIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "member"))
    ApplicationIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "member"))
    ApplicationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "member"))
    ArchiveApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    ArchiveApplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ArchiveApplicationInput.type = Types::ArchiveApplicationInput
    ArchiveApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    ArchiveApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ArchiveApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    ArchiveApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    ArchiveApplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ArchiveApplicationOutput.add_member(:application_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAggregatedStatus, name: "applicationAggregatedStatus"))
    ArchiveApplicationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    ArchiveApplicationOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    ArchiveApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ArchiveApplicationOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    ArchiveApplicationOutput.type = Types::ArchiveApplicationOutput
    ArchiveWaveInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    ArchiveWaveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ArchiveWaveInput.type = Types::ArchiveWaveInput
    ArchiveWaveOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    ArchiveWaveOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ArchiveWaveOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    ArchiveWaveOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    ArchiveWaveOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ArchiveWaveOutput.add_member(:wave_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveAggregatedStatus, name: "waveAggregatedStatus"))
    ArchiveWaveOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    ArchiveWaveOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    ArchiveWaveOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ArchiveWaveOutput.type = Types::ArchiveWaveOutput
    AssociateApplicationsInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    AssociateApplicationsInput.add_member(:application_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationIDs, name: "applicationIDs", traits: {"smithy.api#required" => {}}))
    AssociateApplicationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    AssociateApplicationsInput.type = Types::AssociateApplicationsInput
    AssociateApplicationsOutput.type = Types::AssociateApplicationsOutput
    AssociateSourceServersInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    AssociateSourceServersInput.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateSourceServersRequestSourceServerIDs, name: "sourceServerIDs", traits: {"smithy.api#required" => {}}))
    AssociateSourceServersInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    AssociateSourceServersInput.type = Types::AssociateSourceServersInput
    AssociateSourceServersOutput.type = Types::AssociateSourceServersOutput
    AssociateSourceServersRequestSourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    CPU.add_member(:cores, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "cores", traits: {"smithy.api#default" => 0}))
    CPU.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "modelName"))
    CPU.type = Types::CPU
    ChangeServerLifeCycleStateInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    ChangeServerLifeCycleStateInput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeServerLifeCycleStateSourceServerLifecycle, name: "lifeCycle", traits: {"smithy.api#required" => {}}))
    ChangeServerLifeCycleStateInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ChangeServerLifeCycleStateInput.type = Types::ChangeServerLifeCycleStateInput
    ChangeServerLifeCycleStateOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    ChangeServerLifeCycleStateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ChangeServerLifeCycleStateOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ChangeServerLifeCycleStateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ChangeServerLifeCycleStateOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    ChangeServerLifeCycleStateOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    ChangeServerLifeCycleStateOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    ChangeServerLifeCycleStateOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    ChangeServerLifeCycleStateOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    ChangeServerLifeCycleStateOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    ChangeServerLifeCycleStateOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    ChangeServerLifeCycleStateOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    ChangeServerLifeCycleStateOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    ChangeServerLifeCycleStateOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    ChangeServerLifeCycleStateOutput.type = Types::ChangeServerLifeCycleStateOutput
    ChangeServerLifeCycleStateSourceServerLifecycle.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeServerLifeCycleStateSourceServerLifecycleState, name: "state", traits: {"smithy.api#required" => {}}))
    ChangeServerLifeCycleStateSourceServerLifecycle.type = Types::ChangeServerLifeCycleStateSourceServerLifecycle
    Checksum.add_member(:encryption_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAlgorithm, name: "encryptionAlgorithm"))
    Checksum.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Hash, name: "hash"))
    Checksum.type = Types::Checksum
    CidrMapping.add_member(:original_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "originalCidr", traits: {"smithy.api#required" => {}}))
    CidrMapping.add_member(:updated_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "updatedCidr", traits: {"smithy.api#required" => {}}))
    CidrMapping.type = Types::CidrMapping
    CidrMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMapping, name: "member"))
    CodeGenerationOutputFormatStatusDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatStatus, name: "status"))
    CodeGenerationOutputFormatStatusDetails.add_member(:status_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetailList"))
    CodeGenerationOutputFormatStatusDetails.type = Types::CodeGenerationOutputFormatStatusDetails
    CodeGenerationOutputFormatStatusDetailsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatType, name: "key"))
    CodeGenerationOutputFormatStatusDetailsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatStatusDetails, name: "value"))
    CodeGenerationOutputFormatTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatType, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ConflictException.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionErrors, name: "errors"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "member"))
    Connector.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "connectorID"))
    Connector.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, name: "name"))
    Connector.add_member(:ssm_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmInstanceID, name: "ssmInstanceID"))
    Connector.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    Connector.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    Connector.add_member(:ssm_command_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSsmCommandConfig, name: "ssmCommandConfig"))
    Connector.type = Types::Connector
    ConnectorIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "member"))
    ConnectorSsmCommandConfig.add_member(:s3_output_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "s3OutputEnabled", traits: {"smithy.api#required" => {}}))
    ConnectorSsmCommandConfig.add_member(:output_s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "outputS3BucketName"))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_output_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "cloudWatchOutputEnabled", traits: {"smithy.api#required" => {}}))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "cloudWatchLogGroupName"))
    ConnectorSsmCommandConfig.type = Types::ConnectorSsmCommandConfig
    ConnectorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Connector, name: "member"))
    ConstructProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructPropertyKey, name: "key"))
    ConstructProperties.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MarshalledResourceDefinition, name: "value"))
    Cpus.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CPU, name: "member"))
    CreateApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateApplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    CreateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    CreateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    CreateApplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    CreateApplicationOutput.add_member(:application_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAggregatedStatus, name: "applicationAggregatedStatus"))
    CreateApplicationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    CreateApplicationOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    CreateApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateApplicationOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateConnectorOutput.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "connectorID"))
    CreateConnectorOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, name: "name"))
    CreateConnectorOutput.add_member(:ssm_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmInstanceID, name: "ssmInstanceID"))
    CreateConnectorOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateConnectorOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateConnectorOutput.add_member(:ssm_command_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSsmCommandConfig, name: "ssmCommandConfig"))
    CreateConnectorOutput.type = Types::CreateConnectorOutput
    CreateConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:ssm_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmInstanceID, name: "ssmInstanceID", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateConnectorRequest.add_member(:ssm_command_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSsmCommandConfig, name: "ssmCommandConfig"))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateLaunchConfigurationTemplateInput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    CreateLaunchConfigurationTemplateInput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    CreateLaunchConfigurationTemplateInput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    CreateLaunchConfigurationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    CreateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateInput.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associatePublicIpAddress"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    CreateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    CreateLaunchConfigurationTemplateInput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    CreateLaunchConfigurationTemplateInput.add_member(:small_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "smallVolumeMaxSize", traits: {"smithy.api#default" => 0}))
    CreateLaunchConfigurationTemplateInput.add_member(:small_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "smallVolumeConf"))
    CreateLaunchConfigurationTemplateInput.add_member(:large_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "largeVolumeConf"))
    CreateLaunchConfigurationTemplateInput.add_member(:enable_parameters_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableParametersEncryption"))
    CreateLaunchConfigurationTemplateInput.add_member(:parameters_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "parametersEncryptionKey"))
    CreateLaunchConfigurationTemplateInput.type = Types::CreateLaunchConfigurationTemplateInput
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    CreateLaunchConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateLaunchConfigurationTemplateOutput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    CreateLaunchConfigurationTemplateOutput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    CreateLaunchConfigurationTemplateOutput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    CreateLaunchConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateLaunchConfigurationTemplateOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2LaunchConfigurationTemplateID, name: "ec2LaunchTemplateID"))
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    CreateLaunchConfigurationTemplateOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateOutput.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associatePublicIpAddress"))
    CreateLaunchConfigurationTemplateOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    CreateLaunchConfigurationTemplateOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    CreateLaunchConfigurationTemplateOutput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    CreateLaunchConfigurationTemplateOutput.add_member(:small_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "smallVolumeMaxSize", traits: {"smithy.api#default" => 0}))
    CreateLaunchConfigurationTemplateOutput.add_member(:small_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "smallVolumeConf"))
    CreateLaunchConfigurationTemplateOutput.add_member(:large_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "largeVolumeConf"))
    CreateLaunchConfigurationTemplateOutput.add_member(:enable_parameters_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableParametersEncryption"))
    CreateLaunchConfigurationTemplateOutput.add_member(:parameters_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "parametersEncryptionKey"))
    CreateLaunchConfigurationTemplateOutput.type = Types::CreateLaunchConfigurationTemplateOutput
    CreateNetworkMigrationDefinitionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateNetworkMigrationDefinitionOutput.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    CreateNetworkMigrationDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name"))
    CreateNetworkMigrationDefinitionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionDescription, name: "description"))
    CreateNetworkMigrationDefinitionOutput.add_member(:source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurationList, name: "sourceConfigurations"))
    CreateNetworkMigrationDefinitionOutput.add_member(:target_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetS3Configuration, name: "targetS3Configuration"))
    CreateNetworkMigrationDefinitionOutput.add_member(:target_network, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetwork, name: "targetNetwork"))
    CreateNetworkMigrationDefinitionOutput.add_member(:target_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeployment, name: "targetDeployment"))
    CreateNetworkMigrationDefinitionOutput.add_member(:vpc_provisioning_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcProvisioningStrategy, name: "vpcProvisioningStrategy"))
    CreateNetworkMigrationDefinitionOutput.add_member(:cidr_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMappingsList, name: "cidrMappings"))
    CreateNetworkMigrationDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    CreateNetworkMigrationDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    CreateNetworkMigrationDefinitionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateNetworkMigrationDefinitionOutput.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    CreateNetworkMigrationDefinitionOutput.type = Types::CreateNetworkMigrationDefinitionOutput
    CreateNetworkMigrationDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateNetworkMigrationDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionDescription, name: "description"))
    CreateNetworkMigrationDefinitionRequest.add_member(:source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurationList, name: "sourceConfigurations"))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetS3Configuration, name: "targetS3Configuration", traits: {"smithy.api#required" => {}}))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_network, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetwork, name: "targetNetwork", traits: {"smithy.api#required" => {}}))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeployment, name: "targetDeployment"))
    CreateNetworkMigrationDefinitionRequest.add_member(:vpc_provisioning_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcProvisioningStrategy, name: "vpcProvisioningStrategy"))
    CreateNetworkMigrationDefinitionRequest.add_member(:cidr_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMappingsList, name: "cidrMappings"))
    CreateNetworkMigrationDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateNetworkMigrationDefinitionRequest.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    CreateNetworkMigrationDefinitionRequest.type = Types::CreateNetworkMigrationDefinitionRequest
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    CreateReplicationConfigurationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateReplicationConfigurationTemplateInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    CreateReplicationConfigurationTemplateInput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    CreateReplicationConfigurationTemplateInput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    CreateReplicationConfigurationTemplateInput.type = Types::CreateReplicationConfigurationTemplateInput
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    CreateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    CreateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    CreateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    CreateReplicationConfigurationTemplateOutput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    CreateReplicationConfigurationTemplateOutput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    CreateReplicationConfigurationTemplateOutput.type = Types::CreateReplicationConfigurationTemplateOutput
    CreateWaveInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWaveInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    CreateWaveInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateWaveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    CreateWaveInput.type = Types::CreateWaveInput
    CreateWaveOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    CreateWaveOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    CreateWaveOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    CreateWaveOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    CreateWaveOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    CreateWaveOutput.add_member(:wave_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveAggregatedStatus, name: "waveAggregatedStatus"))
    CreateWaveOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    CreateWaveOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    CreateWaveOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateWaveOutput.type = Types::CreateWaveOutput
    DataReplicationError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationErrorString, name: "error"))
    DataReplicationError.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    DataReplicationError.type = Types::DataReplicationError
    DataReplicationInfo.add_member(:lag_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, name: "lagDuration"))
    DataReplicationInfo.add_member(:eta_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "etaDateTime"))
    DataReplicationInfo.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfoReplicatedDisks, name: "replicatedDisks"))
    DataReplicationInfo.add_member(:data_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationState, name: "dataReplicationState"))
    DataReplicationInfo.add_member(:data_replication_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiation, name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationError, name: "dataReplicationError"))
    DataReplicationInfo.add_member(:last_snapshot_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastSnapshotDateTime"))
    DataReplicationInfo.add_member(:replicator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorID, name: "replicatorId"))
    DataReplicationInfo.type = Types::DataReplicationInfo
    DataReplicationInfoReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "totalStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "replicatedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "rescannedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "backloggedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.type = Types::DataReplicationInfoReplicatedDisk
    DataReplicationInfoReplicatedDisks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfoReplicatedDisk, name: "member"))
    DataReplicationInitiation.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "startDateTime"))
    DataReplicationInitiation.add_member(:next_attempt_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "nextAttemptDateTime"))
    DataReplicationInitiation.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationSteps, name: "steps"))
    DataReplicationInitiation.type = Types::DataReplicationInitiation
    DataReplicationInitiationStep.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStepName, name: "name"))
    DataReplicationInitiationStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStepStatus, name: "status"))
    DataReplicationInitiationStep.type = Types::DataReplicationInitiationStep
    DataReplicationInitiationSteps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStep, name: "member"))
    DeleteApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    DeleteApplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    DeleteConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "connectorID", traits: {"smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID", traits: {"smithy.api#required" => {}}))
    DeleteJobInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DeleteJobInput.type = Types::DeleteJobInput
    DeleteJobOutput.type = Types::DeleteJobOutput
    DeleteLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteLaunchConfigurationTemplateInput.type = Types::DeleteLaunchConfigurationTemplateInput
    DeleteLaunchConfigurationTemplateOutput.type = Types::DeleteLaunchConfigurationTemplateOutput
    DeleteNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    DeleteNetworkMigrationDefinitionRequest.type = Types::DeleteNetworkMigrationDefinitionRequest
    DeleteNetworkMigrationDefinitionResponse.type = Types::DeleteNetworkMigrationDefinitionResponse
    DeleteOperation.type = Types::DeleteOperation
    DeleteReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteReplicationConfigurationTemplateInput.type = Types::DeleteReplicationConfigurationTemplateInput
    DeleteReplicationConfigurationTemplateOutput.type = Types::DeleteReplicationConfigurationTemplateOutput
    DeleteSourceServerInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DeleteSourceServerInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DeleteSourceServerInput.type = Types::DeleteSourceServerInput
    DeleteSourceServerOutput.type = Types::DeleteSourceServerOutput
    DeleteVcenterClientInput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID", traits: {"smithy.api#required" => {}}))
    DeleteVcenterClientInput.type = Types::DeleteVcenterClientInput
    DeleteWaveInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    DeleteWaveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DeleteWaveInput.type = Types::DeleteWaveInput
    DeleteWaveOutput.type = Types::DeleteWaveOutput
    DescribeJobLogItemsInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID", traits: {"smithy.api#required" => {}}))
    DescribeJobLogItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    DescribeJobLogItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobLogItemsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DescribeJobLogItemsInput.type = Types::DescribeJobLogItemsInput
    DescribeJobLogItemsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogs, name: "items"))
    DescribeJobLogItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobLogItemsOutput.type = Types::DescribeJobLogItemsOutput
    DescribeJobsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeJobsRequestFilters, name: "filters"))
    DescribeJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    DescribeJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DescribeJobsInput.type = Types::DescribeJobsInput
    DescribeJobsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: JobsList, name: "items"))
    DescribeJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobsOutput.type = Types::DescribeJobsOutput
    DescribeJobsRequestFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeJobsRequestFiltersJobIDs, name: "jobIDs"))
    DescribeJobsRequestFilters.add_member(:from_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "fromDate"))
    DescribeJobsRequestFilters.add_member(:to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "toDate"))
    DescribeJobsRequestFilters.type = Types::DescribeJobsRequestFilters
    DescribeJobsRequestFiltersJobIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "member"))
    DescribeLaunchConfigurationTemplatesInput.add_member(:launch_configuration_template_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateIDs, name: "launchConfigurationTemplateIDs"))
    DescribeLaunchConfigurationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    DescribeLaunchConfigurationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeLaunchConfigurationTemplatesInput.type = Types::DescribeLaunchConfigurationTemplatesInput
    DescribeLaunchConfigurationTemplatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplates, name: "items"))
    DescribeLaunchConfigurationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeLaunchConfigurationTemplatesOutput.type = Types::DescribeLaunchConfigurationTemplatesOutput
    DescribeReplicationConfigurationTemplatesInput.add_member(:replication_configuration_template_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateIDs, name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeReplicationConfigurationTemplatesInput.type = Types::DescribeReplicationConfigurationTemplatesInput
    DescribeReplicationConfigurationTemplatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplates, name: "items"))
    DescribeReplicationConfigurationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeReplicationConfigurationTemplatesOutput.type = Types::DescribeReplicationConfigurationTemplatesOutput
    DescribeSourceServersInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFilters, name: "filters"))
    DescribeSourceServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    DescribeSourceServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceServersInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DescribeSourceServersInput.type = Types::DescribeSourceServersInput
    DescribeSourceServersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServersList, name: "items"))
    DescribeSourceServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceServersOutput.type = Types::DescribeSourceServersOutput
    DescribeSourceServersRequestApplicationIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "member"))
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFiltersIDs, name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    DescribeSourceServersRequestFilters.add_member(:replication_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTypes, name: "replicationTypes"))
    DescribeSourceServersRequestFilters.add_member(:life_cycle_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleStates, name: "lifeCycleStates"))
    DescribeSourceServersRequestFilters.add_member(:application_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestApplicationIDs, name: "applicationIDs"))
    DescribeSourceServersRequestFilters.type = Types::DescribeSourceServersRequestFilters
    DescribeSourceServersRequestFiltersIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    DescribeVcenterClientsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeVcenterClientsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeVcenterClientsInput.type = Types::DescribeVcenterClientsInput
    DescribeVcenterClientsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientList, name: "items"))
    DescribeVcenterClientsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeVcenterClientsOutput.type = Types::DescribeVcenterClientsOutput
    DisassociateApplicationsInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    DisassociateApplicationsInput.add_member(:application_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationIDs, name: "applicationIDs", traits: {"smithy.api#required" => {}}))
    DisassociateApplicationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DisassociateApplicationsInput.type = Types::DisassociateApplicationsInput
    DisassociateApplicationsOutput.type = Types::DisassociateApplicationsOutput
    DisassociateSourceServersInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    DisassociateSourceServersInput.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateSourceServersRequestSourceServerIDs, name: "sourceServerIDs", traits: {"smithy.api#required" => {}}))
    DisassociateSourceServersInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DisassociateSourceServersInput.type = Types::DisassociateSourceServersInput
    DisassociateSourceServersOutput.type = Types::DisassociateSourceServersOutput
    DisassociateSourceServersRequestSourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    DisconnectFromServiceInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DisconnectFromServiceInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    DisconnectFromServiceInput.type = Types::DisconnectFromServiceInput
    DisconnectFromServiceOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    DisconnectFromServiceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    DisconnectFromServiceOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    DisconnectFromServiceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    DisconnectFromServiceOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    DisconnectFromServiceOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    DisconnectFromServiceOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    DisconnectFromServiceOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    DisconnectFromServiceOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    DisconnectFromServiceOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    DisconnectFromServiceOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    DisconnectFromServiceOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    DisconnectFromServiceOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    DisconnectFromServiceOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    DisconnectFromServiceOutput.type = Types::DisconnectFromServiceOutput
    Disk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    Disk.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bytes", traits: {"smithy.api#default" => 0}))
    Disk.type = Types::Disk
    Disks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Disk, name: "member"))
    EnrichmentSourceS3Configuration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    EnrichmentSourceS3Configuration.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner", traits: {"smithy.api#required" => {}}))
    EnrichmentSourceS3Configuration.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyName, name: "s3Key", traits: {"smithy.api#required" => {}}))
    EnrichmentSourceS3Configuration.type = Types::EnrichmentSourceS3Configuration
    EnrichmentTargetS3Configuration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    EnrichmentTargetS3Configuration.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner", traits: {"smithy.api#required" => {}}))
    EnrichmentTargetS3Configuration.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyName, name: "s3Key", traits: {"smithy.api#required" => {}}))
    EnrichmentTargetS3Configuration.type = Types::EnrichmentTargetS3Configuration
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "code"))
    ErrorDetails.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ErrorDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ErrorDetails.type = Types::ErrorDetails
    ExportErrorData.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    ExportErrorData.type = Types::ExportErrorData
    ExportErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskError, name: "member"))
    ExportTask.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportID, name: "exportID"))
    ExportTask.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ExportTask.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket"))
    ExportTask.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "s3Key"))
    ExportTask.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner"))
    ExportTask.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    ExportTask.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "endDateTime"))
    ExportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "status"))
    ExportTask.add_member(:progress_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "progressPercentage"))
    ExportTask.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTaskSummary, name: "summary"))
    ExportTask.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ExportTask.type = Types::ExportTask
    ExportTaskError.add_member(:error_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "errorDateTime"))
    ExportTaskError.add_member(:error_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportErrorData, name: "errorData"))
    ExportTaskError.type = Types::ExportTaskError
    ExportTaskSummary.add_member(:servers_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "serversCount", traits: {"smithy.api#default" => 0}))
    ExportTaskSummary.add_member(:applications_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "applicationsCount", traits: {"smithy.api#default" => 0}))
    ExportTaskSummary.add_member(:waves_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "wavesCount", traits: {"smithy.api#default" => 0}))
    ExportTaskSummary.type = Types::ExportTaskSummary
    ExportsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTask, name: "member"))
    FinalizeCutoverInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    FinalizeCutoverInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    FinalizeCutoverInput.type = Types::FinalizeCutoverInput
    FinalizeCutoverOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    FinalizeCutoverOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    FinalizeCutoverOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    FinalizeCutoverOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    FinalizeCutoverOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    FinalizeCutoverOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    FinalizeCutoverOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    FinalizeCutoverOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    FinalizeCutoverOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    FinalizeCutoverOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    FinalizeCutoverOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    FinalizeCutoverOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    FinalizeCutoverOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    FinalizeCutoverOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    FinalizeCutoverOutput.type = Types::FinalizeCutoverOutput
    FsxOntapConfiguration.add_member(:storage_virtual_machine_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineId, name: "storageVirtualMachineId", traits: {"smithy.api#required" => {}}))
    FsxOntapConfiguration.add_member(:credentials_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "credentialsSecretArn", traits: {"smithy.api#required" => {}}))
    FsxOntapConfiguration.type = Types::FsxOntapConfiguration
    GetLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    GetLaunchConfigurationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    GetLaunchConfigurationInput.type = Types::GetLaunchConfigurationInput
    GetLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    GetLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    GetLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "ec2LaunchTemplateID"))
    GetLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    GetLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    GetLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    GetLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    GetLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    GetLaunchConfigurationOutput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    GetLaunchConfigurationOutput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    GetLaunchConfigurationOutput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    GetLaunchConfigurationOutput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    GetLaunchConfigurationOutput.type = Types::GetLaunchConfigurationOutput
    GetNetworkMigrationDefinitionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    GetNetworkMigrationDefinitionOutput.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    GetNetworkMigrationDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name"))
    GetNetworkMigrationDefinitionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionDescription, name: "description"))
    GetNetworkMigrationDefinitionOutput.add_member(:source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurationList, name: "sourceConfigurations"))
    GetNetworkMigrationDefinitionOutput.add_member(:target_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetS3Configuration, name: "targetS3Configuration"))
    GetNetworkMigrationDefinitionOutput.add_member(:target_network, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetwork, name: "targetNetwork"))
    GetNetworkMigrationDefinitionOutput.add_member(:target_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeployment, name: "targetDeployment"))
    GetNetworkMigrationDefinitionOutput.add_member(:vpc_provisioning_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcProvisioningStrategy, name: "vpcProvisioningStrategy"))
    GetNetworkMigrationDefinitionOutput.add_member(:cidr_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMappingsList, name: "cidrMappings"))
    GetNetworkMigrationDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetNetworkMigrationDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetNetworkMigrationDefinitionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetNetworkMigrationDefinitionOutput.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    GetNetworkMigrationDefinitionOutput.type = Types::GetNetworkMigrationDefinitionOutput
    GetNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    GetNetworkMigrationDefinitionRequest.type = Types::GetNetworkMigrationDefinitionRequest
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID", traits: {"smithy.api#required" => {}}))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:construct_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructID, name: "constructID", traits: {"smithy.api#required" => {}}))
    GetNetworkMigrationMapperSegmentConstructRequest.type = Types::GetNetworkMigrationMapperSegmentConstructRequest
    GetNetworkMigrationMapperSegmentConstructResponse.add_member(:construct, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstruct, name: "construct"))
    GetNetworkMigrationMapperSegmentConstructResponse.type = Types::GetNetworkMigrationMapperSegmentConstructResponse
    GetReplicationConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    GetReplicationConfigurationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    GetReplicationConfigurationInput.type = Types::GetReplicationConfigurationInput
    GetReplicationConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    GetReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    GetReplicationConfigurationOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    GetReplicationConfigurationOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    GetReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    GetReplicationConfigurationOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    GetReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    GetReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    GetReplicationConfigurationOutput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, name: "replicatedDisks"))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    GetReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    GetReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    GetReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    GetReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    GetReplicationConfigurationOutput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    GetReplicationConfigurationOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    GetReplicationConfigurationOutput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    GetReplicationConfigurationOutput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    GetReplicationConfigurationOutput.type = Types::GetReplicationConfigurationOutput
    IPsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "member"))
    IdentificationHints.add_member(:fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdn"))
    IdentificationHints.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "hostname"))
    IdentificationHints.add_member(:vm_ware_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "vmWareUuid"))
    IdentificationHints.add_member(:aws_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "awsInstanceID"))
    IdentificationHints.add_member(:vm_path, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "vmPath"))
    IdentificationHints.type = Types::IdentificationHints
    ImportErrorData.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    ImportErrorData.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    ImportErrorData.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    ImportErrorData.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "ec2LaunchTemplateID"))
    ImportErrorData.add_member(:row_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "rowNumber", traits: {"smithy.api#default" => 0}))
    ImportErrorData.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    ImportErrorData.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ImportErrorData.type = Types::ImportErrorData
    ImportErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskError, name: "member"))
    ImportFileEnrichment.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentJobID, name: "jobID"))
    ImportFileEnrichment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    ImportFileEnrichment.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    ImportFileEnrichment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentStatus, name: "status"))
    ImportFileEnrichment.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    ImportFileEnrichment.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: Checksum, name: "checksum"))
    ImportFileEnrichment.add_member(:s3_bucket_target, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrichmentTargetS3Configuration, name: "s3BucketTarget"))
    ImportFileEnrichment.type = Types::ImportFileEnrichment
    ImportFileEnrichmentsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentJobID, name: "member"))
    ImportFileEnrichmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichment, name: "member"))
    ImportIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportID, name: "member"))
    ImportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTask, name: "member"))
    ImportTask.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportID, name: "importID"))
    ImportTask.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ImportTask.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSource, name: "s3BucketSource"))
    ImportTask.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    ImportTask.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "endDateTime"))
    ImportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "status"))
    ImportTask.add_member(:progress_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "progressPercentage"))
    ImportTask.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskSummary, name: "summary"))
    ImportTask.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ImportTask.type = Types::ImportTask
    ImportTaskError.add_member(:error_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "errorDateTime"))
    ImportTaskError.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportErrorType, name: "errorType"))
    ImportTaskError.add_member(:error_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportErrorData, name: "errorData"))
    ImportTaskError.type = Types::ImportTaskError
    ImportTaskSummary.add_member(:waves, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskSummaryWaves, name: "waves"))
    ImportTaskSummary.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskSummaryApplications, name: "applications"))
    ImportTaskSummary.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskSummaryServers, name: "servers"))
    ImportTaskSummary.type = Types::ImportTaskSummary
    ImportTaskSummaryApplications.add_member(:created_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "createdCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryApplications.add_member(:modified_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "modifiedCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryApplications.type = Types::ImportTaskSummaryApplications
    ImportTaskSummaryServers.add_member(:created_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "createdCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryServers.add_member(:modified_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "modifiedCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryServers.type = Types::ImportTaskSummaryServers
    ImportTaskSummaryWaves.add_member(:created_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "createdCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryWaves.add_member(:modified_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "modifiedCount", traits: {"smithy.api#default" => 0}))
    ImportTaskSummaryWaves.type = Types::ImportTaskSummaryWaves
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID", traits: {"smithy.api#required" => {}}))
    Job.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    Job.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "type"))
    Job.add_member(:initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InitiatedBy, name: "initiatedBy"))
    Job.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    Job.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "endDateTime"))
    Job.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    Job.add_member(:participating_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingServers, name: "participatingServers"))
    Job.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    Job.type = Types::Job
    JobLog.add_member(:log_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "logDateTime"))
    JobLog.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEvent, name: "event"))
    JobLog.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEventData, name: "eventData"))
    JobLog.type = Types::JobLog
    JobLogEventData.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    JobLogEventData.add_member(:conversion_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "conversionServerID"))
    JobLogEventData.add_member(:target_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "targetInstanceID"))
    JobLogEventData.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    JobLogEventData.add_member(:attempt_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "attemptCount"))
    JobLogEventData.add_member(:max_attempts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxAttemptsCount"))
    JobLogEventData.type = Types::JobLogEventData
    JobLogs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLog, name: "member"))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocument, name: "ssmDocument"))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentType, name: "ssmDocumentType"))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "executionID"))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActionExecutionStatus, name: "executionStatus"))
    JobPostLaunchActionsLaunchStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "failureReason"))
    JobPostLaunchActionsLaunchStatus.type = Types::JobPostLaunchActionsLaunchStatus
    JobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "member"))
    LastKnownCheck.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LastKnownCheckType, name: "type"))
    LastKnownCheck.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "name"))
    LastKnownCheck.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastKnownCheckStatus, name: "status"))
    LastKnownCheck.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "error"))
    LastKnownCheck.add_member(:checked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "checkedAt"))
    LastKnownCheck.type = Types::LastKnownCheck
    LastKnownChecksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LastKnownCheck, name: "member"))
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    LaunchConfigurationTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    LaunchConfigurationTemplate.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    LaunchConfigurationTemplate.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    LaunchConfigurationTemplate.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    LaunchConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    LaunchConfigurationTemplate.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2LaunchConfigurationTemplateID, name: "ec2LaunchTemplateID"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associatePublicIpAddress"))
    LaunchConfigurationTemplate.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    LaunchConfigurationTemplate.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    LaunchConfigurationTemplate.add_member(:small_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "smallVolumeMaxSize", traits: {"smithy.api#default" => 0}))
    LaunchConfigurationTemplate.add_member(:small_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "smallVolumeConf"))
    LaunchConfigurationTemplate.add_member(:large_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "largeVolumeConf"))
    LaunchConfigurationTemplate.add_member(:enable_parameters_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableParametersEncryption"))
    LaunchConfigurationTemplate.add_member(:parameters_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "parametersEncryptionKey"))
    LaunchConfigurationTemplate.type = Types::LaunchConfigurationTemplate
    LaunchConfigurationTemplateIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "member"))
    LaunchConfigurationTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, name: "member"))
    LaunchTemplateDiskConf.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "volumeType"))
    LaunchTemplateDiskConf.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: Iops, name: "iops"))
    LaunchTemplateDiskConf.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: Throughput, name: "throughput"))
    LaunchTemplateDiskConf.add_member(:volume_initialization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeInitializationRate, name: "volumeInitializationRate"))
    LaunchTemplateDiskConf.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deleteOnTermination"))
    LaunchTemplateDiskConf.type = Types::LaunchTemplateDiskConf
    LaunchedInstance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "ec2InstanceID"))
    LaunchedInstance.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    LaunchedInstance.add_member(:first_boot, ::Smithy::Schema::Shapes::MemberShape.new(target: FirstBoot, name: "firstBoot"))
    LaunchedInstance.add_member(:last_known_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: LastKnownChecksList, name: "lastKnownChecks"))
    LaunchedInstance.add_member(:last_known_fsx_checks_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastKnownCheckStatus, name: "lastKnownFsxChecksStatus"))
    LaunchedInstance.type = Types::LaunchedInstance
    Licensing.add_member(:os_byol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "osByol"))
    Licensing.type = Types::Licensing
    LifeCycle.add_member(:added_to_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "addedToServiceDateTime"))
    LifeCycle.add_member(:first_byte_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "firstByteDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastSeenByServiceDateTime"))
    LifeCycle.add_member(:last_test, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastTest, name: "lastTest"))
    LifeCycle.add_member(:last_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastCutover, name: "lastCutover"))
    LifeCycle.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "state"))
    LifeCycle.type = Types::LifeCycle
    LifeCycleLastCutover.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastCutoverInitiated, name: "initiated"))
    LifeCycleLastCutover.add_member(:reverted, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastCutoverReverted, name: "reverted"))
    LifeCycleLastCutover.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastCutoverFinalized, name: "finalized"))
    LifeCycleLastCutover.type = Types::LifeCycleLastCutover
    LifeCycleLastCutoverFinalized.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastCutoverFinalized.type = Types::LifeCycleLastCutoverFinalized
    LifeCycleLastCutoverInitiated.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastCutoverInitiated.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    LifeCycleLastCutoverInitiated.type = Types::LifeCycleLastCutoverInitiated
    LifeCycleLastCutoverReverted.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastCutoverReverted.type = Types::LifeCycleLastCutoverReverted
    LifeCycleLastTest.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastTestInitiated, name: "initiated"))
    LifeCycleLastTest.add_member(:reverted, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastTestReverted, name: "reverted"))
    LifeCycleLastTest.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastTestFinalized, name: "finalized"))
    LifeCycleLastTest.type = Types::LifeCycleLastTest
    LifeCycleLastTestFinalized.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastTestFinalized.type = Types::LifeCycleLastTestFinalized
    LifeCycleLastTestInitiated.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastTestInitiated.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    LifeCycleLastTestInitiated.type = Types::LifeCycleLastTestInitiated
    LifeCycleLastTestReverted.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastTestReverted.type = Types::LifeCycleLastTestReverted
    LifeCycleStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "member"))
    ListApplicationsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationsRequestFilters, name: "filters"))
    ListApplicationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListApplicationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationsList, name: "items"))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListApplicationsRequestFilters.add_member(:application_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationIDsFilter, name: "applicationIDs"))
    ListApplicationsRequestFilters.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ListApplicationsRequestFilters.add_member(:wave_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveIDsFilter, name: "waveIDs"))
    ListApplicationsRequestFilters.type = Types::ListApplicationsRequestFilters
    ListConnectorsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListConnectorsRequestFilters, name: "filters"))
    ListConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsRequestFilters.add_member(:connector_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorIDsFilter, name: "connectorIDs"))
    ListConnectorsRequestFilters.type = Types::ListConnectorsRequestFilters
    ListConnectorsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorsList, name: "items"))
    ListConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListExportErrorsInput.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportID, name: "exportID", traits: {"smithy.api#required" => {}}))
    ListExportErrorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListExportErrorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExportErrorsInput.type = Types::ListExportErrorsInput
    ListExportErrorsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportErrors, name: "items"))
    ListExportErrorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExportErrorsOutput.type = Types::ListExportErrorsOutput
    ListExportsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExportsRequestFilters, name: "filters"))
    ListExportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListExportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExportsInput.type = Types::ListExportsInput
    ListExportsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportsList, name: "items"))
    ListExportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExportsOutput.type = Types::ListExportsOutput
    ListExportsRequestFilters.add_member(:export_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExportsRequestFiltersExportIDs, name: "exportIDs"))
    ListExportsRequestFilters.type = Types::ListExportsRequestFilters
    ListExportsRequestFiltersExportIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportID, name: "member"))
    ListImportErrorsInput.add_member(:import_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportID, name: "importID", traits: {"smithy.api#required" => {}}))
    ListImportErrorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListImportErrorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportErrorsInput.type = Types::ListImportErrorsInput
    ListImportErrorsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportErrors, name: "items"))
    ListImportErrorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportErrorsOutput.type = Types::ListImportErrorsOutput
    ListImportFileEnrichmentsFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentsIDsFilter, name: "jobIDs"))
    ListImportFileEnrichmentsFilters.type = Types::ListImportFileEnrichmentsFilters
    ListImportFileEnrichmentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportFileEnrichmentsFilters, name: "filters"))
    ListImportFileEnrichmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListImportFileEnrichmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportFileEnrichmentsRequest.type = Types::ListImportFileEnrichmentsRequest
    ListImportFileEnrichmentsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentsList, name: "items"))
    ListImportFileEnrichmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportFileEnrichmentsResponse.type = Types::ListImportFileEnrichmentsResponse
    ListImportsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportsRequestFilters, name: "filters"))
    ListImportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListImportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportsInput.type = Types::ListImportsInput
    ListImportsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportList, name: "items"))
    ListImportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImportsOutput.type = Types::ListImportsOutput
    ListImportsRequestFilters.add_member(:import_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportIDsFilter, name: "importIDs"))
    ListImportsRequestFilters.type = Types::ListImportsRequestFilters
    ListManagedAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListManagedAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListManagedAccountsRequest.type = Types::ListManagedAccountsRequest
    ListManagedAccountsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAccounts, name: "items", traits: {"smithy.api#required" => {}}))
    ListManagedAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListManagedAccountsResponse.type = Types::ListManagedAccountsResponse
    ListNetworkMigrationAnalysesFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationAnalysesIDsFilter, name: "jobIDs"))
    ListNetworkMigrationAnalysesFilters.type = Types::ListNetworkMigrationAnalysesFilters
    ListNetworkMigrationAnalysesIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "member"))
    ListNetworkMigrationAnalysesRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationAnalysesRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationAnalysesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationAnalysesFilters, name: "filters"))
    ListNetworkMigrationAnalysesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationAnalysesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationAnalysesRequest.type = Types::ListNetworkMigrationAnalysesRequest
    ListNetworkMigrationAnalysesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysesList, name: "items"))
    ListNetworkMigrationAnalysesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationAnalysesResponse.type = Types::ListNetworkMigrationAnalysesResponse
    ListNetworkMigrationAnalysisResultsFilters.add_member(:vpc_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIDsFilter, name: "vpcIDs"))
    ListNetworkMigrationAnalysisResultsFilters.type = Types::ListNetworkMigrationAnalysisResultsFilters
    ListNetworkMigrationAnalysisResultsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationAnalysisResultsFilters, name: "filters"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationAnalysisResultsRequest.type = Types::ListNetworkMigrationAnalysisResultsRequest
    ListNetworkMigrationAnalysisResultsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisResultsList, name: "items"))
    ListNetworkMigrationAnalysisResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationAnalysisResultsResponse.type = Types::ListNetworkMigrationAnalysisResultsResponse
    ListNetworkMigrationCodeGenerationSegmentsFilters.add_member(:segment_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationCodeGenerationSegmentsIDsFilter, name: "segmentIDs"))
    ListNetworkMigrationCodeGenerationSegmentsFilters.type = Types::ListNetworkMigrationCodeGenerationSegmentsFilters
    ListNetworkMigrationCodeGenerationSegmentsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "member"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationCodeGenerationSegmentsFilters, name: "filters"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.type = Types::ListNetworkMigrationCodeGenerationSegmentsRequest
    ListNetworkMigrationCodeGenerationSegmentsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationSegmentsList, name: "items"))
    ListNetworkMigrationCodeGenerationSegmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationCodeGenerationSegmentsResponse.type = Types::ListNetworkMigrationCodeGenerationSegmentsResponse
    ListNetworkMigrationCodeGenerationsFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationCodeGenerationsIDsFilter, name: "jobIDs"))
    ListNetworkMigrationCodeGenerationsFilters.type = Types::ListNetworkMigrationCodeGenerationsFilters
    ListNetworkMigrationCodeGenerationsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "member"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationCodeGenerationsFilters, name: "filters"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationCodeGenerationsRequest.type = Types::ListNetworkMigrationCodeGenerationsRequest
    ListNetworkMigrationCodeGenerationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationsList, name: "items"))
    ListNetworkMigrationCodeGenerationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationCodeGenerationsResponse.type = Types::ListNetworkMigrationCodeGenerationsResponse
    ListNetworkMigrationDefinitionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationDefinitionsRequestFilters, name: "filters"))
    ListNetworkMigrationDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationDefinitionsRequest.type = Types::ListNetworkMigrationDefinitionsRequest
    ListNetworkMigrationDefinitionsRequestFilters.add_member(:network_migration_definition_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefintionsIDsFilter, name: "networkMigrationDefinitionIDs"))
    ListNetworkMigrationDefinitionsRequestFilters.type = Types::ListNetworkMigrationDefinitionsRequestFilters
    ListNetworkMigrationDefinitionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionSummariesList, name: "items"))
    ListNetworkMigrationDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDefinitionsResponse.type = Types::ListNetworkMigrationDefinitionsResponse
    ListNetworkMigrationDeployedStacksRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationDeployedStacksRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationDeployedStacksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationDeployedStacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDeployedStacksRequest.type = Types::ListNetworkMigrationDeployedStacksRequest
    ListNetworkMigrationDeployedStacksResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDeployedStacksList, name: "items"))
    ListNetworkMigrationDeployedStacksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDeployedStacksResponse.type = Types::ListNetworkMigrationDeployedStacksResponse
    ListNetworkMigrationDeployerJobFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationDeployerJobIDsFilters, name: "jobIDs"))
    ListNetworkMigrationDeployerJobFilters.type = Types::ListNetworkMigrationDeployerJobFilters
    ListNetworkMigrationDeployerJobIDsFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "member"))
    ListNetworkMigrationDeploymentsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDeployerJobList, name: "items"))
    ListNetworkMigrationDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDeploymentsOutput.type = Types::ListNetworkMigrationDeploymentsOutput
    ListNetworkMigrationDeploymentsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationDeploymentsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationDeploymentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationDeployerJobFilters, name: "filters"))
    ListNetworkMigrationDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationDeploymentsRequest.type = Types::ListNetworkMigrationDeploymentsRequest
    ListNetworkMigrationExecutionRequestFilters.add_member(:network_migration_execution_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionIDsFilter, name: "networkMigrationExecutionIDs"))
    ListNetworkMigrationExecutionRequestFilters.add_member(:network_migration_execution_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionStatusesFilter, name: "networkMigrationExecutionStatuses"))
    ListNetworkMigrationExecutionRequestFilters.type = Types::ListNetworkMigrationExecutionRequestFilters
    ListNetworkMigrationExecutionsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationExecutionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationExecutionRequestFilters, name: "filters"))
    ListNetworkMigrationExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationExecutionsRequest.type = Types::ListNetworkMigrationExecutionsRequest
    ListNetworkMigrationExecutionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionsList, name: "items"))
    ListNetworkMigrationExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationExecutionsResponse.type = Types::ListNetworkMigrationExecutionsResponse
    ListNetworkMigrationMapperSegmentConstructTypesFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstructType, name: "member"))
    ListNetworkMigrationMapperSegmentConstructsFilters.add_member(:construct_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMapperSegmentConstructsIDsFilter, name: "constructIDs"))
    ListNetworkMigrationMapperSegmentConstructsFilters.add_member(:construct_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMapperSegmentConstructTypesFilter, name: "constructTypes"))
    ListNetworkMigrationMapperSegmentConstructsFilters.type = Types::ListNetworkMigrationMapperSegmentConstructsFilters
    ListNetworkMigrationMapperSegmentConstructsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructID, name: "member"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMapperSegmentConstructsFilters, name: "filters"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMapperSegmentConstructsRequest.type = Types::ListNetworkMigrationMapperSegmentConstructsRequest
    ListNetworkMigrationMapperSegmentConstructsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstructs, name: "items"))
    ListNetworkMigrationMapperSegmentConstructsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMapperSegmentConstructsResponse.type = Types::ListNetworkMigrationMapperSegmentConstructsResponse
    ListNetworkMigrationMapperSegmentsFilters.add_member(:segment_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMapperSegmentsIDsFilter, name: "segmentIDs"))
    ListNetworkMigrationMapperSegmentsFilters.type = Types::ListNetworkMigrationMapperSegmentsFilters
    ListNetworkMigrationMapperSegmentsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "member"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMapperSegmentsFilters, name: "filters"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMapperSegmentsRequest.type = Types::ListNetworkMigrationMapperSegmentsRequest
    ListNetworkMigrationMapperSegmentsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentsList, name: "items"))
    ListNetworkMigrationMapperSegmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMapperSegmentsResponse.type = Types::ListNetworkMigrationMapperSegmentsResponse
    ListNetworkMigrationMappingUpdatesFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMappingUpdatesIDsFilter, name: "jobIDs"))
    ListNetworkMigrationMappingUpdatesFilters.type = Types::ListNetworkMigrationMappingUpdatesFilters
    ListNetworkMigrationMappingUpdatesIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "member"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMappingUpdatesFilters, name: "filters"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMappingUpdatesRequest.type = Types::ListNetworkMigrationMappingUpdatesRequest
    ListNetworkMigrationMappingUpdatesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMappingUpdatesList, name: "items"))
    ListNetworkMigrationMappingUpdatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMappingUpdatesResponse.type = Types::ListNetworkMigrationMappingUpdatesResponse
    ListNetworkMigrationMappingsFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMappingsIDsFilter, name: "jobIDs"))
    ListNetworkMigrationMappingsFilters.type = Types::ListNetworkMigrationMappingsFilters
    ListNetworkMigrationMappingsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "member"))
    ListNetworkMigrationMappingsRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMappingsRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    ListNetworkMigrationMappingsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNetworkMigrationMappingsFilters, name: "filters"))
    ListNetworkMigrationMappingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListNetworkMigrationMappingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMappingsRequest.type = Types::ListNetworkMigrationMappingsRequest
    ListNetworkMigrationMappingsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMappingsList, name: "items"))
    ListNetworkMigrationMappingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListNetworkMigrationMappingsResponse.type = Types::ListNetworkMigrationMappingsResponse
    ListSourceServerActionsInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    ListSourceServerActionsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerActionsRequestFilters, name: "filters"))
    ListSourceServerActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListSourceServerActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSourceServerActionsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ListSourceServerActionsInput.type = Types::ListSourceServerActionsInput
    ListSourceServerActionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerActionDocuments, name: "items"))
    ListSourceServerActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSourceServerActionsOutput.type = Types::ListSourceServerActionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateActionsInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    ListTemplateActionsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateActionsRequestFilters, name: "filters"))
    ListTemplateActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListTemplateActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTemplateActionsInput.type = Types::ListTemplateActionsInput
    ListTemplateActionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateActionDocuments, name: "items"))
    ListTemplateActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListTemplateActionsOutput.type = Types::ListTemplateActionsOutput
    ListWavesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWavesRequestFilters, name: "filters"))
    ListWavesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListWavesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWavesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ListWavesInput.type = Types::ListWavesInput
    ListWavesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: WavesList, name: "items"))
    ListWavesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWavesOutput.type = Types::ListWavesOutput
    ListWavesRequestFilters.add_member(:wave_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveIDsFilter, name: "waveIDs"))
    ListWavesRequestFilters.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ListWavesRequestFilters.type = Types::ListWavesRequestFilters
    ManagedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountId"))
    ManagedAccount.type = Types::ManagedAccount
    ManagedAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAccount, name: "member"))
    MarkAsArchivedInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    MarkAsArchivedInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    MarkAsArchivedInput.type = Types::MarkAsArchivedInput
    MarkAsArchivedOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    MarkAsArchivedOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    MarkAsArchivedOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    MarkAsArchivedOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    MarkAsArchivedOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    MarkAsArchivedOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    MarkAsArchivedOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    MarkAsArchivedOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    MarkAsArchivedOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    MarkAsArchivedOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    MarkAsArchivedOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    MarkAsArchivedOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    MarkAsArchivedOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    MarkAsArchivedOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    MarkAsArchivedOutput.type = Types::MarkAsArchivedOutput
    MergeConstruct.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID"))
    MergeConstruct.add_member(:construct_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructID, name: "constructID"))
    MergeConstruct.type = Types::MergeConstruct
    MergeConstructs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeConstruct, name: "member"))
    MergeOperation.add_member(:merge_constructs, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeConstructs, name: "mergeConstructs"))
    MergeOperation.type = Types::MergeOperation
    NetworkInterface.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "macAddress"))
    NetworkInterface.add_member(:ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IPsList, name: "ips"))
    NetworkInterface.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    NetworkMigrationAnalysesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisJobDetails, name: "member"))
    NetworkMigrationAnalysisJobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationAnalysisJobDetails.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationAnalysisJobDetails.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationAnalysisJobDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationAnalysisJobDetails.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    NetworkMigrationAnalysisJobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobStatus, name: "status"))
    NetworkMigrationAnalysisJobDetails.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    NetworkMigrationAnalysisJobDetails.type = Types::NetworkMigrationAnalysisJobDetails
    NetworkMigrationAnalysisResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationAnalysisResult.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationAnalysisResult.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationAnalysisResult.add_member(:analyzer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerType, name: "analyzerType"))
    NetworkMigrationAnalysisResult.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisResultSource, name: "source"))
    NetworkMigrationAnalysisResult.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisResultTarget, name: "target"))
    NetworkMigrationAnalysisResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisResultStatus, name: "status"))
    NetworkMigrationAnalysisResult.add_member(:analysis_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "analysisResult"))
    NetworkMigrationAnalysisResult.type = Types::NetworkMigrationAnalysisResult
    NetworkMigrationAnalysisResultSource.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "vpcID"))
    NetworkMigrationAnalysisResultSource.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "subnetID"))
    NetworkMigrationAnalysisResultSource.type = Types::NetworkMigrationAnalysisResultSource
    NetworkMigrationAnalysisResultTarget.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "vpcID"))
    NetworkMigrationAnalysisResultTarget.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "subnetID"))
    NetworkMigrationAnalysisResultTarget.type = Types::NetworkMigrationAnalysisResultTarget
    NetworkMigrationAnalysisResultsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationAnalysisResult, name: "member"))
    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationArtifactID, name: "artifactID"))
    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationArtifactType, name: "artifactType"))
    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationArtifactSubType, name: "artifactSubType"))
    NetworkMigrationCodeGenerationArtifact.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    NetworkMigrationCodeGenerationArtifact.add_member(:output_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "outputS3Configuration"))
    NetworkMigrationCodeGenerationArtifact.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: Checksum, name: "checksum"))
    NetworkMigrationCodeGenerationArtifact.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationCodeGenerationArtifact.type = Types::NetworkMigrationCodeGenerationArtifact
    NetworkMigrationCodeGenerationArtifacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationArtifact, name: "member"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobStatus, name: "status"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:code_generation_output_format_status_details_map, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatStatusDetailsMap, name: "codeGenerationOutputFormatStatusDetailsMap"))
    NetworkMigrationCodeGenerationJobDetails.type = Types::NetworkMigrationCodeGenerationJobDetails
    NetworkMigrationCodeGenerationSegment.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationCodeGenerationSegment.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationCodeGenerationSegment.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationCodeGenerationSegment.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID"))
    NetworkMigrationCodeGenerationSegment.add_member(:segment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationSegmentType, name: "segmentType"))
    NetworkMigrationCodeGenerationSegment.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    NetworkMigrationCodeGenerationSegment.add_member(:mapper_segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "mapperSegmentID"))
    NetworkMigrationCodeGenerationSegment.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationArtifacts, name: "artifacts"))
    NetworkMigrationCodeGenerationSegment.add_member(:referenced_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferencedSegmentsList, name: "referencedSegments"))
    NetworkMigrationCodeGenerationSegment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationCodeGenerationSegment.type = Types::NetworkMigrationCodeGenerationSegment
    NetworkMigrationCodeGenerationSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationSegment, name: "member"))
    NetworkMigrationCodeGenerationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationCodeGenerationJobDetails, name: "member"))
    NetworkMigrationDefinitionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionSummary, name: "member"))
    NetworkMigrationDefinitionSummary.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationDefinitionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name"))
    NetworkMigrationDefinitionSummary.add_member(:source_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceEnvironment, name: "sourceEnvironment"))
    NetworkMigrationDefinitionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    NetworkMigrationDefinitionSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    NetworkMigrationDefinitionSummary.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    NetworkMigrationDefinitionSummary.type = Types::NetworkMigrationDefinitionSummary
    NetworkMigrationDefintionsIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "member"))
    NetworkMigrationDeployedStackDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDeployedStackStatus, name: "status"))
    NetworkMigrationDeployedStackDetails.add_member(:stack_physical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalID, name: "stackPhysicalID"))
    NetworkMigrationDeployedStackDetails.add_member(:stack_logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "stackLogicalID"))
    NetworkMigrationDeployedStackDetails.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID"))
    NetworkMigrationDeployedStackDetails.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "targetAccount"))
    NetworkMigrationDeployedStackDetails.add_member(:failed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationFailedResourcesList, name: "failedResources"))
    NetworkMigrationDeployedStackDetails.type = Types::NetworkMigrationDeployedStackDetails
    NetworkMigrationDeployedStacksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDeployedStackDetails, name: "member"))
    NetworkMigrationDeployerJobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationDeployerJobDetails.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationDeployerJobDetails.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationDeployerJobDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationDeployerJobDetails.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    NetworkMigrationDeployerJobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobStatus, name: "status"))
    NetworkMigrationDeployerJobDetails.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    NetworkMigrationDeployerJobDetails.type = Types::NetworkMigrationDeployerJobDetails
    NetworkMigrationDeployerJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDeployerJobDetails, name: "member"))
    NetworkMigrationExecution.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationExecution.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "status"))
    NetworkMigrationExecution.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStage, name: "stage"))
    NetworkMigrationExecution.add_member(:activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStageActivity, name: "activity"))
    NetworkMigrationExecution.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationExecution.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    NetworkMigrationExecution.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    NetworkMigrationExecution.type = Types::NetworkMigrationExecution
    NetworkMigrationExecutionIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "member"))
    NetworkMigrationExecutionStatusesFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "member"))
    NetworkMigrationExecutionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecution, name: "member"))
    NetworkMigrationFailedResourceDetails.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    NetworkMigrationFailedResourceDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationFailedResourceStatus, name: "status"))
    NetworkMigrationFailedResourceDetails.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusReason"))
    NetworkMigrationFailedResourceDetails.type = Types::NetworkMigrationFailedResourceDetails
    NetworkMigrationFailedResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationFailedResourceDetails, name: "member"))
    NetworkMigrationMapperSegment.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationMapperSegment.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationMapperSegment.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationMapperSegment.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID"))
    NetworkMigrationMapperSegment.add_member(:segment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentType, name: "segmentType"))
    NetworkMigrationMapperSegment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentName, name: "name"))
    NetworkMigrationMapperSegment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDescription, name: "description"))
    NetworkMigrationMapperSegment.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    NetworkMigrationMapperSegment.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: Checksum, name: "checksum"))
    NetworkMigrationMapperSegment.add_member(:output_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "outputS3Configuration"))
    NetworkMigrationMapperSegment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationMapperSegment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    NetworkMigrationMapperSegment.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    NetworkMigrationMapperSegment.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "targetAccount"))
    NetworkMigrationMapperSegment.add_member(:referenced_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferencedSegmentsList, name: "referencedSegments"))
    NetworkMigrationMapperSegment.type = Types::NetworkMigrationMapperSegment
    NetworkMigrationMapperSegmentConstruct.add_member(:construct_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructID, name: "constructID"))
    NetworkMigrationMapperSegmentConstruct.add_member(:construct_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstructType, name: "constructType"))
    NetworkMigrationMapperSegmentConstruct.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentConstructName, name: "name"))
    NetworkMigrationMapperSegmentConstruct.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentConstructDescription, name: "description"))
    NetworkMigrationMapperSegmentConstruct.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    NetworkMigrationMapperSegmentConstruct.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excluded"))
    NetworkMigrationMapperSegmentConstruct.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationMapperSegmentConstruct.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    NetworkMigrationMapperSegmentConstruct.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructProperties, name: "properties"))
    NetworkMigrationMapperSegmentConstruct.type = Types::NetworkMigrationMapperSegmentConstruct
    NetworkMigrationMapperSegmentConstructs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstruct, name: "member"))
    NetworkMigrationMapperSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegment, name: "member"))
    NetworkMigrationMappingJobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationMappingJobDetails.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationMappingJobDetails.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationMappingJobDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationMappingJobDetails.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    NetworkMigrationMappingJobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobStatus, name: "status"))
    NetworkMigrationMappingJobDetails.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    NetworkMigrationMappingJobDetails.type = Types::NetworkMigrationMappingJobDetails
    NetworkMigrationMappingUpdateJobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobStatus, name: "status"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "statusDetails"))
    NetworkMigrationMappingUpdateJobDetails.type = Types::NetworkMigrationMappingUpdateJobDetails
    NetworkMigrationMappingUpdatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMappingUpdateJobDetails, name: "member"))
    NetworkMigrationMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMappingJobDetails, name: "member"))
    OS.add_member(:full_string, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fullString"))
    OS.type = Types::OS
    OperationUnion.add_member(:merge, Types::OperationUnion::Merge, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOperation, name: "merge"))
    OperationUnion.add_member(:split, Types::OperationUnion::Split, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitOperation, name: "split"))
    OperationUnion.add_member(:delete, Types::OperationUnion::Delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteOperation, name: "delete"))
    OperationUnion.add_member(:update, Types::OperationUnion::Update, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOperation, name: "update"))
    OperationUnion.add_member(:unknown, Types::OperationUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OperationUnion.type = Types::OperationUnion
    ParticipatingServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    ParticipatingServer.add_member(:launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, name: "launchStatus"))
    ParticipatingServer.add_member(:launched_ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "launchedEc2InstanceID"))
    ParticipatingServer.add_member(:post_launch_actions_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActionsStatus, name: "postLaunchActionsStatus"))
    ParticipatingServer.type = Types::ParticipatingServer
    ParticipatingServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingServer, name: "member"))
    PauseReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    PauseReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    PauseReplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    PauseReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    PauseReplicationOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    PauseReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    PauseReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    PauseReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    PauseReplicationOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    PauseReplicationOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    PauseReplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    PauseReplicationOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    PauseReplicationOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    PauseReplicationOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    PauseReplicationOutput.type = Types::PauseReplicationOutput
    PauseReplicationRequest.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    PauseReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    PauseReplicationRequest.type = Types::PauseReplicationRequest
    PostLaunchActions.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActionsDeploymentType, name: "deployment"))
    PostLaunchActions.add_member(:s3_log_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogBucketName, name: "s3LogBucket"))
    PostLaunchActions.add_member(:s3_output_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "s3OutputKeyPrefix"))
    PostLaunchActions.add_member(:cloud_watch_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "cloudWatchLogGroupName"))
    PostLaunchActions.add_member(:ssm_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocuments, name: "ssmDocuments"))
    PostLaunchActions.type = Types::PostLaunchActions
    PostLaunchActionsLaunchStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPostLaunchActionsLaunchStatus, name: "member"))
    PostLaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "ssmAgentDiscoveryDatetime"))
    PostLaunchActionsStatus.add_member(:post_launch_actions_launch_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActionsLaunchStatusList, name: "postLaunchActionsLaunchStatusList"))
    PostLaunchActionsStatus.type = Types::PostLaunchActionsStatus
    PutSourceServerActionInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier", traits: {"smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order", traits: {"smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID", traits: {"smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    PutSourceServerActionInput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    PutSourceServerActionInput.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    PutSourceServerActionInput.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    PutSourceServerActionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    PutSourceServerActionInput.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    PutSourceServerActionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    PutSourceServerActionInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    PutSourceServerActionInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    PutSourceServerActionInput.type = Types::PutSourceServerActionInput
    PutSourceServerActionOutput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID"))
    PutSourceServerActionOutput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName"))
    PutSourceServerActionOutput.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier"))
    PutSourceServerActionOutput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order"))
    PutSourceServerActionOutput.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    PutSourceServerActionOutput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    PutSourceServerActionOutput.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    PutSourceServerActionOutput.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    PutSourceServerActionOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    PutSourceServerActionOutput.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    PutSourceServerActionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    PutSourceServerActionOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    PutSourceServerActionOutput.type = Types::PutSourceServerActionOutput
    PutTemplateActionInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "actionName", traits: {"smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier", traits: {"smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order", traits: {"smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID", traits: {"smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    PutTemplateActionInput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    PutTemplateActionInput.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    PutTemplateActionInput.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    PutTemplateActionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    PutTemplateActionInput.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemString, name: "operatingSystem"))
    PutTemplateActionInput.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    PutTemplateActionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    PutTemplateActionInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    PutTemplateActionInput.type = Types::PutTemplateActionInput
    PutTemplateActionOutput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID"))
    PutTemplateActionOutput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "actionName"))
    PutTemplateActionOutput.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier"))
    PutTemplateActionOutput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order"))
    PutTemplateActionOutput.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    PutTemplateActionOutput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    PutTemplateActionOutput.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    PutTemplateActionOutput.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    PutTemplateActionOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    PutTemplateActionOutput.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemString, name: "operatingSystem"))
    PutTemplateActionOutput.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    PutTemplateActionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    PutTemplateActionOutput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    PutTemplateActionOutput.type = Types::PutTemplateActionOutput
    RemoveSourceServerActionInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RemoveSourceServerActionInput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID", traits: {"smithy.api#required" => {}}))
    RemoveSourceServerActionInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    RemoveSourceServerActionInput.type = Types::RemoveSourceServerActionInput
    RemoveSourceServerActionOutput.type = Types::RemoveSourceServerActionOutput
    RemoveTemplateActionInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    RemoveTemplateActionInput.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID", traits: {"smithy.api#required" => {}}))
    RemoveTemplateActionInput.type = Types::RemoveTemplateActionInput
    RemoveTemplateActionOutput.type = Types::RemoveTemplateActionOutput
    ReplicationConfigurationReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDiskStagingDiskType, name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "iops", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "throughput", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.type = Types::ReplicationConfigurationReplicatedDisk
    ReplicationConfigurationReplicatedDisks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisk, name: "member"))
    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    ReplicationConfigurationTemplate.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    ReplicationConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ReplicationConfigurationTemplate.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    ReplicationConfigurationTemplate.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    ReplicationConfigurationTemplate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    ReplicationConfigurationTemplate.type = Types::ReplicationConfigurationTemplate
    ReplicationConfigurationTemplateIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "member"))
    ReplicationConfigurationTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplate, name: "member"))
    ReplicationServersSecurityGroupsIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupID, name: "member"))
    ReplicationTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    ResumeReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ResumeReplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    ResumeReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ResumeReplicationOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    ResumeReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    ResumeReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    ResumeReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    ResumeReplicationOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    ResumeReplicationOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    ResumeReplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    ResumeReplicationOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    ResumeReplicationOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    ResumeReplicationOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    ResumeReplicationOutput.type = Types::ResumeReplicationOutput
    ResumeReplicationRequest.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    ResumeReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    ResumeReplicationRequest.type = Types::ResumeReplicationRequest
    RetryDataReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RetryDataReplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    RetryDataReplicationInput.type = Types::RetryDataReplicationInput
    RetryDataReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    RetryDataReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    RetryDataReplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    RetryDataReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RetryDataReplicationOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    RetryDataReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    RetryDataReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    RetryDataReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    RetryDataReplicationOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    RetryDataReplicationOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    RetryDataReplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    RetryDataReplicationOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    RetryDataReplicationOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    RetryDataReplicationOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    RetryDataReplicationOutput.type = Types::RetryDataReplicationOutput
    S3BucketSource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "s3Key", traits: {"smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner"))
    S3BucketSource.type = Types::S3BucketSource
    S3Configuration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket"))
    S3Configuration.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner"))
    S3Configuration.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyName, name: "s3Key"))
    S3Configuration.type = Types::S3Configuration
    ScopeTagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagKey, name: "key"))
    ScopeTagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagValue, name: "value"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ServiceQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:quota_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "quotaValue"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceConfiguration.add_member(:source_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceEnvironment, name: "sourceEnvironment", traits: {"smithy.api#required" => {}}))
    SourceConfiguration.add_member(:source_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceS3Configuration, name: "sourceS3Configuration", traits: {"smithy.api#required" => {}}))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "member"))
    SourceProperties.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:recommended_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "recommendedInstanceType"))
    SourceProperties.add_member(:identification_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentificationHints, name: "identificationHints"))
    SourceProperties.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "networkInterfaces"))
    SourceProperties.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: Disks, name: "disks"))
    SourceProperties.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpus, name: "cpus"))
    SourceProperties.add_member(:ram_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ramBytes", traits: {"smithy.api#default" => 0}))
    SourceProperties.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: OS, name: "os"))
    SourceProperties.type = Types::SourceProperties
    SourceS3Configuration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    SourceS3Configuration.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner", traits: {"smithy.api#required" => {}}))
    SourceS3Configuration.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyName, name: "s3Key", traits: {"smithy.api#required" => {}}))
    SourceS3Configuration.type = Types::SourceS3Configuration
    SourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    SourceServer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    SourceServer.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    SourceServer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    SourceServer.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    SourceServer.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    SourceServer.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    SourceServer.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    SourceServer.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    SourceServer.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    SourceServer.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    SourceServer.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    SourceServer.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    SourceServer.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    SourceServer.type = Types::SourceServer
    SourceServerActionDocument.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID"))
    SourceServerActionDocument.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName"))
    SourceServerActionDocument.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier"))
    SourceServerActionDocument.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order"))
    SourceServerActionDocument.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    SourceServerActionDocument.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    SourceServerActionDocument.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    SourceServerActionDocument.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    SourceServerActionDocument.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    SourceServerActionDocument.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    SourceServerActionDocument.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    SourceServerActionDocument.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    SourceServerActionDocument.type = Types::SourceServerActionDocument
    SourceServerActionDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerActionDocument, name: "member"))
    SourceServerActionsRequestFilters.add_member(:action_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIDs, name: "actionIDs"))
    SourceServerActionsRequestFilters.type = Types::SourceServerActionsRequestFilters
    SourceServerConnectorAction.add_member(:credentials_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "credentialsSecretArn"))
    SourceServerConnectorAction.add_member(:connector_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorArn, name: "connectorArn"))
    SourceServerConnectorAction.type = Types::SourceServerConnectorAction
    SourceServersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, name: "member"))
    SplitConstruct.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrBlock, name: "cidrBlock"))
    SplitConstruct.type = Types::SplitConstruct
    SplitConstructs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitConstruct, name: "member"))
    SplitOperation.add_member(:split_constructs, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitConstructs, name: "splitConstructs"))
    SplitOperation.type = Types::SplitOperation
    SsmDocument.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "actionName", traits: {"smithy.api#required" => {}}))
    SsmDocument.add_member(:ssm_document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, name: "ssmDocumentName", traits: {"smithy.api#required" => {}}))
    SsmDocument.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    SsmDocument.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    SsmDocument.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    SsmDocument.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    SsmDocument.type = Types::SsmDocument
    SsmDocumentExternalParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameterName, name: "key"))
    SsmDocumentExternalParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmExternalParameter, name: "value"))
    SsmDocumentParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameterName, name: "key"))
    SsmDocumentParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterStoreParameters, name: "value"))
    SsmDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocument, name: "member"))
    SsmExternalParameter.add_member(:dynamic_path, Types::SsmExternalParameter::DynamicPath, ::Smithy::Schema::Shapes::MemberShape.new(target: JmesPathString, name: "dynamicPath"))
    SsmExternalParameter.add_member(:unknown, Types::SsmExternalParameter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SsmExternalParameter.type = Types::SsmExternalParameter
    SsmParameterStoreParameter.add_member(:parameter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterStoreParameterType, name: "parameterType", traits: {"smithy.api#required" => {}}))
    SsmParameterStoreParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterStoreParameterName, name: "parameterName", traits: {"smithy.api#required" => {}}))
    SsmParameterStoreParameter.type = Types::SsmParameterStoreParameter
    SsmParameterStoreParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterStoreParameter, name: "member"))
    StartCutoverInput.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: StartCutoverRequestSourceServerIDs, name: "sourceServerIDs", traits: {"smithy.api#required" => {}}))
    StartCutoverInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartCutoverInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    StartCutoverInput.type = Types::StartCutoverInput
    StartCutoverOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    StartCutoverOutput.type = Types::StartCutoverOutput
    StartCutoverRequestSourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    StartExportInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    StartExportInput.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "s3Key", traits: {"smithy.api#required" => {}}))
    StartExportInput.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner"))
    StartExportInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartExportInput.type = Types::StartExportInput
    StartExportOutput.add_member(:export_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTask, name: "exportTask"))
    StartExportOutput.type = Types::StartExportOutput
    StartImportFileEnrichmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportFileEnrichmentRequest.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrichmentSourceS3Configuration, name: "s3BucketSource", traits: {"smithy.api#required" => {}}))
    StartImportFileEnrichmentRequest.add_member(:s3_bucket_target, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrichmentTargetS3Configuration, name: "s3BucketTarget", traits: {"smithy.api#required" => {}}))
    StartImportFileEnrichmentRequest.add_member(:ip_assignment_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAssignmentStrategy, name: "ipAssignmentStrategy"))
    StartImportFileEnrichmentRequest.type = Types::StartImportFileEnrichmentRequest
    StartImportFileEnrichmentResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileEnrichmentJobID, name: "jobID"))
    StartImportFileEnrichmentResponse.type = Types::StartImportFileEnrichmentResponse
    StartImportInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportInput.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSource, name: "s3BucketSource", traits: {"smithy.api#required" => {}}))
    StartImportInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartImportInput.type = Types::StartImportInput
    StartImportOutput.add_member(:import_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTask, name: "importTask"))
    StartImportOutput.type = Types::StartImportOutput
    StartNetworkMigrationAnalysisRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationAnalysisRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationAnalysisRequest.type = Types::StartNetworkMigrationAnalysisRequest
    StartNetworkMigrationAnalysisResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    StartNetworkMigrationAnalysisResponse.type = Types::StartNetworkMigrationAnalysisResponse
    StartNetworkMigrationCodeGenerationRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationCodeGenerationRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationCodeGenerationRequest.add_member(:code_generation_output_format_types, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationOutputFormatTypes, name: "codeGenerationOutputFormatTypes"))
    StartNetworkMigrationCodeGenerationRequest.type = Types::StartNetworkMigrationCodeGenerationRequest
    StartNetworkMigrationCodeGenerationResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    StartNetworkMigrationCodeGenerationResponse.type = Types::StartNetworkMigrationCodeGenerationResponse
    StartNetworkMigrationDeploymentOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    StartNetworkMigrationDeploymentOutput.type = Types::StartNetworkMigrationDeploymentOutput
    StartNetworkMigrationDeploymentRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationDeploymentRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationDeploymentRequest.type = Types::StartNetworkMigrationDeploymentRequest
    StartNetworkMigrationMappingRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingRequest.add_member(:security_group_mapping_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMappingStrategy, name: "securityGroupMappingStrategy"))
    StartNetworkMigrationMappingRequest.type = Types::StartNetworkMigrationMappingRequest
    StartNetworkMigrationMappingResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    StartNetworkMigrationMappingResponse.type = Types::StartNetworkMigrationMappingResponse
    StartNetworkMigrationMappingUpdateConstruct.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:construct_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructID, name: "constructID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:construct_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentConstructType, name: "constructType", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationUnion, name: "operation"))
    StartNetworkMigrationMappingUpdateConstruct.type = Types::StartNetworkMigrationMappingUpdateConstruct
    StartNetworkMigrationMappingUpdateConstructs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StartNetworkMigrationMappingUpdateConstruct, name: "member"))
    StartNetworkMigrationMappingUpdateRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateRequest.add_member(:constructs, ::Smithy::Schema::Shapes::MemberShape.new(target: StartNetworkMigrationMappingUpdateConstructs, name: "constructs"))
    StartNetworkMigrationMappingUpdateRequest.add_member(:segments, ::Smithy::Schema::Shapes::MemberShape.new(target: StartNetworkMigrationMappingUpdateSegments, name: "segments"))
    StartNetworkMigrationMappingUpdateRequest.type = Types::StartNetworkMigrationMappingUpdateRequest
    StartNetworkMigrationMappingUpdateResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    StartNetworkMigrationMappingUpdateResponse.type = Types::StartNetworkMigrationMappingUpdateResponse
    StartNetworkMigrationMappingUpdateSegment.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID", traits: {"smithy.api#required" => {}}))
    StartNetworkMigrationMappingUpdateSegment.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "targetAccount"))
    StartNetworkMigrationMappingUpdateSegment.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    StartNetworkMigrationMappingUpdateSegment.type = Types::StartNetworkMigrationMappingUpdateSegment
    StartNetworkMigrationMappingUpdateSegments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StartNetworkMigrationMappingUpdateSegment, name: "member"))
    StartReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StartReplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    StartReplicationInput.type = Types::StartReplicationInput
    StartReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    StartReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    StartReplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    StartReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartReplicationOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    StartReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    StartReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    StartReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    StartReplicationOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    StartReplicationOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    StartReplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    StartReplicationOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    StartReplicationOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    StartReplicationOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    StartReplicationOutput.type = Types::StartReplicationOutput
    StartTestInput.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTestRequestSourceServerIDs, name: "sourceServerIDs", traits: {"smithy.api#required" => {}}))
    StartTestInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartTestInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    StartTestInput.type = Types::StartTestInput
    StartTestOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    StartTestOutput.type = Types::StartTestOutput
    StartTestRequestSourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    StopReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    StopReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    StopReplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    StopReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StopReplicationOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    StopReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    StopReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    StopReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    StopReplicationOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    StopReplicationOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    StopReplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    StopReplicationOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    StopReplicationOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    StopReplicationOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    StopReplicationOutput.type = Types::StopReplicationOutput
    StopReplicationRequest.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StopReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    StopReplicationRequest.type = Types::StopReplicationRequest
    StorageConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "storageType", traits: {"smithy.api#required" => {}}))
    StorageConfiguration.add_member(:fsx_ontap_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxOntapConfiguration, name: "fsxOntapConfiguration"))
    StorageConfiguration.type = Types::StorageConfiguration
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TargetNetwork.add_member(:topology, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetworkTopology, name: "topology", traits: {"smithy.api#required" => {}}))
    TargetNetwork.add_member(:inbound_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "inboundCidr"))
    TargetNetwork.add_member(:outbound_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "outboundCidr"))
    TargetNetwork.add_member(:inspection_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "inspectionCidr"))
    TargetNetwork.type = Types::TargetNetwork
    TargetNetworkUpdate.add_member(:topology, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetworkTopology, name: "topology"))
    TargetNetworkUpdate.add_member(:inbound_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "inboundCidr"))
    TargetNetworkUpdate.add_member(:outbound_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "outboundCidr"))
    TargetNetworkUpdate.add_member(:inspection_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: Cidr, name: "inspectionCidr"))
    TargetNetworkUpdate.type = Types::TargetNetworkUpdate
    TargetS3Configuration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    TargetS3Configuration.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner", traits: {"smithy.api#required" => {}}))
    TargetS3Configuration.type = Types::TargetS3Configuration
    TargetS3ConfigurationUpdate.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "s3Bucket"))
    TargetS3ConfigurationUpdate.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "s3BucketOwner"))
    TargetS3ConfigurationUpdate.type = Types::TargetS3ConfigurationUpdate
    TemplateActionDocument.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionID, name: "actionID"))
    TemplateActionDocument.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "actionName"))
    TemplateActionDocument.add_member(:document_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "documentIdentifier"))
    TemplateActionDocument.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order"))
    TemplateActionDocument.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentVersion, name: "documentVersion"))
    TemplateActionDocument.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    TemplateActionDocument.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "timeoutSeconds"))
    TemplateActionDocument.add_member(:must_succeed_for_cutover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "mustSucceedForCutover"))
    TemplateActionDocument.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentParameters, name: "parameters"))
    TemplateActionDocument.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemString, name: "operatingSystem"))
    TemplateActionDocument.add_member(:external_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentExternalParameters, name: "externalParameters"))
    TemplateActionDocument.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDescription, name: "description"))
    TemplateActionDocument.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category"))
    TemplateActionDocument.type = Types::TemplateActionDocument
    TemplateActionDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateActionDocument, name: "member"))
    TemplateActionsRequestFilters.add_member(:action_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIDs, name: "actionIDs"))
    TemplateActionsRequestFilters.type = Types::TemplateActionsRequestFilters
    TerminateTargetInstancesInput.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateTargetInstancesRequestSourceServerIDs, name: "sourceServerIDs", traits: {"smithy.api#required" => {}}))
    TerminateTargetInstancesInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    TerminateTargetInstancesInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    TerminateTargetInstancesInput.type = Types::TerminateTargetInstancesInput
    TerminateTargetInstancesOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    TerminateTargetInstancesOutput.type = Types::TerminateTargetInstancesOutput
    TerminateTargetInstancesRequestSourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UnarchiveApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    UnarchiveApplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UnarchiveApplicationInput.type = Types::UnarchiveApplicationInput
    UnarchiveApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    UnarchiveApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UnarchiveApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    UnarchiveApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    UnarchiveApplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UnarchiveApplicationOutput.add_member(:application_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAggregatedStatus, name: "applicationAggregatedStatus"))
    UnarchiveApplicationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    UnarchiveApplicationOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    UnarchiveApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UnarchiveApplicationOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    UnarchiveApplicationOutput.type = Types::UnarchiveApplicationOutput
    UnarchiveWaveInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    UnarchiveWaveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UnarchiveWaveInput.type = Types::UnarchiveWaveInput
    UnarchiveWaveOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    UnarchiveWaveOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UnarchiveWaveOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    UnarchiveWaveOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    UnarchiveWaveOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UnarchiveWaveOutput.add_member(:wave_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveAggregatedStatus, name: "waveAggregatedStatus"))
    UnarchiveWaveOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    UnarchiveWaveOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    UnarchiveWaveOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UnarchiveWaveOutput.type = Types::UnarchiveWaveOutput
    UninitializedAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    UninitializedAccountException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    UninitializedAccountException.type = Types::UninitializedAccountException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID", traits: {"smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    UpdateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    UpdateApplicationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    UpdateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    UpdateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, name: "description"))
    UpdateApplicationOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UpdateApplicationOutput.add_member(:application_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAggregatedStatus, name: "applicationAggregatedStatus"))
    UpdateApplicationOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    UpdateApplicationOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    UpdateApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateApplicationOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateConnectorOutput.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "connectorID"))
    UpdateConnectorOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, name: "name"))
    UpdateConnectorOutput.add_member(:ssm_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmInstanceID, name: "ssmInstanceID"))
    UpdateConnectorOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateConnectorOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateConnectorOutput.add_member(:ssm_command_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSsmCommandConfig, name: "ssmCommandConfig"))
    UpdateConnectorOutput.type = Types::UpdateConnectorOutput
    UpdateConnectorRequest.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorID, name: "connectorID", traits: {"smithy.api#required" => {}}))
    UpdateConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorName, name: "name"))
    UpdateConnectorRequest.add_member(:ssm_command_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorSsmCommandConfig, name: "ssmCommandConfig"))
    UpdateConnectorRequest.type = Types::UpdateConnectorRequest
    UpdateLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateLaunchConfigurationInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationInput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    UpdateLaunchConfigurationInput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    UpdateLaunchConfigurationInput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationInput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateLaunchConfigurationInput.type = Types::UpdateLaunchConfigurationInput
    UpdateLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    UpdateLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "ec2LaunchTemplateID"))
    UpdateLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationOutput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    UpdateLaunchConfigurationOutput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    UpdateLaunchConfigurationOutput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationOutput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationOutput.type = Types::UpdateLaunchConfigurationOutput
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateInput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    UpdateLaunchConfigurationTemplateInput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationTemplateInput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateInput.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associatePublicIpAddress"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationTemplateInput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    UpdateLaunchConfigurationTemplateInput.add_member(:small_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "smallVolumeMaxSize", traits: {"smithy.api#default" => 0}))
    UpdateLaunchConfigurationTemplateInput.add_member(:small_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "smallVolumeConf"))
    UpdateLaunchConfigurationTemplateInput.add_member(:large_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "largeVolumeConf"))
    UpdateLaunchConfigurationTemplateInput.add_member(:enable_parameters_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableParametersEncryption"))
    UpdateLaunchConfigurationTemplateInput.add_member(:parameters_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "parametersEncryptionKey"))
    UpdateLaunchConfigurationTemplateInput.type = Types::UpdateLaunchConfigurationTemplateInput
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:post_launch_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PostLaunchActions, name: "postLaunchActions"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:enable_map_auto_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:map_auto_tagging_mpe_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2LaunchConfigurationTemplateID, name: "ec2LaunchTemplateID"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associatePublicIpAddress"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:boot_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BootMode, name: "bootMode"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:small_volume_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "smallVolumeMaxSize", traits: {"smithy.api#default" => 0}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:small_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "smallVolumeConf"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:large_volume_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateDiskConf, name: "largeVolumeConf"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:enable_parameters_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableParametersEncryption"))
    UpdateLaunchConfigurationTemplateOutput.add_member(:parameters_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "parametersEncryptionKey"))
    UpdateLaunchConfigurationTemplateOutput.type = Types::UpdateLaunchConfigurationTemplateOutput
    UpdateNetworkMigrationDefinitionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionDescription, name: "description"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurationList, name: "sourceConfigurations"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:target_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetS3Configuration, name: "targetS3Configuration"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:target_network, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetwork, name: "targetNetwork"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:target_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeployment, name: "targetDeployment"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:vpc_provisioning_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcProvisioningStrategy, name: "vpcProvisioningStrategy"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:cidr_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMappingsList, name: "cidrMappings"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateNetworkMigrationDefinitionOutput.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    UpdateNetworkMigrationDefinitionOutput.type = Types::UpdateNetworkMigrationDefinitionOutput
    UpdateNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    UpdateNetworkMigrationDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionName, name: "name"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionDescription, name: "description"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:source_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfigurationList, name: "sourceConfigurations"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetS3ConfigurationUpdate, name: "targetS3Configuration"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_network, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetNetworkUpdate, name: "targetNetwork"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDeployment, name: "targetDeployment"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:vpc_provisioning_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcProvisioningStrategy, name: "vpcProvisioningStrategy"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:cidr_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrMappingsList, name: "cidrMappings"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    UpdateNetworkMigrationDefinitionRequest.type = Types::UpdateNetworkMigrationDefinitionRequest
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationJobID, name: "jobID"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:segment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationMapperSegmentType, name: "segmentType"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentName, name: "name"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDescription, name: "description"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:logical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalID, name: "logicalID"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: Checksum, name: "checksum"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:output_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "outputS3Configuration"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "targetAccount"))
    UpdateNetworkMigrationMapperSegmentOutput.add_member(:referenced_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferencedSegmentsList, name: "referencedSegments"))
    UpdateNetworkMigrationMapperSegmentOutput.type = Types::UpdateNetworkMigrationMapperSegmentOutput
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:network_migration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationDefinitionID, name: "networkMigrationDefinitionID", traits: {"smithy.api#required" => {}}))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:network_migration_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMigrationExecutionID, name: "networkMigrationExecutionID", traits: {"smithy.api#required" => {}}))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "segmentID", traits: {"smithy.api#required" => {}}))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:scope_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeTagsMap, name: "scopeTags"))
    UpdateNetworkMigrationMapperSegmentRequest.type = Types::UpdateNetworkMigrationMapperSegmentRequest
    UpdateOperation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentConstructName, name: "name"))
    UpdateOperation.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excluded"))
    UpdateOperation.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstructProperties, name: "properties"))
    UpdateOperation.type = Types::UpdateOperation
    UpdateReplicationConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateReplicationConfigurationInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationInput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, name: "replicatedDisks"))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationInput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    UpdateReplicationConfigurationInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateReplicationConfigurationInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateReplicationConfigurationInput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationInput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    UpdateReplicationConfigurationInput.type = Types::UpdateReplicationConfigurationInput
    UpdateReplicationConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    UpdateReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationOutput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, name: "replicatedDisks"))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationOutput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    UpdateReplicationConfigurationOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateReplicationConfigurationOutput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationOutput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    UpdateReplicationConfigurationOutput.type = Types::UpdateReplicationConfigurationOutput
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    UpdateReplicationConfigurationTemplateInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateReplicationConfigurationTemplateInput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationTemplateInput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    UpdateReplicationConfigurationTemplateInput.type = Types::UpdateReplicationConfigurationTemplateInput
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: BandwidthThrottling, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_fips_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useFipsEndpoint"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:store_snapshot_on_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storageConfiguration"))
    UpdateReplicationConfigurationTemplateOutput.type = Types::UpdateReplicationConfigurationTemplateOutput
    UpdateSourceServerOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    UpdateSourceServerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateSourceServerOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UpdateSourceServerOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateSourceServerOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    UpdateSourceServerOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    UpdateSourceServerOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    UpdateSourceServerOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    UpdateSourceServerOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    UpdateSourceServerOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    UpdateSourceServerOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    UpdateSourceServerOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    UpdateSourceServerOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    UpdateSourceServerOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    UpdateSourceServerOutput.type = Types::UpdateSourceServerOutput
    UpdateSourceServerReplicationTypeInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateSourceServerReplicationTypeInput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType", traits: {"smithy.api#required" => {}}))
    UpdateSourceServerReplicationTypeInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateSourceServerReplicationTypeInput.type = Types::UpdateSourceServerReplicationTypeInput
    UpdateSourceServerReplicationTypeOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    UpdateSourceServerReplicationTypeOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateSourceServerReplicationTypeOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UpdateSourceServerReplicationTypeOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateSourceServerReplicationTypeOutput.add_member(:launched_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchedInstance, name: "launchedInstance"))
    UpdateSourceServerReplicationTypeOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    UpdateSourceServerReplicationTypeOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    UpdateSourceServerReplicationTypeOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    UpdateSourceServerReplicationTypeOutput.add_member(:replication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationType, name: "replicationType"))
    UpdateSourceServerReplicationTypeOutput.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    UpdateSourceServerReplicationTypeOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationID, name: "applicationID"))
    UpdateSourceServerReplicationTypeOutput.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    UpdateSourceServerReplicationTypeOutput.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdnForActionFramework"))
    UpdateSourceServerReplicationTypeOutput.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    UpdateSourceServerReplicationTypeOutput.type = Types::UpdateSourceServerReplicationTypeOutput
    UpdateSourceServerRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateSourceServerRequest.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateSourceServerRequest.add_member(:connector_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerConnectorAction, name: "connectorAction"))
    UpdateSourceServerRequest.add_member(:user_provided_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserProvidedId, name: "userProvidedID"))
    UpdateSourceServerRequest.add_member(:fqdn_for_action_framework, ::Smithy::Schema::Shapes::MemberShape.new(target: FqdnForActionFramework, name: "fqdnForActionFramework"))
    UpdateSourceServerRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemString, name: "platform"))
    UpdateSourceServerRequest.type = Types::UpdateSourceServerRequest
    UpdateWaveInput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID", traits: {"smithy.api#required" => {}}))
    UpdateWaveInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    UpdateWaveInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    UpdateWaveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    UpdateWaveInput.type = Types::UpdateWaveInput
    UpdateWaveOutput.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    UpdateWaveOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    UpdateWaveOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    UpdateWaveOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    UpdateWaveOutput.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    UpdateWaveOutput.add_member(:wave_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveAggregatedStatus, name: "waveAggregatedStatus"))
    UpdateWaveOutput.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    UpdateWaveOutput.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    UpdateWaveOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateWaveOutput.type = Types::UpdateWaveOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "name"))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VcenterClient.add_member(:vcenter_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClientID, name: "vcenterClientID"))
    VcenterClient.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    VcenterClient.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "hostname"))
    VcenterClient.add_member(:vcenter_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "vcenterUUID"))
    VcenterClient.add_member(:datacenter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "datacenterName"))
    VcenterClient.add_member(:last_seen_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastSeenDatetime"))
    VcenterClient.add_member(:source_server_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "sourceServerTags"))
    VcenterClient.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    VcenterClient.type = Types::VcenterClient
    VcenterClientList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterClient, name: "member"))
    VpcIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "member"))
    Wave.add_member(:wave_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "waveID"))
    Wave.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    Wave.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveName, name: "name"))
    Wave.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveDescription, name: "description"))
    Wave.add_member(:is_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArchived"))
    Wave.add_member(:wave_aggregated_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveAggregatedStatus, name: "waveAggregatedStatus"))
    Wave.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "creationDateTime"))
    Wave.add_member(:last_modified_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastModifiedDateTime"))
    Wave.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    Wave.type = Types::Wave
    WaveAggregatedStatus.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastUpdateDateTime"))
    WaveAggregatedStatus.add_member(:replication_started_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "replicationStartedDateTime"))
    WaveAggregatedStatus.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveHealthStatus, name: "healthStatus"))
    WaveAggregatedStatus.add_member(:progress_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveProgressStatus, name: "progressStatus"))
    WaveAggregatedStatus.add_member(:total_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "totalApplications", traits: {"smithy.api#default" => 0}))
    WaveAggregatedStatus.type = Types::WaveAggregatedStatus
    WaveIDsFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WaveID, name: "member"))
    WavesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Wave, name: "member"))
    ReferencedSegmentsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentID, name: "member"))

    ApplicationMigrationService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mgn#ApplicationMigrationService"
      service.name = "ApplicationMigrationService"
      service.version = "2020-02-26"
      service.traits = {"aws.api#service" => {"sdkId" => "mgn", "arnNamespace" => "mgn", "awsProductName" => "mgn", "cloudTrailEventSource" => "mgn.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "mgn"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "Application Migration Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://mgn-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mgn-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mgn.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://mgn.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:archive_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ArchiveApplication"
        operation.name = "ArchiveApplication"
        operation.input = ArchiveApplicationInput
        operation.output = ArchiveApplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ArchiveApplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:archive_wave, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ArchiveWave"
        operation.name = "ArchiveWave"
        operation.input = ArchiveWaveInput
        operation.output = ArchiveWaveOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ArchiveWave", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:associate_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#AssociateApplications"
        operation.name = "AssociateApplications"
        operation.input = AssociateApplicationsInput
        operation.output = AssociateApplicationsOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/AssociateApplications", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_source_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#AssociateSourceServers"
        operation.name = "AssociateSourceServers"
        operation.input = AssociateSourceServersInput
        operation.output = AssociateSourceServersOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/AssociateSourceServers", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:change_server_life_cycle_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ChangeServerLifeCycleState"
        operation.name = "ChangeServerLifeCycleState"
        operation.input = ChangeServerLifeCycleStateInput
        operation.output = ChangeServerLifeCycleStateOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ChangeServerLifeCycleState", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationInput
        operation.output = CreateApplicationOutput
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateApplication", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = CreateConnectorRequest
        operation.output = CreateConnectorOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateConnector", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateLaunchConfigurationTemplate"
        operation.name = "CreateLaunchConfigurationTemplate"
        operation.input = CreateLaunchConfigurationTemplateInput
        operation.output = CreateLaunchConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateLaunchConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_network_migration_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateNetworkMigrationDefinition"
        operation.name = "CreateNetworkMigrationDefinition"
        operation.input = CreateNetworkMigrationDefinitionRequest
        operation.output = CreateNetworkMigrationDefinitionOutput
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/CreateNetworkMigrationDefinition", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateReplicationConfigurationTemplate"
        operation.name = "CreateReplicationConfigurationTemplate"
        operation.input = CreateReplicationConfigurationTemplateInput
        operation.output = CreateReplicationConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateReplicationConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_wave, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateWave"
        operation.name = "CreateWave"
        operation.input = CreateWaveInput
        operation.output = CreateWaveOutput
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateWave", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationInput
        operation.output = DeleteApplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteApplication", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = DeleteConnectorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteConnector", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = DeleteJobInput
        operation.output = DeleteJobOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteJob", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteLaunchConfigurationTemplate"
        operation.name = "DeleteLaunchConfigurationTemplate"
        operation.input = DeleteLaunchConfigurationTemplateInput
        operation.output = DeleteLaunchConfigurationTemplateOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_network_migration_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteNetworkMigrationDefinition"
        operation.name = "DeleteNetworkMigrationDefinition"
        operation.input = DeleteNetworkMigrationDefinitionRequest
        operation.output = DeleteNetworkMigrationDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/DeleteNetworkMigrationDefinition", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteReplicationConfigurationTemplate"
        operation.name = "DeleteReplicationConfigurationTemplate"
        operation.input = DeleteReplicationConfigurationTemplateInput
        operation.output = DeleteReplicationConfigurationTemplateOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteReplicationConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteSourceServer"
        operation.name = "DeleteSourceServer"
        operation.input = DeleteSourceServerInput
        operation.output = DeleteSourceServerOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceServer", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vcenter_client, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteVcenterClient"
        operation.name = "DeleteVcenterClient"
        operation.input = DeleteVcenterClientInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVcenterClient", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_wave, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteWave"
        operation.name = "DeleteWave"
        operation.input = DeleteWaveInput
        operation.output = DeleteWaveOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteWave", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_job_log_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeJobLogItems"
        operation.name = "DescribeJobLogItems"
        operation.input = DescribeJobLogItemsInput
        operation.output = DescribeJobLogItemsOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobLogItems", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobLogItems.new
      end)
      service.add_operation(:describe_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = DescribeJobsInput
        operation.output = DescribeJobsOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobs", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobs.new
      end)
      service.add_operation(:describe_launch_configuration_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeLaunchConfigurationTemplates"
        operation.name = "DescribeLaunchConfigurationTemplates"
        operation.input = DescribeLaunchConfigurationTemplatesInput
        operation.output = DescribeLaunchConfigurationTemplatesOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeLaunchConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeLaunchConfigurationTemplates.new
      end)
      service.add_operation(:describe_replication_configuration_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeReplicationConfigurationTemplates"
        operation.name = "DescribeReplicationConfigurationTemplates"
        operation.input = DescribeReplicationConfigurationTemplatesInput
        operation.output = DescribeReplicationConfigurationTemplatesOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeReplicationConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurationTemplates.new
      end)
      service.add_operation(:describe_source_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeSourceServers"
        operation.name = "DescribeSourceServers"
        operation.input = DescribeSourceServersInput
        operation.output = DescribeSourceServersOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceServers.new
      end)
      service.add_operation(:describe_vcenter_clients, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeVcenterClients"
        operation.name = "DescribeVcenterClients"
        operation.input = DescribeVcenterClientsInput
        operation.output = DescribeVcenterClientsOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeVcenterClients", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeVcenterClients.new
      end)
      service.add_operation(:disassociate_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisassociateApplications"
        operation.name = "DisassociateApplications"
        operation.input = DisassociateApplicationsInput
        operation.output = DisassociateApplicationsOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DisassociateApplications", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_source_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisassociateSourceServers"
        operation.name = "DisassociateSourceServers"
        operation.input = DisassociateSourceServersInput
        operation.output = DisassociateSourceServersOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DisassociateSourceServers", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disconnect_from_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisconnectFromService"
        operation.name = "DisconnectFromService"
        operation.input = DisconnectFromServiceInput
        operation.output = DisconnectFromServiceOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectFromService", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:finalize_cutover, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#FinalizeCutover"
        operation.name = "FinalizeCutover"
        operation.input = FinalizeCutoverInput
        operation.output = FinalizeCutoverOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/FinalizeCutover", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetLaunchConfiguration"
        operation.name = "GetLaunchConfiguration"
        operation.input = GetLaunchConfigurationInput
        operation.output = GetLaunchConfigurationOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_network_migration_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetNetworkMigrationDefinition"
        operation.name = "GetNetworkMigrationDefinition"
        operation.input = GetNetworkMigrationDefinitionRequest
        operation.output = GetNetworkMigrationDefinitionOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/GetNetworkMigrationDefinition", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_network_migration_mapper_segment_construct, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetNetworkMigrationMapperSegmentConstruct"
        operation.name = "GetNetworkMigrationMapperSegmentConstruct"
        operation.input = GetNetworkMigrationMapperSegmentConstructRequest
        operation.output = GetNetworkMigrationMapperSegmentConstructResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/GetNetworkMigrationMapperSegmentConstruct", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetReplicationConfiguration"
        operation.name = "GetReplicationConfiguration"
        operation.input = GetReplicationConfigurationInput
        operation.output = GetReplicationConfigurationOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:initialize_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#InitializeService"
        operation.name = "InitializeService"
        operation.input = InitializeServiceInput
        operation.output = InitializeServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/InitializeService", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsInput
        operation.output = ListApplicationsOutput
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListApplications", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = ListConnectorsRequest
        operation.output = ListConnectorsResponse
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListConnectors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_export_errors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListExportErrors"
        operation.name = "ListExportErrors"
        operation.input = ListExportErrorsInput
        operation.output = ListExportErrorsOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExportErrors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExportErrors.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListExports"
        operation.name = "ListExports"
        operation.input = ListExportsInput
        operation.output = ListExportsOutput
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExports", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_import_errors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListImportErrors"
        operation.name = "ListImportErrors"
        operation.input = ListImportErrorsInput
        operation.output = ListImportErrorsOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListImportErrors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportErrors.new
      end)
      service.add_operation(:list_import_file_enrichments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListImportFileEnrichments"
        operation.name = "ListImportFileEnrichments"
        operation.input = ListImportFileEnrichmentsRequest
        operation.output = ListImportFileEnrichmentsResponse
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListImportFileEnrichments", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportFileEnrichments.new
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListImports"
        operation.name = "ListImports"
        operation.input = ListImportsInput
        operation.output = ListImportsOutput
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListImports", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_managed_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListManagedAccounts"
        operation.name = "ListManagedAccounts"
        operation.input = ListManagedAccountsRequest
        operation.output = ListManagedAccountsResponse
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListManagedAccounts", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedAccounts.new
      end)
      service.add_operation(:list_network_migration_analyses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationAnalyses"
        operation.name = "ListNetworkMigrationAnalyses"
        operation.input = ListNetworkMigrationAnalysesRequest
        operation.output = ListNetworkMigrationAnalysesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationAnalyses", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationAnalyses.new
      end)
      service.add_operation(:list_network_migration_analysis_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationAnalysisResults"
        operation.name = "ListNetworkMigrationAnalysisResults"
        operation.input = ListNetworkMigrationAnalysisResultsRequest
        operation.output = ListNetworkMigrationAnalysisResultsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationAnalysisResults", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationAnalysisResults.new
      end)
      service.add_operation(:list_network_migration_code_generation_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationCodeGenerationSegments"
        operation.name = "ListNetworkMigrationCodeGenerationSegments"
        operation.input = ListNetworkMigrationCodeGenerationSegmentsRequest
        operation.output = ListNetworkMigrationCodeGenerationSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationCodeGenerationSegments", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationCodeGenerationSegments.new
      end)
      service.add_operation(:list_network_migration_code_generations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationCodeGenerations"
        operation.name = "ListNetworkMigrationCodeGenerations"
        operation.input = ListNetworkMigrationCodeGenerationsRequest
        operation.output = ListNetworkMigrationCodeGenerationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationCodeGenerations", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationCodeGenerations.new
      end)
      service.add_operation(:list_network_migration_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationDefinitions"
        operation.name = "ListNetworkMigrationDefinitions"
        operation.input = ListNetworkMigrationDefinitionsRequest
        operation.output = ListNetworkMigrationDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationDefinitions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationDefinitions.new
      end)
      service.add_operation(:list_network_migration_deployed_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationDeployedStacks"
        operation.name = "ListNetworkMigrationDeployedStacks"
        operation.input = ListNetworkMigrationDeployedStacksRequest
        operation.output = ListNetworkMigrationDeployedStacksResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationDeployedStacks", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationDeployedStacks.new
      end)
      service.add_operation(:list_network_migration_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationDeployments"
        operation.name = "ListNetworkMigrationDeployments"
        operation.input = ListNetworkMigrationDeploymentsRequest
        operation.output = ListNetworkMigrationDeploymentsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationDeployments", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationDeployments.new
      end)
      service.add_operation(:list_network_migration_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationExecutions"
        operation.name = "ListNetworkMigrationExecutions"
        operation.input = ListNetworkMigrationExecutionsRequest
        operation.output = ListNetworkMigrationExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationExecutions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationExecutions.new
      end)
      service.add_operation(:list_network_migration_mapper_segment_constructs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationMapperSegmentConstructs"
        operation.name = "ListNetworkMigrationMapperSegmentConstructs"
        operation.input = ListNetworkMigrationMapperSegmentConstructsRequest
        operation.output = ListNetworkMigrationMapperSegmentConstructsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationMapperSegmentConstructs", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationMapperSegmentConstructs.new
      end)
      service.add_operation(:list_network_migration_mapper_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationMapperSegments"
        operation.name = "ListNetworkMigrationMapperSegments"
        operation.input = ListNetworkMigrationMapperSegmentsRequest
        operation.output = ListNetworkMigrationMapperSegmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationMapperSegments", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationMapperSegments.new
      end)
      service.add_operation(:list_network_migration_mapping_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationMappingUpdates"
        operation.name = "ListNetworkMigrationMappingUpdates"
        operation.input = ListNetworkMigrationMappingUpdatesRequest
        operation.output = ListNetworkMigrationMappingUpdatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationMappingUpdates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationMappingUpdates.new
      end)
      service.add_operation(:list_network_migration_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListNetworkMigrationMappings"
        operation.name = "ListNetworkMigrationMappings"
        operation.input = ListNetworkMigrationMappingsRequest
        operation.output = ListNetworkMigrationMappingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/ListNetworkMigrationMappings", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListNetworkMigrationMappings.new
      end)
      service.add_operation(:list_source_server_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListSourceServerActions"
        operation.name = "ListSourceServerActions"
        operation.input = ListSourceServerActionsInput
        operation.output = ListSourceServerActionsOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListSourceServerActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceServerActions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_template_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListTemplateActions"
        operation.name = "ListTemplateActions"
        operation.input = ListTemplateActionsInput
        operation.output = ListTemplateActionsOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListTemplateActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateActions.new
      end)
      service.add_operation(:list_waves, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListWaves"
        operation.name = "ListWaves"
        operation.input = ListWavesInput
        operation.output = ListWavesOutput
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListWaves", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWaves.new
      end)
      service.add_operation(:mark_as_archived, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#MarkAsArchived"
        operation.name = "MarkAsArchived"
        operation.input = MarkAsArchivedInput
        operation.output = MarkAsArchivedOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/MarkAsArchived", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:pause_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PauseReplication"
        operation.name = "PauseReplication"
        operation.input = PauseReplicationRequest
        operation.output = PauseReplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/PauseReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:put_source_server_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PutSourceServerAction"
        operation.name = "PutSourceServerAction"
        operation.input = PutSourceServerActionInput
        operation.output = PutSourceServerActionOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/PutSourceServerAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:put_template_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PutTemplateAction"
        operation.name = "PutTemplateAction"
        operation.input = PutTemplateActionInput
        operation.output = PutTemplateActionOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/PutTemplateAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:remove_source_server_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RemoveSourceServerAction"
        operation.name = "RemoveSourceServerAction"
        operation.input = RemoveSourceServerActionInput
        operation.output = RemoveSourceServerActionOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/RemoveSourceServerAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:remove_template_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RemoveTemplateAction"
        operation.name = "RemoveTemplateAction"
        operation.input = RemoveTemplateActionInput
        operation.output = RemoveTemplateActionOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/RemoveTemplateAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:resume_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ResumeReplication"
        operation.name = "ResumeReplication"
        operation.input = ResumeReplicationRequest
        operation.output = ResumeReplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ResumeReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:retry_data_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RetryDataReplication"
        operation.name = "RetryDataReplication"
        operation.input = RetryDataReplicationInput
        operation.output = RetryDataReplicationOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/RetryDataReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_cutover, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartCutover"
        operation.name = "StartCutover"
        operation.input = StartCutoverInput
        operation.output = StartCutoverOutput
        operation.errors << ConflictException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartCutover", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartExport"
        operation.name = "StartExport"
        operation.input = StartExportInput
        operation.output = StartExportOutput
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartExport", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartImport"
        operation.name = "StartImport"
        operation.input = StartImportInput
        operation.output = StartImportOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartImport", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_import_file_enrichment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartImportFileEnrichment"
        operation.name = "StartImportFileEnrichment"
        operation.input = StartImportFileEnrichmentRequest
        operation.output = StartImportFileEnrichmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartImportFileEnrichment", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_network_migration_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartNetworkMigrationAnalysis"
        operation.name = "StartNetworkMigrationAnalysis"
        operation.input = StartNetworkMigrationAnalysisRequest
        operation.output = StartNetworkMigrationAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartNetworkMigrationAnalysis", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_network_migration_code_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartNetworkMigrationCodeGeneration"
        operation.name = "StartNetworkMigrationCodeGeneration"
        operation.input = StartNetworkMigrationCodeGenerationRequest
        operation.output = StartNetworkMigrationCodeGenerationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartNetworkMigrationCodeGeneration", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_network_migration_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartNetworkMigrationDeployment"
        operation.name = "StartNetworkMigrationDeployment"
        operation.input = StartNetworkMigrationDeploymentRequest
        operation.output = StartNetworkMigrationDeploymentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartNetworkMigrationDeployment", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_network_migration_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartNetworkMigrationMapping"
        operation.name = "StartNetworkMigrationMapping"
        operation.input = StartNetworkMigrationMappingRequest
        operation.output = StartNetworkMigrationMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartNetworkMigrationMapping", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_network_migration_mapping_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartNetworkMigrationMappingUpdate"
        operation.name = "StartNetworkMigrationMappingUpdate"
        operation.input = StartNetworkMigrationMappingUpdateRequest
        operation.output = StartNetworkMigrationMappingUpdateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/StartNetworkMigrationMappingUpdate", "method" => "POST", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartReplication"
        operation.name = "StartReplication"
        operation.input = StartReplicationInput
        operation.output = StartReplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartTest"
        operation.name = "StartTest"
        operation.input = StartTestInput
        operation.output = StartTestOutput
        operation.errors << ConflictException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartTest", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:stop_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StopReplication"
        operation.name = "StopReplication"
        operation.input = StopReplicationRequest
        operation.output = StopReplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StopReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_target_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#TerminateTargetInstances"
        operation.name = "TerminateTargetInstances"
        operation.input = TerminateTargetInstancesInput
        operation.output = TerminateTargetInstancesOutput
        operation.errors << ConflictException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/TerminateTargetInstances", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:unarchive_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UnarchiveApplication"
        operation.name = "UnarchiveApplication"
        operation.input = UnarchiveApplicationInput
        operation.output = UnarchiveApplicationOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UnarchiveApplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:unarchive_wave, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UnarchiveWave"
        operation.name = "UnarchiveWave"
        operation.input = UnarchiveWaveInput
        operation.output = UnarchiveWaveOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UnarchiveWave", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationInput
        operation.output = UpdateApplicationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateApplication", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateConnector"
        operation.name = "UpdateConnector"
        operation.input = UpdateConnectorRequest
        operation.output = UpdateConnectorOutput
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateConnector", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateLaunchConfiguration"
        operation.name = "UpdateLaunchConfiguration"
        operation.input = UpdateLaunchConfigurationInput
        operation.output = UpdateLaunchConfigurationOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateLaunchConfigurationTemplate"
        operation.name = "UpdateLaunchConfigurationTemplate"
        operation.input = UpdateLaunchConfigurationTemplateInput
        operation.output = UpdateLaunchConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_network_migration_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateNetworkMigrationDefinition"
        operation.name = "UpdateNetworkMigrationDefinition"
        operation.input = UpdateNetworkMigrationDefinitionRequest
        operation.output = UpdateNetworkMigrationDefinitionOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/UpdateNetworkMigrationDefinition", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_network_migration_mapper_segment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateNetworkMigrationMapperSegment"
        operation.name = "UpdateNetworkMigrationMapperSegment"
        operation.input = UpdateNetworkMigrationMapperSegmentRequest
        operation.output = UpdateNetworkMigrationMapperSegmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/network-migration/UpdateNetworkMigrationMapperSegment", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateReplicationConfiguration"
        operation.name = "UpdateReplicationConfiguration"
        operation.input = UpdateReplicationConfigurationInput
        operation.output = UpdateReplicationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateReplicationConfigurationTemplate"
        operation.name = "UpdateReplicationConfigurationTemplate"
        operation.input = UpdateReplicationConfigurationTemplateInput
        operation.output = UpdateReplicationConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_source_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateSourceServer"
        operation.name = "UpdateSourceServer"
        operation.input = UpdateSourceServerRequest
        operation.output = UpdateSourceServerOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateSourceServer", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_source_server_replication_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateSourceServerReplicationType"
        operation.name = "UpdateSourceServerReplicationType"
        operation.input = UpdateSourceServerReplicationTypeInput
        operation.output = UpdateSourceServerReplicationTypeOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateSourceServerReplicationType", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_wave, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateWave"
        operation.name = "UpdateWave"
        operation.input = UpdateWaveInput
        operation.output = UpdateWaveOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateWave", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
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
