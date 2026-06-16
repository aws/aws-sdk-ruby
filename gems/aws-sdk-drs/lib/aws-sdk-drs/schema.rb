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
    AwsAvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AwsAvailabilityZone", name: "AwsAvailabilityZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|sa|af|me|il)-(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9][a-z]$"})
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|sa|af|me|il)-(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9]$"})
    BoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#BoundedString", name: "BoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CPU = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CPU", name: "CPU")
    CfnStackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#CfnStackName", name: "CfnStackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.drs#ConversionMap", name: "ConversionMap")
    ConversionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ConversionProperties", name: "ConversionProperties")
    Cpus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#Cpus", name: "Cpus", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateExtendedSourceServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateExtendedSourceServerInput", name: "CreateExtendedSourceServerInput")
    CreateExtendedSourceServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateExtendedSourceServerOutput", name: "CreateExtendedSourceServerOutput")
    CreateLaunchConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateLaunchConfigurationTemplateInput", name: "CreateLaunchConfigurationTemplateInput")
    CreateLaunchConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateLaunchConfigurationTemplateOutput", name: "CreateLaunchConfigurationTemplateOutput")
    CreateReplicationConfigurationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateReplicationConfigurationTemplateInput", name: "CreateReplicationConfigurationTemplateInput")
    CreateReplicationConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#CreateReplicationConfigurationTemplateOutput", name: "CreateReplicationConfigurationTemplateOutput")
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
    EventResourceData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.drs#EventResourceData", name: "EventResourceData")
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
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#Job", name: "Job")
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
    PITPolicy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#PITPolicy", name: "PITPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
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
    RecoveryResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoveryResult", name: "RecoveryResult", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAIL", "name" => "FAIL"}, {"value" => "PARTIAL_SUCCESS", "name" => "PARTIAL_SUCCESS"}, {"value" => "ASSOCIATE_SUCCESS", "name" => "ASSOCIATE_SUCCESS"}, {"value" => "ASSOCIATE_FAIL", "name" => "ASSOCIATE_FAIL"}]})
    RecoverySnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#RecoverySnapshot", name: "RecoverySnapshot")
    RecoverySnapshotID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoverySnapshotID", name: "RecoverySnapshotID", traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^pit-[0-9a-zA-Z]{17}$"})
    RecoverySnapshotsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.drs#RecoverySnapshotsList", name: "RecoverySnapshotsList")
    RecoverySnapshotsOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#RecoverySnapshotsOrder", name: "RecoverySnapshotsOrder", traits: {"smithy.api#enum" => [{"name" => "ASC", "value" => "ASC"}, {"name" => "DESC", "value" => "DESC"}]})
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
    ReverseReplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReverseReplicationInput", name: "ReverseReplicationInput")
    ReverseReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.drs#ReverseReplicationOutput", name: "ReverseReplicationOutput")
    SecurityGroupID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SecurityGroupID", name: "SecurityGroupID", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SensitiveBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.drs#SensitiveBoundedString", name: "SensitiveBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "accountID"))
    Account.type = Types::Account
    AccountIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID)
    Accounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Account)
    AssociateSourceNetworkStackRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, location_name: "cfnStackName", traits: {"smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.type = Types::AssociateSourceNetworkStackRequest
    AssociateSourceNetworkStackResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job"))
    AssociateSourceNetworkStackResponse.type = Types::AssociateSourceNetworkStackResponse
    CPU.add_member(:cores, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "cores", traits: {"smithy.api#default" => 0}))
    CPU.add_member(:model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "modelName"))
    CPU.type = Types::CPU
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceType"))
    ConflictException.type = Types::ConflictException
    ConversionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot)
    ConversionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot)
    ConversionProperties.add_member(:volume_to_conversion_map, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToConversionMap, location_name: "volumeToConversionMap"))
    ConversionProperties.add_member(:root_volume_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "rootVolumeName"))
    ConversionProperties.add_member(:force_uefi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "forceUefi"))
    ConversionProperties.add_member(:data_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "dataTimestamp"))
    ConversionProperties.add_member(:volume_to_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToSizeMap, location_name: "volumeToVolumeSize"))
    ConversionProperties.add_member(:volume_to_product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeToProductCodes, location_name: "volumeToProductCodes"))
    ConversionProperties.type = Types::ConversionProperties
    Cpus.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CPU)
    CreateExtendedSourceServerInput.add_member(:source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "sourceServerArn", traits: {"smithy.api#required" => {}}))
    CreateExtendedSourceServerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateExtendedSourceServerInput.type = Types::CreateExtendedSourceServerInput
    CreateExtendedSourceServerOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, location_name: "sourceServer"))
    CreateExtendedSourceServerOutput.type = Types::CreateExtendedSourceServerOutput
    CreateLaunchConfigurationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    CreateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    CreateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    CreateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "exportBucketArn"))
    CreateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "launchIntoSourceInstance"))
    CreateLaunchConfigurationTemplateInput.type = Types::CreateLaunchConfigurationTemplateInput
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, location_name: "launchConfigurationTemplate"))
    CreateLaunchConfigurationTemplateOutput.type = Types::CreateLaunchConfigurationTemplateOutput
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateReplicationConfigurationTemplateInput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    CreateReplicationConfigurationTemplateInput.type = Types::CreateReplicationConfigurationTemplateInput
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, location_name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    CreateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    CreateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateReplicationConfigurationTemplateOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    CreateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    CreateReplicationConfigurationTemplateOutput.type = Types::CreateReplicationConfigurationTemplateOutput
    CreateSourceNetworkRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, location_name: "vpcID", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "originAccountID", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "originRegion", traits: {"smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    CreateSourceNetworkRequest.type = Types::CreateSourceNetworkRequest
    CreateSourceNetworkResponse.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    CreateSourceNetworkResponse.type = Types::CreateSourceNetworkResponse
    DataReplicationError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationErrorString, location_name: "error"))
    DataReplicationError.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "rawError"))
    DataReplicationError.type = Types::DataReplicationError
    DataReplicationInfo.add_member(:lag_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, location_name: "lagDuration"))
    DataReplicationInfo.add_member(:eta_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "etaDateTime"))
    DataReplicationInfo.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    DataReplicationInfo.add_member(:data_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationState, location_name: "dataReplicationState"))
    DataReplicationInfo.add_member(:data_replication_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiation, location_name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_error, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationError, location_name: "dataReplicationError"))
    DataReplicationInfo.add_member(:staging_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, location_name: "stagingAvailabilityZone"))
    DataReplicationInfo.add_member(:staging_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, location_name: "stagingOutpostArn"))
    DataReplicationInfo.type = Types::DataReplicationInfo
    DataReplicationInfoReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "deviceName"))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "totalStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "replicatedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "rescannedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "backloggedStorageBytes", traits: {"smithy.api#default" => 0}))
    DataReplicationInfoReplicatedDisk.add_member(:volume_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatus, location_name: "volumeStatus"))
    DataReplicationInfoReplicatedDisk.type = Types::DataReplicationInfoReplicatedDisk
    DataReplicationInfoReplicatedDisks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfoReplicatedDisk)
    DataReplicationInitiation.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "startDateTime"))
    DataReplicationInitiation.add_member(:next_attempt_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "nextAttemptDateTime"))
    DataReplicationInitiation.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationSteps, location_name: "steps"))
    DataReplicationInitiation.type = Types::DataReplicationInitiation
    DataReplicationInitiationStep.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStepName, location_name: "name"))
    DataReplicationInitiationStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStepStatus, location_name: "status"))
    DataReplicationInitiationStep.type = Types::DataReplicationInitiationStep
    DataReplicationInitiationSteps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInitiationStep)
    DeleteJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID", traits: {"smithy.api#required" => {}}))
    DeleteJobInput.type = Types::DeleteJobInput
    DeleteJobOutput.type = Types::DeleteJobOutput
    DeleteLaunchActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, location_name: "actionId", traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.type = Types::DeleteLaunchActionRequest
    DeleteLaunchActionResponse.type = Types::DeleteLaunchActionResponse
    DeleteLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, location_name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteLaunchConfigurationTemplateInput.type = Types::DeleteLaunchConfigurationTemplateInput
    DeleteLaunchConfigurationTemplateOutput.type = Types::DeleteLaunchConfigurationTemplateOutput
    DeleteRecoveryInstanceInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    DeleteRecoveryInstanceInput.type = Types::DeleteRecoveryInstanceInput
    DeleteReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, location_name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    DeleteReplicationConfigurationTemplateInput.type = Types::DeleteReplicationConfigurationTemplateInput
    DeleteReplicationConfigurationTemplateOutput.type = Types::DeleteReplicationConfigurationTemplateOutput
    DeleteSourceNetworkRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    DeleteSourceNetworkRequest.type = Types::DeleteSourceNetworkRequest
    DeleteSourceNetworkResponse.type = Types::DeleteSourceNetworkResponse
    DeleteSourceServerInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DeleteSourceServerInput.type = Types::DeleteSourceServerInput
    DeleteSourceServerOutput.type = Types::DeleteSourceServerOutput
    DescribeJobLogItemsInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID", traits: {"smithy.api#required" => {}}))
    DescribeJobLogItemsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeJobLogItemsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsInput.type = Types::DescribeJobLogItemsInput
    DescribeJobLogItemsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogs, location_name: "items"))
    DescribeJobLogItemsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsOutput.type = Types::DescribeJobLogItemsOutput
    DescribeJobsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeJobsRequestFilters, location_name: "filters"))
    DescribeJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeJobsInput.type = Types::DescribeJobsInput
    DescribeJobsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: JobsList, location_name: "items"))
    DescribeJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeJobsOutput.type = Types::DescribeJobsOutput
    DescribeJobsRequestFilters.add_member(:job_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeJobsRequestFiltersJobIDs, location_name: "jobIDs"))
    DescribeJobsRequestFilters.add_member(:from_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "fromDate"))
    DescribeJobsRequestFilters.add_member(:to_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "toDate"))
    DescribeJobsRequestFilters.type = Types::DescribeJobsRequestFilters
    DescribeJobsRequestFiltersJobIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobID)
    DescribeLaunchConfigurationTemplatesInput.add_member(:launch_configuration_template_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateIDs, location_name: "launchConfigurationTemplateIDs"))
    DescribeLaunchConfigurationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, location_name: "maxResults"))
    DescribeLaunchConfigurationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeLaunchConfigurationTemplatesInput.type = Types::DescribeLaunchConfigurationTemplatesInput
    DescribeLaunchConfigurationTemplatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplates, location_name: "items"))
    DescribeLaunchConfigurationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeLaunchConfigurationTemplatesOutput.type = Types::DescribeLaunchConfigurationTemplatesOutput
    DescribeRecoveryInstancesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoveryInstancesRequestFilters, location_name: "filters"))
    DescribeRecoveryInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeRecoveryInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeRecoveryInstancesInput.type = Types::DescribeRecoveryInstancesInput
    DescribeRecoveryInstancesItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstance)
    DescribeRecoveryInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeRecoveryInstancesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoveryInstancesItems, location_name: "items"))
    DescribeRecoveryInstancesOutput.type = Types::DescribeRecoveryInstancesOutput
    DescribeRecoveryInstancesRequestFilters.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceIDs, location_name: "recoveryInstanceIDs"))
    DescribeRecoveryInstancesRequestFilters.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerIDs, location_name: "sourceServerIDs"))
    DescribeRecoveryInstancesRequestFilters.type = Types::DescribeRecoveryInstancesRequestFilters
    DescribeRecoverySnapshotsInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DescribeRecoverySnapshotsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeRecoverySnapshotsRequestFilters, location_name: "filters"))
    DescribeRecoverySnapshotsInput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotsOrder, location_name: "order"))
    DescribeRecoverySnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeRecoverySnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeRecoverySnapshotsInput.type = Types::DescribeRecoverySnapshotsInput
    DescribeRecoverySnapshotsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotsList, location_name: "items"))
    DescribeRecoverySnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeRecoverySnapshotsOutput.type = Types::DescribeRecoverySnapshotsOutput
    DescribeRecoverySnapshotsRequestFilters.add_member(:from_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "fromDateTime"))
    DescribeRecoverySnapshotsRequestFilters.add_member(:to_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "toDateTime"))
    DescribeRecoverySnapshotsRequestFilters.type = Types::DescribeRecoverySnapshotsRequestFilters
    DescribeReplicationConfigurationTemplatesInput.add_member(:replication_configuration_template_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateIDs, location_name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeReplicationConfigurationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesInput.type = Types::DescribeReplicationConfigurationTemplatesInput
    DescribeReplicationConfigurationTemplatesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplates, location_name: "items"))
    DescribeReplicationConfigurationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesOutput.type = Types::DescribeReplicationConfigurationTemplatesOutput
    DescribeSourceNetworksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceNetworksRequestFilters, location_name: "filters"))
    DescribeSourceNetworksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeSourceNetworksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeSourceNetworksRequest.type = Types::DescribeSourceNetworksRequest
    DescribeSourceNetworksRequestFilters.add_member(:source_network_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceNetworksRequestFiltersIDs, location_name: "sourceNetworkIDs"))
    DescribeSourceNetworksRequestFilters.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "originAccountID"))
    DescribeSourceNetworksRequestFilters.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "originRegion"))
    DescribeSourceNetworksRequestFilters.type = Types::DescribeSourceNetworksRequestFilters
    DescribeSourceNetworksRequestFiltersIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID)
    DescribeSourceNetworksResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworksList, location_name: "items"))
    DescribeSourceNetworksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeSourceNetworksResponse.type = Types::DescribeSourceNetworksResponse
    DescribeSourceServersInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFilters, location_name: "filters"))
    DescribeSourceServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeSourceServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersInput.type = Types::DescribeSourceServersInput
    DescribeSourceServersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServersList, location_name: "items"))
    DescribeSourceServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersOutput.type = Types::DescribeSourceServersOutput
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeSourceServersRequestFiltersIDs, location_name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.add_member(:hardware_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "hardwareId"))
    DescribeSourceServersRequestFilters.add_member(:staging_account_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIDs, location_name: "stagingAccountIDs"))
    DescribeSourceServersRequestFilters.type = Types::DescribeSourceServersRequestFilters
    DescribeSourceServersRequestFiltersIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID)
    DisconnectRecoveryInstanceInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    DisconnectRecoveryInstanceInput.type = Types::DisconnectRecoveryInstanceInput
    DisconnectSourceServerInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    DisconnectSourceServerInput.type = Types::DisconnectSourceServerInput
    DisconnectSourceServerOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    DisconnectSourceServerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    DisconnectSourceServerOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    DisconnectSourceServerOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceId"))
    DisconnectSourceServerOutput.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, location_name: "lastLaunchResult"))
    DisconnectSourceServerOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, location_name: "dataReplicationInfo"))
    DisconnectSourceServerOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, location_name: "lifeCycle"))
    DisconnectSourceServerOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, location_name: "sourceProperties"))
    DisconnectSourceServerOutput.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, location_name: "stagingArea"))
    DisconnectSourceServerOutput.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, location_name: "sourceCloudProperties"))
    DisconnectSourceServerOutput.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, location_name: "replicationDirection"))
    DisconnectSourceServerOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    DisconnectSourceServerOutput.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    DisconnectSourceServerOutput.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, location_name: "agentVersion"))
    DisconnectSourceServerOutput.type = Types::DisconnectSourceServerOutput
    Disk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "deviceName"))
    Disk.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bytes", traits: {"smithy.api#default" => 0}))
    Disk.type = Types::Disk
    Disks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Disk)
    EbsSnapshotsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshot)
    EventResourceData.add_member(:source_network_data, Types::EventResourceData::SourceNetworkData, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkData, location_name: "sourceNetworkData"))
    EventResourceData.add_member(:unknown, Types::EventResourceData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EventResourceData.type = Types::EventResourceData
    ExportSourceNetworkCfnTemplateRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    ExportSourceNetworkCfnTemplateRequest.type = Types::ExportSourceNetworkCfnTemplateRequest
    ExportSourceNetworkCfnTemplateResponse.add_member(:s3_destination_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "s3DestinationUrl"))
    ExportSourceNetworkCfnTemplateResponse.type = Types::ExportSourceNetworkCfnTemplateResponse
    GetFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationInput.type = Types::GetFailbackReplicationConfigurationInput
    GetFailbackReplicationConfigurationOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "name"))
    GetFailbackReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    GetFailbackReplicationConfigurationOutput.add_member(:use_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "usePrivateIP"))
    GetFailbackReplicationConfigurationOutput.type = Types::GetFailbackReplicationConfigurationOutput
    GetLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    GetLaunchConfigurationInput.type = Types::GetLaunchConfigurationInput
    GetLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    GetLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    GetLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "ec2LaunchTemplateID"))
    GetLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    GetLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    GetLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    GetLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    GetLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    GetLaunchConfigurationOutput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    GetLaunchConfigurationOutput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, location_name: "launchIntoInstanceProperties"))
    GetLaunchConfigurationOutput.type = Types::GetLaunchConfigurationOutput
    GetReplicationConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    GetReplicationConfigurationInput.type = Types::GetReplicationConfigurationInput
    GetReplicationConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    GetReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    GetReplicationConfigurationOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    GetReplicationConfigurationOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    GetReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    GetReplicationConfigurationOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    GetReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    GetReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    GetReplicationConfigurationOutput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    GetReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    GetReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    GetReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    GetReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    GetReplicationConfigurationOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    GetReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    GetReplicationConfigurationOutput.type = Types::GetReplicationConfigurationOutput
    IPsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString)
    IdentificationHints.add_member(:fqdn, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "fqdn"))
    IdentificationHints.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "hostname"))
    IdentificationHints.add_member(:vm_ware_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "vmWareUuid"))
    IdentificationHints.add_member(:aws_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, location_name: "awsInstanceID"))
    IdentificationHints.type = Types::IdentificationHints
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "retryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID", traits: {"smithy.api#required" => {}}))
    Job.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    Job.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, location_name: "type"))
    Job.add_member(:initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InitiatedBy, location_name: "initiatedBy"))
    Job.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "creationDateTime"))
    Job.add_member(:end_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "endDateTime"))
    Job.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status"))
    Job.add_member(:participating_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingServers, location_name: "participatingServers"))
    Job.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    Job.add_member(:participating_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResources, location_name: "participatingResources"))
    Job.type = Types::Job
    JobLog.add_member(:log_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "logDateTime"))
    JobLog.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEvent, location_name: "event"))
    JobLog.add_member(:event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobLogEventData, location_name: "eventData"))
    JobLog.type = Types::JobLog
    JobLogEventData.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    JobLogEventData.add_member(:conversion_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, location_name: "conversionServerID"))
    JobLogEventData.add_member(:target_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, location_name: "targetInstanceID"))
    JobLogEventData.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "rawError"))
    JobLogEventData.add_member(:conversion_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionProperties, location_name: "conversionProperties"))
    JobLogEventData.add_member(:event_resource_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EventResourceData, location_name: "eventResourceData"))
    JobLogEventData.type = Types::JobLogEventData
    JobLogs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobLog)
    JobsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Job)
    LaunchAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, location_name: "actionId"))
    LaunchAction.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, location_name: "actionCode"))
    LaunchAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionType, location_name: "type"))
    LaunchAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, location_name: "name"))
    LaunchAction.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "active"))
    LaunchAction.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, location_name: "order"))
    LaunchAction.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, location_name: "actionVersion"))
    LaunchAction.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "optional"))
    LaunchAction.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, location_name: "parameters"))
    LaunchAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, location_name: "description"))
    LaunchAction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, location_name: "category"))
    LaunchAction.type = Types::LaunchAction
    LaunchActionIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId)
    LaunchActionParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterValue, location_name: "value"))
    LaunchActionParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterType, location_name: "type"))
    LaunchActionParameter.type = Types::LaunchActionParameter
    LaunchActionParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameterName)
    LaunchActionParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameter)
    LaunchActionRun.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchAction, location_name: "action"))
    LaunchActionRun.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRunId, location_name: "runId"))
    LaunchActionRun.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRunStatus, location_name: "status"))
    LaunchActionRun.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, location_name: "failureReason"))
    LaunchActionRun.type = Types::LaunchActionRun
    LaunchActionRuns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRun)
    LaunchActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchAction)
    LaunchActionsRequestFilters.add_member(:action_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionIds, location_name: "actionIds"))
    LaunchActionsRequestFilters.type = Types::LaunchActionsRequestFilters
    LaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "ssmAgentDiscoveryDatetime"))
    LaunchActionsStatus.add_member(:runs, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionRuns, location_name: "runs"))
    LaunchActionsStatus.type = Types::LaunchActionsStatus
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, location_name: "launchConfigurationTemplateID"))
    LaunchConfigurationTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    LaunchConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    LaunchConfigurationTemplate.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "exportBucketArn"))
    LaunchConfigurationTemplate.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    LaunchConfigurationTemplate.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "launchIntoSourceInstance"))
    LaunchConfigurationTemplate.type = Types::LaunchConfigurationTemplate
    LaunchConfigurationTemplateIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID)
    LaunchConfigurationTemplates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate)
    LaunchIntoInstanceProperties.add_member(:launch_into_ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, location_name: "launchIntoEC2InstanceID"))
    LaunchIntoInstanceProperties.type = Types::LaunchIntoInstanceProperties
    Licensing.add_member(:os_byol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "osByol"))
    Licensing.type = Types::Licensing
    LifeCycle.add_member(:added_to_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "addedToServiceDateTime"))
    LifeCycle.add_member(:first_byte_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DurationString, location_name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "lastSeenByServiceDateTime"))
    LifeCycle.add_member(:last_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastLaunch, location_name: "lastLaunch"))
    LifeCycle.type = Types::LifeCycle
    LifeCycleLastLaunch.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleLastLaunchInitiated, location_name: "initiated"))
    LifeCycleLastLaunch.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, location_name: "status"))
    LifeCycleLastLaunch.type = Types::LifeCycleLastLaunch
    LifeCycleLastLaunchInitiated.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastLaunchInitiated.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID"))
    LifeCycleLastLaunchInitiated.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchType, location_name: "type"))
    LifeCycleLastLaunchInitiated.type = Types::LifeCycleLastLaunchInitiated
    ListExtensibleSourceServersInput.add_member(:staging_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "stagingAccountID", traits: {"smithy.api#required" => {}}))
    ListExtensibleSourceServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsReplicatingSourceServers, location_name: "maxResults"))
    ListExtensibleSourceServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListExtensibleSourceServersInput.type = Types::ListExtensibleSourceServersInput
    ListExtensibleSourceServersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingSourceServersList, location_name: "items"))
    ListExtensibleSourceServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListExtensibleSourceServersOutput.type = Types::ListExtensibleSourceServersOutput
    ListLaunchActionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ListLaunchActionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionsRequestFilters, location_name: "filters"))
    ListLaunchActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsType, location_name: "maxResults"))
    ListLaunchActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLaunchActionsRequest.type = Types::ListLaunchActionsRequest
    ListLaunchActionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActions, location_name: "items"))
    ListLaunchActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLaunchActionsResponse.type = Types::ListLaunchActionsResponse
    ListStagingAccountsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListStagingAccountsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStagingAccountsInput.type = Types::ListStagingAccountsInput
    ListStagingAccountsOutput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounts, location_name: "accounts"))
    ListStagingAccountsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListStagingAccountsOutput.type = Types::ListStagingAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NetworkInterface.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "macAddress"))
    NetworkInterface.add_member(:ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IPsList, location_name: "ips"))
    NetworkInterface.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isPrimary"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface)
    OS.add_member(:full_string, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "fullString"))
    OS.type = Types::OS
    PITPolicy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicyRule)
    PITPolicyRule.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "ruleID", traits: {"smithy.api#default" => 0}))
    PITPolicyRule.add_member(:units, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicyRuleUnits, location_name: "units", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "interval", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:retention_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: StrictlyPositiveInteger, location_name: "retentionDuration", traits: {"smithy.api#required" => {}}))
    PITPolicyRule.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enabled"))
    PITPolicyRule.type = Types::PITPolicyRule
    ParticipatingResource.add_member(:participating_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResourceID, location_name: "participatingResourceID"))
    ParticipatingResource.add_member(:launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, location_name: "launchStatus"))
    ParticipatingResource.type = Types::ParticipatingResource
    ParticipatingResourceID.add_member(:source_network_id, Types::ParticipatingResourceID::SourceNetworkID, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    ParticipatingResourceID.add_member(:unknown, Types::ParticipatingResourceID::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ParticipatingResourceID.type = Types::ParticipatingResourceID
    ParticipatingResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingResource)
    ParticipatingServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    ParticipatingServer.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID"))
    ParticipatingServer.add_member(:launch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchStatus, location_name: "launchStatus"))
    ParticipatingServer.add_member(:launch_actions_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionsStatus, location_name: "launchActionsStatus"))
    ParticipatingServer.type = Types::ParticipatingServer
    ParticipatingServers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipatingServer)
    ProductCode.add_member(:product_code_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeId, location_name: "productCodeId"))
    ProductCode.add_member(:product_code_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeMode, location_name: "productCodeMode"))
    ProductCode.type = Types::ProductCode
    ProductCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCode)
    PutLaunchActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, location_name: "actionCode", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, location_name: "order", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, location_name: "actionId", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "optional", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "active", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, location_name: "name", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, location_name: "actionVersion", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, location_name: "category", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, location_name: "parameters"))
    PutLaunchActionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, location_name: "description", traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.type = Types::PutLaunchActionRequest
    PutLaunchActionResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionResourceId, location_name: "resourceId"))
    PutLaunchActionResponse.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionId, location_name: "actionId"))
    PutLaunchActionResponse.add_member(:action_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmDocumentName, location_name: "actionCode"))
    PutLaunchActionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionType, location_name: "type"))
    PutLaunchActionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionName, location_name: "name"))
    PutLaunchActionResponse.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "active"))
    PutLaunchActionResponse.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionOrder, location_name: "order"))
    PutLaunchActionResponse.add_member(:action_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionVersion, location_name: "actionVersion"))
    PutLaunchActionResponse.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "optional"))
    PutLaunchActionResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionParameters, location_name: "parameters"))
    PutLaunchActionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionDescription, location_name: "description"))
    PutLaunchActionResponse.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchActionCategory, location_name: "category"))
    PutLaunchActionResponse.type = Types::PutLaunchActionResponse
    RecoveryInstance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceID, location_name: "ec2InstanceID"))
    RecoveryInstance.add_member(:ec2_instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceState, location_name: "ec2InstanceState"))
    RecoveryInstance.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID"))
    RecoveryInstance.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID"))
    RecoveryInstance.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    RecoveryInstance.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    RecoveryInstance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    RecoveryInstance.add_member(:failback, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceFailback, location_name: "failback"))
    RecoveryInstance.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfo, location_name: "dataReplicationInfo"))
    RecoveryInstance.add_member(:recovery_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceProperties, location_name: "recoveryInstanceProperties"))
    RecoveryInstance.add_member(:point_in_time_snapshot_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "pointInTimeSnapshotDateTime"))
    RecoveryInstance.add_member(:is_drill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isDrill"))
    RecoveryInstance.add_member(:origin_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginEnvironment, location_name: "originEnvironment"))
    RecoveryInstance.add_member(:origin_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, location_name: "originAvailabilityZone"))
    RecoveryInstance.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, location_name: "agentVersion"))
    RecoveryInstance.add_member(:source_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, location_name: "sourceOutpostArn"))
    RecoveryInstance.type = Types::RecoveryInstance
    RecoveryInstanceDataReplicationError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackReplicationError, location_name: "error"))
    RecoveryInstanceDataReplicationError.add_member(:raw_error, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "rawError"))
    RecoveryInstanceDataReplicationError.type = Types::RecoveryInstanceDataReplicationError
    RecoveryInstanceDataReplicationInfo.add_member(:lag_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "lagDuration"))
    RecoveryInstanceDataReplicationInfo.add_member(:eta_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "etaDateTime"))
    RecoveryInstanceDataReplicationInfo.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_state, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationState, location_name: "dataReplicationState"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiation, location_name: "dataReplicationInitiation"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_error, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationError, location_name: "dataReplicationError"))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, location_name: "stagingAvailabilityZone"))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, location_name: "stagingOutpostArn"))
    RecoveryInstanceDataReplicationInfo.type = Types::RecoveryInstanceDataReplicationInfo
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "deviceName"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "totalStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "replicatedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "rescannedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "backloggedStorageBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.type = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk
    RecoveryInstanceDataReplicationInfoReplicatedDisks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInfoReplicatedDisk)
    RecoveryInstanceDataReplicationInitiation.add_member(:start_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "startDateTime"))
    RecoveryInstanceDataReplicationInitiation.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationSteps, location_name: "steps"))
    RecoveryInstanceDataReplicationInitiation.type = Types::RecoveryInstanceDataReplicationInitiation
    RecoveryInstanceDataReplicationInitiationStep.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStepName, location_name: "name"))
    RecoveryInstanceDataReplicationInitiationStep.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStepStatus, location_name: "status"))
    RecoveryInstanceDataReplicationInitiationStep.type = Types::RecoveryInstanceDataReplicationInitiationStep
    RecoveryInstanceDataReplicationInitiationSteps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDataReplicationInitiationStep)
    RecoveryInstanceDisk.add_member(:internal_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "internalDeviceName"))
    RecoveryInstanceDisk.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceDisk.add_member(:ebs_volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeID, location_name: "ebsVolumeID"))
    RecoveryInstanceDisk.type = Types::RecoveryInstanceDisk
    RecoveryInstanceDisks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDisk)
    RecoveryInstanceFailback.add_member(:failback_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "failbackClientID"))
    RecoveryInstanceFailback.add_member(:failback_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "failbackJobID"))
    RecoveryInstanceFailback.add_member(:failback_initiation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "failbackInitiationTime"))
    RecoveryInstanceFailback.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackState, location_name: "state"))
    RecoveryInstanceFailback.add_member(:agent_last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "agentLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:failback_client_last_seen_by_service_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "failbackClientLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:failback_to_original_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "failbackToOriginalServer"))
    RecoveryInstanceFailback.add_member(:first_byte_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    RecoveryInstanceFailback.add_member(:elapsed_replication_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "elapsedReplicationDuration"))
    RecoveryInstanceFailback.add_member(:failback_launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FailbackLaunchType, location_name: "failbackLaunchType"))
    RecoveryInstanceFailback.type = Types::RecoveryInstanceFailback
    RecoveryInstanceIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID)
    RecoveryInstanceProperties.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    RecoveryInstanceProperties.add_member(:identification_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentificationHints, location_name: "identificationHints"))
    RecoveryInstanceProperties.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, location_name: "networkInterfaces"))
    RecoveryInstanceProperties.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceDisks, location_name: "disks"))
    RecoveryInstanceProperties.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpus, location_name: "cpus"))
    RecoveryInstanceProperties.add_member(:ram_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "ramBytes", traits: {"smithy.api#default" => 0}))
    RecoveryInstanceProperties.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: OS, location_name: "os"))
    RecoveryInstanceProperties.type = Types::RecoveryInstanceProperties
    RecoveryInstancesForTerminationRequest.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID)
    RecoveryLifeCycle.add_member(:api_call_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "apiCallDateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RecoveryLifeCycle.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobID, location_name: "jobID"))
    RecoveryLifeCycle.add_member(:last_recovery_result, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryResult, location_name: "lastRecoveryResult"))
    RecoveryLifeCycle.type = Types::RecoveryLifeCycle
    RecoverySnapshot.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotID, location_name: "snapshotID", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:expected_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "expectedTimestamp", traits: {"smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "timestamp"))
    RecoverySnapshot.add_member(:ebs_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotsList, location_name: "ebsSnapshots"))
    RecoverySnapshot.type = Types::RecoverySnapshot
    RecoverySnapshotsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshot)
    ReplicationConfigurationReplicatedDisk.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "iops", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "throughput", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationReplicatedDisk.add_member(:optimized_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "optimizedStagingDiskType"))
    ReplicationConfigurationReplicatedDisk.type = Types::ReplicationConfigurationReplicatedDisk
    ReplicationConfigurationReplicatedDisks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisk)
    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, location_name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationTemplate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    ReplicationConfigurationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    ReplicationConfigurationTemplate.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    ReplicationConfigurationTemplate.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    ReplicationConfigurationTemplate.type = Types::ReplicationConfigurationTemplate
    ReplicationConfigurationTemplateIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID)
    ReplicationConfigurationTemplates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplate)
    ReplicationServersSecurityGroupsIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupID)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryDataReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    RetryDataReplicationInput.type = Types::RetryDataReplicationInput
    RetryDataReplicationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    RetryDataReplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    RetryDataReplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    RetryDataReplicationOutput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceId"))
    RetryDataReplicationOutput.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, location_name: "lastLaunchResult"))
    RetryDataReplicationOutput.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, location_name: "dataReplicationInfo"))
    RetryDataReplicationOutput.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, location_name: "lifeCycle"))
    RetryDataReplicationOutput.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, location_name: "sourceProperties"))
    RetryDataReplicationOutput.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, location_name: "stagingArea"))
    RetryDataReplicationOutput.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, location_name: "sourceCloudProperties"))
    RetryDataReplicationOutput.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, location_name: "replicationDirection"))
    RetryDataReplicationOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    RetryDataReplicationOutput.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    RetryDataReplicationOutput.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, location_name: "agentVersion"))
    RetryDataReplicationOutput.type = Types::RetryDataReplicationOutput
    ReverseReplicationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    ReverseReplicationInput.type = Types::ReverseReplicationInput
    ReverseReplicationOutput.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    ReverseReplicationOutput.type = Types::ReverseReplicationOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    ServiceQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceCloudProperties.add_member(:origin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "originAccountID"))
    SourceCloudProperties.add_member(:origin_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "originRegion"))
    SourceCloudProperties.add_member(:origin_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAvailabilityZone, location_name: "originAvailabilityZone"))
    SourceCloudProperties.add_member(:source_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostARN, location_name: "sourceOutpostArn"))
    SourceCloudProperties.type = Types::SourceCloudProperties
    SourceNetwork.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceNetwork.add_member(:source_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, location_name: "sourceVpcID"))
    SourceNetwork.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    SourceNetwork.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    SourceNetwork.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, location_name: "replicationStatus"))
    SourceNetwork.add_member(:replication_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBoundedString, location_name: "replicationStatusDetails"))
    SourceNetwork.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, location_name: "cfnStackName"))
    SourceNetwork.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, location_name: "sourceRegion"))
    SourceNetwork.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "sourceAccountID"))
    SourceNetwork.add_member(:last_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryLifeCycle, location_name: "lastRecovery"))
    SourceNetwork.add_member(:launched_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, location_name: "launchedVpcID"))
    SourceNetwork.type = Types::SourceNetwork
    SourceNetworkData.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceNetworkData.add_member(:source_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, location_name: "sourceVpc"))
    SourceNetworkData.add_member(:target_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcID, location_name: "targetVpc"))
    SourceNetworkData.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "stackName"))
    SourceNetworkData.type = Types::SourceNetworkData
    SourceNetworksList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork)
    SourceProperties.add_member(:last_updated_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:recommended_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "recommendedInstanceType"))
    SourceProperties.add_member(:identification_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentificationHints, location_name: "identificationHints"))
    SourceProperties.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, location_name: "networkInterfaces"))
    SourceProperties.add_member(:disks, ::Smithy::Schema::Shapes::MemberShape.new(target: Disks, location_name: "disks"))
    SourceProperties.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Cpus, location_name: "cpus"))
    SourceProperties.add_member(:ram_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "ramBytes", traits: {"smithy.api#default" => 0}))
    SourceProperties.add_member(:os, ::Smithy::Schema::Shapes::MemberShape.new(target: OS, location_name: "os"))
    SourceProperties.add_member(:supports_nitro_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "supportsNitroInstances"))
    SourceProperties.type = Types::SourceProperties
    SourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    SourceServer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    SourceServer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    SourceServer.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceId"))
    SourceServer.add_member(:last_launch_result, ::Smithy::Schema::Shapes::MemberShape.new(target: LastLaunchResult, location_name: "lastLaunchResult"))
    SourceServer.add_member(:data_replication_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationInfo, location_name: "dataReplicationInfo"))
    SourceServer.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, location_name: "lifeCycle"))
    SourceServer.add_member(:source_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProperties, location_name: "sourceProperties"))
    SourceServer.add_member(:staging_area, ::Smithy::Schema::Shapes::MemberShape.new(target: StagingArea, location_name: "stagingArea"))
    SourceServer.add_member(:source_cloud_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCloudProperties, location_name: "sourceCloudProperties"))
    SourceServer.add_member(:replication_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationDirection, location_name: "replicationDirection"))
    SourceServer.add_member(:reversed_direction_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    SourceServer.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceServer.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, location_name: "agentVersion"))
    SourceServer.type = Types::SourceServer
    SourceServerIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID)
    SourceServersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer)
    StagingArea.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionStatus, location_name: "status"))
    StagingArea.add_member(:staging_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountID, location_name: "stagingAccountID"))
    StagingArea.add_member(:staging_source_server_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "stagingSourceServerArn"))
    StagingArea.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "errorMessage"))
    StagingArea.type = Types::StagingArea
    StagingSourceServer.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "hostname"))
    StagingSourceServer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerARN, location_name: "arn"))
    StagingSourceServer.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    StagingSourceServer.type = Types::StagingSourceServer
    StagingSourceServersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StagingSourceServer)
    StartFailbackLaunchInput.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: StartFailbackRequestRecoveryInstanceIDs, location_name: "recoveryInstanceIDs", traits: {"smithy.api#required" => {}}))
    StartFailbackLaunchInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    StartFailbackLaunchInput.type = Types::StartFailbackLaunchInput
    StartFailbackLaunchOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job"))
    StartFailbackLaunchOutput.type = Types::StartFailbackLaunchOutput
    StartFailbackRequestRecoveryInstanceIDs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID)
    StartRecoveryInput.add_member(:source_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecoveryRequestSourceServers, location_name: "sourceServers", traits: {"smithy.api#required" => {}}))
    StartRecoveryInput.add_member(:is_drill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isDrill"))
    StartRecoveryInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    StartRecoveryInput.type = Types::StartRecoveryInput
    StartRecoveryOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job"))
    StartRecoveryOutput.type = Types::StartRecoveryOutput
    StartRecoveryRequestSourceServer.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StartRecoveryRequestSourceServer.add_member(:recovery_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoverySnapshotID, location_name: "recoverySnapshotID"))
    StartRecoveryRequestSourceServer.type = Types::StartRecoveryRequestSourceServer
    StartRecoveryRequestSourceServers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartRecoveryRequestSourceServer)
    StartReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StartReplicationInput.type = Types::StartReplicationInput
    StartReplicationOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, location_name: "sourceServer"))
    StartReplicationOutput.type = Types::StartReplicationOutput
    StartSourceNetworkRecoveryRequest.add_member(:source_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: StartSourceNetworkRecoveryRequestNetworkEntries, location_name: "sourceNetworks", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequest.add_member(:deploy_as_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "deployAsNew"))
    StartSourceNetworkRecoveryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    StartSourceNetworkRecoveryRequest.type = Types::StartSourceNetworkRecoveryRequest
    StartSourceNetworkRecoveryRequestNetworkEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartSourceNetworkRecoveryRequestNetworkEntry)
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:cfn_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CfnStackName, location_name: "cfnStackName"))
    StartSourceNetworkRecoveryRequestNetworkEntry.type = Types::StartSourceNetworkRecoveryRequestNetworkEntry
    StartSourceNetworkRecoveryResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job"))
    StartSourceNetworkRecoveryResponse.type = Types::StartSourceNetworkRecoveryResponse
    StartSourceNetworkReplicationRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StartSourceNetworkReplicationRequest.type = Types::StartSourceNetworkReplicationRequest
    StartSourceNetworkReplicationResponse.add_member(:source_network, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork, location_name: "sourceNetwork"))
    StartSourceNetworkReplicationResponse.type = Types::StartSourceNetworkReplicationResponse
    StopFailbackInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    StopFailbackInput.type = Types::StopFailbackInput
    StopReplicationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    StopReplicationInput.type = Types::StopReplicationInput
    StopReplicationOutput.add_member(:source_server, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServer, location_name: "sourceServer"))
    StopReplicationOutput.type = Types::StopReplicationOutput
    StopSourceNetworkReplicationRequest.add_member(:source_network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkID, location_name: "sourceNetworkID", traits: {"smithy.api#required" => {}}))
    StopSourceNetworkReplicationRequest.type = Types::StopSourceNetworkReplicationRequest
    StopSourceNetworkReplicationResponse.add_member(:source_network, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetwork, location_name: "sourceNetwork"))
    StopSourceNetworkReplicationResponse.type = Types::StopSourceNetworkReplicationResponse
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TerminateRecoveryInstancesInput.add_member(:recovery_instance_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstancesForTerminationRequest, location_name: "recoveryInstanceIDs", traits: {"smithy.api#required" => {}}))
    TerminateRecoveryInstancesInput.type = Types::TerminateRecoveryInstancesInput
    TerminateRecoveryInstancesOutput.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job"))
    TerminateRecoveryInstancesOutput.type = Types::TerminateRecoveryInstancesOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UninitializedAccountException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    UninitializedAccountException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    UninitializedAccountException.type = Types::UninitializedAccountException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryInstanceID, location_name: "recoveryInstanceID", traits: {"smithy.api#required" => {}}))
    UpdateFailbackReplicationConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "name"))
    UpdateFailbackReplicationConfigurationInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateFailbackReplicationConfigurationInput.add_member(:use_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "usePrivateIP"))
    UpdateFailbackReplicationConfigurationInput.type = Types::UpdateFailbackReplicationConfigurationInput
    UpdateLaunchConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    UpdateLaunchConfigurationInput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, location_name: "launchIntoInstanceProperties"))
    UpdateLaunchConfigurationInput.type = Types::UpdateLaunchConfigurationInput
    UpdateLaunchConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    UpdateLaunchConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationOutput.add_member(:ec2_launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundedString, location_name: "ec2LaunchTemplateID"))
    UpdateLaunchConfigurationOutput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationOutput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationOutput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationOutput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationOutput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    UpdateLaunchConfigurationOutput.add_member(:launch_into_instance_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchIntoInstanceProperties, location_name: "launchIntoInstanceProperties"))
    UpdateLaunchConfigurationOutput.type = Types::UpdateLaunchConfigurationOutput
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplateID, location_name: "launchConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationTemplateInput.add_member(:licensing, ::Smithy::Schema::Shapes::MemberShape.new(target: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "exportBucketArn"))
    UpdateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "postLaunchEnabled"))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "launchIntoSourceInstance"))
    UpdateLaunchConfigurationTemplateInput.type = Types::UpdateLaunchConfigurationTemplateInput
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchConfigurationTemplate, location_name: "launchConfigurationTemplate"))
    UpdateLaunchConfigurationTemplateOutput.type = Types::UpdateLaunchConfigurationTemplateOutput
    UpdateReplicationConfigurationInput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    UpdateReplicationConfigurationInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationInput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationInput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    UpdateReplicationConfigurationInput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationInput.type = Types::UpdateReplicationConfigurationInput
    UpdateReplicationConfigurationOutput.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceServerID, location_name: "sourceServerID"))
    UpdateReplicationConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SmallBoundedString, location_name: "name"))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationOutput.add_member(:replicated_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    UpdateReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationOutput.type = Types::UpdateReplicationConfigurationOutput
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, location_name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateInput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateInput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    UpdateReplicationConfigurationTemplateInput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationTemplateInput.type = Types::UpdateReplicationConfigurationTemplateInput
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationTemplateID, location_name: "replicationConfigurationTemplateID", traits: {"smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "arn"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "bandwidthThrottling", traits: {"smithy.api#default" => 0}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, location_name: "tags"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:pit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PITPolicy, location_name: "pitPolicy"))
    UpdateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationTemplateOutput.type = Types::UpdateReplicationConfigurationTemplateOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "code"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "name"))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString, location_name: "message"))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    VolumeToConversionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString)
    VolumeToConversionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ConversionMap)
    VolumeToProductCodes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString)
    VolumeToProductCodes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodes)
    VolumeToSizeMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: LargeBoundedString)
    VolumeToSizeMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger)

    ElasticDisasterRecoveryService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.drs#ElasticDisasterRecoveryService"
      service.name = "ElasticDisasterRecoveryService"
      service.version = "2020-02-26"
      service.traits = {"aws.api#service" => {"sdkId" => "drs", "arnNamespace" => "drs", "awsProductName" => "drs", "cloudTrailEventSource" => "drs.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "drs"}, "aws.iam#defineConditionKeys" => {"drs:EC2InstanceARN" => {"type" => "String", "documentation" => "Filters access by the EC2 instance the request originated from"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "X-Amzn-Trace-Id"], "additionalExposedHeaders" => ["X-Amzn-Errortype", "X-Amzn-Requestid", "X-Amzn-Trace-Id", "X-Amz-Apigw-Id"]}, "smithy.api#title" => "Elastic Disaster Recovery Service"}
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
      service.add_operation(:create_replication_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateReplicationConfigurationTemplate"
        operation.name = "CreateReplicationConfigurationTemplate"
        operation.input = CreateReplicationConfigurationTemplateInput
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
