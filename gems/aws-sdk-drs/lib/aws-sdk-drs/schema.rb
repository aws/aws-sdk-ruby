# frozen_string_literal: true

# This is generated code!

module Aws::Drs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.{16,2044}$"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#Account", name: "Account")
    AccountID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AccountID", name: "AccountID", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "[0-9]{12,}"})
    AccountIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#AccountIDs", name: "AccountIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    Accounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#Accounts", name: "Accounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AgentVersion", name: "AgentVersion", traits: {"smithy.api#pattern" => "^[0-9]{1,5}.[0-9]{1,5}.[0-9]{1,5}(.[0-9]{4}.[0-9]{3}.[0-9]{4})?$"})
    AssociateSourceNetworkStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#AssociateSourceNetworkStackRequest", name: "AssociateSourceNetworkStackRequest")
    AssociateSourceNetworkStackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#AssociateSourceNetworkStackResponse", name: "AssociateSourceNetworkStackResponse")
    AwsAvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AwsAvailabilityZone", name: "AwsAvailabilityZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|eusc|sa|af|me|mx|il)-([a-z]{2}-)?(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9][a-z]$"})
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|eusc|sa|af|me|mx|il)-([a-z]{2}-)?(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9]$"})
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CPU = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CPU", name: "CPU")
    CancelRecoveryPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CancelRecoveryPlanExecutionRequest", name: "CancelRecoveryPlanExecutionRequest")
    CancelRecoveryPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CancelRecoveryPlanExecutionResponse", name: "CancelRecoveryPlanExecutionResponse")
    CfnStackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#CfnStackName", name: "CfnStackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ClientIdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ClientIdempotencyToken", name: "ClientIdempotencyToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#ConversionMap", name: "ConversionMap")
    ConversionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ConversionProperties", name: "ConversionProperties")
    Cpus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#Cpus", name: "Cpus", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateExtendedSourceServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateExtendedSourceServerInput", name: "CreateExtendedSourceServerInput")
    CreateExtendedSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateExtendedSourceServerOutput", name: "CreateExtendedSourceServerOutput")
    CreateLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateLaunchConfigurationTemplateInput", name: "CreateLaunchConfigurationTemplateInput")
    CreateLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateLaunchConfigurationTemplateOutput", name: "CreateLaunchConfigurationTemplateOutput")
    CreateRecoveryPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateRecoveryPlanRequest", name: "CreateRecoveryPlanRequest")
    CreateRecoveryPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateRecoveryPlanResponse", name: "CreateRecoveryPlanResponse")
    CreateRecoveryPlanStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateRecoveryPlanStepRequest", name: "CreateRecoveryPlanStepRequest")
    CreateRecoveryPlanStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateRecoveryPlanStepResponse", name: "CreateRecoveryPlanStepResponse")
    CreateReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateReplicationConfigurationTemplateOutput", name: "CreateReplicationConfigurationTemplateOutput")
    CreateReplicationConfigurationTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateReplicationConfigurationTemplateRequest", name: "CreateReplicationConfigurationTemplateRequest")
    CreateSourceNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateSourceNetworkRequest", name: "CreateSourceNetworkRequest")
    CreateSourceNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateSourceNetworkResponse", name: "CreateSourceNetworkResponse")
    DataReplicationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DataReplicationError", name: "DataReplicationError")
    DataReplicationErrorString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#DataReplicationErrorString", name: "DataReplicationErrorString", traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}]})
    DataReplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DataReplicationInfo", name: "DataReplicationInfo")
    DataReplicationInfoReplicatedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DataReplicationInfoReplicatedDisk", name: "DataReplicationInfoReplicatedDisk")
    DataReplicationInfoReplicatedDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DataReplicationInfoReplicatedDisks", name: "DataReplicationInfoReplicatedDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    DataReplicationInitiation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DataReplicationInitiation", name: "DataReplicationInitiation")
    DataReplicationInitiationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DataReplicationInitiationStep", name: "DataReplicationInitiationStep")
    DataReplicationInitiationStepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#DataReplicationInitiationStepName", name: "DataReplicationInitiationStepName", traits: {"smithy.api#enum" => [{"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}]})
    DataReplicationInitiationStepStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#DataReplicationInitiationStepStatus", name: "DataReplicationInitiationStepStatus", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    DataReplicationInitiationSteps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DataReplicationInitiationSteps", name: "DataReplicationInitiationSteps")
    DataReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#DataReplicationState", name: "DataReplicationState", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}]})
    DeleteJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteJobInput", name: "DeleteJobInput")
    DeleteJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteJobOutput", name: "DeleteJobOutput")
    DeleteLaunchActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteLaunchActionRequest", name: "DeleteLaunchActionRequest")
    DeleteLaunchActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteLaunchActionResponse", name: "DeleteLaunchActionResponse")
    DeleteLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteLaunchConfigurationTemplateInput", name: "DeleteLaunchConfigurationTemplateInput")
    DeleteLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteLaunchConfigurationTemplateOutput", name: "DeleteLaunchConfigurationTemplateOutput")
    DeleteRecoveryInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryInstanceInput", name: "DeleteRecoveryInstanceInput")
    DeleteRecoveryPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanExecutionRequest", name: "DeleteRecoveryPlanExecutionRequest")
    DeleteRecoveryPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanExecutionResponse", name: "DeleteRecoveryPlanExecutionResponse")
    DeleteRecoveryPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanRequest", name: "DeleteRecoveryPlanRequest")
    DeleteRecoveryPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanResponse", name: "DeleteRecoveryPlanResponse")
    DeleteRecoveryPlanStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanStepRequest", name: "DeleteRecoveryPlanStepRequest")
    DeleteRecoveryPlanStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteRecoveryPlanStepResponse", name: "DeleteRecoveryPlanStepResponse")
    DeleteReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteReplicationConfigurationTemplateInput", name: "DeleteReplicationConfigurationTemplateInput")
    DeleteReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteReplicationConfigurationTemplateOutput", name: "DeleteReplicationConfigurationTemplateOutput")
    DeleteSourceNetworkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteSourceNetworkRequest", name: "DeleteSourceNetworkRequest")
    DeleteSourceNetworkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteSourceNetworkResponse", name: "DeleteSourceNetworkResponse")
    DeleteSourceServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteSourceServerInput", name: "DeleteSourceServerInput")
    DeleteSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DeleteSourceServerOutput", name: "DeleteSourceServerOutput")
    DescribeJobLogItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeJobLogItemsInput", name: "DescribeJobLogItemsInput")
    DescribeJobLogItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeJobLogItemsOutput", name: "DescribeJobLogItemsOutput")
    DescribeJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeJobsInput", name: "DescribeJobsInput")
    DescribeJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeJobsOutput", name: "DescribeJobsOutput")
    DescribeJobsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeJobsRequestFilters", name: "DescribeJobsRequestFilters")
    DescribeJobsRequestFiltersJobIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DescribeJobsRequestFiltersJobIDs", name: "DescribeJobsRequestFiltersJobIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DescribeLaunchConfigurationTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeLaunchConfigurationTemplatesInput", name: "DescribeLaunchConfigurationTemplatesInput")
    DescribeLaunchConfigurationTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeLaunchConfigurationTemplatesOutput", name: "DescribeLaunchConfigurationTemplatesOutput")
    DescribeRecoveryInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoveryInstancesInput", name: "DescribeRecoveryInstancesInput")
    DescribeRecoveryInstancesItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DescribeRecoveryInstancesItems", name: "DescribeRecoveryInstancesItems")
    DescribeRecoveryInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoveryInstancesOutput", name: "DescribeRecoveryInstancesOutput")
    DescribeRecoveryInstancesRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoveryInstancesRequestFilters", name: "DescribeRecoveryInstancesRequestFilters")
    DescribeRecoverySnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoverySnapshotsInput", name: "DescribeRecoverySnapshotsInput")
    DescribeRecoverySnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoverySnapshotsOutput", name: "DescribeRecoverySnapshotsOutput")
    DescribeRecoverySnapshotsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeRecoverySnapshotsRequestFilters", name: "DescribeRecoverySnapshotsRequestFilters")
    DescribeReplicationConfigurationTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeReplicationConfigurationTemplatesInput", name: "DescribeReplicationConfigurationTemplatesInput")
    DescribeReplicationConfigurationTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeReplicationConfigurationTemplatesOutput", name: "DescribeReplicationConfigurationTemplatesOutput")
    DescribeSourceNetworksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceNetworksRequest", name: "DescribeSourceNetworksRequest")
    DescribeSourceNetworksRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceNetworksRequestFilters", name: "DescribeSourceNetworksRequestFilters")
    DescribeSourceNetworksRequestFiltersIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DescribeSourceNetworksRequestFiltersIDs", name: "DescribeSourceNetworksRequestFiltersIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DescribeSourceNetworksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceNetworksResponse", name: "DescribeSourceNetworksResponse")
    DescribeSourceServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceServersInput", name: "DescribeSourceServersInput")
    DescribeSourceServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceServersOutput", name: "DescribeSourceServersOutput")
    DescribeSourceServersRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DescribeSourceServersRequestFilters", name: "DescribeSourceServersRequestFilters")
    DescribeSourceServersRequestFiltersIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#DescribeSourceServersRequestFiltersIDs", name: "DescribeSourceServersRequestFiltersIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DisconnectRecoveryInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DisconnectRecoveryInstanceInput", name: "DisconnectRecoveryInstanceInput")
    DisconnectSourceServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DisconnectSourceServerInput", name: "DisconnectSourceServerInput")
    DisconnectSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#DisconnectSourceServerOutput", name: "DisconnectSourceServerOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    Disk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#Disk", name: "Disk")
    Disks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#Disks", name: "Disks", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    EC2InstanceID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#EC2InstanceID", name: "EC2InstanceID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    EC2InstanceState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#EC2InstanceState", name: "EC2InstanceState", traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "SHUTTING_DOWN", "value" => "SHUTTING-DOWN"}, {"name" => "TERMINATED", "value" => "TERMINATED"}, {"name" => "NOT_FOUND", "value" => "NOT_FOUND"}]})
    EC2InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#EC2InstanceType", name: "EC2InstanceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    EbsSnapshot = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#EbsSnapshot", name: "EbsSnapshot", traits: {"smithy.api#pattern" => "^snap-[0-9a-zA-Z]{17}$"})
    EbsSnapshotsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#EbsSnapshotsList", name: "EbsSnapshotsList")
    EbsVolumeID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#EbsVolumeID", name: "EbsVolumeID", traits: {"smithy.api#length" => {"min" => 10, "max" => 19}, "smithy.api#pattern" => "^vol-([0-9a-fA-F]{8}|[0-9a-fA-F]{17})$"})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ErrorDetail", name: "ErrorDetail")
    EventResourceData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.drs#EventResourceData", name: "EventResourceData")
    ExecutionServerStepConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ExecutionServerStepConfiguration", name: "ExecutionServerStepConfiguration")
    ExportSourceNetworkCfnTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ExportSourceNetworkCfnTemplateRequest", name: "ExportSourceNetworkCfnTemplateRequest")
    ExportSourceNetworkCfnTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ExportSourceNetworkCfnTemplateResponse", name: "ExportSourceNetworkCfnTemplateResponse")
    ExtensionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ExtensionStatus", name: "ExtensionStatus", traits: {"smithy.api#enum" => [{"name" => "EXTENDED", "value" => "EXTENDED"}, {"name" => "EXTENSION_ERROR", "value" => "EXTENSION_ERROR"}, {"name" => "NOT_EXTENDED", "value" => "NOT_EXTENDED"}]})
    FailbackLaunchType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#FailbackLaunchType", name: "FailbackLaunchType", traits: {"smithy.api#enum" => [{"name" => "RECOVERY", "value" => "RECOVERY"}, {"name" => "DRILL", "value" => "DRILL"}]})
    FailbackReplicationError = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#FailbackReplicationError", name: "FailbackReplicationError", traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "FAILBACK_CLIENT_NOT_SEEN", "value" => "FAILBACK_CLIENT_NOT_SEEN"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "value" => "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"}, {"name" => "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE", "value" => "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "value" => "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "value" => "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"}, {"name" => "FAILED_GETTING_REPLICATION_STATE", "value" => "FAILED_GETTING_REPLICATION_STATE"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}]})
    FailbackState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#FailbackState", name: "FailbackState", traits: {"smithy.api#enum" => [{"name" => "FAILBACK_NOT_STARTED", "value" => "FAILBACK_NOT_STARTED"}, {"name" => "FAILBACK_IN_PROGRESS", "value" => "FAILBACK_IN_PROGRESS"}, {"name" => "FAILBACK_READY_FOR_LAUNCH", "value" => "FAILBACK_READY_FOR_LAUNCH"}, {"name" => "FAILBACK_COMPLETED", "value" => "FAILBACK_COMPLETED"}, {"name" => "FAILBACK_ERROR", "value" => "FAILBACK_ERROR"}, {"name" => "FAILBACK_NOT_READY_FOR_LAUNCH", "value" => "FAILBACK_NOT_READY_FOR_LAUNCH"}, {"name" => "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE", "value" => "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE"}]})
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#FailureReason", name: "FailureReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;]*$"})
    GetFailbackReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetFailbackReplicationConfigurationInput", name: "GetFailbackReplicationConfigurationInput")
    GetFailbackReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetFailbackReplicationConfigurationOutput", name: "GetFailbackReplicationConfigurationOutput")
    GetLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetLaunchConfigurationInput", name: "GetLaunchConfigurationInput")
    GetLaunchConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetLaunchConfigurationOutput", name: "GetLaunchConfigurationOutput")
    GetRecoveryPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanExecutionRequest", name: "GetRecoveryPlanExecutionRequest")
    GetRecoveryPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanExecutionResponse", name: "GetRecoveryPlanExecutionResponse")
    GetRecoveryPlanExecutionStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanExecutionStepRequest", name: "GetRecoveryPlanExecutionStepRequest")
    GetRecoveryPlanExecutionStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanExecutionStepResponse", name: "GetRecoveryPlanExecutionStepResponse")
    GetRecoveryPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanRequest", name: "GetRecoveryPlanRequest")
    GetRecoveryPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanResponse", name: "GetRecoveryPlanResponse")
    GetRecoveryPlanStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanStepRequest", name: "GetRecoveryPlanStepRequest")
    GetRecoveryPlanStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetRecoveryPlanStepResponse", name: "GetRecoveryPlanStepResponse")
    GetReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetReplicationConfigurationInput", name: "GetReplicationConfigurationInput")
    GetReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#GetReplicationConfigurationOutput", name: "GetReplicationConfigurationOutput")
    IPsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#IPsList", name: "IPsList")
    ISO8601DatetimeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ISO8601DatetimeString", name: "ISO8601DatetimeString", traits: {"smithy.api#length" => {"min" => 19, "max" => 32}, "smithy.api#pattern" => "^[1-9][0-9]*-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?Z$"})
    ISO8601DurationString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ISO8601DurationString", name: "ISO8601DurationString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    IdentificationHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#IdentificationHints", name: "IdentificationHints")
    InitializeServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#InitializeServiceInput", name: "InitializeServiceInput")
    InitializeServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#InitializeServiceOutput", name: "InitializeServiceOutput")
    InitiatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#InitiatedBy", name: "InitiatedBy", traits: {"smithy.api#enum" => [{"value" => "START_RECOVERY", "name" => "START_RECOVERY"}, {"value" => "START_DRILL", "name" => "START_DRILL"}, {"value" => "FAILBACK", "name" => "FAILBACK"}, {"value" => "DIAGNOSTIC", "name" => "DIAGNOSTIC"}, {"value" => "TERMINATE_RECOVERY_INSTANCES", "name" => "TERMINATE_RECOVERY_INSTANCES"}, {"value" => "TARGET_ACCOUNT", "name" => "TARGET_ACCOUNT"}, {"value" => "CREATE_NETWORK_RECOVERY", "name" => "CREATE_NETWORK_RECOVERY"}, {"value" => "UPDATE_NETWORK_RECOVERY", "name" => "UPDATE_NETWORK_RECOVERY"}, {"value" => "ASSOCIATE_NETWORK_RECOVERY", "name" => "ASSOCIATE_NETWORK_RECOVERY"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternetProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#InternetProtocol", name: "InternetProtocol", traits: {"smithy.api#enum" => [{"value" => "IPV4", "name" => "IPV4"}, {"value" => "IPV6", "name" => "IPV6"}]})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#Job", name: "Job")
    JobEventAttemptCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#JobEventAttemptCount", name: "JobEventAttemptCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 9}})
    JobID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#JobID", name: "JobID", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^drsjob-[0-9a-zA-Z]{17}$"})
    JobLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#JobLog", name: "JobLog")
    JobLogEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#JobLogEvent", name: "JobLogEvent", traits: {"smithy.api#enum" => [{"name" => "JOB_START", "value" => "JOB_START"}, {"name" => "SERVER_SKIPPED", "value" => "SERVER_SKIPPED"}, {"name" => "CLEANUP_START", "value" => "CLEANUP_START"}, {"name" => "CLEANUP_END", "value" => "CLEANUP_END"}, {"name" => "CLEANUP_FAIL", "value" => "CLEANUP_FAIL"}, {"name" => "SNAPSHOT_START", "value" => "SNAPSHOT_START"}, {"name" => "SNAPSHOT_END", "value" => "SNAPSHOT_END"}, {"name" => "SNAPSHOT_FAIL", "value" => "SNAPSHOT_FAIL"}, {"name" => "USING_PREVIOUS_SNAPSHOT", "value" => "USING_PREVIOUS_SNAPSHOT"}, {"name" => "USING_PREVIOUS_SNAPSHOT_FAILED", "value" => "USING_PREVIOUS_SNAPSHOT_FAILED"}, {"name" => "CONVERSION_START", "value" => "CONVERSION_START"}, {"name" => "CONVERSION_END", "value" => "CONVERSION_END"}, {"name" => "CONVERSION_FAIL", "value" => "CONVERSION_FAIL"}, {"name" => "LAUNCH_START", "value" => "LAUNCH_START"}, {"name" => "LAUNCH_FAILED", "value" => "LAUNCH_FAILED"}, {"name" => "JOB_CANCEL", "value" => "JOB_CANCEL"}, {"name" => "JOB_END", "value" => "JOB_END"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_START", "value" => "DEPLOY_NETWORK_CONFIGURATION_START"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_END", "value" => "DEPLOY_NETWORK_CONFIGURATION_END"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_FAILED", "value" => "DEPLOY_NETWORK_CONFIGURATION_FAILED"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_START", "value" => "UPDATE_NETWORK_CONFIGURATION_START"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_END", "value" => "UPDATE_NETWORK_CONFIGURATION_END"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_FAILED", "value" => "UPDATE_NETWORK_CONFIGURATION_FAILED"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_START", "value" => "UPDATE_LAUNCH_TEMPLATE_START"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_END", "value" => "UPDATE_LAUNCH_TEMPLATE_END"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_FAILED", "value" => "UPDATE_LAUNCH_TEMPLATE_FAILED"}, {"name" => "NETWORK_RECOVERY_FAIL", "value" => "NETWORK_RECOVERY_FAIL"}]})
    JobLogEventData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#JobLogEventData", name: "JobLogEventData")
    JobLogs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#JobLogs", name: "JobLogs")
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#JobStatus", name: "JobStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    JobType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#JobType", name: "JobType", traits: {"smithy.api#enum" => [{"value" => "LAUNCH", "name" => "LAUNCH"}, {"value" => "TERMINATE", "name" => "TERMINATE"}, {"value" => "CREATE_CONVERTED_SNAPSHOT", "name" => "CREATE_CONVERTED_SNAPSHOT"}]})
    JobsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#JobsList", name: "JobsList")
    LargeBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LargeBoundedString", name: "LargeBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    LastLaunchResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LastLaunchResult", name: "LastLaunchResult", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "PENDING", "value" => "PENDING"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    LastLaunchType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LastLaunchType", name: "LastLaunchType", traits: {"smithy.api#enum" => [{"name" => "RECOVERY", "value" => "RECOVERY"}, {"name" => "DRILL", "value" => "DRILL"}]})
    LaunchAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchAction", name: "LaunchAction")
    LaunchActionCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionCategory", name: "LaunchActionCategory", traits: {"smithy.api#enum" => [{"value" => "MONITORING", "name" => "MONITORING"}, {"value" => "VALIDATION", "name" => "VALIDATION"}, {"value" => "CONFIGURATION", "name" => "CONFIGURATION"}, {"value" => "SECURITY", "name" => "SECURITY"}, {"value" => "OTHER", "name" => "OTHER"}]})
    LaunchActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionDescription", name: "LaunchActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;\n]*$"})
    LaunchActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionId", name: "LaunchActionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    LaunchActionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#LaunchActionIds", name: "LaunchActionIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LaunchActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionName", name: "LaunchActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9 /_-]*$"})
    LaunchActionOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#LaunchActionOrder", name: "LaunchActionOrder", traits: {"smithy.api#range" => {"min" => 2, "max" => 10000}})
    LaunchActionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchActionParameter", name: "LaunchActionParameter")
    LaunchActionParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionParameterName", name: "LaunchActionParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    LaunchActionParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionParameterType", name: "LaunchActionParameterType", traits: {"smithy.api#enum" => [{"value" => "SSM_STORE", "name" => "SSM_STORE"}, {"value" => "DYNAMIC", "name" => "DYNAMIC"}]})
    LaunchActionParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionParameterValue", name: "LaunchActionParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[A-Za-z0-9.-]+$"})
    LaunchActionParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#LaunchActionParameters", name: "LaunchActionParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LaunchActionResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionResourceId", name: "LaunchActionResourceId", traits: {"smithy.api#pattern" => "^(s-[0-9a-zA-Z]{17}$|lct-[0-9a-zA-Z]{17})$"})
    LaunchActionRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchActionRun", name: "LaunchActionRun")
    LaunchActionRunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionRunId", name: "LaunchActionRunId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    LaunchActionRunStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionRunStatus", name: "LaunchActionRunStatus", traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    LaunchActionRuns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#LaunchActionRuns", name: "LaunchActionRuns")
    LaunchActionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionType", name: "LaunchActionType", traits: {"smithy.api#enum" => [{"value" => "SSM_AUTOMATION", "name" => "SSM_AUTOMATION"}, {"value" => "SSM_COMMAND", "name" => "SSM_COMMAND"}]})
    LaunchActionVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchActionVersion", name: "LaunchActionVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(\\$DEFAULT|\\$LATEST|[0-9]+)$"})
    LaunchActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#LaunchActions", name: "LaunchActions", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchActionsRequestFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchActionsRequestFilters", name: "LaunchActionsRequestFilters")
    LaunchActionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchActionsStatus", name: "LaunchActionsStatus")
    LaunchConfigurationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchConfigurationTemplate", name: "LaunchConfigurationTemplate")
    LaunchConfigurationTemplateID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchConfigurationTemplateID", name: "LaunchConfigurationTemplateID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^lct-[0-9a-zA-Z]{17}$"})
    LaunchConfigurationTemplateIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#LaunchConfigurationTemplateIDs", name: "LaunchConfigurationTemplateIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    LaunchConfigurationTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#LaunchConfigurationTemplates", name: "LaunchConfigurationTemplates", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchDisposition", name: "LaunchDisposition", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "STARTED", "value" => "STARTED"}]})
    LaunchIntoInstanceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LaunchIntoInstanceProperties", name: "LaunchIntoInstanceProperties")
    LaunchStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#LaunchStatus", name: "LaunchStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    Licensing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#Licensing", name: "Licensing")
    LifeCycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LifeCycle", name: "LifeCycle")
    LifeCycleLastLaunch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LifeCycleLastLaunch", name: "LifeCycleLastLaunch")
    LifeCycleLastLaunchInitiated = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#LifeCycleLastLaunchInitiated", name: "LifeCycleLastLaunchInitiated")
    ListExtensibleSourceServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListExtensibleSourceServersInput", name: "ListExtensibleSourceServersInput")
    ListExtensibleSourceServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListExtensibleSourceServersOutput", name: "ListExtensibleSourceServersOutput")
    ListLaunchActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListLaunchActionsRequest", name: "ListLaunchActionsRequest")
    ListLaunchActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListLaunchActionsResponse", name: "ListLaunchActionsResponse")
    ListRecoveryPlanExecutionStepsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanExecutionStepsFilter", name: "ListRecoveryPlanExecutionStepsFilter")
    ListRecoveryPlanExecutionStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanExecutionStepsRequest", name: "ListRecoveryPlanExecutionStepsRequest")
    ListRecoveryPlanExecutionStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanExecutionStepsResponse", name: "ListRecoveryPlanExecutionStepsResponse")
    ListRecoveryPlanExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanExecutionsRequest", name: "ListRecoveryPlanExecutionsRequest")
    ListRecoveryPlanExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanExecutionsResponse", name: "ListRecoveryPlanExecutionsResponse")
    ListRecoveryPlanStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanStepsRequest", name: "ListRecoveryPlanStepsRequest")
    ListRecoveryPlanStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlanStepsResponse", name: "ListRecoveryPlanStepsResponse")
    ListRecoveryPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlansRequest", name: "ListRecoveryPlansRequest")
    ListRecoveryPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListRecoveryPlansResponse", name: "ListRecoveryPlansResponse")
    ListStagingAccountsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListStagingAccountsInput", name: "ListStagingAccountsInput")
    ListStagingAccountsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListStagingAccountsOutput", name: "ListStagingAccountsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResultsReplicatingSourceServers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#MaxResultsReplicatingSourceServers", name: "MaxResultsReplicatingSourceServers", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    MaxResultsType = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#MaxResultsType", name: "MaxResultsType", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#NetworkInterfaces", name: "NetworkInterfaces", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    OS = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#OS", name: "OS")
    OriginEnvironment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#OriginEnvironment", name: "OriginEnvironment", traits: {"smithy.api#enum" => [{"name" => "ON_PREMISES", "value" => "ON_PREMISES"}, {"name" => "AWS", "value" => "AWS"}]})
    OutpostARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#OutpostARN", name: "OutpostARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    PITPolicy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#PITPolicy", name: "PITPolicy", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    PITPolicyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#PITPolicyRule", name: "PITPolicyRule")
    PITPolicyRuleUnits = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#PITPolicyRuleUnits", name: "PITPolicyRuleUnits", traits: {"smithy.api#enum" => [{"value" => "MINUTE", "name" => "MINUTE"}, {"value" => "HOUR", "name" => "HOUR"}, {"value" => "DAY", "name" => "DAY"}]})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ParticipatingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ParticipatingResource", name: "ParticipatingResource")
    ParticipatingResourceID = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.drs#ParticipatingResourceID", name: "ParticipatingResourceID")
    ParticipatingResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ParticipatingResources", name: "ParticipatingResources")
    ParticipatingServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ParticipatingServer", name: "ParticipatingServer")
    ParticipatingServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ParticipatingServers", name: "ParticipatingServers")
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ProductCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ProductCode", name: "ProductCode")
    ProductCodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ProductCodeId", name: "ProductCodeId", traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    ProductCodeMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ProductCodeMode", name: "ProductCodeMode", traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    ProductCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ProductCodes", name: "ProductCodes")
    PutLaunchActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#PutLaunchActionRequest", name: "PutLaunchActionRequest")
    PutLaunchActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#PutLaunchActionResponse", name: "PutLaunchActionResponse")
    RecoveryInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstance", name: "RecoveryInstance")
    RecoveryInstanceDataReplicationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationError", name: "RecoveryInstanceDataReplicationError")
    RecoveryInstanceDataReplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInfo", name: "RecoveryInstanceDataReplicationInfo")
    RecoveryInstanceDataReplicationInfoReplicatedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInfoReplicatedDisk", name: "RecoveryInstanceDataReplicationInfoReplicatedDisk")
    RecoveryInstanceDataReplicationInfoReplicatedDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInfoReplicatedDisks", name: "RecoveryInstanceDataReplicationInfoReplicatedDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    RecoveryInstanceDataReplicationInitiation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInitiation", name: "RecoveryInstanceDataReplicationInitiation")
    RecoveryInstanceDataReplicationInitiationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStep", name: "RecoveryInstanceDataReplicationInitiationStep")
    RecoveryInstanceDataReplicationInitiationStepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStepName", name: "RecoveryInstanceDataReplicationInitiationStepName", traits: {"smithy.api#enum" => [{"name" => "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE", "value" => "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE"}, {"name" => "COMPLETE_VOLUME_MAPPING", "value" => "COMPLETE_VOLUME_MAPPING"}, {"name" => "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "value" => "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"}, {"name" => "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "value" => "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"}, {"name" => "CONFIGURE_REPLICATION_SOFTWARE", "value" => "CONFIGURE_REPLICATION_SOFTWARE"}, {"name" => "PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "value" => "PAIR_AGENT_WITH_REPLICATION_SOFTWARE"}, {"name" => "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "value" => "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"}, {"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}]})
    RecoveryInstanceDataReplicationInitiationStepStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStepStatus", name: "RecoveryInstanceDataReplicationInitiationStepStatus", traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    RecoveryInstanceDataReplicationInitiationSteps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationSteps", name: "RecoveryInstanceDataReplicationInitiationSteps")
    RecoveryInstanceDataReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryInstanceDataReplicationState", name: "RecoveryInstanceDataReplicationState", traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "REPLICATION_STATE_NOT_AVAILABLE", "value" => "REPLICATION_STATE_NOT_AVAILABLE"}, {"name" => "NOT_STARTED", "value" => "NOT_STARTED"}]})
    RecoveryInstanceDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceDisk", name: "RecoveryInstanceDisk")
    RecoveryInstanceDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryInstanceDisks", name: "RecoveryInstanceDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RecoveryInstanceFailback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceFailback", name: "RecoveryInstanceFailback")
    RecoveryInstanceID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryInstanceID", name: "RecoveryInstanceID", traits: {"smithy.api#length" => {"min" => 10, "max" => 19}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    RecoveryInstanceIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryInstanceIDs", name: "RecoveryInstanceIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    RecoveryInstanceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryInstanceProperties", name: "RecoveryInstanceProperties")
    RecoveryInstancesForTerminationRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryInstancesForTerminationRequest", name: "RecoveryInstancesForTerminationRequest", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RecoveryLifeCycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryLifeCycle", name: "RecoveryLifeCycle")
    RecoveryMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryMode", name: "RecoveryMode", traits: {"smithy.api#enum" => [{"name" => "FAST", "value" => "FAST"}, {"name" => "OPTIMAL", "value" => "OPTIMAL"}]})
    RecoveryPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlan", name: "RecoveryPlan")
    RecoveryPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanDescription", name: "RecoveryPlanDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    RecoveryPlanExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecution", name: "RecoveryPlanExecution")
    RecoveryPlanExecutionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionMode", name: "RecoveryPlanExecutionMode", traits: {"smithy.api#enum" => [{"value" => "DRILL", "name" => "DRILL"}, {"value" => "RECOVERY", "name" => "RECOVERY"}]})
    RecoveryPlanExecutionServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionServer", name: "RecoveryPlanExecutionServer")
    RecoveryPlanExecutionServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionServers", name: "RecoveryPlanExecutionServers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecoveryPlanExecutionSourceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionSourceServer", name: "RecoveryPlanExecutionSourceServer")
    RecoveryPlanExecutionSourceServerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionSourceServerList", name: "RecoveryPlanExecutionSourceServerList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    RecoveryPlanExecutionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStatus", name: "RecoveryPlanExecutionStatus", traits: {"smithy.api#enum" => [{"value" => "CREATED", "name" => "CREATED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    RecoveryPlanExecutionStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStep", name: "RecoveryPlanExecutionStep")
    RecoveryPlanExecutionStepConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStepConfiguration", name: "RecoveryPlanExecutionStepConfiguration")
    RecoveryPlanExecutionStepStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStepStatus", name: "RecoveryPlanExecutionStepStatus", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "EXECUTING", "name" => "EXECUTING"}, {"value" => "WAITING", "name" => "WAITING"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "TIMED_OUT", "name" => "TIMED_OUT"}, {"value" => "SKIPPED", "name" => "SKIPPED"}]})
    RecoveryPlanExecutionStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStepSummary", name: "RecoveryPlanExecutionStepSummary")
    RecoveryPlanExecutionStepSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionStepSummaryList", name: "RecoveryPlanExecutionStepSummaryList")
    RecoveryPlanExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionSummary", name: "RecoveryPlanExecutionSummary")
    RecoveryPlanExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanExecutionSummaryList", name: "RecoveryPlanExecutionSummaryList")
    RecoveryPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanName", name: "RecoveryPlanName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _-]*$"})
    RecoveryPlanServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanServer", name: "RecoveryPlanServer")
    RecoveryPlanServerImpactLevel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanServerImpactLevel", name: "RecoveryPlanServerImpactLevel", traits: {"smithy.api#enum" => [{"value" => "CRITICAL", "name" => "CRITICAL"}, {"value" => "OPTIONAL", "name" => "OPTIONAL"}]})
    RecoveryPlanServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanServers", name: "RecoveryPlanServers", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecoveryPlanStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanStatus", name: "RecoveryPlanStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INVALID", "name" => "INVALID"}]})
    RecoveryPlanStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanStep", name: "RecoveryPlanStep")
    RecoveryPlanStepArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanStepArnList", name: "RecoveryPlanStepArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    RecoveryPlanStepConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.drs#RecoveryPlanStepConfiguration", name: "RecoveryPlanStepConfiguration")
    RecoveryPlanStepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanStepList", name: "RecoveryPlanStepList")
    RecoveryPlanStepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryPlanStepName", name: "RecoveryPlanStepName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _-]*$"})
    RecoveryPlanStepOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#RecoveryPlanStepOrder", name: "RecoveryPlanStepOrder", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    RecoveryPlanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoveryPlanSummary", name: "RecoveryPlanSummary")
    RecoveryPlanSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoveryPlanSummaryList", name: "RecoveryPlanSummaryList")
    RecoveryResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryResult", name: "RecoveryResult", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAIL", "name" => "FAIL"}, {"value" => "PARTIAL_SUCCESS", "name" => "PARTIAL_SUCCESS"}, {"value" => "ASSOCIATE_SUCCESS", "name" => "ASSOCIATE_SUCCESS"}, {"value" => "ASSOCIATE_FAIL", "name" => "ASSOCIATE_FAIL"}]})
    RecoverySnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoverySnapshot", name: "RecoverySnapshot")
    RecoverySnapshotID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoverySnapshotID", name: "RecoverySnapshotID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^pit-[0-9a-zA-Z]{17}$"})
    RecoverySnapshotsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoverySnapshotsList", name: "RecoverySnapshotsList")
    RecoverySnapshotsOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoverySnapshotsOrder", name: "RecoverySnapshotsOrder", traits: {"smithy.api#enum" => [{"name" => "ASC", "value" => "ASC"}, {"name" => "DESC", "value" => "DESC"}]})
    ReorderRecoveryPlanStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReorderRecoveryPlanStepsRequest", name: "ReorderRecoveryPlanStepsRequest")
    ReorderRecoveryPlanStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReorderRecoveryPlanStepsResponse", name: "ReorderRecoveryPlanStepsResponse")
    ReplicationConfigurationDataPlaneRouting = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationConfigurationDataPlaneRouting", name: "ReplicationConfigurationDataPlaneRouting", traits: {"smithy.api#enum" => [{"value" => "PRIVATE_IP", "name" => "PRIVATE_IP"}, {"value" => "PUBLIC_IP", "name" => "PUBLIC_IP"}]})
    ReplicationConfigurationDefaultLargeStagingDiskType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationConfigurationDefaultLargeStagingDiskType", name: "ReplicationConfigurationDefaultLargeStagingDiskType", traits: {"smithy.api#enum" => [{"value" => "GP2", "name" => "GP2"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "AUTO", "name" => "AUTO"}]})
    ReplicationConfigurationEbsEncryption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationConfigurationEbsEncryption", name: "ReplicationConfigurationEbsEncryption", traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "NONE", "name" => "NONE"}]})
    ReplicationConfigurationReplicatedDisk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReplicationConfigurationReplicatedDisk", name: "ReplicationConfigurationReplicatedDisk")
    ReplicationConfigurationReplicatedDiskStagingDiskType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationConfigurationReplicatedDiskStagingDiskType", name: "ReplicationConfigurationReplicatedDiskStagingDiskType", traits: {"smithy.api#enum" => [{"value" => "AUTO", "name" => "AUTO"}, {"value" => "GP2", "name" => "GP2"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "IO1", "name" => "IO1"}, {"value" => "SC1", "name" => "SC1"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "STANDARD", "name" => "STANDARD"}]})
    ReplicationConfigurationReplicatedDisks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ReplicationConfigurationReplicatedDisks", name: "ReplicationConfigurationReplicatedDisks", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ReplicationConfigurationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReplicationConfigurationTemplate", name: "ReplicationConfigurationTemplate")
    ReplicationConfigurationTemplateID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationConfigurationTemplateID", name: "ReplicationConfigurationTemplateID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rct-[0-9a-zA-Z]{17}$"})
    ReplicationConfigurationTemplateIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ReplicationConfigurationTemplateIDs", name: "ReplicationConfigurationTemplateIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ReplicationConfigurationTemplates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ReplicationConfigurationTemplates", name: "ReplicationConfigurationTemplates")
    ReplicationDirection = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationDirection", name: "ReplicationDirection", traits: {"smithy.api#enum" => [{"name" => "FAILOVER", "value" => "FAILOVER"}, {"name" => "FAILBACK", "value" => "FAILBACK"}]})
    ReplicationServersSecurityGroupsIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ReplicationServersSecurityGroupsIDs", name: "ReplicationServersSecurityGroupsIDs", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    ReplicationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ReplicationStatus", name: "ReplicationStatus", traits: {"smithy.api#enum" => [{"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "PROTECTED", "name" => "PROTECTED"}, {"value" => "ERROR", "name" => "ERROR"}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryDataReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RetryDataReplicationInput", name: "RetryDataReplicationInput", traits: {"smithy.api#deprecated" => {"message" => "WARNING: RetryDataReplication is deprecated"}})
    RetryDataReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RetryDataReplicationOutput", name: "RetryDataReplicationOutput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    RetryRecoveryPlanExecutionStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RetryRecoveryPlanExecutionStepRequest", name: "RetryRecoveryPlanExecutionStepRequest")
    RetryRecoveryPlanExecutionStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RetryRecoveryPlanExecutionStepResponse", name: "RetryRecoveryPlanExecutionStepResponse")
    ReverseReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReverseReplicationInput", name: "ReverseReplicationInput")
    ReverseReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReverseReplicationOutput", name: "ReverseReplicationOutput")
    SecurityGroupID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SecurityGroupID", name: "SecurityGroupID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SensitiveBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SensitiveBoundedString", name: "SensitiveBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ServerStepConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ServerStepConfiguration", name: "ServerStepConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmallBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SmallBoundedString", name: "SmallBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SourceCloudProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#SourceCloudProperties", name: "SourceCloudProperties")
    SourceNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#SourceNetwork", name: "SourceNetwork", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceNetworkResource"}]})
    SourceNetworkData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#SourceNetworkData", name: "SourceNetworkData")
    SourceNetworkID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SourceNetworkID", name: "SourceNetworkID", traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^sn-[0-9a-zA-Z]{17}$"})
    SourceNetworksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#SourceNetworksList", name: "SourceNetworksList")
    SourceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#SourceProperties", name: "SourceProperties")
    SourceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#SourceServer", name: "SourceServer", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    SourceServerARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SourceServerARN", name: "SourceServerARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:[0-9a-zA-Z_-]+:){3}([0-9]{12,}):source-server/(s-[0-9a-zA-Z]{17})$"})
    SourceServerArchitecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SourceServerArchitecture", name: "SourceServerArchitecture", traits: {"smithy.api#enum" => [{"name" => "X86_64", "value" => "x86_64"}, {"name" => "ARM64", "value" => "arm64"}], "smithy.api#tags" => ["graviton"]})
    SourceServerID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SourceServerID", name: "SourceServerID", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^s-[0-9a-zA-Z]{17}$"})
    SourceServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#SourceServerIDs", name: "SourceServerIDs")
    SourceServersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#SourceServersList", name: "SourceServersList")
    SsmDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SsmDocumentName", name: "SsmDocumentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9-/:])+$"})
    StagingArea = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StagingArea", name: "StagingArea")
    StagingSourceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StagingSourceServer", name: "StagingSourceServer")
    StagingSourceServersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#StagingSourceServersList", name: "StagingSourceServersList")
    StartFailbackLaunchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartFailbackLaunchInput", name: "StartFailbackLaunchInput")
    StartFailbackLaunchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartFailbackLaunchOutput", name: "StartFailbackLaunchOutput")
    StartFailbackRequestRecoveryInstanceIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#StartFailbackRequestRecoveryInstanceIDs", name: "StartFailbackRequestRecoveryInstanceIDs", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartRecoveryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartRecoveryInput", name: "StartRecoveryInput")
    StartRecoveryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartRecoveryOutput", name: "StartRecoveryOutput")
    StartRecoveryPlanExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartRecoveryPlanExecutionRequest", name: "StartRecoveryPlanExecutionRequest")
    StartRecoveryPlanExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartRecoveryPlanExecutionResponse", name: "StartRecoveryPlanExecutionResponse")
    StartRecoveryRequestSourceServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartRecoveryRequestSourceServer", name: "StartRecoveryRequestSourceServer")
    StartRecoveryRequestSourceServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#StartRecoveryRequestSourceServers", name: "StartRecoveryRequestSourceServers", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartReplicationInput", name: "StartReplicationInput")
    StartReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartReplicationOutput", name: "StartReplicationOutput")
    StartSourceNetworkRecoveryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartSourceNetworkRecoveryRequest", name: "StartSourceNetworkRecoveryRequest")
    StartSourceNetworkRecoveryRequestNetworkEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#StartSourceNetworkRecoveryRequestNetworkEntries", name: "StartSourceNetworkRecoveryRequestNetworkEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    StartSourceNetworkRecoveryRequestNetworkEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartSourceNetworkRecoveryRequestNetworkEntry", name: "StartSourceNetworkRecoveryRequestNetworkEntry")
    StartSourceNetworkRecoveryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartSourceNetworkRecoveryResponse", name: "StartSourceNetworkRecoveryResponse")
    StartSourceNetworkReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartSourceNetworkReplicationRequest", name: "StartSourceNetworkReplicationRequest")
    StartSourceNetworkReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StartSourceNetworkReplicationResponse", name: "StartSourceNetworkReplicationResponse")
    StopFailbackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StopFailbackInput", name: "StopFailbackInput")
    StopReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StopReplicationInput", name: "StopReplicationInput")
    StopReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StopReplicationOutput", name: "StopReplicationOutput")
    StopSourceNetworkReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StopSourceNetworkReplicationRequest", name: "StopSourceNetworkReplicationRequest")
    StopSourceNetworkReplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#StopSourceNetworkReplicationResponse", name: "StopSourceNetworkReplicationResponse")
    StrictDRSARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#StrictDRSARN", name: "StrictDRSARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[a-z0-9]+)*:drs:[a-z0-9-]+:[0-9]{12}:[a-zA-Z0-9_/.-]+$"})
    StrictlyPositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#StrictlyPositiveInteger", name: "StrictlyPositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    SubnetID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SubnetID", name: "SubnetID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#TagKeys", name: "TagKeys", traits: {"smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#TagsMap", name: "TagsMap", traits: {"smithy.api#sensitive" => {}})
    TargetInstanceTypeRightSizingMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#TargetInstanceTypeRightSizingMethod", name: "TargetInstanceTypeRightSizingMethod", traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "BASIC", "value" => "BASIC"}, {"name" => "IN_AWS", "value" => "IN_AWS"}]})
    TerminateRecoveryInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#TerminateRecoveryInstancesInput", name: "TerminateRecoveryInstancesInput")
    TerminateRecoveryInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#TerminateRecoveryInstancesOutput", name: "TerminateRecoveryInstancesOutput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UninitializedAccountException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UninitializedAccountException", name: "UninitializedAccountException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UntagResourceInput", name: "UntagResourceInput")
    UpdateFailbackReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateFailbackReplicationConfigurationInput", name: "UpdateFailbackReplicationConfigurationInput")
    UpdateLaunchConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateLaunchConfigurationInput", name: "UpdateLaunchConfigurationInput")
    UpdateLaunchConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateLaunchConfigurationOutput", name: "UpdateLaunchConfigurationOutput")
    UpdateLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateLaunchConfigurationTemplateInput", name: "UpdateLaunchConfigurationTemplateInput")
    UpdateLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateLaunchConfigurationTemplateOutput", name: "UpdateLaunchConfigurationTemplateOutput")
    UpdateRecoveryPlanExecutionStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanExecutionStepRequest", name: "UpdateRecoveryPlanExecutionStepRequest")
    UpdateRecoveryPlanExecutionStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanExecutionStepResponse", name: "UpdateRecoveryPlanExecutionStepResponse")
    UpdateRecoveryPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanRequest", name: "UpdateRecoveryPlanRequest")
    UpdateRecoveryPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanResponse", name: "UpdateRecoveryPlanResponse")
    UpdateRecoveryPlanStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanStepRequest", name: "UpdateRecoveryPlanStepRequest")
    UpdateRecoveryPlanStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateRecoveryPlanStepResponse", name: "UpdateRecoveryPlanStepResponse")
    UpdateReplicationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateReplicationConfigurationInput", name: "UpdateReplicationConfigurationInput")
    UpdateReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateReplicationConfigurationOutput", name: "UpdateReplicationConfigurationOutput")
    UpdateReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateReplicationConfigurationTemplateInput", name: "UpdateReplicationConfigurationTemplateInput")
    UpdateReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#UpdateReplicationConfigurationTemplateOutput", name: "UpdateReplicationConfigurationTemplateOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VolumeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#VolumeStatus", name: "VolumeStatus", traits: {"smithy.api#enum" => [{"value" => "REGULAR", "name" => "REGULAR"}, {"value" => "CONTAINS_MARKETPLACE_PRODUCT_CODES", "name" => "CONTAINS_MARKETPLACE_PRODUCT_CODES"}, {"value" => "MISSING_VOLUME_ATTRIBUTES", "name" => "MISSING_VOLUME_ATTRIBUTES"}, {"value" => "MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE", "name" => "MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE"}, {"value" => "PENDING", "name" => "PENDING"}]})
    VolumeToConversionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#VolumeToConversionMap", name: "VolumeToConversionMap")
    VolumeToProductCodes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#VolumeToProductCodes", name: "VolumeToProductCodes")
    VolumeToSizeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#VolumeToSizeMap", name: "VolumeToSizeMap")
    VpcID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#VpcID", name: "VpcID", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[0-9a-fA-F]{8,}$"})
    WaitDurationMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.drs#WaitDurationMinutes", name: "WaitDurationMinutes", traits: {"smithy.api#range" => {"min" => 1, "max" => 120}})
    WaitStepConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#WaitStepConfiguration", name: "WaitStepConfiguration")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "accountID"))
    Account.type = Types::Account
    AccountIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "member"))
    Accounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "member"))
    AssociateSourceNetworkStackRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, name: "cfnStackName", traits: {"smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.type = Types::AssociateSourceNetworkStackRequest
    AssociateSourceNetworkStackResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    AssociateSourceNetworkStackResponse.type = Types::AssociateSourceNetworkStackResponse
    CPU.add_member(:cores, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "cores", traits: {"smithy.api#default" => 0}))
    CPU.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "modelName"))
    CPU.type = Types::CPU
    CancelRecoveryPlanExecutionRequest.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    CancelRecoveryPlanExecutionRequest.type = Types::CancelRecoveryPlanExecutionRequest
    CancelRecoveryPlanExecutionResponse.add_member(:recovery_plan_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecution, name: "recoveryPlanExecution", traits: {"smithy.api#required" => {}}))
    CancelRecoveryPlanExecutionResponse.type = Types::CancelRecoveryPlanExecutionResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    ConversionMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot, name: "key"))
    ConversionMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot, name: "value"))
    ConversionProperties.add_member(:volume_to_conversion_map, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToConversionMap, name: "volumeToConversionMap"))
    ConversionProperties.add_member(:root_volume_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rootVolumeName"))
    ConversionProperties.add_member(:force_uefi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceUefi"))
    ConversionProperties.add_member(:data_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "dataTimestamp"))
    ConversionProperties.add_member(:volume_to_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToSizeMap, name: "volumeToVolumeSize"))
    ConversionProperties.add_member(:volume_to_product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToProductCodes, name: "volumeToProductCodes"))
    ConversionProperties.type = Types::ConversionProperties
    Cpus.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CPU, name: "member"))
    CreateExtendedSourceServerInput.add_member(:source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "sourceServerArn", traits: {"smithy.api#required" => {}}))
    CreateExtendedSourceServerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateExtendedSourceServerInput.type = Types::CreateExtendedSourceServerInput
    CreateExtendedSourceServerOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, name: "sourceServer"))
    CreateExtendedSourceServerOutput.type = Types::CreateExtendedSourceServerOutput
    CreateLaunchConfigurationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    CreateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    CreateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    CreateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "exportBucketArn"))
    CreateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "launchIntoSourceInstance"))
    CreateLaunchConfigurationTemplateInput.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    CreateLaunchConfigurationTemplateInput.type = Types::CreateLaunchConfigurationTemplateInput
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, name: "launchConfigurationTemplate"))
    CreateLaunchConfigurationTemplateOutput.type = Types::CreateLaunchConfigurationTemplateOutput
    CreateRecoveryPlanRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanDescription, name: "description"))
    CreateRecoveryPlanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRecoveryPlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateRecoveryPlanRequest.type = Types::CreateRecoveryPlanRequest
    CreateRecoveryPlanResponse.add_member(:recovery_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlan, name: "recoveryPlan", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanResponse.type = Types::CreateRecoveryPlanResponse
    CreateRecoveryPlanStepRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanStepRequest.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepName, name: "stepName", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanStepRequest.add_member(:step_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepOrder, name: "stepOrder"))
    CreateRecoveryPlanStepRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanStepRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRecoveryPlanStepRequest.type = Types::CreateRecoveryPlanStepRequest
    CreateRecoveryPlanStepResponse.add_member(:recovery_plan_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStep, name: "recoveryPlanStep", traits: {"smithy.api#required" => {}}))
    CreateRecoveryPlanStepResponse.type = Types::CreateRecoveryPlanStepResponse
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
    CreateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    CreateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    CreateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    CreateReplicationConfigurationTemplateOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    CreateReplicationConfigurationTemplateOutput.type = Types::CreateReplicationConfigurationTemplateOutput
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, name: "stagingAreaSubnetId", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, name: "replicationServersSecurityGroupsIDs", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, name: "ebsEncryption", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    CreateReplicationConfigurationTemplateRequest.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    CreateReplicationConfigurationTemplateRequest.type = Types::CreateReplicationConfigurationTemplateRequest
    CreateSourceNetworkRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "vpcID", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "originAccountID", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "originRegion", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateSourceNetworkRequest.type = Types::CreateSourceNetworkRequest
    CreateSourceNetworkResponse.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    CreateSourceNetworkResponse.type = Types::CreateSourceNetworkResponse
    DataReplicationError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationErrorString, name: "error"))
    DataReplicationError.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    DataReplicationError.type = Types::DataReplicationError
    DataReplicationInfo.add_member(:lag_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, name: "lagDuration"))
    DataReplicationInfo.add_member(:eta_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "etaDateTime"))
    DataReplicationInfo.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfoReplicatedDisks, name: "replicatedDisks"))
    DataReplicationInfo.add_member(:data_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationState, name: "dataReplicationState"))
    DataReplicationInfo.add_member(:data_replication_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiation, name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationError, name: "dataReplicationError"))
    DataReplicationInfo.add_member(:staging_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, name: "stagingAvailabilityZone"))
    DataReplicationInfo.add_member(:staging_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, name: "stagingOutpostArn"))
    DataReplicationInfo.type = Types::DataReplicationInfo
    DataReplicationInfoReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "totalStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "replicatedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "rescannedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "backloggedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:volume_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatus, name: "volumeStatus"))
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
    DeleteJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID", traits: {"smithy.api#required" => {}}))
    DeleteJobInput.type = Types::DeleteJobInput
    DeleteJobOutput.type = Types::DeleteJobOutput
    DeleteLaunchActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, name: "actionId", traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.type = Types::DeleteLaunchActionRequest
    DeleteLaunchActionResponse.type = Types::DeleteLaunchActionResponse
    DeleteLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteLaunchConfigurationTemplateInput.type = Types::DeleteLaunchConfigurationTemplateInput
    DeleteLaunchConfigurationTemplateOutput.type = Types::DeleteLaunchConfigurationTemplateOutput
    DeleteRecoveryInstanceInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryInstanceInput.type = Types::DeleteRecoveryInstanceInput
    DeleteRecoveryPlanExecutionRequest.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanExecutionRequest.type = Types::DeleteRecoveryPlanExecutionRequest
    DeleteRecoveryPlanExecutionResponse.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanExecutionResponse.type = Types::DeleteRecoveryPlanExecutionResponse
    DeleteRecoveryPlanRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanRequest.type = Types::DeleteRecoveryPlanRequest
    DeleteRecoveryPlanResponse.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanResponse.type = Types::DeleteRecoveryPlanResponse
    DeleteRecoveryPlanStepRequest.add_member(:recovery_plan_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanStepArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanStepRequest.type = Types::DeleteRecoveryPlanStepRequest
    DeleteRecoveryPlanStepResponse.add_member(:recovery_plan_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanStepArn", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryPlanStepResponse.type = Types::DeleteRecoveryPlanStepResponse
    DeleteReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteReplicationConfigurationTemplateInput.type = Types::DeleteReplicationConfigurationTemplateInput
    DeleteReplicationConfigurationTemplateOutput.type = Types::DeleteReplicationConfigurationTemplateOutput
    DeleteSourceNetworkRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    DeleteSourceNetworkRequest.type = Types::DeleteSourceNetworkRequest
    DeleteSourceNetworkResponse.type = Types::DeleteSourceNetworkResponse
    DeleteSourceServerInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DeleteSourceServerInput.type = Types::DeleteSourceServerInput
    DeleteSourceServerOutput.type = Types::DeleteSourceServerOutput
    DescribeJobLogItemsInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID", traits: {"smithy.api#required" => {}}))
    DescribeJobLogItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeJobLogItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobLogItemsInput.type = Types::DescribeJobLogItemsInput
    DescribeJobLogItemsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogs, name: "items"))
    DescribeJobLogItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeJobLogItemsOutput.type = Types::DescribeJobLogItemsOutput
    DescribeJobsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeJobsRequestFilters, name: "filters"))
    DescribeJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
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
    DescribeRecoveryInstancesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoveryInstancesRequestFilters, name: "filters"))
    DescribeRecoveryInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeRecoveryInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeRecoveryInstancesInput.type = Types::DescribeRecoveryInstancesInput
    DescribeRecoveryInstancesItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstance, name: "member"))
    DescribeRecoveryInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeRecoveryInstancesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoveryInstancesItems, name: "items"))
    DescribeRecoveryInstancesOutput.type = Types::DescribeRecoveryInstancesOutput
    DescribeRecoveryInstancesRequestFilters.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceIDs, name: "recoveryInstanceIDs"))
    DescribeRecoveryInstancesRequestFilters.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerIDs, name: "sourceServerIDs"))
    DescribeRecoveryInstancesRequestFilters.type = Types::DescribeRecoveryInstancesRequestFilters
    DescribeRecoverySnapshotsInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DescribeRecoverySnapshotsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoverySnapshotsRequestFilters, name: "filters"))
    DescribeRecoverySnapshotsInput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotsOrder, name: "order"))
    DescribeRecoverySnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeRecoverySnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeRecoverySnapshotsInput.type = Types::DescribeRecoverySnapshotsInput
    DescribeRecoverySnapshotsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotsList, name: "items"))
    DescribeRecoverySnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeRecoverySnapshotsOutput.type = Types::DescribeRecoverySnapshotsOutput
    DescribeRecoverySnapshotsRequestFilters.add_member(:from_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "fromDateTime"))
    DescribeRecoverySnapshotsRequestFilters.add_member(:to_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "toDateTime"))
    DescribeRecoverySnapshotsRequestFilters.type = Types::DescribeRecoverySnapshotsRequestFilters
    DescribeReplicationConfigurationTemplatesInput.add_member(:replication_configuration_template_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateIDs, name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeReplicationConfigurationTemplatesInput.type = Types::DescribeReplicationConfigurationTemplatesInput
    DescribeReplicationConfigurationTemplatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplates, name: "items"))
    DescribeReplicationConfigurationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeReplicationConfigurationTemplatesOutput.type = Types::DescribeReplicationConfigurationTemplatesOutput
    DescribeSourceNetworksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceNetworksRequestFilters, name: "filters"))
    DescribeSourceNetworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeSourceNetworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceNetworksRequest.type = Types::DescribeSourceNetworksRequest
    DescribeSourceNetworksRequestFilters.add_member(:source_network_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceNetworksRequestFiltersIDs, name: "sourceNetworkIDs"))
    DescribeSourceNetworksRequestFilters.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "originAccountID"))
    DescribeSourceNetworksRequestFilters.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "originRegion"))
    DescribeSourceNetworksRequestFilters.type = Types::DescribeSourceNetworksRequestFilters
    DescribeSourceNetworksRequestFiltersIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "member"))
    DescribeSourceNetworksResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworksList, name: "items"))
    DescribeSourceNetworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceNetworksResponse.type = Types::DescribeSourceNetworksResponse
    DescribeSourceServersInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFilters, name: "filters"))
    DescribeSourceServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "maxResults"))
    DescribeSourceServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceServersInput.type = Types::DescribeSourceServersInput
    DescribeSourceServersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServersList, name: "items"))
    DescribeSourceServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    DescribeSourceServersOutput.type = Types::DescribeSourceServersOutput
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFiltersIDs, name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.add_member(:hardware_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "hardwareId"))
    DescribeSourceServersRequestFilters.add_member(:staging_account_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIDs, name: "stagingAccountIDs"))
    DescribeSourceServersRequestFilters.type = Types::DescribeSourceServersRequestFilters
    DescribeSourceServersRequestFiltersIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    DisconnectRecoveryInstanceInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    DisconnectRecoveryInstanceInput.type = Types::DisconnectRecoveryInstanceInput
    DisconnectSourceServerInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DisconnectSourceServerInput.type = Types::DisconnectSourceServerInput
    DisconnectSourceServerOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    DisconnectSourceServerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    DisconnectSourceServerOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    DisconnectSourceServerOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceId"))
    DisconnectSourceServerOutput.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, name: "lastLaunchResult"))
    DisconnectSourceServerOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    DisconnectSourceServerOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    DisconnectSourceServerOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    DisconnectSourceServerOutput.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, name: "stagingArea"))
    DisconnectSourceServerOutput.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, name: "sourceCloudProperties"))
    DisconnectSourceServerOutput.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, name: "replicationDirection"))
    DisconnectSourceServerOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "reversedDirectionSourceServerArn"))
    DisconnectSourceServerOutput.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    DisconnectSourceServerOutput.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "agentVersion"))
    DisconnectSourceServerOutput.type = Types::DisconnectSourceServerOutput
    Disk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    Disk.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bytes", traits: {"smithy.api#default" => 0}))
    Disk.type = Types::Disk
    Disks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Disk, name: "member"))
    EbsSnapshotsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot, name: "member"))
    ErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ErrorDetail.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    ErrorDetail.type = Types::ErrorDetail
    EventResourceData.add_member(:source_network_data, Types::EventResourceData::SourceNetworkData, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkData, name: "sourceNetworkData"))
    EventResourceData.add_member(:unknown, Types::EventResourceData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EventResourceData.type = Types::EventResourceData
    ExecutionServerStepConfiguration.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionServers, name: "servers", traits: {"smithy.api#required" => {}}))
    ExecutionServerStepConfiguration.type = Types::ExecutionServerStepConfiguration
    ExportSourceNetworkCfnTemplateRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    ExportSourceNetworkCfnTemplateRequest.type = Types::ExportSourceNetworkCfnTemplateRequest
    ExportSourceNetworkCfnTemplateResponse.add_member(:s3_destination_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "s3DestinationUrl"))
    ExportSourceNetworkCfnTemplateResponse.type = Types::ExportSourceNetworkCfnTemplateResponse
    GetFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationInput.type = Types::GetFailbackReplicationConfigurationInput
    GetFailbackReplicationConfigurationOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "name"))
    GetFailbackReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    GetFailbackReplicationConfigurationOutput.add_member(:use_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "usePrivateIP"))
    GetFailbackReplicationConfigurationOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    GetFailbackReplicationConfigurationOutput.type = Types::GetFailbackReplicationConfigurationOutput
    GetLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    GetLaunchConfigurationInput.type = Types::GetLaunchConfigurationInput
    GetLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    GetLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    GetLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "ec2LaunchTemplateID"))
    GetLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    GetLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    GetLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    GetLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    GetLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    GetLaunchConfigurationOutput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    GetLaunchConfigurationOutput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, name: "launchIntoInstanceProperties"))
    GetLaunchConfigurationOutput.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    GetLaunchConfigurationOutput.type = Types::GetLaunchConfigurationOutput
    GetRecoveryPlanExecutionRequest.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanExecutionRequest.type = Types::GetRecoveryPlanExecutionRequest
    GetRecoveryPlanExecutionResponse.add_member(:recovery_plan_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecution, name: "recoveryPlanExecution", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanExecutionResponse.type = Types::GetRecoveryPlanExecutionResponse
    GetRecoveryPlanExecutionStepRequest.add_member(:recovery_plan_execution_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionStepArn", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanExecutionStepRequest.type = Types::GetRecoveryPlanExecutionStepRequest
    GetRecoveryPlanExecutionStepResponse.add_member(:recovery_plan_execution_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStep, name: "recoveryPlanExecutionStep", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanExecutionStepResponse.type = Types::GetRecoveryPlanExecutionStepResponse
    GetRecoveryPlanRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanRequest.type = Types::GetRecoveryPlanRequest
    GetRecoveryPlanResponse.add_member(:recovery_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlan, name: "recoveryPlan", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanResponse.type = Types::GetRecoveryPlanResponse
    GetRecoveryPlanStepRequest.add_member(:recovery_plan_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanStepArn", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanStepRequest.type = Types::GetRecoveryPlanStepRequest
    GetRecoveryPlanStepResponse.add_member(:recovery_plan_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStep, name: "recoveryPlanStep", traits: {"smithy.api#required" => {}}))
    GetRecoveryPlanStepResponse.type = Types::GetRecoveryPlanStepResponse
    GetReplicationConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
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
    GetReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    GetReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    GetReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    GetReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    GetReplicationConfigurationOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    GetReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    GetReplicationConfigurationOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    GetReplicationConfigurationOutput.type = Types::GetReplicationConfigurationOutput
    IPsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "member"))
    IdentificationHints.add_member(:fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fqdn"))
    IdentificationHints.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "hostname"))
    IdentificationHints.add_member(:vm_ware_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "vmWareUuid"))
    IdentificationHints.add_member(:aws_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "awsInstanceID"))
    IdentificationHints.type = Types::IdentificationHints
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
    Job.add_member(:participating_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResources, name: "participatingResources"))
    Job.type = Types::Job
    JobLog.add_member(:log_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "logDateTime"))
    JobLog.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEvent, name: "event"))
    JobLog.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEventData, name: "eventData"))
    JobLog.type = Types::JobLog
    JobLogEventData.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    JobLogEventData.add_member(:conversion_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "conversionServerID"))
    JobLogEventData.add_member(:target_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "targetInstanceID"))
    JobLogEventData.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    JobLogEventData.add_member(:conversion_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionProperties, name: "conversionProperties"))
    JobLogEventData.add_member(:event_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceData, name: "eventResourceData"))
    JobLogEventData.add_member(:attempt_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEventAttemptCount, name: "attemptCount", traits: {"smithy.api#default" => 0}))
    JobLogEventData.add_member(:max_attempts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: JobEventAttemptCount, name: "maxAttemptsCount", traits: {"smithy.api#default" => 0}))
    JobLogEventData.type = Types::JobLogEventData
    JobLogs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLog, name: "member"))
    JobsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "member"))
    LaunchAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, name: "actionId"))
    LaunchAction.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, name: "actionCode"))
    LaunchAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionType, name: "type"))
    LaunchAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, name: "name"))
    LaunchAction.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    LaunchAction.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, name: "order"))
    LaunchAction.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, name: "actionVersion"))
    LaunchAction.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "optional"))
    LaunchAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, name: "parameters"))
    LaunchAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, name: "description"))
    LaunchAction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, name: "category"))
    LaunchAction.type = Types::LaunchAction
    LaunchActionIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, name: "member"))
    LaunchActionParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterValue, name: "value"))
    LaunchActionParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterType, name: "type"))
    LaunchActionParameter.type = Types::LaunchActionParameter
    LaunchActionParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterName, name: "key"))
    LaunchActionParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameter, name: "value"))
    LaunchActionRun.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchAction, name: "action"))
    LaunchActionRun.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRunId, name: "runId"))
    LaunchActionRun.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRunStatus, name: "status"))
    LaunchActionRun.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "failureReason"))
    LaunchActionRun.type = Types::LaunchActionRun
    LaunchActionRuns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRun, name: "member"))
    LaunchActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchAction, name: "member"))
    LaunchActionsRequestFilters.add_member(:action_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionIds, name: "actionIds"))
    LaunchActionsRequestFilters.type = Types::LaunchActionsRequestFilters
    LaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "ssmAgentDiscoveryDatetime"))
    LaunchActionsStatus.add_member(:runs, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRuns, name: "runs"))
    LaunchActionsStatus.type = Types::LaunchActionsStatus
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID"))
    LaunchConfigurationTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    LaunchConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    LaunchConfigurationTemplate.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "exportBucketArn"))
    LaunchConfigurationTemplate.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    LaunchConfigurationTemplate.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "launchIntoSourceInstance"))
    LaunchConfigurationTemplate.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    LaunchConfigurationTemplate.type = Types::LaunchConfigurationTemplate
    LaunchConfigurationTemplateIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "member"))
    LaunchConfigurationTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, name: "member"))
    LaunchIntoInstanceProperties.add_member(:launch_into_ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "launchIntoEC2InstanceID"))
    LaunchIntoInstanceProperties.type = Types::LaunchIntoInstanceProperties
    Licensing.add_member(:os_byol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "osByol"))
    Licensing.type = Types::Licensing
    LifeCycle.add_member(:added_to_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "addedToServiceDateTime"))
    LifeCycle.add_member(:first_byte_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "firstByteDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastSeenByServiceDateTime"))
    LifeCycle.add_member(:last_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastLaunch, name: "lastLaunch"))
    LifeCycle.type = Types::LifeCycle
    LifeCycleLastLaunch.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastLaunchInitiated, name: "initiated"))
    LifeCycleLastLaunch.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, name: "status"))
    LifeCycleLastLaunch.type = Types::LifeCycleLastLaunch
    LifeCycleLastLaunchInitiated.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "apiCallDateTime"))
    LifeCycleLastLaunchInitiated.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    LifeCycleLastLaunchInitiated.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchType, name: "type"))
    LifeCycleLastLaunchInitiated.type = Types::LifeCycleLastLaunchInitiated
    ListExtensibleSourceServersInput.add_member(:staging_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "stagingAccountID", traits: {"smithy.api#required" => {}}))
    ListExtensibleSourceServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsReplicatingSourceServers, name: "maxResults"))
    ListExtensibleSourceServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExtensibleSourceServersInput.type = Types::ListExtensibleSourceServersInput
    ListExtensibleSourceServersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingSourceServersList, name: "items"))
    ListExtensibleSourceServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListExtensibleSourceServersOutput.type = Types::ListExtensibleSourceServersOutput
    ListLaunchActionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ListLaunchActionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionsRequestFilters, name: "filters"))
    ListLaunchActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListLaunchActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLaunchActionsRequest.type = Types::ListLaunchActionsRequest
    ListLaunchActionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActions, name: "items"))
    ListLaunchActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLaunchActionsResponse.type = Types::ListLaunchActionsResponse
    ListRecoveryPlanExecutionStepsFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepStatus, name: "status"))
    ListRecoveryPlanExecutionStepsFilter.type = Types::ListRecoveryPlanExecutionStepsFilter
    ListRecoveryPlanExecutionStepsRequest.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlanExecutionStepsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecoveryPlanExecutionStepsFilter, name: "filter"))
    ListRecoveryPlanExecutionStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListRecoveryPlanExecutionStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanExecutionStepsRequest.type = Types::ListRecoveryPlanExecutionStepsRequest
    ListRecoveryPlanExecutionStepsResponse.add_member(:recovery_plan_execution_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepSummaryList, name: "recoveryPlanExecutionSteps", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlanExecutionStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanExecutionStepsResponse.type = Types::ListRecoveryPlanExecutionStepsResponse
    ListRecoveryPlanExecutionsRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn"))
    ListRecoveryPlanExecutionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStatus, name: "status"))
    ListRecoveryPlanExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListRecoveryPlanExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanExecutionsRequest.type = Types::ListRecoveryPlanExecutionsRequest
    ListRecoveryPlanExecutionsResponse.add_member(:recovery_plan_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionSummaryList, name: "recoveryPlanExecutions", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlanExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanExecutionsResponse.type = Types::ListRecoveryPlanExecutionsResponse
    ListRecoveryPlanStepsRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlanStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListRecoveryPlanStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanStepsRequest.type = Types::ListRecoveryPlanStepsRequest
    ListRecoveryPlanStepsResponse.add_member(:recovery_plan_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepList, name: "recoveryPlanSteps", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlanStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlanStepsResponse.type = Types::ListRecoveryPlanStepsResponse
    ListRecoveryPlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, name: "maxResults"))
    ListRecoveryPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlansRequest.type = Types::ListRecoveryPlansRequest
    ListRecoveryPlansResponse.add_member(:recovery_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanSummaryList, name: "recoveryPlans", traits: {"smithy.api#required" => {}}))
    ListRecoveryPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRecoveryPlansResponse.type = Types::ListRecoveryPlansResponse
    ListStagingAccountsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListStagingAccountsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStagingAccountsInput.type = Types::ListStagingAccountsInput
    ListStagingAccountsOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, name: "accounts"))
    ListStagingAccountsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListStagingAccountsOutput.type = Types::ListStagingAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NetworkInterface.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "macAddress"))
    NetworkInterface.add_member(:ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IPsList, name: "ips"))
    NetworkInterface.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    OS.add_member(:full_string, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "fullString"))
    OS.type = Types::OS
    PITPolicy.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicyRule, name: "member"))
    PITPolicyRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ruleID", traits: {"smithy.api#default" => 0}))
    PITPolicyRule.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicyRuleUnits, name: "units", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "interval", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:retention_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "retentionDuration", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    PITPolicyRule.type = Types::PITPolicyRule
    ParticipatingResource.add_member(:participating_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResourceID, name: "participatingResourceID"))
    ParticipatingResource.add_member(:launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, name: "launchStatus"))
    ParticipatingResource.type = Types::ParticipatingResource
    ParticipatingResourceID.add_member(:source_network_id, Types::ParticipatingResourceID::SourceNetworkID, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    ParticipatingResourceID.add_member(:unknown, Types::ParticipatingResourceID::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ParticipatingResourceID.type = Types::ParticipatingResourceID
    ParticipatingResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResource, name: "member"))
    ParticipatingServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    ParticipatingServer.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID"))
    ParticipatingServer.add_member(:launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, name: "launchStatus"))
    ParticipatingServer.add_member(:launch_actions_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionsStatus, name: "launchActionsStatus"))
    ParticipatingServer.type = Types::ParticipatingServer
    ParticipatingServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingServer, name: "member"))
    ProductCode.add_member(:product_code_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeId, name: "productCodeId"))
    ProductCode.add_member(:product_code_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeMode, name: "productCodeMode"))
    ProductCode.type = Types::ProductCode
    ProductCodes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode, name: "member"))
    PutLaunchActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, name: "actionCode", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, name: "order", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, name: "actionId", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "optional", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, name: "name", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, name: "actionVersion", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, name: "parameters"))
    PutLaunchActionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.type = Types::PutLaunchActionRequest
    PutLaunchActionResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, name: "resourceId"))
    PutLaunchActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, name: "actionId"))
    PutLaunchActionResponse.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, name: "actionCode"))
    PutLaunchActionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionType, name: "type"))
    PutLaunchActionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, name: "name"))
    PutLaunchActionResponse.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "active"))
    PutLaunchActionResponse.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, name: "order"))
    PutLaunchActionResponse.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, name: "actionVersion"))
    PutLaunchActionResponse.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "optional"))
    PutLaunchActionResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, name: "parameters"))
    PutLaunchActionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, name: "description"))
    PutLaunchActionResponse.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, name: "category"))
    PutLaunchActionResponse.type = Types::PutLaunchActionResponse
    RecoveryInstance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, name: "ec2InstanceID"))
    RecoveryInstance.add_member(:ec2_instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceState, name: "ec2InstanceState"))
    RecoveryInstance.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    RecoveryInstance.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID"))
    RecoveryInstance.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    RecoveryInstance.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    RecoveryInstance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RecoveryInstance.add_member(:failback, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceFailback, name: "failback"))
    RecoveryInstance.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfo, name: "dataReplicationInfo"))
    RecoveryInstance.add_member(:recovery_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceProperties, name: "recoveryInstanceProperties"))
    RecoveryInstance.add_member(:point_in_time_snapshot_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "pointInTimeSnapshotDateTime"))
    RecoveryInstance.add_member(:is_drill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDrill"))
    RecoveryInstance.add_member(:origin_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginEnvironment, name: "originEnvironment"))
    RecoveryInstance.add_member(:origin_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, name: "originAvailabilityZone"))
    RecoveryInstance.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "agentVersion"))
    RecoveryInstance.add_member(:source_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, name: "sourceOutpostArn"))
    RecoveryInstance.type = Types::RecoveryInstance
    RecoveryInstanceDataReplicationError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackReplicationError, name: "error"))
    RecoveryInstanceDataReplicationError.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "rawError"))
    RecoveryInstanceDataReplicationError.type = Types::RecoveryInstanceDataReplicationError
    RecoveryInstanceDataReplicationInfo.add_member(:lag_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lagDuration"))
    RecoveryInstanceDataReplicationInfo.add_member(:eta_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "etaDateTime"))
    RecoveryInstanceDataReplicationInfo.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfoReplicatedDisks, name: "replicatedDisks"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationState, name: "dataReplicationState"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiation, name: "dataReplicationInitiation"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_error, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationError, name: "dataReplicationError"))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, name: "stagingAvailabilityZone"))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, name: "stagingOutpostArn"))
    RecoveryInstanceDataReplicationInfo.type = Types::RecoveryInstanceDataReplicationInfo
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "totalStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "replicatedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "rescannedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "backloggedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.type = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk
    RecoveryInstanceDataReplicationInfoReplicatedDisks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfoReplicatedDisk, name: "member"))
    RecoveryInstanceDataReplicationInitiation.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "startDateTime"))
    RecoveryInstanceDataReplicationInitiation.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationSteps, name: "steps"))
    RecoveryInstanceDataReplicationInitiation.type = Types::RecoveryInstanceDataReplicationInitiation
    RecoveryInstanceDataReplicationInitiationStep.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStepName, name: "name"))
    RecoveryInstanceDataReplicationInitiationStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStepStatus, name: "status"))
    RecoveryInstanceDataReplicationInitiationStep.type = Types::RecoveryInstanceDataReplicationInitiationStep
    RecoveryInstanceDataReplicationInitiationSteps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStep, name: "member"))
    RecoveryInstanceDisk.add_member(:internal_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "internalDeviceName"))
    RecoveryInstanceDisk.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDisk.add_member(:ebs_volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeID, name: "ebsVolumeID"))
    RecoveryInstanceDisk.type = Types::RecoveryInstanceDisk
    RecoveryInstanceDisks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDisk, name: "member"))
    RecoveryInstanceFailback.add_member(:failback_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "failbackClientID"))
    RecoveryInstanceFailback.add_member(:failback_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "failbackJobID"))
    RecoveryInstanceFailback.add_member(:failback_initiation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "failbackInitiationTime"))
    RecoveryInstanceFailback.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackState, name: "state"))
    RecoveryInstanceFailback.add_member(:agent_last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "agentLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:failback_client_last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "failbackClientLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:failback_to_original_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "failbackToOriginalServer"))
    RecoveryInstanceFailback.add_member(:first_byte_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "firstByteDateTime"))
    RecoveryInstanceFailback.add_member(:elapsed_replication_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "elapsedReplicationDuration"))
    RecoveryInstanceFailback.add_member(:failback_launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackLaunchType, name: "failbackLaunchType"))
    RecoveryInstanceFailback.type = Types::RecoveryInstanceFailback
    RecoveryInstanceIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "member"))
    RecoveryInstanceProperties.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastUpdatedDateTime"))
    RecoveryInstanceProperties.add_member(:identification_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentificationHints, name: "identificationHints"))
    RecoveryInstanceProperties.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "networkInterfaces"))
    RecoveryInstanceProperties.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDisks, name: "disks"))
    RecoveryInstanceProperties.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpus, name: "cpus"))
    RecoveryInstanceProperties.add_member(:ram_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ramBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceProperties.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: OS, name: "os"))
    RecoveryInstanceProperties.type = Types::RecoveryInstanceProperties
    RecoveryInstancesForTerminationRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "member"))
    RecoveryLifeCycle.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "apiCallDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RecoveryLifeCycle.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    RecoveryLifeCycle.add_member(:last_recovery_result, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryResult, name: "lastRecoveryResult"))
    RecoveryLifeCycle.type = Types::RecoveryLifeCycle
    RecoveryPlan.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlan.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanName, name: "name", traits: {"smithy.api#required" => {}}))
    RecoveryPlan.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanDescription, name: "description"))
    RecoveryPlan.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlan.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlan.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlan.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RecoveryPlan.type = Types::RecoveryPlan
    RecoveryPlanExecution.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecution.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecution.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionMode, name: "mode", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecution.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "startedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecution.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "completedAt"))
    RecoveryPlanExecution.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "errorDetail"))
    RecoveryPlanExecution.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RecoveryPlanExecution.type = Types::RecoveryPlanExecution
    RecoveryPlanExecutionServer.add_member(:server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "serverArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionServer.add_member(:impact_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanServerImpactLevel, name: "impactLevel"))
    RecoveryPlanExecutionServer.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, name: "jobID"))
    RecoveryPlanExecutionServer.type = Types::RecoveryPlanExecutionServer
    RecoveryPlanExecutionServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionServer, name: "member"))
    RecoveryPlanExecutionSourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSourceServer.add_member(:recovery_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotID, name: "recoverySnapshotID", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSourceServer.type = Types::RecoveryPlanExecutionSourceServer
    RecoveryPlanExecutionSourceServerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionSourceServer, name: "member"))
    RecoveryPlanExecutionStep.add_member(:recovery_plan_execution_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionStepArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:step_index, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepOrder, name: "stepIndex", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepName, name: "stepName", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "errorDetail"))
    RecoveryPlanExecutionStep.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, name: "attempt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStep.type = Types::RecoveryPlanExecutionStep
    RecoveryPlanExecutionStepConfiguration.add_member(:execution_server_step_configuration, Types::RecoveryPlanExecutionStepConfiguration::ExecutionServerStepConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionServerStepConfiguration, name: "executionServerStepConfiguration"))
    RecoveryPlanExecutionStepConfiguration.add_member(:wait_step_configuration, Types::RecoveryPlanExecutionStepConfiguration::WaitStepConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitStepConfiguration, name: "waitStepConfiguration"))
    RecoveryPlanExecutionStepConfiguration.add_member(:unknown, Types::RecoveryPlanExecutionStepConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecoveryPlanExecutionStepConfiguration.type = Types::RecoveryPlanExecutionStepConfiguration
    RecoveryPlanExecutionStepSummary.add_member(:recovery_plan_execution_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionStepArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStepSummary.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepName, name: "stepName", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStepSummary.add_member(:step_index, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepOrder, name: "stepIndex", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStepSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStepSummary.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionStepSummary.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "errorDetail"))
    RecoveryPlanExecutionStepSummary.type = Types::RecoveryPlanExecutionStepSummary
    RecoveryPlanExecutionStepSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepSummary, name: "member"))
    RecoveryPlanExecutionSummary.add_member(:recovery_plan_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSummary.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionMode, name: "mode", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "startedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanExecutionSummary.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "errorDetail"))
    RecoveryPlanExecutionSummary.type = Types::RecoveryPlanExecutionSummary
    RecoveryPlanExecutionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionSummary, name: "member"))
    RecoveryPlanServer.add_member(:server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "serverArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanServer.add_member(:impact_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanServerImpactLevel, name: "impactLevel"))
    RecoveryPlanServer.type = Types::RecoveryPlanServer
    RecoveryPlanServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanServer, name: "member"))
    RecoveryPlanStep.add_member(:recovery_plan_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanStepArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.add_member(:step_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepOrder, name: "stepOrder", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepName, name: "stepName", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanStep.type = Types::RecoveryPlanStep
    RecoveryPlanStepArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "member"))
    RecoveryPlanStepConfiguration.add_member(:server_step_configuration, Types::RecoveryPlanStepConfiguration::ServerStepConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerStepConfiguration, name: "serverStepConfiguration"))
    RecoveryPlanStepConfiguration.add_member(:wait_step_configuration, Types::RecoveryPlanStepConfiguration::WaitStepConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitStepConfiguration, name: "waitStepConfiguration"))
    RecoveryPlanStepConfiguration.add_member(:unknown, Types::RecoveryPlanStepConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecoveryPlanStepConfiguration.type = Types::RecoveryPlanStepConfiguration
    RecoveryPlanStepList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStep, name: "member"))
    RecoveryPlanSummary.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    RecoveryPlanSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanName, name: "name", traits: {"smithy.api#required" => {}}))
    RecoveryPlanSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecoveryPlanSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RecoveryPlanSummary.type = Types::RecoveryPlanSummary
    RecoveryPlanSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanSummary, name: "member"))
    RecoverySnapshot.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotID, name: "snapshotID", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:expected_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "expectedTimestamp", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "timestamp"))
    RecoverySnapshot.add_member(:ebs_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotsList, name: "ebsSnapshots"))
    RecoverySnapshot.type = Types::RecoverySnapshot
    RecoverySnapshotsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshot, name: "member"))
    ReorderRecoveryPlanStepsRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    ReorderRecoveryPlanStepsRequest.add_member(:ordered_step_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepArnList, name: "orderedStepArns", traits: {"smithy.api#required" => {}}))
    ReorderRecoveryPlanStepsRequest.type = Types::ReorderRecoveryPlanStepsRequest
    ReorderRecoveryPlanStepsResponse.add_member(:recovery_plan_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepList, name: "recoveryPlanSteps", traits: {"smithy.api#required" => {}}))
    ReorderRecoveryPlanStepsResponse.type = Types::ReorderRecoveryPlanStepsResponse
    ReplicationConfigurationReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDiskStagingDiskType, name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "iops", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "throughput", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.add_member(:optimized_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDiskStagingDiskType, name: "optimizedStagingDiskType"))
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
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    ReplicationConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ReplicationConfigurationTemplate.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    ReplicationConfigurationTemplate.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    ReplicationConfigurationTemplate.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    ReplicationConfigurationTemplate.type = Types::ReplicationConfigurationTemplate
    ReplicationConfigurationTemplateIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, name: "member"))
    ReplicationConfigurationTemplates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplate, name: "member"))
    ReplicationServersSecurityGroupsIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupID, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryDataReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RetryDataReplicationInput.type = Types::RetryDataReplicationInput
    RetryDataReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    RetryDataReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    RetryDataReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    RetryDataReplicationOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceId"))
    RetryDataReplicationOutput.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, name: "lastLaunchResult"))
    RetryDataReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    RetryDataReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    RetryDataReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    RetryDataReplicationOutput.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, name: "stagingArea"))
    RetryDataReplicationOutput.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, name: "sourceCloudProperties"))
    RetryDataReplicationOutput.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, name: "replicationDirection"))
    RetryDataReplicationOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "reversedDirectionSourceServerArn"))
    RetryDataReplicationOutput.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    RetryDataReplicationOutput.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "agentVersion"))
    RetryDataReplicationOutput.type = Types::RetryDataReplicationOutput
    RetryRecoveryPlanExecutionStepRequest.add_member(:recovery_plan_execution_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionStepArn", traits: {"smithy.api#required" => {}}))
    RetryRecoveryPlanExecutionStepRequest.type = Types::RetryRecoveryPlanExecutionStepRequest
    RetryRecoveryPlanExecutionStepResponse.add_member(:recovery_plan_execution_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStep, name: "recoveryPlanExecutionStep", traits: {"smithy.api#required" => {}}))
    RetryRecoveryPlanExecutionStepResponse.type = Types::RetryRecoveryPlanExecutionStepResponse
    ReverseReplicationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    ReverseReplicationInput.type = Types::ReverseReplicationInput
    ReverseReplicationOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "reversedDirectionSourceServerArn"))
    ReverseReplicationOutput.type = Types::ReverseReplicationOutput
    ServerStepConfiguration.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanServers, name: "servers", traits: {"smithy.api#required" => {}}))
    ServerStepConfiguration.type = Types::ServerStepConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ServiceQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceCloudProperties.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "originAccountID"))
    SourceCloudProperties.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "originRegion"))
    SourceCloudProperties.add_member(:origin_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, name: "originAvailabilityZone"))
    SourceCloudProperties.add_member(:source_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, name: "sourceOutpostArn"))
    SourceCloudProperties.type = Types::SourceCloudProperties
    SourceNetwork.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    SourceNetwork.add_member(:source_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "sourceVpcID"))
    SourceNetwork.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    SourceNetwork.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    SourceNetwork.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "replicationStatus"))
    SourceNetwork.add_member(:replication_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoundedString, name: "replicationStatusDetails"))
    SourceNetwork.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, name: "cfnStackName"))
    SourceNetwork.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "sourceRegion"))
    SourceNetwork.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "sourceAccountID"))
    SourceNetwork.add_member(:last_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryLifeCycle, name: "lastRecovery"))
    SourceNetwork.add_member(:launched_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "launchedVpcID"))
    SourceNetwork.type = Types::SourceNetwork
    SourceNetworkData.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    SourceNetworkData.add_member(:source_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "sourceVpc"))
    SourceNetworkData.add_member(:target_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, name: "targetVpc"))
    SourceNetworkData.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "stackName"))
    SourceNetworkData.type = Types::SourceNetworkData
    SourceNetworksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork, name: "member"))
    SourceProperties.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:recommended_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, name: "recommendedInstanceType"))
    SourceProperties.add_member(:identification_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentificationHints, name: "identificationHints"))
    SourceProperties.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "networkInterfaces"))
    SourceProperties.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: Disks, name: "disks"))
    SourceProperties.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpus, name: "cpus"))
    SourceProperties.add_member(:ram_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "ramBytes", traits: {"smithy.api#default" => 0}))
    SourceProperties.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: OS, name: "os"))
    SourceProperties.add_member(:supports_nitro_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "supportsNitroInstances"))
    SourceProperties.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerArchitecture, name: "architecture", traits: {"smithy.api#tags" => ["graviton"]}))
    SourceProperties.type = Types::SourceProperties
    SourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    SourceServer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    SourceServer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    SourceServer.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceId"))
    SourceServer.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, name: "lastLaunchResult"))
    SourceServer.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, name: "dataReplicationInfo"))
    SourceServer.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "lifeCycle"))
    SourceServer.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, name: "sourceProperties"))
    SourceServer.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, name: "stagingArea"))
    SourceServer.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, name: "sourceCloudProperties"))
    SourceServer.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, name: "replicationDirection"))
    SourceServer.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "reversedDirectionSourceServerArn"))
    SourceServer.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID"))
    SourceServer.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "agentVersion"))
    SourceServer.type = Types::SourceServer
    SourceServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "member"))
    SourceServersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, name: "member"))
    StagingArea.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionStatus, name: "status"))
    StagingArea.add_member(:staging_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, name: "stagingAccountID"))
    StagingArea.add_member(:staging_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "stagingSourceServerArn"))
    StagingArea.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "errorMessage"))
    StagingArea.type = Types::StagingArea
    StagingSourceServer.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "hostname"))
    StagingSourceServer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, name: "arn"))
    StagingSourceServer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StagingSourceServer.type = Types::StagingSourceServer
    StagingSourceServersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingSourceServer, name: "member"))
    StartFailbackLaunchInput.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: StartFailbackRequestRecoveryInstanceIDs, name: "recoveryInstanceIDs", traits: {"smithy.api#required" => {}}))
    StartFailbackLaunchInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartFailbackLaunchInput.type = Types::StartFailbackLaunchInput
    StartFailbackLaunchOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    StartFailbackLaunchOutput.type = Types::StartFailbackLaunchOutput
    StartFailbackRequestRecoveryInstanceIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "member"))
    StartRecoveryInput.add_member(:source_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecoveryRequestSourceServers, name: "sourceServers", traits: {"smithy.api#required" => {}}))
    StartRecoveryInput.add_member(:is_drill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isDrill"))
    StartRecoveryInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartRecoveryInput.type = Types::StartRecoveryInput
    StartRecoveryOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    StartRecoveryOutput.type = Types::StartRecoveryOutput
    StartRecoveryPlanExecutionRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    StartRecoveryPlanExecutionRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionMode, name: "mode", traits: {"smithy.api#required" => {}}))
    StartRecoveryPlanExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartRecoveryPlanExecutionRequest.add_member(:source_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionSourceServerList, name: "sourceServers"))
    StartRecoveryPlanExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartRecoveryPlanExecutionRequest.type = Types::StartRecoveryPlanExecutionRequest
    StartRecoveryPlanExecutionResponse.add_member(:recovery_plan_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecution, name: "recoveryPlanExecution", traits: {"smithy.api#required" => {}}))
    StartRecoveryPlanExecutionResponse.type = Types::StartRecoveryPlanExecutionResponse
    StartRecoveryRequestSourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StartRecoveryRequestSourceServer.add_member(:recovery_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotID, name: "recoverySnapshotID"))
    StartRecoveryRequestSourceServer.type = Types::StartRecoveryRequestSourceServer
    StartRecoveryRequestSourceServers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecoveryRequestSourceServer, name: "member"))
    StartReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StartReplicationInput.type = Types::StartReplicationInput
    StartReplicationOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, name: "sourceServer"))
    StartReplicationOutput.type = Types::StartReplicationOutput
    StartSourceNetworkRecoveryRequest.add_member(:source_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSourceNetworkRecoveryRequestNetworkEntries, name: "sourceNetworks", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequest.add_member(:deploy_as_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "deployAsNew"))
    StartSourceNetworkRecoveryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartSourceNetworkRecoveryRequest.type = Types::StartSourceNetworkRecoveryRequest
    StartSourceNetworkRecoveryRequestNetworkEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSourceNetworkRecoveryRequestNetworkEntry, name: "member"))
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, name: "cfnStackName"))
    StartSourceNetworkRecoveryRequestNetworkEntry.type = Types::StartSourceNetworkRecoveryRequestNetworkEntry
    StartSourceNetworkRecoveryResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    StartSourceNetworkRecoveryResponse.type = Types::StartSourceNetworkRecoveryResponse
    StartSourceNetworkReplicationRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkReplicationRequest.type = Types::StartSourceNetworkReplicationRequest
    StartSourceNetworkReplicationResponse.add_member(:source_network, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork, name: "sourceNetwork"))
    StartSourceNetworkReplicationResponse.type = Types::StartSourceNetworkReplicationResponse
    StopFailbackInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    StopFailbackInput.type = Types::StopFailbackInput
    StopReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StopReplicationInput.type = Types::StopReplicationInput
    StopReplicationOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, name: "sourceServer"))
    StopReplicationOutput.type = Types::StopReplicationOutput
    StopSourceNetworkReplicationRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StopSourceNetworkReplicationRequest.type = Types::StopSourceNetworkReplicationRequest
    StopSourceNetworkReplicationResponse.add_member(:source_network, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork, name: "sourceNetwork"))
    StopSourceNetworkReplicationResponse.type = Types::StopSourceNetworkReplicationResponse
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TerminateRecoveryInstancesInput.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstancesForTerminationRequest, name: "recoveryInstanceIDs", traits: {"smithy.api#required" => {}}))
    TerminateRecoveryInstancesInput.type = Types::TerminateRecoveryInstancesInput
    TerminateRecoveryInstancesOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "job"))
    TerminateRecoveryInstancesOutput.type = Types::TerminateRecoveryInstancesOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UninitializedAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    UninitializedAccountException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    UninitializedAccountException.type = Types::UninitializedAccountException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    UpdateFailbackReplicationConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "name"))
    UpdateFailbackReplicationConfigurationInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateFailbackReplicationConfigurationInput.add_member(:use_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "usePrivateIP"))
    UpdateFailbackReplicationConfigurationInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateFailbackReplicationConfigurationInput.type = Types::UpdateFailbackReplicationConfigurationInput
    UpdateLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateLaunchConfigurationInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    UpdateLaunchConfigurationInput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, name: "launchIntoInstanceProperties"))
    UpdateLaunchConfigurationInput.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    UpdateLaunchConfigurationInput.type = Types::UpdateLaunchConfigurationInput
    UpdateLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, name: "sourceServerID"))
    UpdateLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, name: "name"))
    UpdateLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, name: "ec2LaunchTemplateID"))
    UpdateLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationOutput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    UpdateLaunchConfigurationOutput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, name: "launchIntoInstanceProperties"))
    UpdateLaunchConfigurationOutput.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    UpdateLaunchConfigurationOutput.type = Types::UpdateLaunchConfigurationOutput
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "copyTags"))
    UpdateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, name: "licensing"))
    UpdateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "exportBucketArn"))
    UpdateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "postLaunchEnabled"))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "launchIntoSourceInstance"))
    UpdateLaunchConfigurationTemplateInput.add_member(:recovery_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryMode, name: "recoveryMode"))
    UpdateLaunchConfigurationTemplateInput.type = Types::UpdateLaunchConfigurationTemplateInput
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, name: "launchConfigurationTemplate"))
    UpdateLaunchConfigurationTemplateOutput.type = Types::UpdateLaunchConfigurationTemplateOutput
    UpdateRecoveryPlanExecutionStepRequest.add_member(:recovery_plan_execution_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanExecutionStepArn", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanExecutionStepRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStepStatus, name: "status"))
    UpdateRecoveryPlanExecutionStepRequest.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanServers, name: "servers"))
    UpdateRecoveryPlanExecutionStepRequest.add_member(:wait_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitDurationMinutes, name: "waitDurationMinutes"))
    UpdateRecoveryPlanExecutionStepRequest.type = Types::UpdateRecoveryPlanExecutionStepRequest
    UpdateRecoveryPlanExecutionStepResponse.add_member(:recovery_plan_execution_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanExecutionStep, name: "recoveryPlanExecutionStep", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanExecutionStepResponse.type = Types::UpdateRecoveryPlanExecutionStepResponse
    UpdateRecoveryPlanRequest.add_member(:recovery_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanArn", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanName, name: "name"))
    UpdateRecoveryPlanRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanDescription, name: "description"))
    UpdateRecoveryPlanRequest.type = Types::UpdateRecoveryPlanRequest
    UpdateRecoveryPlanResponse.add_member(:recovery_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlan, name: "recoveryPlan", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanResponse.type = Types::UpdateRecoveryPlanResponse
    UpdateRecoveryPlanStepRequest.add_member(:recovery_plan_step_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictDRSARN, name: "recoveryPlanStepArn", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanStepRequest.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepName, name: "stepName"))
    UpdateRecoveryPlanStepRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStepConfiguration, name: "configuration"))
    UpdateRecoveryPlanStepRequest.type = Types::UpdateRecoveryPlanStepRequest
    UpdateRecoveryPlanStepResponse.add_member(:recovery_plan_step, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPlanStep, name: "recoveryPlanStep", traits: {"smithy.api#required" => {}}))
    UpdateRecoveryPlanStepResponse.type = Types::UpdateRecoveryPlanStepResponse
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
    UpdateReplicationConfigurationInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationInput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    UpdateReplicationConfigurationInput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
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
    UpdateReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    UpdateReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
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
    UpdateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateInput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    UpdateReplicationConfigurationTemplateInput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationTemplateInput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
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
    UpdateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, name: "pitPolicy"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:internet_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetProtocol, name: "internetProtocol"))
    UpdateReplicationConfigurationTemplateOutput.type = Types::UpdateReplicationConfigurationTemplateOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "code"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "name"))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "message"))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VolumeToConversionMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "key"))
    VolumeToConversionMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionMap, name: "value"))
    VolumeToProductCodes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "key"))
    VolumeToProductCodes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodes, name: "value"))
    VolumeToSizeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, name: "key"))
    VolumeToSizeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "value"))
    WaitStepConfiguration.add_member(:wait_duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitDurationMinutes, name: "waitDurationMinutes", traits: {"smithy.api#required" => {}}))
    WaitStepConfiguration.type = Types::WaitStepConfiguration

    ElasticDisasterRecoveryService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.drs#ElasticDisasterRecoveryService"
      service.name = "ElasticDisasterRecoveryService"
      service.version = "2020-02-26"
      service.traits = {"aws.api#service" => {"sdkId" => "drs", "arnNamespace" => "drs", "awsProductName" => "drs", "cloudTrailEventSource" => "drs.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "drs"}, "aws.iam#defineConditionKeys" => {"drs:EC2InstanceARN" => {"type" => "String", "documentation" => "Filters access by the EC2 instance the request originated from"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "X-Amzn-Trace-Id"], "additionalExposedHeaders" => ["X-Amzn-Errortype", "X-Amzn-Requestid", "X-Amzn-Trace-Id", "X-Amz-Apigw-Id"]}, "smithy.api#title" => "Elastic Disaster Recovery Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://drs-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://drs-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://drs.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://drs.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_source_network_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#AssociateSourceNetworkStack"
        operation.name = "AssociateSourceNetworkStack"
        operation.input = AssociateSourceNetworkStackRequest
        operation.output = AssociateSourceNetworkStackResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["cloudformation:DescribeStacks", "cloudformation:DescribeStackResource", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "ec2:ModifyLaunchTemplate", "ec2:CreateLaunchTemplateVersion", "drs:GetLaunchConfiguration"], "smithy.api#http" => {"uri" => "/AssociateSourceNetworkStack", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:cancel_recovery_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CancelRecoveryPlanExecution"
        operation.name = "CancelRecoveryPlanExecution"
        operation.input = CancelRecoveryPlanExecutionRequest
        operation.output = CancelRecoveryPlanExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CancelRecoveryPlanExecution", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:create_extended_source_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateExtendedSourceServer"
        operation.name = "CreateExtendedSourceServer"
        operation.input = CreateExtendedSourceServerInput
        operation.output = CreateExtendedSourceServerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateExtendedSourceServer", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateLaunchConfigurationTemplate"
        operation.name = "CreateLaunchConfigurationTemplate"
        operation.input = CreateLaunchConfigurationTemplateInput
        operation.output = CreateLaunchConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateLaunchConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_recovery_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateRecoveryPlan"
        operation.name = "CreateRecoveryPlan"
        operation.input = CreateRecoveryPlanRequest
        operation.output = CreateRecoveryPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateRecoveryPlan", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_recovery_plan_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateRecoveryPlanStep"
        operation.name = "CreateRecoveryPlanStep"
        operation.input = CreateRecoveryPlanStepRequest
        operation.output = CreateRecoveryPlanStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateRecoveryPlanStep", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateReplicationConfigurationTemplate"
        operation.name = "CreateReplicationConfigurationTemplate"
        operation.input = CreateReplicationConfigurationTemplateRequest
        operation.output = CreateReplicationConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateReplicationConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_source_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateSourceNetwork"
        operation.name = "CreateSourceNetwork"
        operation.input = CreateSourceNetworkRequest
        operation.output = CreateSourceNetworkResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeVpcs", "ec2:DescribeInstances"], "smithy.api#http" => {"uri" => "/CreateSourceNetwork", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:delete_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = DeleteJobInput
        operation.output = DeleteJobOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteJob", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteLaunchAction"
        operation.name = "DeleteLaunchAction"
        operation.input = DeleteLaunchActionRequest
        operation.output = DeleteLaunchActionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:delete_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteLaunchConfigurationTemplate"
        operation.name = "DeleteLaunchConfigurationTemplate"
        operation.input = DeleteLaunchConfigurationTemplateInput
        operation.output = DeleteLaunchConfigurationTemplateOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_recovery_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteRecoveryInstance"
        operation.name = "DeleteRecoveryInstance"
        operation.input = DeleteRecoveryInstanceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRecoveryInstance", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_recovery_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteRecoveryPlan"
        operation.name = "DeleteRecoveryPlan"
        operation.input = DeleteRecoveryPlanRequest
        operation.output = DeleteRecoveryPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRecoveryPlan", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_recovery_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteRecoveryPlanExecution"
        operation.name = "DeleteRecoveryPlanExecution"
        operation.input = DeleteRecoveryPlanExecutionRequest
        operation.output = DeleteRecoveryPlanExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRecoveryPlanExecution", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_recovery_plan_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteRecoveryPlanStep"
        operation.name = "DeleteRecoveryPlanStep"
        operation.input = DeleteRecoveryPlanStepRequest
        operation.output = DeleteRecoveryPlanStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRecoveryPlanStep", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteReplicationConfigurationTemplate"
        operation.name = "DeleteReplicationConfigurationTemplate"
        operation.input = DeleteReplicationConfigurationTemplateInput
        operation.output = DeleteReplicationConfigurationTemplateOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteReplicationConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_network, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteSourceNetwork"
        operation.name = "DeleteSourceNetwork"
        operation.input = DeleteSourceNetworkRequest
        operation.output = DeleteSourceNetworkResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceNetwork", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteSourceServer"
        operation.name = "DeleteSourceServer"
        operation.input = DeleteSourceServerInput
        operation.output = DeleteSourceServerOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceServer", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_job_log_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeJobLogItems"
        operation.name = "DescribeJobLogItems"
        operation.input = DescribeJobLogItemsInput
        operation.output = DescribeJobLogItemsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobLogItems", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobLogItems.new
      end)
      service.add_operation(:describe_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = DescribeJobsInput
        operation.output = DescribeJobsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobs", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobs.new
      end)
      service.add_operation(:describe_launch_configuration_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeLaunchConfigurationTemplates"
        operation.name = "DescribeLaunchConfigurationTemplates"
        operation.input = DescribeLaunchConfigurationTemplatesInput
        operation.output = DescribeLaunchConfigurationTemplatesOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeLaunchConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeLaunchConfigurationTemplates.new
      end)
      service.add_operation(:describe_recovery_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeRecoveryInstances"
        operation.name = "DescribeRecoveryInstances"
        operation.input = DescribeRecoveryInstancesInput
        operation.output = DescribeRecoveryInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeInstances", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/DescribeRecoveryInstances", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeRecoveryInstances.new
      end)
      service.add_operation(:describe_recovery_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeRecoverySnapshots"
        operation.name = "DescribeRecoverySnapshots"
        operation.input = DescribeRecoverySnapshotsInput
        operation.output = DescribeRecoverySnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeRecoverySnapshots", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeRecoverySnapshots.new
      end)
      service.add_operation(:describe_replication_configuration_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeReplicationConfigurationTemplates"
        operation.name = "DescribeReplicationConfigurationTemplates"
        operation.input = DescribeReplicationConfigurationTemplatesInput
        operation.output = DescribeReplicationConfigurationTemplatesOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeReplicationConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurationTemplates.new
      end)
      service.add_operation(:describe_source_networks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeSourceNetworks"
        operation.name = "DescribeSourceNetworks"
        operation.input = DescribeSourceNetworksRequest
        operation.output = DescribeSourceNetworksResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceNetworks", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceNetworks.new
      end)
      service.add_operation(:describe_source_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeSourceServers"
        operation.name = "DescribeSourceServers"
        operation.input = DescribeSourceServersInput
        operation.output = DescribeSourceServersOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceServers.new
      end)
      service.add_operation(:disconnect_recovery_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DisconnectRecoveryInstance"
        operation.name = "DisconnectRecoveryInstance"
        operation.input = DisconnectRecoveryInstanceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectRecoveryInstance", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:disconnect_source_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DisconnectSourceServer"
        operation.name = "DisconnectSourceServer"
        operation.input = DisconnectSourceServerInput
        operation.output = DisconnectSourceServerOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectSourceServer", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:export_source_network_cfn_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ExportSourceNetworkCfnTemplate"
        operation.name = "ExportSourceNetworkCfnTemplate"
        operation.input = ExportSourceNetworkCfnTemplateRequest
        operation.output = ExportSourceNetworkCfnTemplateResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["s3:GetBucketLocation", "s3:PutObject", "s3:GetObject"], "smithy.api#http" => {"uri" => "/ExportSourceNetworkCfnTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_failback_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetFailbackReplicationConfiguration"
        operation.name = "GetFailbackReplicationConfiguration"
        operation.input = GetFailbackReplicationConfigurationInput
        operation.output = GetFailbackReplicationConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetFailbackReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetLaunchConfiguration"
        operation.name = "GetLaunchConfiguration"
        operation.input = GetLaunchConfigurationInput
        operation.output = GetLaunchConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetRecoveryPlan"
        operation.name = "GetRecoveryPlan"
        operation.input = GetRecoveryPlanRequest
        operation.output = GetRecoveryPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetRecoveryPlan", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetRecoveryPlanExecution"
        operation.name = "GetRecoveryPlanExecution"
        operation.input = GetRecoveryPlanExecutionRequest
        operation.output = GetRecoveryPlanExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetRecoveryPlanExecution", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_plan_execution_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetRecoveryPlanExecutionStep"
        operation.name = "GetRecoveryPlanExecutionStep"
        operation.input = GetRecoveryPlanExecutionStepRequest
        operation.output = GetRecoveryPlanExecutionStepResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetRecoveryPlanExecutionStep", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recovery_plan_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetRecoveryPlanStep"
        operation.name = "GetRecoveryPlanStep"
        operation.input = GetRecoveryPlanStepRequest
        operation.output = GetRecoveryPlanStepResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetRecoveryPlanStep", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetReplicationConfiguration"
        operation.name = "GetReplicationConfiguration"
        operation.input = GetReplicationConfigurationInput
        operation.output = GetReplicationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/GetReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:initialize_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#InitializeService"
        operation.name = "InitializeService"
        operation.input = InitializeServiceInput
        operation.output = InitializeServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "iam:GetInstanceProfile", "iam:CreateInstanceProfile", "iam:AddRoleToInstanceProfile"], "smithy.api#http" => {"uri" => "/InitializeService", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:list_extensible_source_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListExtensibleSourceServers"
        operation.name = "ListExtensibleSourceServers"
        operation.input = ListExtensibleSourceServersInput
        operation.output = ListExtensibleSourceServersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExtensibleSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExtensibleSourceServers.new
      end)
      service.add_operation(:list_launch_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListLaunchActions"
        operation.name = "ListLaunchActions"
        operation.input = ListLaunchActionsRequest
        operation.output = ListLaunchActionsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListLaunchActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLaunchActions.new
      end)
      service.add_operation(:list_recovery_plan_execution_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListRecoveryPlanExecutionSteps"
        operation.name = "ListRecoveryPlanExecutionSteps"
        operation.input = ListRecoveryPlanExecutionStepsRequest
        operation.output = ListRecoveryPlanExecutionStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListRecoveryPlanExecutionSteps", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPlanExecutionSteps.new
      end)
      service.add_operation(:list_recovery_plan_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListRecoveryPlanExecutions"
        operation.name = "ListRecoveryPlanExecutions"
        operation.input = ListRecoveryPlanExecutionsRequest
        operation.output = ListRecoveryPlanExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListRecoveryPlanExecutions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPlanExecutions.new
      end)
      service.add_operation(:list_recovery_plan_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListRecoveryPlanSteps"
        operation.name = "ListRecoveryPlanSteps"
        operation.input = ListRecoveryPlanStepsRequest
        operation.output = ListRecoveryPlanStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListRecoveryPlanSteps", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPlanSteps.new
      end)
      service.add_operation(:list_recovery_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListRecoveryPlans"
        operation.name = "ListRecoveryPlans"
        operation.input = ListRecoveryPlansRequest
        operation.output = ListRecoveryPlansResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListRecoveryPlans", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecoveryPlans.new
      end)
      service.add_operation(:list_staging_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListStagingAccounts"
        operation.name = "ListStagingAccounts"
        operation.input = ListStagingAccountsInput
        operation.output = ListStagingAccountsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ListStagingAccounts", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStagingAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListTagsForResource"
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
      service.add_operation(:put_launch_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#PutLaunchAction"
        operation.name = "PutLaunchAction"
        operation.input = PutLaunchActionRequest
        operation.output = PutLaunchActionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/PutLaunchAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:reorder_recovery_plan_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ReorderRecoveryPlanSteps"
        operation.name = "ReorderRecoveryPlanSteps"
        operation.input = ReorderRecoveryPlanStepsRequest
        operation.output = ReorderRecoveryPlanStepsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/ReorderRecoveryPlanSteps", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:retry_data_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#RetryDataReplication"
        operation.name = "RetryDataReplication"
        operation.input = RetryDataReplicationInput
        operation.output = RetryDataReplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#deprecated" => {"message" => "WARNING: RetryDataReplication is deprecated"}, "smithy.api#http" => {"uri" => "/RetryDataReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:retry_recovery_plan_execution_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#RetryRecoveryPlanExecutionStep"
        operation.name = "RetryRecoveryPlanExecutionStep"
        operation.input = RetryRecoveryPlanExecutionStepRequest
        operation.output = RetryRecoveryPlanExecutionStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/RetryRecoveryPlanExecutionStep", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:reverse_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ReverseReplication"
        operation.name = "ReverseReplication"
        operation.input = ReverseReplicationInput
        operation.output = ReverseReplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeInstances", "drs:DescribeReplicationConfigurationTemplates", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/ReverseReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_failback_launch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartFailbackLaunch"
        operation.name = "StartFailbackLaunch"
        operation.input = StartFailbackLaunchInput
        operation.output = StartFailbackLaunchOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartFailbackLaunch", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_recovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartRecovery"
        operation.name = "StartRecovery"
        operation.input = StartRecoveryInput
        operation.output = StartRecoveryOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DetachVolume", "ec2:DescribeInstances", "ec2:TerminateInstances", "ec2:CreateTags", "ec2:DescribeLaunchTemplateVersions", "ec2:RunInstances", "ec2:DescribeSnapshots", "ec2:StopInstances", "ec2:CreateLaunchTemplateVersion", "ec2:DeleteVolume", "ec2:StartInstances", "ec2:DescribeVolumes", "ec2:DeleteLaunchTemplateVersions", "ec2:AttachVolume", "ec2:AuthorizeSecurityGroupEgress", "ec2:AuthorizeSecurityGroupIngress", "ec2:CreateLaunchTemplate", "ec2:CreateSnapshot", "ec2:CreateVolume", "ec2:DeleteSnapshot", "ec2:DescribeImages", "ec2:DescribeInstanceAttribute", "ec2:DescribeInstanceStatus", "ec2:DescribeLaunchTemplates", "ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:ModifyInstanceAttribute", "ec2:ModifyLaunchTemplate", "ec2:RevokeSecurityGroupEgress", "ec2:DescribeAccountAttributes", "ec2:DescribeAvailabilityZones", "ec2:DescribeInstanceTypes", "iam:PassRole", "drs:CreateRecoveryInstanceForDrs", "drs:ListTagsForResource"], "smithy.api#http" => {"uri" => "/StartRecovery", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_recovery_plan_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartRecoveryPlanExecution"
        operation.name = "StartRecoveryPlanExecution"
        operation.input = StartRecoveryPlanExecutionRequest
        operation.output = StartRecoveryPlanExecutionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartRecoveryPlanExecution", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:start_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartReplication"
        operation.name = "StartReplication"
        operation.input = StartReplicationInput
        operation.output = StartReplicationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_source_network_recovery, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartSourceNetworkRecovery"
        operation.name = "StartSourceNetworkRecovery"
        operation.input = StartSourceNetworkRecoveryRequest
        operation.output = StartSourceNetworkRecoveryResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "ec2:ModifyLaunchTemplate", "ec2:CreateLaunchTemplateVersion", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "cloudformation:DescribeStacks", "cloudformation:UpdateStack", "cloudformation:CreateStack", "cloudformation:DescribeStackResource", "cloudformation:DescribeStacks", "drs:GetLaunchConfiguration", "s3:PutObject", "s3:GetObject"], "smithy.api#http" => {"uri" => "/StartSourceNetworkRecovery", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_source_network_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartSourceNetworkReplication"
        operation.name = "StartSourceNetworkReplication"
        operation.input = StartSourceNetworkReplicationRequest
        operation.output = StartSourceNetworkReplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/StartSourceNetworkReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_failback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopFailback"
        operation.name = "StopFailback"
        operation.input = StopFailbackInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/StopFailback", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopReplication"
        operation.name = "StopReplication"
        operation.input = StopReplicationInput
        operation.output = StopReplicationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/StopReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_source_network_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopSourceNetworkReplication"
        operation.name = "StopSourceNetworkReplication"
        operation.input = StopSourceNetworkReplicationRequest
        operation.output = StopSourceNetworkReplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/StopSourceNetworkReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#TagResource"
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
      service.add_operation(:terminate_recovery_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#TerminateRecoveryInstances"
        operation.name = "TerminateRecoveryInstances"
        operation.input = TerminateRecoveryInstancesInput
        operation.output = TerminateRecoveryInstancesOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeVolumes", "ec2:DescribeInstances", "ec2:TerminateInstances", "ec2:DeleteVolume", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/TerminateRecoveryInstances", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UntagResource"
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
      service.add_operation(:update_failback_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateFailbackReplicationConfiguration"
        operation.name = "UpdateFailbackReplicationConfiguration"
        operation.input = UpdateFailbackReplicationConfigurationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateFailbackReplicationConfiguration", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_launch_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateLaunchConfiguration"
        operation.name = "UpdateLaunchConfiguration"
        operation.input = UpdateLaunchConfigurationInput
        operation.output = UpdateLaunchConfigurationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateLaunchConfigurationTemplate"
        operation.name = "UpdateLaunchConfigurationTemplate"
        operation.input = UpdateLaunchConfigurationTemplateInput
        operation.output = UpdateLaunchConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_recovery_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateRecoveryPlan"
        operation.name = "UpdateRecoveryPlan"
        operation.input = UpdateRecoveryPlanRequest
        operation.output = UpdateRecoveryPlanResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateRecoveryPlan", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_recovery_plan_execution_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateRecoveryPlanExecutionStep"
        operation.name = "UpdateRecoveryPlanExecutionStep"
        operation.input = UpdateRecoveryPlanExecutionStepRequest
        operation.output = UpdateRecoveryPlanExecutionStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateRecoveryPlanExecutionStep", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_recovery_plan_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateRecoveryPlanStep"
        operation.name = "UpdateRecoveryPlanStep"
        operation.input = UpdateRecoveryPlanStepRequest
        operation.output = UpdateRecoveryPlanStepResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateRecoveryPlanStep", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateReplicationConfiguration"
        operation.name = "UpdateReplicationConfiguration"
        operation.input = UpdateReplicationConfigurationInput
        operation.output = UpdateReplicationConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateReplicationConfigurationTemplate"
        operation.name = "UpdateReplicationConfigurationTemplate"
        operation.input = UpdateReplicationConfigurationTemplateInput
        operation.output = UpdateReplicationConfigurationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UninitializedAccountException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfigurationTemplate", "method" => "POST", "code" => 200}}
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
