# frozen_string_literal: true

# This is generated code!

module Aws::Mgn
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ARN', name: 'ARN', traits: {"aws.api#arnReference" => {}, "smithy.api#length" => {"min" => 20, "max" => 2048}})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#AccountID', name: 'AccountID', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "[0-9]{12,}"})
    ActionCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ActionCategory', name: 'ActionCategory', traits: {"smithy.api#enum" => [{"value" => "DISASTER_RECOVERY", "name" => "DISASTER_RECOVERY"}, {"value" => "OPERATING_SYSTEM", "name" => "OPERATING_SYSTEM"}, {"value" => "LICENSE_AND_SUBSCRIPTION", "name" => "LICENSE_AND_SUBSCRIPTION"}, {"value" => "VALIDATION", "name" => "VALIDATION"}, {"value" => "OBSERVABILITY", "name" => "OBSERVABILITY"}, {"value" => "REFACTORING", "name" => "REFACTORING"}, {"value" => "SECURITY", "name" => "SECURITY"}, {"value" => "NETWORKING", "name" => "NETWORKING"}, {"value" => "CONFIGURATION", "name" => "CONFIGURATION"}, {"value" => "BACKUP", "name" => "BACKUP"}, {"value" => "OTHER", "name" => "OTHER"}]})
    ActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ActionDescription', name: 'ActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;\n]*$"})
    ActionID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ActionID', name: 'ActionID', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[0-9a-zA-Z]$"})
    ActionIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ActionIDs', name: 'ActionIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ActionName', name: 'ActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Application', name: 'Application', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    ApplicationAggregatedStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ApplicationAggregatedStatus', name: 'ApplicationAggregatedStatus')
    ApplicationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ApplicationDescription', name: 'ApplicationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    ApplicationHealthStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ApplicationHealthStatus', name: 'ApplicationHealthStatus', traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY"}, {"name" => "LAGGING", "value" => "LAGGING"}, {"name" => "ERROR", "value" => "ERROR"}]})
    ApplicationID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ApplicationID', name: 'ApplicationID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^app-[0-9a-zA-Z]{17}$"})
    ApplicationIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ApplicationIDs', name: 'ApplicationIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ApplicationIDsFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ApplicationIDsFilter', name: 'ApplicationIDsFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    ApplicationProgressStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ApplicationProgressStatus', name: 'ApplicationProgressStatus', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "COMPLETED", "value" => "COMPLETED"}]})
    ApplicationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ApplicationsList', name: 'ApplicationsList')
    ArchiveApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ArchiveApplicationInput', name: 'ArchiveApplicationInput')
    ArchiveApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ArchiveApplicationOutput', name: 'ArchiveApplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    ArchiveWaveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ArchiveWaveInput', name: 'ArchiveWaveInput')
    ArchiveWaveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ArchiveWaveOutput', name: 'ArchiveWaveOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    AssociateApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#AssociateApplicationsInput', name: 'AssociateApplicationsInput')
    AssociateApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#AssociateApplicationsOutput', name: 'AssociateApplicationsOutput')
    AssociateSourceServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#AssociateSourceServersInput', name: 'AssociateSourceServersInput')
    AssociateSourceServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#AssociateSourceServersOutput', name: 'AssociateSourceServersOutput')
    AssociateSourceServersRequestSourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#AssociateSourceServersRequestSourceServerIDs', name: 'AssociateSourceServersRequestSourceServerIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    BandwidthThrottling = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#BandwidthThrottling', name: 'BandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    BootMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#BootMode', name: 'BootMode', traits: {"smithy.api#enum" => [{"name" => "LEGACY_BIOS", "value" => "LEGACY_BIOS"}, {"name" => "UEFI", "value" => "UEFI"}, {"name" => "USE_SOURCE", "value" => "USE_SOURCE"}]})
    BoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#BoundedString', name: 'BoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CPU = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CPU', name: 'CPU')
    ChangeServerLifeCycleStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ChangeServerLifeCycleStateInput', name: 'ChangeServerLifeCycleStateInput')
    ChangeServerLifeCycleStateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ChangeServerLifeCycleStateOutput', name: 'ChangeServerLifeCycleStateOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    ChangeServerLifeCycleStateSourceServerLifecycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ChangeServerLifeCycleStateSourceServerLifecycle', name: 'ChangeServerLifeCycleStateSourceServerLifecycle')
    ChangeServerLifeCycleStateSourceServerLifecycleState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ChangeServerLifeCycleStateSourceServerLifecycleState', name: 'ChangeServerLifeCycleStateSourceServerLifecycleState', traits: {"smithy.api#enum" => [{"name" => "READY_FOR_TEST", "value" => "READY_FOR_TEST"}, {"name" => "READY_FOR_CUTOVER", "value" => "READY_FOR_CUTOVER"}, {"name" => "CUTOVER", "value" => "CUTOVER"}]})
    ClientIdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ClientIdempotencyToken', name: 'ClientIdempotencyToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    CloudWatchLogGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#CloudWatchLogGroupName', name: 'CloudWatchLogGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ConflictExceptionErrors', name: 'ConflictExceptionErrors')
    Connector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Connector', name: 'Connector', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    ConnectorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ConnectorArn', name: 'ConnectorArn', traits: {"smithy.api#length" => {"min" => 27, "max" => 100}, "smithy.api#pattern" => "^arn:[\\w-]+:mgn:([a-z]{2}-(gov-)?[a-z]+-\\d{1})?:(\\d{12})?:connector\\/(connector-[0-9a-zA-Z]{17})$"})
    ConnectorID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ConnectorID', name: 'ConnectorID', traits: {"smithy.api#length" => {"min" => 27, "max" => 27}, "smithy.api#pattern" => "^connector-[0-9a-zA-Z]{17}$"})
    ConnectorIDsFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ConnectorIDsFilter', name: 'ConnectorIDsFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ConnectorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ConnectorName', name: 'ConnectorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ConnectorSsmCommandConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ConnectorSsmCommandConfig', name: 'ConnectorSsmCommandConfig')
    ConnectorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ConnectorsList', name: 'ConnectorsList')
    Cpus = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#Cpus', name: 'Cpus', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateApplicationInput', name: 'CreateApplicationInput')
    CreateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateApplicationOutput', name: 'CreateApplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    CreateConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateConnectorOutput', name: 'CreateConnectorOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    CreateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateConnectorRequest', name: 'CreateConnectorRequest')
    CreateLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateLaunchConfigurationTemplateInput', name: 'CreateLaunchConfigurationTemplateInput')
    CreateLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateLaunchConfigurationTemplateOutput', name: 'CreateLaunchConfigurationTemplateOutput')
    CreateReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateReplicationConfigurationTemplateInput', name: 'CreateReplicationConfigurationTemplateInput')
    CreateReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateReplicationConfigurationTemplateOutput', name: 'CreateReplicationConfigurationTemplateOutput')
    CreateWaveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateWaveInput', name: 'CreateWaveInput')
    CreateWaveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#CreateWaveOutput', name: 'CreateWaveOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    DataReplicationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DataReplicationError', name: 'DataReplicationError')
    DataReplicationErrorString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#DataReplicationErrorString', name: 'DataReplicationErrorString', traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}, {"name" => "UNSUPPORTED_VM_CONFIGURATION", "value" => "UNSUPPORTED_VM_CONFIGURATION"}, {"name" => "LAST_SNAPSHOT_JOB_FAILED", "value" => "LAST_SNAPSHOT_JOB_FAILED"}]})
    DataReplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DataReplicationInfo', name: 'DataReplicationInfo')
    DataReplicationInfoReplicatedDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DataReplicationInfoReplicatedDisk', name: 'DataReplicationInfoReplicatedDisk')
    DataReplicationInfoReplicatedDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DataReplicationInfoReplicatedDisks', name: 'DataReplicationInfoReplicatedDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    DataReplicationInitiation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DataReplicationInitiation', name: 'DataReplicationInitiation')
    DataReplicationInitiationStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DataReplicationInitiationStep', name: 'DataReplicationInitiationStep')
    DataReplicationInitiationStepName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#DataReplicationInitiationStepName', name: 'DataReplicationInitiationStepName', traits: {"smithy.api#enum" => [{"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}]})
    DataReplicationInitiationStepStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#DataReplicationInitiationStepStatus', name: 'DataReplicationInitiationStepStatus', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    DataReplicationInitiationSteps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DataReplicationInitiationSteps', name: 'DataReplicationInitiationSteps')
    DataReplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#DataReplicationState', name: 'DataReplicationState', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "PENDING_SNAPSHOT_SHIPPING", "value" => "PENDING_SNAPSHOT_SHIPPING"}, {"name" => "SHIPPING_SNAPSHOT", "value" => "SHIPPING_SNAPSHOT"}]})
    DeleteApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteApplicationInput', name: 'DeleteApplicationInput')
    DeleteApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteApplicationOutput', name: 'DeleteApplicationOutput')
    DeleteConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteConnectorRequest', name: 'DeleteConnectorRequest')
    DeleteJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteJobInput', name: 'DeleteJobInput')
    DeleteJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteJobOutput', name: 'DeleteJobOutput')
    DeleteLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteLaunchConfigurationTemplateInput', name: 'DeleteLaunchConfigurationTemplateInput')
    DeleteLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteLaunchConfigurationTemplateOutput', name: 'DeleteLaunchConfigurationTemplateOutput')
    DeleteReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteReplicationConfigurationTemplateInput', name: 'DeleteReplicationConfigurationTemplateInput')
    DeleteReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteReplicationConfigurationTemplateOutput', name: 'DeleteReplicationConfigurationTemplateOutput')
    DeleteSourceServerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteSourceServerInput', name: 'DeleteSourceServerInput')
    DeleteSourceServerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteSourceServerOutput', name: 'DeleteSourceServerOutput')
    DeleteVcenterClientInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteVcenterClientInput', name: 'DeleteVcenterClientInput')
    DeleteWaveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteWaveInput', name: 'DeleteWaveInput')
    DeleteWaveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DeleteWaveOutput', name: 'DeleteWaveOutput')
    DescribeJobLogItemsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeJobLogItemsInput', name: 'DescribeJobLogItemsInput')
    DescribeJobLogItemsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeJobLogItemsOutput', name: 'DescribeJobLogItemsOutput')
    DescribeJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeJobsInput', name: 'DescribeJobsInput')
    DescribeJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeJobsOutput', name: 'DescribeJobsOutput')
    DescribeJobsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeJobsRequestFilters', name: 'DescribeJobsRequestFilters')
    DescribeJobsRequestFiltersJobIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DescribeJobsRequestFiltersJobIDs', name: 'DescribeJobsRequestFiltersJobIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DescribeLaunchConfigurationTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeLaunchConfigurationTemplatesInput', name: 'DescribeLaunchConfigurationTemplatesInput')
    DescribeLaunchConfigurationTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeLaunchConfigurationTemplatesOutput', name: 'DescribeLaunchConfigurationTemplatesOutput')
    DescribeReplicationConfigurationTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeReplicationConfigurationTemplatesInput', name: 'DescribeReplicationConfigurationTemplatesInput')
    DescribeReplicationConfigurationTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeReplicationConfigurationTemplatesOutput', name: 'DescribeReplicationConfigurationTemplatesOutput')
    DescribeSourceServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeSourceServersInput', name: 'DescribeSourceServersInput')
    DescribeSourceServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeSourceServersOutput', name: 'DescribeSourceServersOutput')
    DescribeSourceServersRequestApplicationIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DescribeSourceServersRequestApplicationIDs', name: 'DescribeSourceServersRequestApplicationIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DescribeSourceServersRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeSourceServersRequestFilters', name: 'DescribeSourceServersRequestFilters')
    DescribeSourceServersRequestFiltersIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DescribeSourceServersRequestFiltersIDs', name: 'DescribeSourceServersRequestFiltersIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DescribeVcenterClientsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeVcenterClientsInput', name: 'DescribeVcenterClientsInput')
    DescribeVcenterClientsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DescribeVcenterClientsOutput', name: 'DescribeVcenterClientsOutput')
    DisassociateApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisassociateApplicationsInput', name: 'DisassociateApplicationsInput')
    DisassociateApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisassociateApplicationsOutput', name: 'DisassociateApplicationsOutput')
    DisassociateSourceServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisassociateSourceServersInput', name: 'DisassociateSourceServersInput')
    DisassociateSourceServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisassociateSourceServersOutput', name: 'DisassociateSourceServersOutput')
    DisassociateSourceServersRequestSourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#DisassociateSourceServersRequestSourceServerIDs', name: 'DisassociateSourceServersRequestSourceServerIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DisconnectFromServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisconnectFromServiceInput', name: 'DisconnectFromServiceInput')
    DisconnectFromServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#DisconnectFromServiceOutput', name: 'DisconnectFromServiceOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    Disk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Disk', name: 'Disk')
    Disks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#Disks', name: 'Disks', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DocumentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#DocumentVersion', name: 'DocumentVersion', traits: {"smithy.api#pattern" => "^(\\$DEFAULT|\\$LATEST|[0-9]+)$"})
    EC2InstanceID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#EC2InstanceID', name: 'EC2InstanceID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    EC2InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#EC2InstanceType', name: 'EC2InstanceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    EC2LaunchConfigurationTemplateID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#EC2LaunchConfigurationTemplateID', name: 'EC2LaunchConfigurationTemplateID', traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^lt-[0-9a-z]{17}$"})
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ErrorDetails', name: 'ErrorDetails')
    ExportErrorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ExportErrorData', name: 'ExportErrorData')
    ExportErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ExportErrors', name: 'ExportErrors')
    ExportID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ExportID', name: 'ExportID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^export-[0-9a-zA-Z]{17}$"})
    ExportStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ExportStatus', name: 'ExportStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    ExportTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ExportTask', name: 'ExportTask')
    ExportTaskError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ExportTaskError', name: 'ExportTaskError')
    ExportTaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ExportTaskSummary', name: 'ExportTaskSummary')
    ExportsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ExportsList', name: 'ExportsList')
    FinalizeCutoverInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#FinalizeCutoverInput', name: 'FinalizeCutoverInput')
    FinalizeCutoverOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#FinalizeCutoverOutput', name: 'FinalizeCutoverOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    FirstBoot = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#FirstBoot', name: 'FirstBoot', traits: {"smithy.api#enum" => [{"value" => "WAITING", "name" => "WAITING"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    GetLaunchConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#GetLaunchConfigurationInput', name: 'GetLaunchConfigurationInput')
    GetLaunchConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#GetLaunchConfigurationOutput', name: 'GetLaunchConfigurationOutput')
    GetReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#GetReplicationConfigurationInput', name: 'GetReplicationConfigurationInput')
    GetReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#GetReplicationConfigurationOutput', name: 'GetReplicationConfigurationOutput')
    IPsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#IPsList', name: 'IPsList')
    ISO8601DatetimeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ISO8601DatetimeString', name: 'ISO8601DatetimeString', traits: {"smithy.api#length" => {"min" => 19, "max" => 32}, "smithy.api#pattern" => "^[1-9][0-9]*-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?Z$"})
    ISO8601DurationString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ISO8601DurationString', name: 'ISO8601DurationString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    IdentificationHints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#IdentificationHints', name: 'IdentificationHints')
    ImportErrorData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportErrorData', name: 'ImportErrorData')
    ImportErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ImportErrorType', name: 'ImportErrorType', traits: {"smithy.api#enum" => [{"name" => "VALIDATION_ERROR", "value" => "VALIDATION_ERROR"}, {"name" => "PROCESSING_ERROR", "value" => "PROCESSING_ERROR"}]})
    ImportErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ImportErrors', name: 'ImportErrors')
    ImportID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ImportID', name: 'ImportID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^import-[0-9a-zA-Z]{17}$"})
    ImportIDsFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ImportIDsFilter', name: 'ImportIDsFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ImportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ImportList', name: 'ImportList')
    ImportStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ImportStatus', name: 'ImportStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}]})
    ImportTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTask', name: 'ImportTask')
    ImportTaskError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTaskError', name: 'ImportTaskError')
    ImportTaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTaskSummary', name: 'ImportTaskSummary')
    ImportTaskSummaryApplications = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTaskSummaryApplications', name: 'ImportTaskSummaryApplications')
    ImportTaskSummaryServers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTaskSummaryServers', name: 'ImportTaskSummaryServers')
    ImportTaskSummaryWaves = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ImportTaskSummaryWaves', name: 'ImportTaskSummaryWaves')
    InitializeServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#InitializeServiceInput', name: 'InitializeServiceInput')
    InitializeServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#InitializeServiceOutput', name: 'InitializeServiceOutput')
    InitiatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#InitiatedBy', name: 'InitiatedBy', traits: {"smithy.api#enum" => [{"value" => "START_TEST", "name" => "START_TEST"}, {"value" => "START_CUTOVER", "name" => "START_CUTOVER"}, {"value" => "DIAGNOSTIC", "name" => "DIAGNOSTIC"}, {"value" => "TERMINATE", "name" => "TERMINATE"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Iops = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#Iops', name: 'Iops', traits: {"smithy.api#range" => {"min" => 100, "max" => 64000}})
    JmesPathString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#JmesPathString', name: 'JmesPathString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+(\\.[a-zA-Z0-9_\\[\\]]+)*$"})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Job', name: 'Job')
    JobID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#JobID', name: 'JobID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^mgnjob-[0-9a-zA-Z]{17}$"})
    JobLog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#JobLog', name: 'JobLog')
    JobLogEvent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#JobLogEvent', name: 'JobLogEvent', traits: {"smithy.api#enum" => [{"name" => "JOB_START", "value" => "JOB_START"}, {"name" => "SERVER_SKIPPED", "value" => "SERVER_SKIPPED"}, {"name" => "CLEANUP_START", "value" => "CLEANUP_START"}, {"name" => "CLEANUP_END", "value" => "CLEANUP_END"}, {"name" => "CLEANUP_FAIL", "value" => "CLEANUP_FAIL"}, {"name" => "SNAPSHOT_START", "value" => "SNAPSHOT_START"}, {"name" => "SNAPSHOT_END", "value" => "SNAPSHOT_END"}, {"name" => "SNAPSHOT_FAIL", "value" => "SNAPSHOT_FAIL"}, {"name" => "USING_PREVIOUS_SNAPSHOT", "value" => "USING_PREVIOUS_SNAPSHOT"}, {"name" => "CONVERSION_START", "value" => "CONVERSION_START"}, {"name" => "CONVERSION_END", "value" => "CONVERSION_END"}, {"name" => "CONVERSION_FAIL", "value" => "CONVERSION_FAIL"}, {"name" => "LAUNCH_START", "value" => "LAUNCH_START"}, {"name" => "LAUNCH_FAILED", "value" => "LAUNCH_FAILED"}, {"name" => "JOB_CANCEL", "value" => "JOB_CANCEL"}, {"name" => "JOB_END", "value" => "JOB_END"}]})
    JobLogEventData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#JobLogEventData', name: 'JobLogEventData')
    JobLogs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#JobLogs', name: 'JobLogs')
    JobPostLaunchActionsLaunchStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#JobPostLaunchActionsLaunchStatus', name: 'JobPostLaunchActionsLaunchStatus')
    JobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#JobStatus', name: 'JobStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    JobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#JobType', name: 'JobType', traits: {"smithy.api#enum" => [{"value" => "LAUNCH", "name" => "LAUNCH"}, {"value" => "TERMINATE", "name" => "TERMINATE"}]})
    JobsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#JobsList', name: 'JobsList')
    LargeBoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#LargeBoundedString', name: 'LargeBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    LaunchConfigurationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LaunchConfigurationTemplate', name: 'LaunchConfigurationTemplate')
    LaunchConfigurationTemplateID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#LaunchConfigurationTemplateID', name: 'LaunchConfigurationTemplateID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^lct-[0-9a-zA-Z]{17}$"})
    LaunchConfigurationTemplateIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#LaunchConfigurationTemplateIDs', name: 'LaunchConfigurationTemplateIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchConfigurationTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#LaunchConfigurationTemplates', name: 'LaunchConfigurationTemplates', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchDisposition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#LaunchDisposition', name: 'LaunchDisposition', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "STARTED", "value" => "STARTED"}]})
    LaunchStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#LaunchStatus', name: 'LaunchStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    LaunchTemplateDiskConf = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LaunchTemplateDiskConf', name: 'LaunchTemplateDiskConf')
    LaunchedInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LaunchedInstance', name: 'LaunchedInstance')
    Licensing = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Licensing', name: 'Licensing')
    LifeCycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycle', name: 'LifeCycle')
    LifeCycleLastCutover = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastCutover', name: 'LifeCycleLastCutover')
    LifeCycleLastCutoverFinalized = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastCutoverFinalized', name: 'LifeCycleLastCutoverFinalized')
    LifeCycleLastCutoverInitiated = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastCutoverInitiated', name: 'LifeCycleLastCutoverInitiated')
    LifeCycleLastCutoverReverted = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastCutoverReverted', name: 'LifeCycleLastCutoverReverted')
    LifeCycleLastTest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastTest', name: 'LifeCycleLastTest')
    LifeCycleLastTestFinalized = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastTestFinalized', name: 'LifeCycleLastTestFinalized')
    LifeCycleLastTestInitiated = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastTestInitiated', name: 'LifeCycleLastTestInitiated')
    LifeCycleLastTestReverted = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#LifeCycleLastTestReverted', name: 'LifeCycleLastTestReverted')
    LifeCycleState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#LifeCycleState', name: 'LifeCycleState', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "NOT_READY", "value" => "NOT_READY"}, {"name" => "READY_FOR_TEST", "value" => "READY_FOR_TEST"}, {"name" => "TESTING", "value" => "TESTING"}, {"name" => "READY_FOR_CUTOVER", "value" => "READY_FOR_CUTOVER"}, {"name" => "CUTTING_OVER", "value" => "CUTTING_OVER"}, {"name" => "CUTOVER", "value" => "CUTOVER"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "DISCOVERED", "value" => "DISCOVERED"}, {"name" => "PENDING_INSTALLATION", "value" => "PENDING_INSTALLATION"}]})
    LifeCycleStates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#LifeCycleStates', name: 'LifeCycleStates', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListApplicationsInput', name: 'ListApplicationsInput')
    ListApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListApplicationsOutput', name: 'ListApplicationsOutput')
    ListApplicationsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListApplicationsRequestFilters', name: 'ListApplicationsRequestFilters')
    ListConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListConnectorsRequest', name: 'ListConnectorsRequest')
    ListConnectorsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListConnectorsRequestFilters', name: 'ListConnectorsRequestFilters')
    ListConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListConnectorsResponse', name: 'ListConnectorsResponse')
    ListExportErrorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListExportErrorsInput', name: 'ListExportErrorsInput')
    ListExportErrorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListExportErrorsOutput', name: 'ListExportErrorsOutput')
    ListExportsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListExportsInput', name: 'ListExportsInput')
    ListExportsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListExportsOutput', name: 'ListExportsOutput')
    ListExportsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListExportsRequestFilters', name: 'ListExportsRequestFilters')
    ListExportsRequestFiltersExportIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ListExportsRequestFiltersExportIDs', name: 'ListExportsRequestFiltersExportIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListImportErrorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListImportErrorsInput', name: 'ListImportErrorsInput')
    ListImportErrorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListImportErrorsOutput', name: 'ListImportErrorsOutput')
    ListImportsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListImportsInput', name: 'ListImportsInput')
    ListImportsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListImportsOutput', name: 'ListImportsOutput')
    ListImportsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListImportsRequestFilters', name: 'ListImportsRequestFilters')
    ListManagedAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListManagedAccountsRequest', name: 'ListManagedAccountsRequest')
    ListManagedAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListManagedAccountsResponse', name: 'ListManagedAccountsResponse')
    ListSourceServerActionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListSourceServerActionsInput', name: 'ListSourceServerActionsInput')
    ListSourceServerActionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListSourceServerActionsOutput', name: 'ListSourceServerActionsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTemplateActionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListTemplateActionsInput', name: 'ListTemplateActionsInput')
    ListTemplateActionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListTemplateActionsOutput', name: 'ListTemplateActionsOutput')
    ListWavesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListWavesInput', name: 'ListWavesInput')
    ListWavesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListWavesOutput', name: 'ListWavesOutput')
    ListWavesRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ListWavesRequestFilters', name: 'ListWavesRequestFilters')
    ManagedAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ManagedAccount', name: 'ManagedAccount')
    ManagedAccounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ManagedAccounts', name: 'ManagedAccounts', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MarkAsArchivedInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#MarkAsArchivedInput', name: 'MarkAsArchivedInput')
    MarkAsArchivedOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#MarkAsArchivedOutput', name: 'MarkAsArchivedOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    MaxResultsType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#MaxResultsType', name: 'MaxResultsType', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#NetworkInterfaces', name: 'NetworkInterfaces', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    OS = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#OS', name: 'OS')
    OperatingSystemString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#OperatingSystemString', name: 'OperatingSystemString', traits: {"smithy.api#pattern" => "^(linux|windows)$"})
    OrderType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#OrderType', name: 'OrderType', traits: {"smithy.api#range" => {"min" => 1001, "max" => 10000}})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ParticipatingServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ParticipatingServer', name: 'ParticipatingServer')
    ParticipatingServers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ParticipatingServers', name: 'ParticipatingServers')
    PauseReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PauseReplicationOutput', name: 'PauseReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    PauseReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PauseReplicationRequest', name: 'PauseReplicationRequest')
    PositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#PositiveInteger', name: 'PositiveInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    PostLaunchActionExecutionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#PostLaunchActionExecutionStatus', name: 'PostLaunchActionExecutionStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    PostLaunchActions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PostLaunchActions', name: 'PostLaunchActions')
    PostLaunchActionsDeploymentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#PostLaunchActionsDeploymentType', name: 'PostLaunchActionsDeploymentType', traits: {"smithy.api#enum" => [{"name" => "TEST_AND_CUTOVER", "value" => "TEST_AND_CUTOVER"}, {"name" => "CUTOVER_ONLY", "value" => "CUTOVER_ONLY"}, {"name" => "TEST_ONLY", "value" => "TEST_ONLY"}]})
    PostLaunchActionsLaunchStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#PostLaunchActionsLaunchStatusList', name: 'PostLaunchActionsLaunchStatusList')
    PostLaunchActionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PostLaunchActionsStatus', name: 'PostLaunchActionsStatus')
    PutSourceServerActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PutSourceServerActionInput', name: 'PutSourceServerActionInput')
    PutSourceServerActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PutSourceServerActionOutput', name: 'PutSourceServerActionOutput')
    PutTemplateActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PutTemplateActionInput', name: 'PutTemplateActionInput')
    PutTemplateActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#PutTemplateActionOutput', name: 'PutTemplateActionOutput')
    RemoveSourceServerActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RemoveSourceServerActionInput', name: 'RemoveSourceServerActionInput')
    RemoveSourceServerActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RemoveSourceServerActionOutput', name: 'RemoveSourceServerActionOutput')
    RemoveTemplateActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RemoveTemplateActionInput', name: 'RemoveTemplateActionInput')
    RemoveTemplateActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RemoveTemplateActionOutput', name: 'RemoveTemplateActionOutput')
    ReplicationConfigurationDataPlaneRouting = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationDataPlaneRouting', name: 'ReplicationConfigurationDataPlaneRouting', traits: {"smithy.api#enum" => [{"value" => "PRIVATE_IP", "name" => "PRIVATE_IP"}, {"value" => "PUBLIC_IP", "name" => "PUBLIC_IP"}]})
    ReplicationConfigurationDefaultLargeStagingDiskType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationDefaultLargeStagingDiskType', name: 'ReplicationConfigurationDefaultLargeStagingDiskType', traits: {"smithy.api#enum" => [{"value" => "GP2", "name" => "GP2"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "GP3", "name" => "GP3"}]})
    ReplicationConfigurationEbsEncryption = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationEbsEncryption', name: 'ReplicationConfigurationEbsEncryption', traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "CUSTOM", "name" => "CUSTOM"}]})
    ReplicationConfigurationReplicatedDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationReplicatedDisk', name: 'ReplicationConfigurationReplicatedDisk')
    ReplicationConfigurationReplicatedDiskStagingDiskType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationReplicatedDiskStagingDiskType', name: 'ReplicationConfigurationReplicatedDiskStagingDiskType', traits: {"smithy.api#enum" => [{"value" => "AUTO", "name" => "AUTO"}, {"value" => "GP2", "name" => "GP2"}, {"value" => "IO1", "name" => "IO1"}, {"value" => "SC1", "name" => "SC1"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "STANDARD", "name" => "STANDARD"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "IO2", "name" => "IO2"}]})
    ReplicationConfigurationReplicatedDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationReplicatedDisks', name: 'ReplicationConfigurationReplicatedDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ReplicationConfigurationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationTemplate', name: 'ReplicationConfigurationTemplate')
    ReplicationConfigurationTemplateID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationTemplateID', name: 'ReplicationConfigurationTemplateID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rct-[0-9a-zA-Z]{17}$"})
    ReplicationConfigurationTemplateIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationTemplateIDs', name: 'ReplicationConfigurationTemplateIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ReplicationConfigurationTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ReplicationConfigurationTemplates', name: 'ReplicationConfigurationTemplates')
    ReplicationServersSecurityGroupsIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ReplicationServersSecurityGroupsIDs', name: 'ReplicationServersSecurityGroupsIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    ReplicationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ReplicationType', name: 'ReplicationType', traits: {"smithy.api#enum" => [{"name" => "AGENT_BASED", "value" => "AGENT_BASED"}, {"name" => "SNAPSHOT_SHIPPING", "value" => "SNAPSHOT_SHIPPING"}]})
    ReplicationTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ReplicationTypes', name: 'ReplicationTypes', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResumeReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ResumeReplicationOutput', name: 'ResumeReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    ResumeReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ResumeReplicationRequest', name: 'ResumeReplicationRequest')
    RetryDataReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RetryDataReplicationInput', name: 'RetryDataReplicationInput')
    RetryDataReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#RetryDataReplicationOutput', name: 'RetryDataReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9.\\-_]{1,255}$"})
    S3BucketSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#S3BucketSource', name: 'S3BucketSource')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#S3Key', name: 'S3Key', traits: {"smithy.api#pattern" => "^[^\\x00]{1,1020}\\.csv$"})
    S3LogBucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#S3LogBucketName', name: 'S3LogBucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SecretArn', name: 'SecretArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 100}, "smithy.api#pattern" => "^arn:[\\w-]+:secretsmanager:([a-z]{2}-(gov-)?[a-z]+-\\d{1})?:(\\d{12})?:secret:(.+)$"})
    SecurityGroupID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SecurityGroupID', name: 'SecurityGroupID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmallBoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SmallBoundedString', name: 'SmallBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SourceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SourceProperties', name: 'SourceProperties')
    SourceServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SourceServer', name: 'SourceServer', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    SourceServerActionDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SourceServerActionDocument', name: 'SourceServerActionDocument')
    SourceServerActionDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#SourceServerActionDocuments', name: 'SourceServerActionDocuments', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SourceServerActionsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SourceServerActionsRequestFilters', name: 'SourceServerActionsRequestFilters')
    SourceServerConnectorAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SourceServerConnectorAction', name: 'SourceServerConnectorAction')
    SourceServerID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SourceServerID', name: 'SourceServerID', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^s-[0-9a-zA-Z]{17}$"})
    SourceServersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#SourceServersList', name: 'SourceServersList')
    SsmDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SsmDocument', name: 'SsmDocument')
    SsmDocumentExternalParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mgn#SsmDocumentExternalParameters', name: 'SsmDocumentExternalParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SsmDocumentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmDocumentName', name: 'SsmDocumentName', traits: {"smithy.api#length" => {"min" => 3, "max" => 172}, "smithy.api#pattern" => "^([A-Za-z0-9/:_\\.-])+$"})
    SsmDocumentParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmDocumentParameterName', name: 'SsmDocumentParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    SsmDocumentParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mgn#SsmDocumentParameters', name: 'SsmDocumentParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    SsmDocumentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmDocumentType', name: 'SsmDocumentType', traits: {"smithy.api#enum" => [{"value" => "AUTOMATION", "name" => "AUTOMATION"}, {"value" => "COMMAND", "name" => "COMMAND"}]})
    SsmDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#SsmDocuments', name: 'SsmDocuments', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SsmExternalParameter = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mgn#SsmExternalParameter', name: 'SsmExternalParameter')
    SsmInstanceID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmInstanceID', name: 'SsmInstanceID', traits: {"smithy.api#length" => {"min" => 19, "max" => 20}, "smithy.api#pattern" => "(^i-[0-9a-zA-Z]{17}$)|(^mi-[0-9a-zA-Z]{17}$)"})
    SsmParameterStoreParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#SsmParameterStoreParameter', name: 'SsmParameterStoreParameter')
    SsmParameterStoreParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmParameterStoreParameterName', name: 'SsmParameterStoreParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9_\\.-])+$"})
    SsmParameterStoreParameterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SsmParameterStoreParameterType', name: 'SsmParameterStoreParameterType', traits: {"smithy.api#enum" => [{"name" => "STRING", "value" => "STRING"}]})
    SsmParameterStoreParameters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#SsmParameterStoreParameters', name: 'SsmParameterStoreParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    StartCutoverInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartCutoverInput', name: 'StartCutoverInput')
    StartCutoverOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartCutoverOutput', name: 'StartCutoverOutput')
    StartCutoverRequestSourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#StartCutoverRequestSourceServerIDs', name: 'StartCutoverRequestSourceServerIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartExportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartExportInput', name: 'StartExportInput')
    StartExportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartExportOutput', name: 'StartExportOutput')
    StartImportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartImportInput', name: 'StartImportInput')
    StartImportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartImportOutput', name: 'StartImportOutput')
    StartReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartReplicationInput', name: 'StartReplicationInput')
    StartReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartReplicationOutput', name: 'StartReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    StartTestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartTestInput', name: 'StartTestInput')
    StartTestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StartTestOutput', name: 'StartTestOutput')
    StartTestRequestSourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#StartTestRequestSourceServerIDs', name: 'StartTestRequestSourceServerIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StopReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StopReplicationOutput', name: 'StopReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    StopReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#StopReplicationRequest', name: 'StopReplicationRequest')
    StrictlyPositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#StrictlyPositiveInteger', name: 'StrictlyPositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    SubnetID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#SubnetID', name: 'SubnetID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#TagKeys', name: 'TagKeys', traits: {"smithy.api#sensitive" => {}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#TagResourceInput', name: 'TagResourceInput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mgn#TagsMap', name: 'TagsMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TargetInstanceTypeRightSizingMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#TargetInstanceTypeRightSizingMethod', name: 'TargetInstanceTypeRightSizingMethod', traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "BASIC", "value" => "BASIC"}]})
    TemplateActionDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#TemplateActionDocument', name: 'TemplateActionDocument')
    TemplateActionDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#TemplateActionDocuments', name: 'TemplateActionDocuments', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateActionsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#TemplateActionsRequestFilters', name: 'TemplateActionsRequestFilters')
    TerminateTargetInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#TerminateTargetInstancesInput', name: 'TerminateTargetInstancesInput')
    TerminateTargetInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#TerminateTargetInstancesOutput', name: 'TerminateTargetInstancesOutput')
    TerminateTargetInstancesRequestSourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#TerminateTargetInstancesRequestSourceServerIDs', name: 'TerminateTargetInstancesRequestSourceServerIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Throughput = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mgn#Throughput', name: 'Throughput', traits: {"smithy.api#range" => {"min" => 125, "max" => 1000}})
    UnarchiveApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UnarchiveApplicationInput', name: 'UnarchiveApplicationInput')
    UnarchiveApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UnarchiveApplicationOutput', name: 'UnarchiveApplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    UnarchiveWaveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UnarchiveWaveInput', name: 'UnarchiveWaveInput')
    UnarchiveWaveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UnarchiveWaveOutput', name: 'UnarchiveWaveOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    UninitializedAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UninitializedAccountException', name: 'UninitializedAccountException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UntagResourceInput', name: 'UntagResourceInput')
    UpdateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateApplicationInput', name: 'UpdateApplicationInput')
    UpdateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateApplicationOutput', name: 'UpdateApplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ApplicationResource"}]})
    UpdateConnectorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateConnectorOutput', name: 'UpdateConnectorOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#ConnectorResource"}]})
    UpdateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateConnectorRequest', name: 'UpdateConnectorRequest')
    UpdateLaunchConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateLaunchConfigurationInput', name: 'UpdateLaunchConfigurationInput')
    UpdateLaunchConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateLaunchConfigurationOutput', name: 'UpdateLaunchConfigurationOutput')
    UpdateLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateLaunchConfigurationTemplateInput', name: 'UpdateLaunchConfigurationTemplateInput')
    UpdateLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateLaunchConfigurationTemplateOutput', name: 'UpdateLaunchConfigurationTemplateOutput')
    UpdateReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateReplicationConfigurationInput', name: 'UpdateReplicationConfigurationInput')
    UpdateReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateReplicationConfigurationOutput', name: 'UpdateReplicationConfigurationOutput')
    UpdateReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateReplicationConfigurationTemplateInput', name: 'UpdateReplicationConfigurationTemplateInput')
    UpdateReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateReplicationConfigurationTemplateOutput', name: 'UpdateReplicationConfigurationTemplateOutput')
    UpdateSourceServerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateSourceServerOutput', name: 'UpdateSourceServerOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    UpdateSourceServerReplicationTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateSourceServerReplicationTypeInput', name: 'UpdateSourceServerReplicationTypeInput')
    UpdateSourceServerReplicationTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateSourceServerReplicationTypeOutput', name: 'UpdateSourceServerReplicationTypeOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#SourceServerResource"}]})
    UpdateSourceServerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateSourceServerRequest', name: 'UpdateSourceServerRequest')
    UpdateWaveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateWaveInput', name: 'UpdateWaveInput')
    UpdateWaveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#UpdateWaveOutput', name: 'UpdateWaveOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VcenterClient = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#VcenterClient', name: 'VcenterClient')
    VcenterClientID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#VcenterClientID', name: 'VcenterClientID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^vcc-[0-9a-zA-Z]{17}$"})
    VcenterClientList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#VcenterClientList', name: 'VcenterClientList')
    VolumeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#VolumeType', name: 'VolumeType', traits: {"smithy.api#enum" => [{"name" => "io1", "value" => "io1"}, {"name" => "io2", "value" => "io2"}, {"name" => "gp3", "value" => "gp3"}, {"name" => "gp2", "value" => "gp2"}, {"name" => "st1", "value" => "st1"}, {"name" => "sc1", "value" => "sc1"}, {"name" => "standard", "value" => "standard"}]})
    Wave = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#Wave', name: 'Wave', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mgn#WaveResource"}]})
    WaveAggregatedStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mgn#WaveAggregatedStatus', name: 'WaveAggregatedStatus')
    WaveDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#WaveDescription', name: 'WaveDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}, "smithy.api#pattern" => "^[^\\x00]*$"})
    WaveHealthStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#WaveHealthStatus', name: 'WaveHealthStatus', traits: {"smithy.api#enum" => [{"name" => "HEALTHY", "value" => "HEALTHY"}, {"name" => "LAGGING", "value" => "LAGGING"}, {"name" => "ERROR", "value" => "ERROR"}]})
    WaveID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#WaveID', name: 'WaveID', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^wave-[0-9a-zA-Z]{17}$"})
    WaveIDsFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#WaveIDsFilter', name: 'WaveIDsFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    WaveName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#WaveName', name: 'WaveName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s\\x00]( *[^\\s\\x00])*$"})
    WaveProgressStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mgn#WaveProgressStatus', name: 'WaveProgressStatus', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "COMPLETED", "value" => "COMPLETED"}]})
    WavesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mgn#WavesList', name: 'WavesList')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID)
    Application.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>"}))
    Application.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Application ARN.</p>"}))
    Application.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    Application.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    Application.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Application archival status.</p>"}))
    Application.add_member(:application_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: 'applicationAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status.</p>"}))
    Application.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Application creation dateTime.</p>"}))
    Application.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Application last modified dateTime.</p>"}))
    Application.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    Application.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Application wave ID.</p>"}))
    Application.type = Types::Application
    ApplicationAggregatedStatus.add_member(:last_update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastUpdateDateTime', traits: {"smithy.api#documentation" => "<p>Application aggregated status last update dateTime.</p>"}))
    ApplicationAggregatedStatus.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationHealthStatus, location_name: 'healthStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status health status.</p>"}))
    ApplicationAggregatedStatus.add_member(:progress_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationProgressStatus, location_name: 'progressStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status progress status.</p>"}))
    ApplicationAggregatedStatus.add_member(:total_source_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'totalSourceServers', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Application aggregated status total source servers amount.</p>"}))
    ApplicationAggregatedStatus.type = Types::ApplicationAggregatedStatus
    ApplicationIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID)
    ApplicationIDsFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID)
    ApplicationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    ArchiveApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    ArchiveApplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    ArchiveApplicationInput.type = Types::ArchiveApplicationInput
    ArchiveApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>"}))
    ArchiveApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Application ARN.</p>"}))
    ArchiveApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    ArchiveApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    ArchiveApplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Application archival status.</p>"}))
    ArchiveApplicationOutput.add_member(:application_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: 'applicationAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status.</p>"}))
    ArchiveApplicationOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Application creation dateTime.</p>"}))
    ArchiveApplicationOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Application last modified dateTime.</p>"}))
    ArchiveApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    ArchiveApplicationOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Application wave ID.</p>"}))
    ArchiveApplicationOutput.type = Types::ArchiveApplicationOutput
    ArchiveWaveInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    ArchiveWaveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    ArchiveWaveInput.type = Types::ArchiveWaveInput
    ArchiveWaveOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>"}))
    ArchiveWaveOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Wave ARN.</p>"}))
    ArchiveWaveOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    ArchiveWaveOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    ArchiveWaveOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Wave archival status.</p>"}))
    ArchiveWaveOutput.add_member(:wave_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: 'waveAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status.</p>"}))
    ArchiveWaveOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Wave creation dateTime.</p>"}))
    ArchiveWaveOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Wave last modified dateTime.</p>"}))
    ArchiveWaveOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    ArchiveWaveOutput.type = Types::ArchiveWaveOutput
    AssociateApplicationsInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    AssociateApplicationsInput.add_member(:application_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationIDs, location_name: 'applicationIDs', traits: {"smithy.api#documentation" => "<p>Application IDs list.</p>", "smithy.api#required" => {}}))
    AssociateApplicationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    AssociateApplicationsInput.type = Types::AssociateApplicationsInput
    AssociateApplicationsOutput.type = Types::AssociateApplicationsOutput
    AssociateSourceServersInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    AssociateSourceServersInput.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceServersRequestSourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Source server IDs list.</p>", "smithy.api#required" => {}}))
    AssociateSourceServersInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    AssociateSourceServersInput.type = Types::AssociateSourceServersInput
    AssociateSourceServersOutput.type = Types::AssociateSourceServersOutput
    AssociateSourceServersRequestSourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    CPU.add_member(:cores, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'cores', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of CPU cores on the source server.</p>"}))
    CPU.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The source server's CPU model name.</p>"}))
    CPU.type = Types::CPU
    ChangeServerLifeCycleStateInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The request to change the source server migration lifecycle state by source server ID.</p>", "smithy.api#required" => {}}))
    ChangeServerLifeCycleStateInput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>The request to change the source server migration lifecycle state.</p>", "smithy.api#required" => {}}))
    ChangeServerLifeCycleStateInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>The request to change the source server migration account ID.</p>"}))
    ChangeServerLifeCycleStateInput.type = Types::ChangeServerLifeCycleStateInput
    ChangeServerLifeCycleStateOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    ChangeServerLifeCycleStateOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    ChangeServerLifeCycleStateOutput.type = Types::ChangeServerLifeCycleStateOutput
    ChangeServerLifeCycleStateSourceServerLifecycle.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycleState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The request to change the source server migration lifecycle state.</p>", "smithy.api#required" => {}}))
    ChangeServerLifeCycleStateSourceServerLifecycle.type = Types::ChangeServerLifeCycleStateSourceServerLifecycle
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>A conflict occurred when prompting for the Resource ID.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>A conflict occurred when prompting for resource type.</p>"}))
    ConflictException.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Conflict Exception specific errors.</p>"}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails)
    Connector.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID, location_name: 'connectorID', traits: {"smithy.api#documentation" => "<p>Connector ID.</p>"}))
    Connector.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Connector name.</p>"}))
    Connector.add_member(:ssm_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmInstanceID, location_name: 'ssmInstanceID', traits: {"smithy.api#documentation" => "<p>Connector SSM instance ID.</p>"}))
    Connector.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Connector arn.</p>"}))
    Connector.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Connector tags.</p>"}))
    Connector.add_member(:ssm_command_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: 'ssmCommandConfig', traits: {"smithy.api#documentation" => "<p>Connector SSM command config.</p>"}))
    Connector.type = Types::Connector
    ConnectorIDsFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID)
    ConnectorSsmCommandConfig.add_member(:s3_output_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 's3OutputEnabled', traits: {"smithy.api#documentation" => "<p>Connector SSM command config S3 output enabled.</p>", "smithy.api#required" => {}}))
    ConnectorSsmCommandConfig.add_member(:output_s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'outputS3BucketName', traits: {"smithy.api#documentation" => "<p>Connector SSM command config output S3 bucket name.</p>"}))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_output_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'cloudWatchOutputEnabled', traits: {"smithy.api#documentation" => "<p>Connector SSM command config CloudWatch output enabled.</p>", "smithy.api#required" => {}}))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: 'cloudWatchLogGroupName', traits: {"smithy.api#documentation" => "<p>Connector SSM command config CloudWatch log group name.</p>"}))
    ConnectorSsmCommandConfig.type = Types::ConnectorSsmCommandConfig
    ConnectorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connector)
    Cpus.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CPU)
    CreateApplicationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    CreateApplicationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    CreateApplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>"}))
    CreateApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Application ARN.</p>"}))
    CreateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    CreateApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    CreateApplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Application archival status.</p>"}))
    CreateApplicationOutput.add_member(:application_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: 'applicationAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status.</p>"}))
    CreateApplicationOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Application creation dateTime.</p>"}))
    CreateApplicationOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Application last modified dateTime.</p>"}))
    CreateApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    CreateApplicationOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Application wave ID.</p>"}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateConnectorOutput.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID, location_name: 'connectorID', traits: {"smithy.api#documentation" => "<p>Connector ID.</p>"}))
    CreateConnectorOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Connector name.</p>"}))
    CreateConnectorOutput.add_member(:ssm_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmInstanceID, location_name: 'ssmInstanceID', traits: {"smithy.api#documentation" => "<p>Connector SSM instance ID.</p>"}))
    CreateConnectorOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Connector arn.</p>"}))
    CreateConnectorOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Connector tags.</p>"}))
    CreateConnectorOutput.add_member(:ssm_command_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: 'ssmCommandConfig', traits: {"smithy.api#documentation" => "<p>Connector SSM command config.</p>"}))
    CreateConnectorOutput.type = Types::CreateConnectorOutput
    CreateConnectorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Create Connector request name.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:ssm_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmInstanceID, location_name: 'ssmInstanceID', traits: {"smithy.api#documentation" => "<p>Create Connector request SSM instance ID.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Create Connector request tags.</p>"}))
    CreateConnectorRequest.add_member(:ssm_command_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: 'ssmCommandConfig', traits: {"smithy.api#documentation" => "<p>Create Connector request SSM command config.</p>"}))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateLaunchConfigurationTemplateInput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions', traits: {"smithy.api#documentation" => "<p>Launch configuration template post launch actions.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration template map auto tagging MPE ID.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Request to associate tags during creation of a Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private Ip.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate public Ip address.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing'))
    CreateLaunchConfigurationTemplateInput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration template boot mode.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:small_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'smallVolumeMaxSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Small volume maximum size.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:small_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'smallVolumeConf', traits: {"smithy.api#documentation" => "<p>Small volume config.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:large_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'largeVolumeConf', traits: {"smithy.api#documentation" => "<p>Large volume config.</p>"}))
    CreateLaunchConfigurationTemplateInput.type = Types::CreateLaunchConfigurationTemplateInput
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>ID of the Launch Configuration Template.</p>", "smithy.api#required" => {}}))
    CreateLaunchConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions', traits: {"smithy.api#documentation" => "<p>Post Launch Actions of the Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration template map auto tagging MPE ID.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags of the Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2LaunchConfigurationTemplateID, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>EC2 launch template ID.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private Ip.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate public Ip address.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing'))
    CreateLaunchConfigurationTemplateOutput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration template boot mode.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:small_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'smallVolumeMaxSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Small volume maximum size.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:small_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'smallVolumeConf', traits: {"smithy.api#documentation" => "<p>Small volume config.</p>"}))
    CreateLaunchConfigurationTemplateOutput.add_member(:large_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'largeVolumeConf', traits: {"smithy.api#documentation" => "<p>Large volume config.</p>"}))
    CreateLaunchConfigurationTemplateOutput.type = Types::CreateLaunchConfigurationTemplateOutput
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Request to configure the Replication Server Security group ID during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Request to configure the default large staging disk EBS volume type during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Request to configure EBS encryption during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Request to configure an EBS encryption key during Replication Settings template creation.</p>"}))
    CreateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Request to configure bandwidth throttling during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Request to configure  data plane routing during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Request to create Public IP during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Request to configure Staging Area tags during Replication Settings template creation.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Request to use Fips Endpoint during Replication Settings template creation.</p>"}))
    CreateReplicationConfigurationTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Request to configure tags during Replication Settings template creation.</p>"}))
    CreateReplicationConfigurationTemplateInput.type = Types::CreateReplicationConfigurationTemplateInput
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ID.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ARN.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area subnet ID.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Replication Configuration template associate default Application Migration Service Security group.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server Security Groups IDs.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server instance type.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Dedicated Replication Server.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use default large Staging Disk type.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption key ARN.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration template bandwidth throttling.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Replication Configuration template data plane routing.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Replication Configuration template create Public IP.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area Tags.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Fips Endpoint.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Tags.</p>"}))
    CreateReplicationConfigurationTemplateOutput.type = Types::CreateReplicationConfigurationTemplateOutput
    CreateWaveInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>", "smithy.api#required" => {}}))
    CreateWaveInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    CreateWaveInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    CreateWaveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    CreateWaveInput.type = Types::CreateWaveInput
    CreateWaveOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>"}))
    CreateWaveOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Wave ARN.</p>"}))
    CreateWaveOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    CreateWaveOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    CreateWaveOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Wave archival status.</p>"}))
    CreateWaveOutput.add_member(:wave_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: 'waveAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status.</p>"}))
    CreateWaveOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Wave creation dateTime.</p>"}))
    CreateWaveOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Wave last modified dateTime.</p>"}))
    CreateWaveOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    CreateWaveOutput.type = Types::CreateWaveOutput
    DataReplicationError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    DataReplicationError.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    DataReplicationError.type = Types::DataReplicationError
    DataReplicationInfo.add_member(:lag_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: 'lagDuration', traits: {"smithy.api#documentation" => "<p>Request to query data replication lag duration.</p>"}))
    DataReplicationInfo.add_member(:eta_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'etaDateTime', traits: {"smithy.api#documentation" => "<p>Request to query the time when data replication will be complete.</p>"}))
    DataReplicationInfo.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>Request to query disks replicated.</p>"}))
    DataReplicationInfo.add_member(:data_replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationState, location_name: 'dataReplicationState', traits: {"smithy.api#documentation" => "<p>Request to query the data replication state.</p>"}))
    DataReplicationInfo.add_member(:data_replication_initiation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: 'dataReplicationInitiation', traits: {"smithy.api#documentation" => "<p>Request to query whether data replication has been initiated.</p>"}))
    DataReplicationInfo.add_member(:data_replication_error, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationError, location_name: 'dataReplicationError', traits: {"smithy.api#documentation" => "<p>Error in obtaining data replication info.</p>"}))
    DataReplicationInfo.add_member(:last_snapshot_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastSnapshotDateTime', traits: {"smithy.api#documentation" => "<p>Request to query data replication last snapshot time.</p>"}))
    DataReplicationInfo.type = Types::DataReplicationInfo
    DataReplicationInfoReplicatedDisk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>Request to query device name.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'totalStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Request to query total amount of data replicated in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'replicatedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Request to query amount of data replicated in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'rescannedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Request to query amount of data rescanned in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'backloggedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Request to query data replication backlog size in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.type = Types::DataReplicationInfoReplicatedDisk
    DataReplicationInfoReplicatedDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisk)
    DataReplicationInitiation.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'startDateTime', traits: {"smithy.api#documentation" => "<p>Request to query data initiation start date and time.</p>"}))
    DataReplicationInitiation.add_member(:next_attempt_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'nextAttemptDateTime', traits: {"smithy.api#documentation" => "<p>Request to query next data initiation date and time.</p>"}))
    DataReplicationInitiation.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationSteps, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>Request to query data initiation steps.</p>"}))
    DataReplicationInitiation.type = Types::DataReplicationInitiation
    DataReplicationInitiationStep.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Request to query data initiation step name.</p>"}))
    DataReplicationInitiationStep.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStepStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Request to query data initiation status.</p>"}))
    DataReplicationInitiationStep.type = Types::DataReplicationInitiationStep
    DataReplicationInitiationSteps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStep)
    DeleteApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    DeleteConnectorRequest.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID, location_name: 'connectorID', traits: {"smithy.api#documentation" => "<p>Delete Connector request connector ID.</p>", "smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Request to delete Job from service by Job ID.</p>", "smithy.api#required" => {}}))
    DeleteJobInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to delete Job from service by Account ID.</p>"}))
    DeleteJobInput.type = Types::DeleteJobInput
    DeleteJobOutput.type = Types::DeleteJobOutput
    DeleteLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>ID of resource to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteLaunchConfigurationTemplateInput.type = Types::DeleteLaunchConfigurationTemplateInput
    DeleteLaunchConfigurationTemplateOutput.type = Types::DeleteLaunchConfigurationTemplateOutput
    DeleteReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>", "smithy.api#required" => {}}))
    DeleteReplicationConfigurationTemplateInput.type = Types::DeleteReplicationConfigurationTemplateInput
    DeleteReplicationConfigurationTemplateOutput.type = Types::DeleteReplicationConfigurationTemplateOutput
    DeleteSourceServerInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Request to delete Source Server from service by Server ID.</p>", "smithy.api#required" => {}}))
    DeleteSourceServerInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to delete Source Server from service by Account ID.</p>"}))
    DeleteSourceServerInput.type = Types::DeleteSourceServerInput
    DeleteSourceServerOutput.type = Types::DeleteSourceServerOutput
    DeleteVcenterClientInput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>ID of resource to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteVcenterClientInput.type = Types::DeleteVcenterClientInput
    DeleteWaveInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    DeleteWaveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    DeleteWaveInput.type = Types::DeleteWaveInput
    DeleteWaveOutput.type = Types::DeleteWaveOutput
    DescribeJobLogItemsInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Request to describe Job log job ID.</p>", "smithy.api#required" => {}}))
    DescribeJobLogItemsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Request to describe Job log item maximum results.</p>"}))
    DescribeJobLogItemsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe Job log next token.</p>"}))
    DescribeJobLogItemsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to describe Job log Account ID.</p>"}))
    DescribeJobLogItemsInput.type = Types::DescribeJobLogItemsInput
    DescribeJobLogItemsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogs, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Request to describe Job log response items.</p>"}))
    DescribeJobLogItemsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe Job log response next token.</p>"}))
    DescribeJobLogItemsOutput.type = Types::DescribeJobLogItemsOutput
    DescribeJobsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Request to describe Job log filters.</p>"}))
    DescribeJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Request to describe job log items by max results.</p>"}))
    DescribeJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe job log items by next token.</p>"}))
    DescribeJobsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to describe job log items by Account ID.</p>"}))
    DescribeJobsInput.type = Types::DescribeJobsInput
    DescribeJobsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: JobsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Request to describe Job log items.</p>"}))
    DescribeJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe Job response by next token.</p>"}))
    DescribeJobsOutput.type = Types::DescribeJobsOutput
    DescribeJobsRequestFilters.add_member(:job_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsRequestFiltersJobIDs, location_name: 'jobIDs', traits: {"smithy.api#documentation" => "<p>Request to describe Job log filters by job ID.</p>"}))
    DescribeJobsRequestFilters.add_member(:from_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'fromDate', traits: {"smithy.api#documentation" => "<p>Request to describe Job log filters by date.</p>"}))
    DescribeJobsRequestFilters.add_member(:to_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'toDate', traits: {"smithy.api#documentation" => "<p>Request to describe job log items by last date.</p>"}))
    DescribeJobsRequestFilters.type = Types::DescribeJobsRequestFilters
    DescribeJobsRequestFiltersJobIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobID)
    DescribeLaunchConfigurationTemplatesInput.add_member(:launch_configuration_template_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateIDs, location_name: 'launchConfigurationTemplateIDs', traits: {"smithy.api#documentation" => "<p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next pagination token returned from DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.type = Types::DescribeLaunchConfigurationTemplatesInput
    DescribeLaunchConfigurationTemplatesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplates, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of items returned by DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next pagination token returned from DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesOutput.type = Types::DescribeLaunchConfigurationTemplatesOutput
    DescribeReplicationConfigurationTemplatesInput.add_member(:replication_configuration_template_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, location_name: 'replicationConfigurationTemplateIDs', traits: {"smithy.api#documentation" => "<p>Request to describe Replication Configuration template by template IDs.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Request to describe Replication Configuration template by max results.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe Replication Configuration template by next token.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.type = Types::DescribeReplicationConfigurationTemplatesInput
    DescribeReplicationConfigurationTemplatesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Request to describe Replication Configuration template by items.</p>"}))
    DescribeReplicationConfigurationTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to describe Replication Configuration template by next token.</p>"}))
    DescribeReplicationConfigurationTemplatesOutput.type = Types::DescribeReplicationConfigurationTemplatesOutput
    DescribeSourceServersInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list.</p>"}))
    DescribeSourceServersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by maximum results.</p>"}))
    DescribeSourceServersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by next token.</p>"}))
    DescribeSourceServersInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by Accoun ID.</p>"}))
    DescribeSourceServersInput.type = Types::DescribeSourceServersInput
    DescribeSourceServersOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServersList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by item.</p>"}))
    DescribeSourceServersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers next token.</p>"}))
    DescribeSourceServersOutput.type = Types::DescribeSourceServersOutput
    DescribeSourceServersRequestApplicationIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID)
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by Source Server ID.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by archived.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:replication_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTypes, location_name: 'replicationTypes', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by replication type.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:life_cycle_states, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleStates, location_name: 'lifeCycleStates', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by life cycle states.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:application_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersRequestApplicationIDs, location_name: 'applicationIDs', traits: {"smithy.api#documentation" => "<p>Request to filter Source Servers list by application IDs.</p>"}))
    DescribeSourceServersRequestFilters.type = Types::DescribeSourceServersRequestFilters
    DescribeSourceServersRequestFiltersIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    DescribeVcenterClientsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum results to be returned in DescribeVcenterClients.</p>", "smithy.api#httpQuery" => "maxResults"}))
    DescribeVcenterClientsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next pagination token to be provided for DescribeVcenterClients.</p>", "smithy.api#httpQuery" => "nextToken"}))
    DescribeVcenterClientsInput.type = Types::DescribeVcenterClientsInput
    DescribeVcenterClientsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of items returned by DescribeVcenterClients.</p>"}))
    DescribeVcenterClientsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next pagination token returned from DescribeVcenterClients.</p>"}))
    DescribeVcenterClientsOutput.type = Types::DescribeVcenterClientsOutput
    DisassociateApplicationsInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationsInput.add_member(:application_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationIDs, location_name: 'applicationIDs', traits: {"smithy.api#documentation" => "<p>Application IDs list.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    DisassociateApplicationsInput.type = Types::DisassociateApplicationsInput
    DisassociateApplicationsOutput.type = Types::DisassociateApplicationsOutput
    DisassociateSourceServersInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    DisassociateSourceServersInput.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceServersRequestSourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Source server IDs list.</p>", "smithy.api#required" => {}}))
    DisassociateSourceServersInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    DisassociateSourceServersInput.type = Types::DisassociateSourceServersInput
    DisassociateSourceServersOutput.type = Types::DisassociateSourceServersOutput
    DisassociateSourceServersRequestSourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    DisconnectFromServiceInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Request to disconnect Source Server from service by Server ID.</p>", "smithy.api#required" => {}}))
    DisconnectFromServiceInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to disconnect Source Server from service by Account ID.</p>"}))
    DisconnectFromServiceInput.type = Types::DisconnectFromServiceInput
    DisconnectFromServiceOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    DisconnectFromServiceOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    DisconnectFromServiceOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    DisconnectFromServiceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    DisconnectFromServiceOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    DisconnectFromServiceOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    DisconnectFromServiceOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    DisconnectFromServiceOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    DisconnectFromServiceOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    DisconnectFromServiceOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    DisconnectFromServiceOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    DisconnectFromServiceOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    DisconnectFromServiceOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    DisconnectFromServiceOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    DisconnectFromServiceOutput.type = Types::DisconnectFromServiceOutput
    Disk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The disk or device name.</p>"}))
    Disk.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of storage on the disk in bytes.</p>"}))
    Disk.type = Types::Disk
    Disks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Disk)
    ErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Error details message.</p>"}))
    ErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Error details code.</p>"}))
    ErrorDetails.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Error details resourceId.</p>"}))
    ErrorDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Error details resourceType.</p>"}))
    ErrorDetails.type = Types::ErrorDetails
    ExportErrorData.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Export errors data raw error.</p>"}))
    ExportErrorData.type = Types::ExportErrorData
    ExportErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskError)
    ExportTask.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportID, location_name: 'exportID', traits: {"smithy.api#documentation" => "<p>Export task id.</p>"}))
    ExportTask.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>Export task s3 bucket.</p>"}))
    ExportTask.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>Export task s3 key.</p>"}))
    ExportTask.add_member(:s3_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 's3BucketOwner', traits: {"smithy.api#documentation" => "<p>Export task s3 bucket owner.</p>"}))
    ExportTask.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Export task creation datetime.</p>"}))
    ExportTask.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'endDateTime', traits: {"smithy.api#documentation" => "<p>Export task end datetime.</p>"}))
    ExportTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Export task status.</p>"}))
    ExportTask.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'progressPercentage', traits: {"smithy.api#documentation" => "<p>Export task progress percentage.</p>"}))
    ExportTask.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTaskSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>Export task summary.</p>"}))
    ExportTask.type = Types::ExportTask
    ExportTaskError.add_member(:error_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'errorDateTime', traits: {"smithy.api#documentation" => "<p>Export task error datetime.</p>"}))
    ExportTaskError.add_member(:error_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrorData, location_name: 'errorData', traits: {"smithy.api#documentation" => "<p>Export task error data.</p>"}))
    ExportTaskError.type = Types::ExportTaskError
    ExportTaskSummary.add_member(:servers_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'serversCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Export task summary servers count.</p>"}))
    ExportTaskSummary.add_member(:applications_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'applicationsCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Export task summary applications count.</p>"}))
    ExportTaskSummary.add_member(:waves_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'wavesCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Export task summary waves count.</p>"}))
    ExportTaskSummary.type = Types::ExportTaskSummary
    ExportsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTask)
    FinalizeCutoverInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Request to finalize Cutover by Source Server ID.</p>", "smithy.api#required" => {}}))
    FinalizeCutoverInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to finalize Cutover by Source Account ID.</p>"}))
    FinalizeCutoverInput.type = Types::FinalizeCutoverInput
    FinalizeCutoverOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    FinalizeCutoverOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    FinalizeCutoverOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    FinalizeCutoverOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    FinalizeCutoverOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    FinalizeCutoverOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    FinalizeCutoverOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    FinalizeCutoverOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    FinalizeCutoverOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    FinalizeCutoverOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    FinalizeCutoverOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    FinalizeCutoverOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    FinalizeCutoverOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    FinalizeCutoverOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    FinalizeCutoverOutput.type = Types::FinalizeCutoverOutput
    GetLaunchConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Request to get Launch Configuration information by Source Server ID.</p>", "smithy.api#required" => {}}))
    GetLaunchConfigurationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to get Launch Configuration information by Account ID.</p>"}))
    GetLaunchConfigurationInput.type = Types::GetLaunchConfigurationInput
    GetLaunchConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Launch configuration Source Server ID.</p>"}))
    GetLaunchConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Launch configuration name.</p>"}))
    GetLaunchConfigurationOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>Launch configuration EC2 Launch template ID.</p>"}))
    GetLaunchConfigurationOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition for launch configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Launch configuration Target instance type right sizing method.</p>"}))
    GetLaunchConfigurationOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy Private IP during Launch Configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy Tags during Launch Configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Launch configuration OS licensing.</p>"}))
    GetLaunchConfigurationOutput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration boot mode.</p>"}))
    GetLaunchConfigurationOutput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions'))
    GetLaunchConfigurationOutput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    GetLaunchConfigurationOutput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Map auto tagging MPE ID.</p>"}))
    GetLaunchConfigurationOutput.type = Types::GetLaunchConfigurationOutput
    GetReplicationConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Request to get Replication Configuration by Source Server ID.</p>", "smithy.api#required" => {}}))
    GetReplicationConfigurationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request to get Replication Configuration by Account ID.</p>"}))
    GetReplicationConfigurationInput.type = Types::GetReplicationConfigurationInput
    GetReplicationConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Replication Configuration Source Server ID.</p>"}))
    GetReplicationConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Replication Configuration name.</p>"}))
    GetReplicationConfigurationOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Replication Configuration Staging Area subnet ID.</p>"}))
    GetReplicationConfigurationOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Replication Configuration associate default Application Migration Service Security Group.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Replication Configuration Replication Server Security Group IDs.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Replication Configuration Replication Server instance type.</p>"}))
    GetReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Replication Configuration use Dedicated Replication Server.</p>"}))
    GetReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration use default large Staging Disks.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>Replication Configuration replicated disks.</p>"}))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Replication Configuration EBS encryption.</p>"}))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Replication Configuration EBS encryption key ARN.</p>"}))
    GetReplicationConfigurationOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration set bandwidth throttling.</p>"}))
    GetReplicationConfigurationOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Replication Configuration data plane routing.</p>"}))
    GetReplicationConfigurationOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Replication Configuration create Public IP.</p>"}))
    GetReplicationConfigurationOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Replication Configuration Staging Area tags.</p>"}))
    GetReplicationConfigurationOutput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Replication Configuration use Fips Endpoint.</p>"}))
    GetReplicationConfigurationOutput.type = Types::GetReplicationConfigurationOutput
    IPsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString)
    IdentificationHints.add_member(:fqdn, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdn', traits: {"smithy.api#documentation" => "<p>FQDN address identification hint.</p>"}))
    IdentificationHints.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>Hostname identification hint.</p>"}))
    IdentificationHints.add_member(:vm_ware_uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'vmWareUuid', traits: {"smithy.api#documentation" => "<p>vmWare UUID identification hint.</p>"}))
    IdentificationHints.add_member(:aws_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'awsInstanceID', traits: {"smithy.api#documentation" => "<p>AWS Instance ID identification hint.</p>"}))
    IdentificationHints.add_member(:vm_path, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'vmPath', traits: {"smithy.api#documentation" => "<p>vCenter VM path identification hint.</p>"}))
    IdentificationHints.type = Types::IdentificationHints
    ImportErrorData.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Import error data source server ID.</p>"}))
    ImportErrorData.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Import error data application ID.</p>"}))
    ImportErrorData.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Import error data wave id.</p>"}))
    ImportErrorData.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>Import error data ec2 LaunchTemplate ID.</p>"}))
    ImportErrorData.add_member(:row_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'rowNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import error data row number.</p>"}))
    ImportErrorData.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Import error data raw error.</p>"}))
    ImportErrorData.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Import error data source account ID.</p>"}))
    ImportErrorData.type = Types::ImportErrorData
    ImportErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskError)
    ImportIDsFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportID)
    ImportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTask)
    ImportTask.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportID, location_name: 'importID', traits: {"smithy.api#documentation" => "<p>Import task id.</p>"}))
    ImportTask.add_member(:s3_bucket_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSource, location_name: 's3BucketSource', traits: {"smithy.api#documentation" => "<p>Import task s3 bucket source.</p>"}))
    ImportTask.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Import task creation datetime.</p>"}))
    ImportTask.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'endDateTime', traits: {"smithy.api#documentation" => "<p>Import task end datetime.</p>"}))
    ImportTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Import task status.</p>"}))
    ImportTask.add_member(:progress_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'progressPercentage', traits: {"smithy.api#documentation" => "<p>Import task progress percentage.</p>"}))
    ImportTask.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>Import task summary.</p>"}))
    ImportTask.type = Types::ImportTask
    ImportTaskError.add_member(:error_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'errorDateTime', traits: {"smithy.api#documentation" => "<p>Import task error datetime.</p>"}))
    ImportTaskError.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportErrorType, location_name: 'errorType', traits: {"smithy.api#documentation" => "<p>Import task error type.</p>"}))
    ImportTaskError.add_member(:error_data, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportErrorData, location_name: 'errorData', traits: {"smithy.api#documentation" => "<p>Import task error data.</p>"}))
    ImportTaskError.type = Types::ImportTaskError
    ImportTaskSummary.add_member(:waves, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummaryWaves, location_name: 'waves', traits: {"smithy.api#documentation" => "<p>Import task summary waves.</p>"}))
    ImportTaskSummary.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummaryApplications, location_name: 'applications', traits: {"smithy.api#documentation" => "<p>Import task summary applications.</p>"}))
    ImportTaskSummary.add_member(:servers, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskSummaryServers, location_name: 'servers', traits: {"smithy.api#documentation" => "<p>Import task summary servers.</p>"}))
    ImportTaskSummary.type = Types::ImportTaskSummary
    ImportTaskSummaryApplications.add_member(:created_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'createdCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summary applications created count.</p>"}))
    ImportTaskSummaryApplications.add_member(:modified_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'modifiedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summary applications modified count.</p>"}))
    ImportTaskSummaryApplications.type = Types::ImportTaskSummaryApplications
    ImportTaskSummaryServers.add_member(:created_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'createdCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summary servers created count.</p>"}))
    ImportTaskSummaryServers.add_member(:modified_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'modifiedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summary servers modified count.</p>"}))
    ImportTaskSummaryServers.type = Types::ImportTaskSummaryServers
    ImportTaskSummaryWaves.add_member(:created_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'createdCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summery waves created count.</p>"}))
    ImportTaskSummaryWaves.add_member(:modified_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'modifiedCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Import task summery waves modified count.</p>"}))
    ImportTaskSummaryWaves.type = Types::ImportTaskSummaryWaves
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The server encountered an unexpected condition that prevented it from fulfilling the request. The request will be retried again after x seconds.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Job ID.</p>", "smithy.api#required" => {}}))
    Job.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>the ARN of the specific Job.</p>"}))
    Job.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Job type.</p>"}))
    Job.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'initiatedBy', traits: {"smithy.api#documentation" => "<p>Job initiated by field.</p>"}))
    Job.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Job creation time.</p>"}))
    Job.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'endDateTime', traits: {"smithy.api#documentation" => "<p>Job end time.</p>"}))
    Job.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Job status.</p>"}))
    Job.add_member(:participating_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingServers, location_name: 'participatingServers', traits: {"smithy.api#documentation" => "<p>Servers participating in a specific Job.</p>"}))
    Job.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags associated with specific Job.</p>"}))
    Job.type = Types::Job
    JobLog.add_member(:log_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'logDateTime', traits: {"smithy.api#documentation" => "<p>Job log event date and time.</p>"}))
    JobLog.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>Job log event.</p>"}))
    JobLog.add_member(:event_data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogEventData, location_name: 'eventData', traits: {"smithy.api#documentation" => "<p>Job event data</p>"}))
    JobLog.type = Types::JobLog
    JobLogEventData.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Job Event Source Server ID.</p>"}))
    JobLogEventData.add_member(:conversion_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'conversionServerID', traits: {"smithy.api#documentation" => "<p>Job Event conversion Server ID.</p>"}))
    JobLogEventData.add_member(:target_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'targetInstanceID', traits: {"smithy.api#documentation" => "<p>Job Event Target instance ID.</p>"}))
    JobLogEventData.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Job error.</p>"}))
    JobLogEventData.type = Types::JobLogEventData
    JobLogs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobLog)
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocument, location_name: 'ssmDocument', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager's Document of the of the Job Post Launch Actions.</p>"}))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentType, location_name: 'ssmDocumentType', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document type.</p>"}))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'executionID', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document's execution ID of the of the Job Post Launch Actions.</p>"}))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActionExecutionStatus, location_name: 'executionStatus', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document's execution status.</p>"}))
    JobPostLaunchActionsLaunchStatus.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document's failure reason.</p>"}))
    JobPostLaunchActionsLaunchStatus.type = Types::JobPostLaunchActionsLaunchStatus
    JobsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>ID of the Launch Configuration Template.</p>", "smithy.api#required" => {}}))
    LaunchConfigurationTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions', traits: {"smithy.api#documentation" => "<p>Post Launch Actions of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    LaunchConfigurationTemplate.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration template map auto tagging MPE ID.</p>"}))
    LaunchConfigurationTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2LaunchConfigurationTemplateID, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>EC2 launch template ID.</p>"}))
    LaunchConfigurationTemplate.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private Ip.</p>"}))
    LaunchConfigurationTemplate.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate public Ip address.</p>"}))
    LaunchConfigurationTemplate.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    LaunchConfigurationTemplate.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing'))
    LaunchConfigurationTemplate.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration template boot mode.</p>"}))
    LaunchConfigurationTemplate.add_member(:small_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'smallVolumeMaxSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Small volume maximum size.</p>"}))
    LaunchConfigurationTemplate.add_member(:small_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'smallVolumeConf', traits: {"smithy.api#documentation" => "<p>Small volume config.</p>"}))
    LaunchConfigurationTemplate.add_member(:large_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'largeVolumeConf', traits: {"smithy.api#documentation" => "<p>Large volume config.</p>"}))
    LaunchConfigurationTemplate.type = Types::LaunchConfigurationTemplate
    LaunchConfigurationTemplateIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID)
    LaunchConfigurationTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)
    LaunchTemplateDiskConf.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'volumeType', traits: {"smithy.api#documentation" => "<p>Launch template disk volume type configuration.</p>"}))
    LaunchTemplateDiskConf.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: Iops, location_name: 'iops', traits: {"smithy.api#documentation" => "<p>Launch template disk iops configuration.</p>"}))
    LaunchTemplateDiskConf.add_member(:throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: Throughput, location_name: 'throughput', traits: {"smithy.api#documentation" => "<p>Launch template disk throughput configuration.</p>"}))
    LaunchTemplateDiskConf.type = Types::LaunchTemplateDiskConf
    LaunchedInstance.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'ec2InstanceID', traits: {"smithy.api#documentation" => "<p>Launched instance EC2 ID.</p>"}))
    LaunchedInstance.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Launched instance Job ID.</p>"}))
    LaunchedInstance.add_member(:first_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: FirstBoot, location_name: 'firstBoot', traits: {"smithy.api#documentation" => "<p>Launched instance first boot.</p>"}))
    LaunchedInstance.type = Types::LaunchedInstance
    Licensing.add_member(:os_byol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'osByol', traits: {"smithy.api#documentation" => "<p>Configure BYOL OS licensing.</p>"}))
    Licensing.type = Types::Licensing
    LifeCycle.add_member(:added_to_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'addedToServiceDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle added to service data and time.</p>"}))
    LifeCycle.add_member(:first_byte_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'firstByteDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle replication initiation date and time.</p>"}))
    LifeCycle.add_member(:elapsed_replication_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: 'elapsedReplicationDuration', traits: {"smithy.api#documentation" => "<p>Lifecycle elapsed time and duration.</p>"}))
    LifeCycle.add_member(:last_seen_by_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastSeenByServiceDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle last seen date and time.</p>"}))
    LifeCycle.add_member(:last_test, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastTest, location_name: 'lastTest', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test.</p>"}))
    LifeCycle.add_member(:last_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastCutover, location_name: 'lastCutover', traits: {"smithy.api#documentation" => "<p>Lifecycle last Cutover.</p>"}))
    LifeCycle.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>Lifecycle state.</p>"}))
    LifeCycle.type = Types::LifeCycle
    LifeCycleLastCutover.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastCutoverInitiated, location_name: 'initiated', traits: {"smithy.api#documentation" => "<p>Lifecycle last Cutover initiated.</p>"}))
    LifeCycleLastCutover.add_member(:reverted, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastCutoverReverted, location_name: 'reverted', traits: {"smithy.api#documentation" => "<p>Lifecycle last Cutover reverted.</p>"}))
    LifeCycleLastCutover.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastCutoverFinalized, location_name: 'finalized', traits: {"smithy.api#documentation" => "<p>Lifecycle Cutover finalized date and time.</p>"}))
    LifeCycleLastCutover.type = Types::LifeCycleLastCutover
    LifeCycleLastCutoverFinalized.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle Cutover finalized date and time.</p>"}))
    LifeCycleLastCutoverFinalized.type = Types::LifeCycleLastCutoverFinalized
    LifeCycleLastCutoverInitiated.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p/>"}))
    LifeCycleLastCutoverInitiated.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Lifecycle last Cutover initiated by Job ID.</p>"}))
    LifeCycleLastCutoverInitiated.type = Types::LifeCycleLastCutoverInitiated
    LifeCycleLastCutoverReverted.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle last Cutover reverted API call date time.</p>"}))
    LifeCycleLastCutoverReverted.type = Types::LifeCycleLastCutoverReverted
    LifeCycleLastTest.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastTestInitiated, location_name: 'initiated', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test initiated.</p>"}))
    LifeCycleLastTest.add_member(:reverted, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastTestReverted, location_name: 'reverted', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test reverted.</p>"}))
    LifeCycleLastTest.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastTestFinalized, location_name: 'finalized', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test finalized.</p>"}))
    LifeCycleLastTest.type = Types::LifeCycleLastTest
    LifeCycleLastTestFinalized.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle Test failed API call date and time.</p>"}))
    LifeCycleLastTestFinalized.type = Types::LifeCycleLastTestFinalized
    LifeCycleLastTestInitiated.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test initiated API call date and time.</p>"}))
    LifeCycleLastTestInitiated.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test initiated Job ID.</p>"}))
    LifeCycleLastTestInitiated.type = Types::LifeCycleLastTestInitiated
    LifeCycleLastTestReverted.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>Lifecycle last Test reverted API call date and time.</p>"}))
    LifeCycleLastTestReverted.type = Types::LifeCycleLastTestReverted
    LifeCycleStates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState)
    ListApplicationsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Applications list filters.</p>"}))
    ListApplicationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum results to return when listing applications.</p>"}))
    ListApplicationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request next token.</p>"}))
    ListApplicationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Applications list Account ID.</p>"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Applications list.</p>"}))
    ListApplicationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Response next token.</p>"}))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListApplicationsRequestFilters.add_member(:application_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationIDsFilter, location_name: 'applicationIDs', traits: {"smithy.api#documentation" => "<p>Filter applications list by application ID.</p>"}))
    ListApplicationsRequestFilters.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Filter applications list by archival status.</p>"}))
    ListApplicationsRequestFilters.add_member(:wave_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: 'waveIDs', traits: {"smithy.api#documentation" => "<p>Filter applications list by wave ID.</p>"}))
    ListApplicationsRequestFilters.type = Types::ListApplicationsRequestFilters
    ListConnectorsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>List Connectors Request filters.</p>"}))
    ListConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List Connectors Request max results.</p>"}))
    ListConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List Connectors Request next token.</p>"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsRequestFilters.add_member(:connector_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorIDsFilter, location_name: 'connectorIDs', traits: {"smithy.api#documentation" => "<p>List Connectors Request Filters connector IDs.</p>"}))
    ListConnectorsRequestFilters.type = Types::ListConnectorsRequestFilters
    ListConnectorsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List connectors response items.</p>"}))
    ListConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List connectors response next token.</p>"}))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListExportErrorsInput.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportID, location_name: 'exportID', traits: {"smithy.api#documentation" => "<p>List export errors request export id.</p>", "smithy.api#required" => {}}))
    ListExportErrorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List export errors request max results.</p>"}))
    ListExportErrorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List export errors request next token.</p>"}))
    ListExportErrorsInput.type = Types::ListExportErrorsInput
    ListExportErrorsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportErrors, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List export errors response items.</p>"}))
    ListExportErrorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List export errors response next token.</p>"}))
    ListExportErrorsOutput.type = Types::ListExportErrorsOutput
    ListExportsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsRequestFilters, location_name: 'filters'))
    ListExportsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List export request max results.</p>"}))
    ListExportsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List export request next token.</p>"}))
    ListExportsInput.type = Types::ListExportsInput
    ListExportsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List export response items.</p>"}))
    ListExportsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List export response next token.</p>"}))
    ListExportsOutput.type = Types::ListExportsOutput
    ListExportsRequestFilters.add_member(:export_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsRequestFiltersExportIDs, location_name: 'exportIDs', traits: {"smithy.api#documentation" => "<p>List exports request filters export ids.</p>"}))
    ListExportsRequestFilters.type = Types::ListExportsRequestFilters
    ListExportsRequestFiltersExportIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportID)
    ListImportErrorsInput.add_member(:import_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportID, location_name: 'importID', traits: {"smithy.api#documentation" => "<p>List import errors request import id.</p>", "smithy.api#required" => {}}))
    ListImportErrorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List import errors request max results.</p>"}))
    ListImportErrorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List import errors request next token.</p>"}))
    ListImportErrorsInput.type = Types::ListImportErrorsInput
    ListImportErrorsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportErrors, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List imports errors response items.</p>"}))
    ListImportErrorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List imports errors response next token.</p>"}))
    ListImportErrorsOutput.type = Types::ListImportErrorsOutput
    ListImportsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>List imports request filters.</p>"}))
    ListImportsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List imports request max results.</p>"}))
    ListImportsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List imports request next token.</p>"}))
    ListImportsInput.type = Types::ListImportsInput
    ListImportsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List import response items.</p>"}))
    ListImportsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List import response next token.</p>"}))
    ListImportsOutput.type = Types::ListImportsOutput
    ListImportsRequestFilters.add_member(:import_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportIDsFilter, location_name: 'importIDs', traits: {"smithy.api#documentation" => "<p>List imports request filters import IDs.</p>"}))
    ListImportsRequestFilters.type = Types::ListImportsRequestFilters
    ListManagedAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>List managed accounts request max results.</p>"}))
    ListManagedAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List managed accounts request next token.</p>"}))
    ListManagedAccountsRequest.type = Types::ListManagedAccountsRequest
    ListManagedAccountsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedAccounts, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List managed accounts response items.</p>", "smithy.api#required" => {}}))
    ListManagedAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>List managed accounts response next token.</p>"}))
    ListManagedAccountsResponse.type = Types::ListManagedAccountsResponse
    ListSourceServerActionsInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>", "smithy.api#required" => {}}))
    ListSourceServerActionsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerActionsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Filters to apply when listing source server post migration custom actions.</p>"}))
    ListSourceServerActionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum amount of items to return when listing source server post migration custom actions.</p>"}))
    ListSourceServerActionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token to use when listing source server post migration custom actions.</p>"}))
    ListSourceServerActionsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID to return when listing source server post migration custom actions.</p>"}))
    ListSourceServerActionsInput.type = Types::ListSourceServerActionsInput
    ListSourceServerActionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerActionDocuments, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of source server post migration custom actions.</p>"}))
    ListSourceServerActionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned when listing source server post migration custom actions.</p>"}))
    ListSourceServerActionsOutput.type = Types::ListSourceServerActionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>List tags for resource request by ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>List tags for resource response.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateActionsInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Launch configuration template ID.</p>", "smithy.api#required" => {}}))
    ListTemplateActionsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateActionsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Filters to apply when listing template post migration custom actions.</p>"}))
    ListTemplateActionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum amount of items to return when listing template post migration custom actions.</p>"}))
    ListTemplateActionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token to use when listing template post migration custom actions.</p>"}))
    ListTemplateActionsInput.type = Types::ListTemplateActionsInput
    ListTemplateActionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateActionDocuments, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of template post migration custom actions.</p>"}))
    ListTemplateActionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned when listing template post migration custom actions.</p>"}))
    ListTemplateActionsOutput.type = Types::ListTemplateActionsOutput
    ListWavesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListWavesRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Waves list filters.</p>"}))
    ListWavesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum results to return when listing waves.</p>"}))
    ListWavesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Request next token.</p>"}))
    ListWavesInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Request account ID.</p>"}))
    ListWavesInput.type = Types::ListWavesInput
    ListWavesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: WavesList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Waves list.</p>"}))
    ListWavesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Response next token.</p>"}))
    ListWavesOutput.type = Types::ListWavesOutput
    ListWavesRequestFilters.add_member(:wave_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: 'waveIDs', traits: {"smithy.api#documentation" => "<p>Filter waves list by wave ID.</p>"}))
    ListWavesRequestFilters.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Filter waves list by archival status.</p>"}))
    ListWavesRequestFilters.type = Types::ListWavesRequestFilters
    ManagedAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>Managed account, account ID.</p>"}))
    ManagedAccount.type = Types::ManagedAccount
    ManagedAccounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedAccount)
    MarkAsArchivedInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Mark as archived by Source Server ID.</p>", "smithy.api#required" => {}}))
    MarkAsArchivedInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Mark as archived by Account ID.</p>"}))
    MarkAsArchivedInput.type = Types::MarkAsArchivedInput
    MarkAsArchivedOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    MarkAsArchivedOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    MarkAsArchivedOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    MarkAsArchivedOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    MarkAsArchivedOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    MarkAsArchivedOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    MarkAsArchivedOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    MarkAsArchivedOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    MarkAsArchivedOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    MarkAsArchivedOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    MarkAsArchivedOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    MarkAsArchivedOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    MarkAsArchivedOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    MarkAsArchivedOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    MarkAsArchivedOutput.type = Types::MarkAsArchivedOutput
    NetworkInterface.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p>Network interface Mac address.</p>"}))
    NetworkInterface.add_member(:ips, Smithy::Schema::Shapes::ShapeRef.new(shape: IPsList, location_name: 'ips', traits: {"smithy.api#documentation" => "<p>Network interface IPs.</p>"}))
    NetworkInterface.add_member(:is_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>Network interface primary IP.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    OS.add_member(:full_string, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fullString', traits: {"smithy.api#documentation" => "<p>OS full string.</p>"}))
    OS.type = Types::OS
    ParticipatingServer.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Participating server Source Server ID.</p>", "smithy.api#required" => {}}))
    ParticipatingServer.add_member(:launch_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'launchStatus', traits: {"smithy.api#documentation" => "<p>Participating server launch status.</p>"}))
    ParticipatingServer.add_member(:launched_ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'launchedEc2InstanceID', traits: {"smithy.api#documentation" => "<p>Participating server's launched ec2 instance ID.</p>"}))
    ParticipatingServer.add_member(:post_launch_actions_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActionsStatus, location_name: 'postLaunchActionsStatus', traits: {"smithy.api#documentation" => "<p>Participating server's Post Launch Actions Status.</p>"}))
    ParticipatingServer.type = Types::ParticipatingServer
    ParticipatingServers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingServer)
    PauseReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    PauseReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    PauseReplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    PauseReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    PauseReplicationOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    PauseReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    PauseReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    PauseReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    PauseReplicationOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    PauseReplicationOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    PauseReplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    PauseReplicationOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    PauseReplicationOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    PauseReplicationOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    PauseReplicationOutput.type = Types::PauseReplicationOutput
    PauseReplicationRequest.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Pause Replication Request source server ID.</p>", "smithy.api#required" => {}}))
    PauseReplicationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Pause Replication Request account ID.</p>"}))
    PauseReplicationRequest.type = Types::PauseReplicationRequest
    PostLaunchActions.add_member(:deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActionsDeploymentType, location_name: 'deployment', traits: {"smithy.api#documentation" => "<p>Deployment type in which AWS Systems Manager Documents will be executed.</p>"}))
    PostLaunchActions.add_member(:s3_log_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogBucketName, location_name: 's3LogBucket', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Command's logs S3 log bucket.</p>"}))
    PostLaunchActions.add_member(:s3_output_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 's3OutputKeyPrefix', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Command's logs S3 output key prefix.</p>"}))
    PostLaunchActions.add_member(:cloud_watch_log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: 'cloudWatchLogGroupName', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Command's CloudWatch log group name.</p>"}))
    PostLaunchActions.add_member(:ssm_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocuments, location_name: 'ssmDocuments', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Documents.</p>"}))
    PostLaunchActions.type = Types::PostLaunchActions
    PostLaunchActionsLaunchStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobPostLaunchActionsLaunchStatus)
    PostLaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'ssmAgentDiscoveryDatetime', traits: {"smithy.api#documentation" => "<p>Time where the AWS Systems Manager was detected as running on the Test or Cutover instance.</p>"}))
    PostLaunchActionsStatus.add_member(:post_launch_actions_launch_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActionsLaunchStatusList, location_name: 'postLaunchActionsLaunchStatusList', traits: {"smithy.api#documentation" => "<p>List of Post Launch Action status.</p>"}))
    PostLaunchActionsStatus.type = Types::PostLaunchActionsStatus
    PutSourceServerActionInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>", "smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action name.</p>", "smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document identifier.</p>", "smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action order.</p>", "smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action ID.</p>", "smithy.api#required" => {}}))
    PutSourceServerActionInput.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document version.</p>"}))
    PutSourceServerActionInput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action active status.</p>"}))
    PutSourceServerActionInput.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action timeout in seconds.</p>"}))
    PutSourceServerActionInput.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action must succeed for cutover.</p>"}))
    PutSourceServerActionInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action parameters.</p>"}))
    PutSourceServerActionInput.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action external parameters.</p>"}))
    PutSourceServerActionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action description.</p>"}))
    PutSourceServerActionInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action category.</p>"}))
    PutSourceServerActionInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Source server post migration custom account ID.</p>"}))
    PutSourceServerActionInput.type = Types::PutSourceServerActionInput
    PutSourceServerActionOutput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action ID.</p>"}))
    PutSourceServerActionOutput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action name.</p>"}))
    PutSourceServerActionOutput.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document identifier.</p>"}))
    PutSourceServerActionOutput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action order.</p>"}))
    PutSourceServerActionOutput.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document version.</p>"}))
    PutSourceServerActionOutput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action active status.</p>"}))
    PutSourceServerActionOutput.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action timeout in seconds.</p>"}))
    PutSourceServerActionOutput.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action must succeed for cutover.</p>"}))
    PutSourceServerActionOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action parameters.</p>"}))
    PutSourceServerActionOutput.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action external parameters.</p>"}))
    PutSourceServerActionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action description.</p>"}))
    PutSourceServerActionOutput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action category.</p>"}))
    PutSourceServerActionOutput.type = Types::PutSourceServerActionOutput
    PutTemplateActionInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Launch configuration template ID.</p>", "smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Template post migration custom action name.</p>", "smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document identifier.</p>", "smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Template post migration custom action order.</p>", "smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Template post migration custom action ID.</p>", "smithy.api#required" => {}}))
    PutTemplateActionInput.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document version.</p>"}))
    PutTemplateActionInput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Template post migration custom action active status.</p>"}))
    PutTemplateActionInput.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Template post migration custom action timeout in seconds.</p>"}))
    PutTemplateActionInput.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Template post migration custom action must succeed for cutover.</p>"}))
    PutTemplateActionInput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action parameters.</p>"}))
    PutTemplateActionInput.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: 'operatingSystem', traits: {"smithy.api#documentation" => "<p>Operating system eligible for this template post migration custom action.</p>"}))
    PutTemplateActionInput.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action external parameters.</p>"}))
    PutTemplateActionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Template post migration custom action description.</p>"}))
    PutTemplateActionInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Template post migration custom action category.</p>"}))
    PutTemplateActionInput.type = Types::PutTemplateActionInput
    PutTemplateActionOutput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Template post migration custom action ID.</p>"}))
    PutTemplateActionOutput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Template post migration custom action name.</p>"}))
    PutTemplateActionOutput.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document identifier.</p>"}))
    PutTemplateActionOutput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Template post migration custom action order.</p>"}))
    PutTemplateActionOutput.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document version.</p>"}))
    PutTemplateActionOutput.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Template post migration custom action active status.</p>"}))
    PutTemplateActionOutput.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Template post migration custom action timeout in seconds.</p>"}))
    PutTemplateActionOutput.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Template post migration custom action must succeed for cutover.</p>"}))
    PutTemplateActionOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action parameters.</p>"}))
    PutTemplateActionOutput.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: 'operatingSystem', traits: {"smithy.api#documentation" => "<p>Operating system eligible for this template post migration custom action.</p>"}))
    PutTemplateActionOutput.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action external parameters.</p>"}))
    PutTemplateActionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Template post migration custom action description.</p>"}))
    PutTemplateActionOutput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Template post migration custom action category.</p>"}))
    PutTemplateActionOutput.type = Types::PutTemplateActionOutput
    RemoveSourceServerActionInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID of the post migration custom action to remove.</p>", "smithy.api#required" => {}}))
    RemoveSourceServerActionInput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action ID to remove.</p>", "smithy.api#required" => {}}))
    RemoveSourceServerActionInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Source server post migration account ID.</p>"}))
    RemoveSourceServerActionInput.type = Types::RemoveSourceServerActionInput
    RemoveSourceServerActionOutput.type = Types::RemoveSourceServerActionOutput
    RemoveTemplateActionInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Launch configuration template ID of the post migration custom action to remove.</p>", "smithy.api#required" => {}}))
    RemoveTemplateActionInput.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Template post migration custom action ID to remove.</p>", "smithy.api#required" => {}}))
    RemoveTemplateActionInput.type = Types::RemoveTemplateActionInput
    RemoveTemplateActionOutput.type = Types::RemoveTemplateActionOutput
    ReplicationConfigurationReplicatedDisk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>Replication Configuration replicated disk device name.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isBootDisk', traits: {"smithy.api#documentation" => "<p>Replication Configuration replicated disk boot disk.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: 'stagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration replicated disk staging disk type.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'iops', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration replicated disk IOPs.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'throughput', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration replicated disk throughput.</p>"}))
    ReplicationConfigurationReplicatedDisk.type = Types::ReplicationConfigurationReplicatedDisk
    ReplicationConfigurationReplicatedDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)
    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ID.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ARN.</p>"}))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area subnet ID.</p>"}))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Replication Configuration template associate default Application Migration Service Security group.</p>"}))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server Security Groups IDs.</p>"}))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server instance type.</p>"}))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Dedicated Replication Server.</p>"}))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use default large Staging Disk type.</p>"}))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption.</p>"}))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption key ARN.</p>"}))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration template bandwidth throttling.</p>"}))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Replication Configuration template data plane routing.</p>"}))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Replication Configuration template create Public IP.</p>"}))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area Tags.</p>"}))
    ReplicationConfigurationTemplate.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Fips Endpoint.</p>"}))
    ReplicationConfigurationTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Tags.</p>"}))
    ReplicationConfigurationTemplate.type = Types::ReplicationConfigurationTemplate
    ReplicationConfigurationTemplateIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID)
    ReplicationConfigurationTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
    ReplicationServersSecurityGroupsIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupID)
    ReplicationTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Resource ID not found error.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Resource type not found error.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResumeReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    ResumeReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    ResumeReplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    ResumeReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    ResumeReplicationOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    ResumeReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    ResumeReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    ResumeReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    ResumeReplicationOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    ResumeReplicationOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    ResumeReplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    ResumeReplicationOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    ResumeReplicationOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    ResumeReplicationOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    ResumeReplicationOutput.type = Types::ResumeReplicationOutput
    ResumeReplicationRequest.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Resume Replication Request source server ID.</p>", "smithy.api#required" => {}}))
    ResumeReplicationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Resume Replication Request account ID.</p>"}))
    ResumeReplicationRequest.type = Types::ResumeReplicationRequest
    RetryDataReplicationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Retry data replication for Source Server ID.</p>", "smithy.api#required" => {}}))
    RetryDataReplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Retry data replication for Account ID.</p>"}))
    RetryDataReplicationInput.type = Types::RetryDataReplicationInput
    RetryDataReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    RetryDataReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    RetryDataReplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    RetryDataReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    RetryDataReplicationOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    RetryDataReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    RetryDataReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    RetryDataReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    RetryDataReplicationOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    RetryDataReplicationOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    RetryDataReplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    RetryDataReplicationOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    RetryDataReplicationOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    RetryDataReplicationOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    RetryDataReplicationOutput.type = Types::RetryDataReplicationOutput
    S3BucketSource.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>S3 bucket source s3 bucket.</p>", "smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>S3 bucket source s3 key.</p>", "smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 's3BucketOwner', traits: {"smithy.api#documentation" => "<p>S3 bucket source s3 bucket owner.</p>"}))
    S3BucketSource.type = Types::S3BucketSource
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>Exceeded the service quota resource ID.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>Exceeded the service quota resource type.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Exceeded the service quota service code.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Exceeded the service quota code.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_value, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'quotaValue', traits: {"smithy.api#documentation" => "<p>Exceeded the service quota value.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceProperties.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>Source server last update date and time.</p>"}))
    SourceProperties.add_member(:recommended_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'recommendedInstanceType', traits: {"smithy.api#documentation" => "<p>Source server recommended instance type.</p>"}))
    SourceProperties.add_member(:identification_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentificationHints, location_name: 'identificationHints', traits: {"smithy.api#documentation" => "<p>Source server identification hints.</p>"}))
    SourceProperties.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>Source server network interfaces.</p>"}))
    SourceProperties.add_member(:disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Disks, location_name: 'disks', traits: {"smithy.api#documentation" => "<p>Source Server disks.</p>"}))
    SourceProperties.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Cpus, location_name: 'cpus', traits: {"smithy.api#documentation" => "<p>Source Server CPUs.</p>"}))
    SourceProperties.add_member(:ram_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ramBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Source server RAM in bytes.</p>"}))
    SourceProperties.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: OS, location_name: 'os', traits: {"smithy.api#documentation" => "<p>Source server OS.</p>"}))
    SourceProperties.type = Types::SourceProperties
    SourceServer.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    SourceServer.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    SourceServer.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    SourceServer.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    SourceServer.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    SourceServer.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    SourceServer.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    SourceServer.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    SourceServer.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    SourceServer.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    SourceServer.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    SourceServer.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    SourceServer.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    SourceServer.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    SourceServer.type = Types::SourceServer
    SourceServerActionDocument.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action ID.</p>"}))
    SourceServerActionDocument.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action name.</p>"}))
    SourceServerActionDocument.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document identifier.</p>"}))
    SourceServerActionDocument.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action order.</p>"}))
    SourceServerActionDocument.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action document version.</p>"}))
    SourceServerActionDocument.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action active status.</p>"}))
    SourceServerActionDocument.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action timeout in seconds.</p>"}))
    SourceServerActionDocument.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action must succeed for cutover.</p>"}))
    SourceServerActionDocument.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action parameters.</p>"}))
    SourceServerActionDocument.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action external parameters.</p>"}))
    SourceServerActionDocument.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action description.</p>"}))
    SourceServerActionDocument.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Source server post migration custom action category.</p>"}))
    SourceServerActionDocument.type = Types::SourceServerActionDocument
    SourceServerActionDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerActionDocument)
    SourceServerActionsRequestFilters.add_member(:action_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionIDs, location_name: 'actionIDs', traits: {"smithy.api#documentation" => "<p>Action IDs to filter source server post migration custom actions by.</p>"}))
    SourceServerActionsRequestFilters.type = Types::SourceServerActionsRequestFilters
    SourceServerConnectorAction.add_member(:credentials_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'credentialsSecretArn', traits: {"smithy.api#documentation" => "<p>Source Server connector action credentials secret arn.</p>"}))
    SourceServerConnectorAction.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'connectorArn', traits: {"smithy.api#documentation" => "<p>Source Server connector action connector arn.</p>"}))
    SourceServerConnectorAction.type = Types::SourceServerConnectorAction
    SourceServersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServer)
    SsmDocument.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>User-friendly name for the AWS Systems Manager Document.</p>", "smithy.api#required" => {}}))
    SsmDocument.add_member(:ssm_document_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentName, location_name: 'ssmDocumentName', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document name or full ARN.</p>", "smithy.api#required" => {}}))
    SsmDocument.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document timeout seconds.</p>"}))
    SsmDocument.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>If true, Cutover will not be enabled if the document has failed.</p>"}))
    SsmDocument.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document parameters.</p>"}))
    SsmDocument.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document external parameters.</p>"}))
    SsmDocument.type = Types::SsmDocument
    SsmDocumentExternalParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameterName)
    SsmDocumentExternalParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmExternalParameter)
    SsmDocumentParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameterName)
    SsmDocumentParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmParameterStoreParameters)
    SsmDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocument)
    SsmExternalParameter.add_member(:dynamic_path, Types::SsmExternalParameter::DynamicPath, Smithy::Schema::Shapes::ShapeRef.new(shape: JmesPathString, location_name: 'dynamicPath', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Document external parameters dynamic path.</p>"}))
    SsmExternalParameter.add_member(:unknown, Types::SsmExternalParameter::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SsmExternalParameter.type = Types::SsmExternalParameter
    SsmParameterStoreParameter.add_member(:parameter_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmParameterStoreParameterType, location_name: 'parameterType', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Parameter Store parameter type.</p>", "smithy.api#required" => {}}))
    SsmParameterStoreParameter.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmParameterStoreParameterName, location_name: 'parameterName', traits: {"smithy.api#documentation" => "<p>AWS Systems Manager Parameter Store parameter name.</p>", "smithy.api#required" => {}}))
    SsmParameterStoreParameter.type = Types::SsmParameterStoreParameter
    SsmParameterStoreParameters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SsmParameterStoreParameter)
    StartCutoverInput.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCutoverRequestSourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Start Cutover by Source Server IDs.</p>", "smithy.api#required" => {}}))
    StartCutoverInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Start Cutover by Tags.</p>"}))
    StartCutoverInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Start Cutover by Account IDs</p>"}))
    StartCutoverInput.type = Types::StartCutoverInput
    StartCutoverOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>Start Cutover Job response.</p>"}))
    StartCutoverOutput.type = Types::StartCutoverOutput
    StartCutoverRequestSourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    StartExportInput.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>Start export request s3 bucket.</p>", "smithy.api#required" => {}}))
    StartExportInput.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3Key', traits: {"smithy.api#documentation" => "<p>Start export request s3key.</p>", "smithy.api#required" => {}}))
    StartExportInput.add_member(:s3_bucket_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 's3BucketOwner', traits: {"smithy.api#documentation" => "<p>Start export request s3 bucket owner.</p>"}))
    StartExportInput.type = Types::StartExportInput
    StartExportOutput.add_member(:export_task, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTask, location_name: 'exportTask', traits: {"smithy.api#documentation" => "<p>Start export response export task.</p>"}))
    StartExportOutput.type = Types::StartExportOutput
    StartImportInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>Start import request client token.</p>", "smithy.api#idempotencyToken" => {}}))
    StartImportInput.add_member(:s3_bucket_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSource, location_name: 's3BucketSource', traits: {"smithy.api#documentation" => "<p>Start import request s3 bucket source.</p>", "smithy.api#required" => {}}))
    StartImportInput.type = Types::StartImportInput
    StartImportOutput.add_member(:import_task, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTask, location_name: 'importTask', traits: {"smithy.api#documentation" => "<p>Start import response import task.</p>"}))
    StartImportOutput.type = Types::StartImportOutput
    StartReplicationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>ID of source server on which to start replication.</p>", "smithy.api#required" => {}}))
    StartReplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID on which to start replication.</p>"}))
    StartReplicationInput.type = Types::StartReplicationInput
    StartReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    StartReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    StartReplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    StartReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    StartReplicationOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    StartReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    StartReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    StartReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    StartReplicationOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    StartReplicationOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    StartReplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    StartReplicationOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    StartReplicationOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    StartReplicationOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    StartReplicationOutput.type = Types::StartReplicationOutput
    StartTestInput.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTestRequestSourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Start Test for Source Server IDs.</p>", "smithy.api#required" => {}}))
    StartTestInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Start Test by Tags.</p>"}))
    StartTestInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Start Test for Account ID.</p>"}))
    StartTestInput.type = Types::StartTestInput
    StartTestOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>Start Test Job response.</p>"}))
    StartTestOutput.type = Types::StartTestOutput
    StartTestRequestSourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    StopReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    StopReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    StopReplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    StopReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    StopReplicationOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    StopReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    StopReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    StopReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    StopReplicationOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    StopReplicationOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    StopReplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    StopReplicationOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    StopReplicationOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    StopReplicationOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    StopReplicationOutput.type = Types::StopReplicationOutput
    StopReplicationRequest.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Stop Replication Request source server ID.</p>", "smithy.api#required" => {}}))
    StopReplicationRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Stop Replication Request account ID.</p>"}))
    StopReplicationRequest.type = Types::StopReplicationRequest
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>Tag resource by ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tag resource by Tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TemplateActionDocument.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionID, location_name: 'actionID', traits: {"smithy.api#documentation" => "<p>Template post migration custom action ID.</p>"}))
    TemplateActionDocument.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>Template post migration custom action name.</p>"}))
    TemplateActionDocument.add_member(:document_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'documentIdentifier', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document identifier.</p>"}))
    TemplateActionDocument.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderType, location_name: 'order', traits: {"smithy.api#documentation" => "<p>Template post migration custom action order.</p>"}))
    TemplateActionDocument.add_member(:document_version, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentVersion, location_name: 'documentVersion', traits: {"smithy.api#documentation" => "<p>Template post migration custom action document version.</p>"}))
    TemplateActionDocument.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Template post migration custom action active status.</p>"}))
    TemplateActionDocument.add_member(:timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'timeoutSeconds', traits: {"smithy.api#documentation" => "<p>Template post migration custom action timeout in seconds.</p>"}))
    TemplateActionDocument.add_member(:must_succeed_for_cutover, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'mustSucceedForCutover', traits: {"smithy.api#documentation" => "<p>Template post migration custom action must succeed for cutover.</p>"}))
    TemplateActionDocument.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action parameters.</p>"}))
    TemplateActionDocument.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: 'operatingSystem', traits: {"smithy.api#documentation" => "<p>Operating system eligible for this template post migration custom action.</p>"}))
    TemplateActionDocument.add_member(:external_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: 'externalParameters', traits: {"smithy.api#documentation" => "<p>Template post migration custom action external parameters.</p>"}))
    TemplateActionDocument.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Template post migration custom action description.</p>"}))
    TemplateActionDocument.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Template post migration custom action category.</p>"}))
    TemplateActionDocument.type = Types::TemplateActionDocument
    TemplateActionDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateActionDocument)
    TemplateActionsRequestFilters.add_member(:action_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionIDs, location_name: 'actionIDs', traits: {"smithy.api#documentation" => "<p>Action IDs to filter template post migration custom actions by.</p>"}))
    TemplateActionsRequestFilters.type = Types::TemplateActionsRequestFilters
    TerminateTargetInstancesInput.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateTargetInstancesRequestSourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>Terminate Target instance by Source Server IDs.</p>", "smithy.api#required" => {}}))
    TerminateTargetInstancesInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Terminate Target instance by Tags.</p>"}))
    TerminateTargetInstancesInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Terminate Target instance by Account ID</p>"}))
    TerminateTargetInstancesInput.type = Types::TerminateTargetInstancesInput
    TerminateTargetInstancesOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>Terminate Target instance Job response.</p>"}))
    TerminateTargetInstancesOutput.type = Types::TerminateTargetInstancesOutput
    TerminateTargetInstancesRequestSourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Reached throttling quota exception service code.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Reached throttling quota exception.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>Reached throttling quota exception will retry after x seconds.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UnarchiveApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    UnarchiveApplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    UnarchiveApplicationInput.type = Types::UnarchiveApplicationInput
    UnarchiveApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>"}))
    UnarchiveApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Application ARN.</p>"}))
    UnarchiveApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    UnarchiveApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    UnarchiveApplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Application archival status.</p>"}))
    UnarchiveApplicationOutput.add_member(:application_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: 'applicationAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status.</p>"}))
    UnarchiveApplicationOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Application creation dateTime.</p>"}))
    UnarchiveApplicationOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Application last modified dateTime.</p>"}))
    UnarchiveApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    UnarchiveApplicationOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Application wave ID.</p>"}))
    UnarchiveApplicationOutput.type = Types::UnarchiveApplicationOutput
    UnarchiveWaveInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    UnarchiveWaveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    UnarchiveWaveInput.type = Types::UnarchiveWaveInput
    UnarchiveWaveOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>"}))
    UnarchiveWaveOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Wave ARN.</p>"}))
    UnarchiveWaveOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    UnarchiveWaveOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    UnarchiveWaveOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Wave archival status.</p>"}))
    UnarchiveWaveOutput.add_member(:wave_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: 'waveAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status.</p>"}))
    UnarchiveWaveOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Wave creation dateTime.</p>"}))
    UnarchiveWaveOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Wave last modified dateTime.</p>"}))
    UnarchiveWaveOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    UnarchiveWaveOutput.type = Types::UnarchiveWaveOutput
    UninitializedAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    UninitializedAccountException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    UninitializedAccountException.type = Types::UninitializedAccountException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>Untag resource by ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Untag resource by Keys.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateApplicationInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>", "smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    UpdateApplicationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    UpdateApplicationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Application ID.</p>"}))
    UpdateApplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Application ARN.</p>"}))
    UpdateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Application name.</p>"}))
    UpdateApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Application description.</p>"}))
    UpdateApplicationOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Application archival status.</p>"}))
    UpdateApplicationOutput.add_member(:application_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: 'applicationAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Application aggregated status.</p>"}))
    UpdateApplicationOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Application creation dateTime.</p>"}))
    UpdateApplicationOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Application last modified dateTime.</p>"}))
    UpdateApplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Application tags.</p>"}))
    UpdateApplicationOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Application wave ID.</p>"}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateConnectorOutput.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID, location_name: 'connectorID', traits: {"smithy.api#documentation" => "<p>Connector ID.</p>"}))
    UpdateConnectorOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Connector name.</p>"}))
    UpdateConnectorOutput.add_member(:ssm_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmInstanceID, location_name: 'ssmInstanceID', traits: {"smithy.api#documentation" => "<p>Connector SSM instance ID.</p>"}))
    UpdateConnectorOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Connector arn.</p>"}))
    UpdateConnectorOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Connector tags.</p>"}))
    UpdateConnectorOutput.add_member(:ssm_command_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: 'ssmCommandConfig', traits: {"smithy.api#documentation" => "<p>Connector SSM command config.</p>"}))
    UpdateConnectorOutput.type = Types::UpdateConnectorOutput
    UpdateConnectorRequest.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorID, location_name: 'connectorID', traits: {"smithy.api#documentation" => "<p>Update Connector request connector ID.</p>", "smithy.api#required" => {}}))
    UpdateConnectorRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Update Connector request name.</p>"}))
    UpdateConnectorRequest.add_member(:ssm_command_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: 'ssmCommandConfig', traits: {"smithy.api#documentation" => "<p>Update Connector request SSM command config.</p>"}))
    UpdateConnectorRequest.type = Types::UpdateConnectorRequest
    UpdateLaunchConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Update Launch configuration by Source Server ID request.</p>", "smithy.api#required" => {}}))
    UpdateLaunchConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Update Launch configuration name request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Update Launch configuration launch disposition request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Update Launch configuration Target instance right sizing request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Update Launch configuration copy Private IP request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Update Launch configuration copy Tags request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Update Launch configuration licensing request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Update Launch configuration boot mode request.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions'))
    UpdateLaunchConfigurationInput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration map auto tagging MPE ID.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Update Launch configuration Account ID.</p>"}))
    UpdateLaunchConfigurationInput.type = Types::UpdateLaunchConfigurationInput
    UpdateLaunchConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Launch configuration Source Server ID.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Launch configuration name.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>Launch configuration EC2 Launch template ID.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition for launch configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Launch configuration Target instance type right sizing method.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy Private IP during Launch Configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy Tags during Launch Configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Launch configuration OS licensing.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration boot mode.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions'))
    UpdateLaunchConfigurationOutput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Map auto tagging MPE ID.</p>"}))
    UpdateLaunchConfigurationOutput.type = Types::UpdateLaunchConfigurationOutput
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Launch Configuration Template ID.</p>", "smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateInput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions', traits: {"smithy.api#documentation" => "<p>Post Launch Action to execute on the Test or Cutover instance.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration template map auto tagging MPE ID.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private Ip.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate public Ip address.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing'))
    UpdateLaunchConfigurationTemplateInput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration template boot mode.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:small_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'smallVolumeMaxSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Small volume maximum size.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:small_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'smallVolumeConf', traits: {"smithy.api#documentation" => "<p>Small volume config.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:large_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'largeVolumeConf', traits: {"smithy.api#documentation" => "<p>Large volume config.</p>"}))
    UpdateLaunchConfigurationTemplateInput.type = Types::UpdateLaunchConfigurationTemplateInput
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>ID of the Launch Configuration Template.</p>", "smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Launch Configuration Template.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:post_launch_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: 'postLaunchActions', traits: {"smithy.api#documentation" => "<p>Post Launch Actions of the Launch Configuration Template.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:enable_map_auto_tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enableMapAutoTagging', traits: {"smithy.api#documentation" => "<p>Enable map auto tagging.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:map_auto_tagging_mpe_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'mapAutoTaggingMpeID', traits: {"smithy.api#documentation" => "<p>Launch configuration template map auto tagging MPE ID.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags of the Launch Configuration Template.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2LaunchConfigurationTemplateID, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>EC2 launch template ID.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private Ip.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate public Ip address.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing'))
    UpdateLaunchConfigurationTemplateOutput.add_member(:boot_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BootMode, location_name: 'bootMode', traits: {"smithy.api#documentation" => "<p>Launch configuration template boot mode.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:small_volume_max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'smallVolumeMaxSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Small volume maximum size.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:small_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'smallVolumeConf', traits: {"smithy.api#documentation" => "<p>Small volume config.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.add_member(:large_volume_conf, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: 'largeVolumeConf', traits: {"smithy.api#documentation" => "<p>Large volume config.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.type = Types::UpdateLaunchConfigurationTemplateOutput
    UpdateReplicationConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Update replication configuration Source Server ID request.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Update replication configuration name request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Update replication configuration Staging Area subnet request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Update replication configuration associate default Application Migration Service Security group request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Update replication configuration Replication Server Security Groups IDs request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Update replication configuration Replication Server instance type request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Update replication configuration use dedicated Replication Server request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Update replication configuration use default large Staging Disk type request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>Update replication configuration replicated disks request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Update replication configuration EBS encryption request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Update replication configuration EBS encryption key ARN request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Update replication configuration bandwidth throttling request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Update replication configuration data plane routing request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Update replication configuration create Public IP request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Update replication configuration Staging Area Tags request.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Update replication configuration use Fips Endpoint.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Update replication configuration Account ID request.</p>"}))
    UpdateReplicationConfigurationInput.type = Types::UpdateReplicationConfigurationInput
    UpdateReplicationConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Replication Configuration Source Server ID.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Replication Configuration name.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Replication Configuration Staging Area subnet ID.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Replication Configuration associate default Application Migration Service Security Group.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Replication Configuration Replication Server Security Group IDs.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Replication Configuration Replication Server instance type.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Replication Configuration use Dedicated Replication Server.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration use default large Staging Disks.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>Replication Configuration replicated disks.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Replication Configuration EBS encryption.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Replication Configuration EBS encryption key ARN.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration set bandwidth throttling.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Replication Configuration data plane routing.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Replication Configuration create Public IP.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Replication Configuration Staging Area tags.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Replication Configuration use Fips Endpoint.</p>"}))
    UpdateReplicationConfigurationOutput.type = Types::UpdateReplicationConfigurationOutput
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Update replication configuration template template ID request.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Update replication configuration template ARN request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Update replication configuration template Staging Area subnet ID request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Update replication configuration template associate default Application Migration Service Security group request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Update replication configuration template Replication Server Security groups IDs request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Update replication configuration template Replication Server instance type request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Update replication configuration template use dedicated Replication Server request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Update replication configuration template use default large Staging Disk type request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Update replication configuration template EBS encryption request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Update replication configuration template EBS encryption key ARN request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Update replication configuration template bandwidth throttling request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Update replication configuration template data plane routing request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Update replication configuration template create Public IP request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Update replication configuration template Staging Area Tags request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Update replication configuration template use Fips Endpoint request.</p>"}))
    UpdateReplicationConfigurationTemplateInput.type = Types::UpdateReplicationConfigurationTemplateInput
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ID.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template ARN.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area subnet ID.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Replication Configuration template associate default Application Migration Service Security group.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server Security Groups IDs.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template server instance type.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Dedicated Replication Server.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use default large Staging Disk type.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>Replication Configuration template EBS encryption key ARN.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Replication Configuration template bandwidth throttling.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>Replication Configuration template data plane routing.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Replication Configuration template create Public IP.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Staging Area Tags.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_fips_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useFipsEndpoint', traits: {"smithy.api#documentation" => "<p>Replication Configuration template use Fips Endpoint.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Replication Configuration template Tags.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.type = Types::UpdateReplicationConfigurationTemplateOutput
    UpdateSourceServerOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    UpdateSourceServerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    UpdateSourceServerOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    UpdateSourceServerOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    UpdateSourceServerOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    UpdateSourceServerOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    UpdateSourceServerOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    UpdateSourceServerOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    UpdateSourceServerOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    UpdateSourceServerOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    UpdateSourceServerOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    UpdateSourceServerOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    UpdateSourceServerOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    UpdateSourceServerOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    UpdateSourceServerOutput.type = Types::UpdateSourceServerOutput
    UpdateSourceServerReplicationTypeInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>ID of source server on which to update replication type.</p>", "smithy.api#required" => {}}))
    UpdateSourceServerReplicationTypeInput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Replication type to which to update source server.</p>", "smithy.api#required" => {}}))
    UpdateSourceServerReplicationTypeInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID on which to update replication type.</p>"}))
    UpdateSourceServerReplicationTypeInput.type = Types::UpdateSourceServerReplicationTypeInput
    UpdateSourceServerReplicationTypeOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Source server ID.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Source server ARN.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Source server archived status.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Source server Tags.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:launched_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: 'launchedInstance', traits: {"smithy.api#documentation" => "<p>Source server launched instance.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>Source server data replication info.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>Source server lifecycle state.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>Source server properties.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:replication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationType, location_name: 'replicationType', traits: {"smithy.api#documentation" => "<p>Source server replication type.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>Source server vCenter client id.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationID, location_name: 'applicationID', traits: {"smithy.api#documentation" => "<p>Source server application ID.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:user_provided_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'userProvidedID', traits: {"smithy.api#documentation" => "<p>Source server user provided ID.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:fqdn_for_action_framework, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdnForActionFramework', traits: {"smithy.api#documentation" => "<p>Source server fqdn for action framework.</p>"}))
    UpdateSourceServerReplicationTypeOutput.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Source Server connector action.</p>"}))
    UpdateSourceServerReplicationTypeOutput.type = Types::UpdateSourceServerReplicationTypeOutput
    UpdateSourceServerRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Update Source Server request account ID.</p>"}))
    UpdateSourceServerRequest.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Update Source Server request source server ID.</p>", "smithy.api#required" => {}}))
    UpdateSourceServerRequest.add_member(:connector_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: 'connectorAction', traits: {"smithy.api#documentation" => "<p>Update Source Server request connector action.</p>"}))
    UpdateSourceServerRequest.type = Types::UpdateSourceServerRequest
    UpdateWaveInput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>", "smithy.api#required" => {}}))
    UpdateWaveInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    UpdateWaveInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    UpdateWaveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID.</p>"}))
    UpdateWaveInput.type = Types::UpdateWaveInput
    UpdateWaveOutput.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>"}))
    UpdateWaveOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Wave ARN.</p>"}))
    UpdateWaveOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    UpdateWaveOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    UpdateWaveOutput.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Wave archival status.</p>"}))
    UpdateWaveOutput.add_member(:wave_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: 'waveAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status.</p>"}))
    UpdateWaveOutput.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Wave creation dateTime.</p>"}))
    UpdateWaveOutput.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Wave last modified dateTime.</p>"}))
    UpdateWaveOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    UpdateWaveOutput.type = Types::UpdateWaveOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ValidationException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Validate exception reason.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>Validate exception field list.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Validate exception field name.</p>"}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Validate exception field message.</p>"}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VcenterClient.add_member(:vcenter_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClientID, location_name: 'vcenterClientID', traits: {"smithy.api#documentation" => "<p>ID of vCenter client.</p>"}))
    VcenterClient.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Arn of vCenter client.</p>"}))
    VcenterClient.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>Hostname of vCenter client .</p>"}))
    VcenterClient.add_member(:vcenter_uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'vcenterUUID', traits: {"smithy.api#documentation" => "<p>Vcenter UUID of vCenter client.</p>"}))
    VcenterClient.add_member(:datacenter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'datacenterName', traits: {"smithy.api#documentation" => "<p>Datacenter name of vCenter client.</p>"}))
    VcenterClient.add_member(:last_seen_datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastSeenDatetime', traits: {"smithy.api#documentation" => "<p>Last seen time of vCenter client.</p>"}))
    VcenterClient.add_member(:source_server_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'sourceServerTags', traits: {"smithy.api#documentation" => "<p>Tags for Source Server of vCenter client.</p>"}))
    VcenterClient.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for vCenter client.</p>"}))
    VcenterClient.type = Types::VcenterClient
    VcenterClientList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterClient)
    Wave.add_member(:wave_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID, location_name: 'waveID', traits: {"smithy.api#documentation" => "<p>Wave ID.</p>"}))
    Wave.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Wave ARN.</p>"}))
    Wave.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Wave name.</p>"}))
    Wave.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Wave description.</p>"}))
    Wave.add_member(:is_archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArchived', traits: {"smithy.api#documentation" => "<p>Wave archival status.</p>"}))
    Wave.add_member(:wave_aggregated_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: 'waveAggregatedStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status.</p>"}))
    Wave.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>Wave creation dateTime.</p>"}))
    Wave.add_member(:last_modified_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastModifiedDateTime', traits: {"smithy.api#documentation" => "<p>Wave last modified dateTime.</p>"}))
    Wave.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Wave tags.</p>"}))
    Wave.type = Types::Wave
    WaveAggregatedStatus.add_member(:last_update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastUpdateDateTime', traits: {"smithy.api#documentation" => "<p>Wave aggregated status last update dateTime.</p>"}))
    WaveAggregatedStatus.add_member(:replication_started_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'replicationStartedDateTime', traits: {"smithy.api#documentation" => "<p>DateTime marking when the first source server in the wave started replication.</p>"}))
    WaveAggregatedStatus.add_member(:health_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveHealthStatus, location_name: 'healthStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status health status.</p>"}))
    WaveAggregatedStatus.add_member(:progress_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WaveProgressStatus, location_name: 'progressStatus', traits: {"smithy.api#documentation" => "<p>Wave aggregated status progress status.</p>"}))
    WaveAggregatedStatus.add_member(:total_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'totalApplications', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Wave aggregated status total applications amount.</p>"}))
    WaveAggregatedStatus.type = Types::WaveAggregatedStatus
    WaveIDsFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WaveID)
    WavesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Wave)

    ApplicationMigrationService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mgn#ApplicationMigrationService"
      service.name = "ApplicationMigrationService"
      service.version = "2020-02-26"
      service.traits = {"aws.api#service" => {"sdkId" => "mgn", "arnNamespace" => "mgn", "awsProductName" => "mgn", "cloudTrailEventSource" => "mgn.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "mgn"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "Application Migration Service"}
      service.add_operation(:archive_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ArchiveApplication"
        operation.name = "ArchiveApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ArchiveApplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:archive_wave, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ArchiveWave"
        operation.name = "ArchiveWave"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveWaveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveWaveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ArchiveWave", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:associate_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#AssociateApplications"
        operation.name = "AssociateApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/AssociateApplications", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_source_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#AssociateSourceServers"
        operation.name = "AssociateSourceServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/AssociateSourceServers", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:change_server_life_cycle_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ChangeServerLifeCycleState"
        operation.name = "ChangeServerLifeCycleState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ChangeServerLifeCycleState", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateApplication", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateConnector", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateLaunchConfigurationTemplate"
        operation.name = "CreateLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateLaunchConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateReplicationConfigurationTemplate"
        operation.name = "CreateReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateReplicationConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_wave, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#CreateWave"
        operation.name = "CreateWave"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWaveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWaveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateWave", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteApplication", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteConnector", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteJob", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteLaunchConfigurationTemplate"
        operation.name = "DeleteLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteReplicationConfigurationTemplate"
        operation.name = "DeleteReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteReplicationConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteSourceServer"
        operation.name = "DeleteSourceServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceServerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceServerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceServer", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vcenter_client, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteVcenterClient"
        operation.name = "DeleteVcenterClient"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVcenterClientInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteVcenterClient", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_wave, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DeleteWave"
        operation.name = "DeleteWave"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWaveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWaveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteWave", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_job_log_items, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeJobLogItems"
        operation.name = "DescribeJobLogItems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobLogItemsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobLogItemsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobLogItems", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobLogItems.new
      end)
      service.add_operation(:describe_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobs", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobs.new
      end)
      service.add_operation(:describe_launch_configuration_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeLaunchConfigurationTemplates"
        operation.name = "DescribeLaunchConfigurationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeLaunchConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeLaunchConfigurationTemplates.new
      end)
      service.add_operation(:describe_replication_configuration_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeReplicationConfigurationTemplates"
        operation.name = "DescribeReplicationConfigurationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeReplicationConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurationTemplates.new
      end)
      service.add_operation(:describe_source_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeSourceServers"
        operation.name = "DescribeSourceServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceServers.new
      end)
      service.add_operation(:describe_vcenter_clients, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DescribeVcenterClients"
        operation.name = "DescribeVcenterClients"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVcenterClientsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVcenterClientsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeVcenterClients", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeVcenterClients.new
      end)
      service.add_operation(:disassociate_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisassociateApplications"
        operation.name = "DisassociateApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DisassociateApplications", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_source_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisassociateSourceServers"
        operation.name = "DisassociateSourceServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DisassociateSourceServers", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disconnect_from_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#DisconnectFromService"
        operation.name = "DisconnectFromService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectFromServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectFromServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectFromService", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:finalize_cutover, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#FinalizeCutover"
        operation.name = "FinalizeCutover"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizeCutoverInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: FinalizeCutoverOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/FinalizeCutover", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetLaunchConfiguration"
        operation.name = "GetLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#GetReplicationConfiguration"
        operation.name = "GetReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:initialize_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#InitializeService"
        operation.name = "InitializeService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/InitializeService", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListApplications", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListConnectors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_export_errors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListExportErrors"
        operation.name = "ListExportErrors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportErrorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportErrorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExportErrors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExportErrors.new
      end)
      service.add_operation(:list_exports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListExports"
        operation.name = "ListExports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExports", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_import_errors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListImportErrors"
        operation.name = "ListImportErrors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportErrorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportErrorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListImportErrors", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportErrors.new
      end)
      service.add_operation(:list_imports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListImports"
        operation.name = "ListImports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListImports", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_managed_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListManagedAccounts"
        operation.name = "ListManagedAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListManagedAccounts", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedAccounts.new
      end)
      service.add_operation(:list_source_server_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListSourceServerActions"
        operation.name = "ListSourceServerActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceServerActionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceServerActionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListSourceServerActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceServerActions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_template_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListTemplateActions"
        operation.name = "ListTemplateActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateActionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateActionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListTemplateActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateActions.new
      end)
      service.add_operation(:list_waves, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ListWaves"
        operation.name = "ListWaves"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWavesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWavesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListWaves", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWaves.new
      end)
      service.add_operation(:mark_as_archived, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#MarkAsArchived"
        operation.name = "MarkAsArchived"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MarkAsArchivedInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MarkAsArchivedOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/MarkAsArchived", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:pause_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PauseReplication"
        operation.name = "PauseReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PauseReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:put_source_server_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PutSourceServerAction"
        operation.name = "PutSourceServerAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSourceServerActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSourceServerActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutSourceServerAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:put_template_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#PutTemplateAction"
        operation.name = "PutTemplateAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTemplateActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutTemplateActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutTemplateAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:remove_source_server_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RemoveSourceServerAction"
        operation.name = "RemoveSourceServerAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceServerActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceServerActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/RemoveSourceServerAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:remove_template_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RemoveTemplateAction"
        operation.name = "RemoveTemplateAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTemplateActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTemplateActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/RemoveTemplateAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:resume_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#ResumeReplication"
        operation.name = "ResumeReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ResumeReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:retry_data_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#RetryDataReplication"
        operation.name = "RetryDataReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryDataReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryDataReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/RetryDataReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_cutover, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartCutover"
        operation.name = "StartCutover"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCutoverInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCutoverOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartCutover", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartExport"
        operation.name = "StartExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartExport", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartImport"
        operation.name = "StartImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartImport", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartReplication"
        operation.name = "StartReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_test, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StartTest"
        operation.name = "StartTest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartTest", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:stop_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#StopReplication"
        operation.name = "StopReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StopReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_target_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#TerminateTargetInstances"
        operation.name = "TerminateTargetInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateTargetInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateTargetInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/TerminateTargetInstances", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:unarchive_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UnarchiveApplication"
        operation.name = "UnarchiveApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnarchiveApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UnarchiveApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UnarchiveApplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:unarchive_wave, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UnarchiveWave"
        operation.name = "UnarchiveWave"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnarchiveWaveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UnarchiveWaveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UnarchiveWave", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateApplication", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateConnector"
        operation.name = "UpdateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateConnector", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateLaunchConfiguration"
        operation.name = "UpdateLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateLaunchConfigurationTemplate"
        operation.name = "UpdateLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateReplicationConfiguration"
        operation.name = "UpdateReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateReplicationConfigurationTemplate"
        operation.name = "UpdateReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_source_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateSourceServer"
        operation.name = "UpdateSourceServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceServerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceServerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateSourceServer", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_source_server_replication_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateSourceServerReplicationType"
        operation.name = "UpdateSourceServerReplicationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceServerReplicationTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceServerReplicationTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateSourceServerReplicationType", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_wave, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mgn#UpdateWave"
        operation.name = "UpdateWave"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWaveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWaveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateWave", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
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
