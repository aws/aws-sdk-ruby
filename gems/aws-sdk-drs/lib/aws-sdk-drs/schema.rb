# frozen_string_literal: true

# This is generated code!

module Aws::Drs
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.{16,2044}$"})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#Account', name: 'Account')
    AccountID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#AccountID', name: 'AccountID', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "[0-9]{12,}"})
    AccountIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#AccountIDs', name: 'AccountIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    Accounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#Accounts', name: 'Accounts', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AgentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#AgentVersion', name: 'AgentVersion', traits: {"smithy.api#pattern" => "^[0-9]{1,5}.[0-9]{1,5}.[0-9]{1,5}(.[0-9]{4}.[0-9]{3}.[0-9]{4})?$"})
    AssociateSourceNetworkStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#AssociateSourceNetworkStackRequest', name: 'AssociateSourceNetworkStackRequest')
    AssociateSourceNetworkStackResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#AssociateSourceNetworkStackResponse', name: 'AssociateSourceNetworkStackResponse')
    AwsAvailabilityZone = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#AwsAvailabilityZone', name: 'AwsAvailabilityZone', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|sa|af|me|il)-(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9][a-z]$"})
    AwsRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#AwsRegion', name: 'AwsRegion', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(us(-gov)?|ap|ca|cn|eu|sa|af|me|il)-(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-[0-9]$"})
    BoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#BoundedString', name: 'BoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CPU = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CPU', name: 'CPU')
    CfnStackName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#CfnStackName', name: 'CfnStackName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#ConversionMap', name: 'ConversionMap')
    ConversionProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ConversionProperties', name: 'ConversionProperties')
    Cpus = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#Cpus', name: 'Cpus', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateExtendedSourceServerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateExtendedSourceServerInput', name: 'CreateExtendedSourceServerInput')
    CreateExtendedSourceServerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateExtendedSourceServerOutput', name: 'CreateExtendedSourceServerOutput')
    CreateLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateLaunchConfigurationTemplateInput', name: 'CreateLaunchConfigurationTemplateInput')
    CreateLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateLaunchConfigurationTemplateOutput', name: 'CreateLaunchConfigurationTemplateOutput')
    CreateReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateReplicationConfigurationTemplateInput', name: 'CreateReplicationConfigurationTemplateInput')
    CreateReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateReplicationConfigurationTemplateOutput', name: 'CreateReplicationConfigurationTemplateOutput')
    CreateSourceNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateSourceNetworkRequest', name: 'CreateSourceNetworkRequest')
    CreateSourceNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#CreateSourceNetworkResponse', name: 'CreateSourceNetworkResponse')
    DataReplicationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DataReplicationError', name: 'DataReplicationError')
    DataReplicationErrorString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#DataReplicationErrorString', name: 'DataReplicationErrorString', traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}]})
    DataReplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DataReplicationInfo', name: 'DataReplicationInfo')
    DataReplicationInfoReplicatedDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DataReplicationInfoReplicatedDisk', name: 'DataReplicationInfoReplicatedDisk')
    DataReplicationInfoReplicatedDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DataReplicationInfoReplicatedDisks', name: 'DataReplicationInfoReplicatedDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    DataReplicationInitiation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DataReplicationInitiation', name: 'DataReplicationInitiation')
    DataReplicationInitiationStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DataReplicationInitiationStep', name: 'DataReplicationInitiationStep')
    DataReplicationInitiationStepName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#DataReplicationInitiationStepName', name: 'DataReplicationInitiationStepName', traits: {"smithy.api#enum" => [{"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}]})
    DataReplicationInitiationStepStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#DataReplicationInitiationStepStatus', name: 'DataReplicationInitiationStepStatus', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    DataReplicationInitiationSteps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DataReplicationInitiationSteps', name: 'DataReplicationInitiationSteps')
    DataReplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#DataReplicationState', name: 'DataReplicationState', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}]})
    DeleteJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteJobInput', name: 'DeleteJobInput')
    DeleteJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteJobOutput', name: 'DeleteJobOutput')
    DeleteLaunchActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteLaunchActionRequest', name: 'DeleteLaunchActionRequest')
    DeleteLaunchActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteLaunchActionResponse', name: 'DeleteLaunchActionResponse')
    DeleteLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteLaunchConfigurationTemplateInput', name: 'DeleteLaunchConfigurationTemplateInput')
    DeleteLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteLaunchConfigurationTemplateOutput', name: 'DeleteLaunchConfigurationTemplateOutput')
    DeleteRecoveryInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteRecoveryInstanceInput', name: 'DeleteRecoveryInstanceInput')
    DeleteReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteReplicationConfigurationTemplateInput', name: 'DeleteReplicationConfigurationTemplateInput')
    DeleteReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteReplicationConfigurationTemplateOutput', name: 'DeleteReplicationConfigurationTemplateOutput')
    DeleteSourceNetworkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteSourceNetworkRequest', name: 'DeleteSourceNetworkRequest')
    DeleteSourceNetworkResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteSourceNetworkResponse', name: 'DeleteSourceNetworkResponse')
    DeleteSourceServerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteSourceServerInput', name: 'DeleteSourceServerInput')
    DeleteSourceServerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DeleteSourceServerOutput', name: 'DeleteSourceServerOutput')
    DescribeJobLogItemsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeJobLogItemsInput', name: 'DescribeJobLogItemsInput')
    DescribeJobLogItemsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeJobLogItemsOutput', name: 'DescribeJobLogItemsOutput')
    DescribeJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeJobsInput', name: 'DescribeJobsInput')
    DescribeJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeJobsOutput', name: 'DescribeJobsOutput')
    DescribeJobsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeJobsRequestFilters', name: 'DescribeJobsRequestFilters')
    DescribeJobsRequestFiltersJobIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DescribeJobsRequestFiltersJobIDs', name: 'DescribeJobsRequestFiltersJobIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DescribeLaunchConfigurationTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeLaunchConfigurationTemplatesInput', name: 'DescribeLaunchConfigurationTemplatesInput')
    DescribeLaunchConfigurationTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeLaunchConfigurationTemplatesOutput', name: 'DescribeLaunchConfigurationTemplatesOutput')
    DescribeRecoveryInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoveryInstancesInput', name: 'DescribeRecoveryInstancesInput')
    DescribeRecoveryInstancesItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DescribeRecoveryInstancesItems', name: 'DescribeRecoveryInstancesItems')
    DescribeRecoveryInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoveryInstancesOutput', name: 'DescribeRecoveryInstancesOutput')
    DescribeRecoveryInstancesRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoveryInstancesRequestFilters', name: 'DescribeRecoveryInstancesRequestFilters')
    DescribeRecoverySnapshotsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoverySnapshotsInput', name: 'DescribeRecoverySnapshotsInput')
    DescribeRecoverySnapshotsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoverySnapshotsOutput', name: 'DescribeRecoverySnapshotsOutput')
    DescribeRecoverySnapshotsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeRecoverySnapshotsRequestFilters', name: 'DescribeRecoverySnapshotsRequestFilters')
    DescribeReplicationConfigurationTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeReplicationConfigurationTemplatesInput', name: 'DescribeReplicationConfigurationTemplatesInput')
    DescribeReplicationConfigurationTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeReplicationConfigurationTemplatesOutput', name: 'DescribeReplicationConfigurationTemplatesOutput')
    DescribeSourceNetworksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceNetworksRequest', name: 'DescribeSourceNetworksRequest')
    DescribeSourceNetworksRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceNetworksRequestFilters', name: 'DescribeSourceNetworksRequestFilters')
    DescribeSourceNetworksRequestFiltersIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DescribeSourceNetworksRequestFiltersIDs', name: 'DescribeSourceNetworksRequestFiltersIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    DescribeSourceNetworksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceNetworksResponse', name: 'DescribeSourceNetworksResponse')
    DescribeSourceServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceServersInput', name: 'DescribeSourceServersInput')
    DescribeSourceServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceServersOutput', name: 'DescribeSourceServersOutput')
    DescribeSourceServersRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DescribeSourceServersRequestFilters', name: 'DescribeSourceServersRequestFilters')
    DescribeSourceServersRequestFiltersIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#DescribeSourceServersRequestFiltersIDs', name: 'DescribeSourceServersRequestFiltersIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DisconnectRecoveryInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DisconnectRecoveryInstanceInput', name: 'DisconnectRecoveryInstanceInput')
    DisconnectSourceServerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DisconnectSourceServerInput', name: 'DisconnectSourceServerInput')
    DisconnectSourceServerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#DisconnectSourceServerOutput', name: 'DisconnectSourceServerOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    Disk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#Disk', name: 'Disk')
    Disks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#Disks', name: 'Disks', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    EC2InstanceID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#EC2InstanceID', name: 'EC2InstanceID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    EC2InstanceState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#EC2InstanceState', name: 'EC2InstanceState', traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "SHUTTING_DOWN", "value" => "SHUTTING-DOWN"}, {"name" => "TERMINATED", "value" => "TERMINATED"}, {"name" => "NOT_FOUND", "value" => "NOT_FOUND"}]})
    EC2InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#EC2InstanceType', name: 'EC2InstanceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    EbsSnapshot = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#EbsSnapshot', name: 'EbsSnapshot', traits: {"smithy.api#pattern" => "^snap-[0-9a-zA-Z]{17}$"})
    EbsSnapshotsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#EbsSnapshotsList', name: 'EbsSnapshotsList')
    EbsVolumeID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#EbsVolumeID', name: 'EbsVolumeID', traits: {"smithy.api#length" => {"min" => 10, "max" => 19}, "smithy.api#pattern" => "^vol-([0-9a-fA-F]{8}|[0-9a-fA-F]{17})$"})
    EventResourceData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.drs#EventResourceData', name: 'EventResourceData')
    ExportSourceNetworkCfnTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ExportSourceNetworkCfnTemplateRequest', name: 'ExportSourceNetworkCfnTemplateRequest')
    ExportSourceNetworkCfnTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ExportSourceNetworkCfnTemplateResponse', name: 'ExportSourceNetworkCfnTemplateResponse')
    ExtensionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ExtensionStatus', name: 'ExtensionStatus', traits: {"smithy.api#enum" => [{"name" => "EXTENDED", "value" => "EXTENDED"}, {"name" => "EXTENSION_ERROR", "value" => "EXTENSION_ERROR"}, {"name" => "NOT_EXTENDED", "value" => "NOT_EXTENDED"}]})
    FailbackLaunchType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#FailbackLaunchType', name: 'FailbackLaunchType', traits: {"smithy.api#enum" => [{"name" => "RECOVERY", "value" => "RECOVERY"}, {"name" => "DRILL", "value" => "DRILL"}]})
    FailbackReplicationError = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#FailbackReplicationError', name: 'FailbackReplicationError', traits: {"smithy.api#enum" => [{"name" => "AGENT_NOT_SEEN", "value" => "AGENT_NOT_SEEN"}, {"name" => "FAILBACK_CLIENT_NOT_SEEN", "value" => "FAILBACK_CLIENT_NOT_SEEN"}, {"name" => "NOT_CONVERGING", "value" => "NOT_CONVERGING"}, {"name" => "UNSTABLE_NETWORK", "value" => "UNSTABLE_NETWORK"}, {"name" => "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "value" => "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"}, {"name" => "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE", "value" => "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "value" => "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "value" => "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"}, {"name" => "FAILED_GETTING_REPLICATION_STATE", "value" => "FAILED_GETTING_REPLICATION_STATE"}, {"name" => "SNAPSHOTS_FAILURE", "value" => "SNAPSHOTS_FAILURE"}, {"name" => "FAILED_TO_CREATE_SECURITY_GROUP", "value" => "FAILED_TO_CREATE_SECURITY_GROUP"}, {"name" => "FAILED_TO_LAUNCH_REPLICATION_SERVER", "value" => "FAILED_TO_LAUNCH_REPLICATION_SERVER"}, {"name" => "FAILED_TO_BOOT_REPLICATION_SERVER", "value" => "FAILED_TO_BOOT_REPLICATION_SERVER"}, {"name" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "value" => "FAILED_TO_AUTHENTICATE_WITH_SERVICE"}, {"name" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "value" => "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"}, {"name" => "FAILED_TO_CREATE_STAGING_DISKS", "value" => "FAILED_TO_CREATE_STAGING_DISKS"}, {"name" => "FAILED_TO_ATTACH_STAGING_DISKS", "value" => "FAILED_TO_ATTACH_STAGING_DISKS"}, {"name" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "value" => "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"name" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "value" => "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"name" => "FAILED_TO_START_DATA_TRANSFER", "value" => "FAILED_TO_START_DATA_TRANSFER"}]})
    FailbackState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#FailbackState', name: 'FailbackState', traits: {"smithy.api#enum" => [{"name" => "FAILBACK_NOT_STARTED", "value" => "FAILBACK_NOT_STARTED"}, {"name" => "FAILBACK_IN_PROGRESS", "value" => "FAILBACK_IN_PROGRESS"}, {"name" => "FAILBACK_READY_FOR_LAUNCH", "value" => "FAILBACK_READY_FOR_LAUNCH"}, {"name" => "FAILBACK_COMPLETED", "value" => "FAILBACK_COMPLETED"}, {"name" => "FAILBACK_ERROR", "value" => "FAILBACK_ERROR"}, {"name" => "FAILBACK_NOT_READY_FOR_LAUNCH", "value" => "FAILBACK_NOT_READY_FOR_LAUNCH"}, {"name" => "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE", "value" => "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE"}]})
    FailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#FailureReason', name: 'FailureReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;]*$"})
    GetFailbackReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetFailbackReplicationConfigurationInput', name: 'GetFailbackReplicationConfigurationInput')
    GetFailbackReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetFailbackReplicationConfigurationOutput', name: 'GetFailbackReplicationConfigurationOutput')
    GetLaunchConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetLaunchConfigurationInput', name: 'GetLaunchConfigurationInput')
    GetLaunchConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetLaunchConfigurationOutput', name: 'GetLaunchConfigurationOutput')
    GetReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetReplicationConfigurationInput', name: 'GetReplicationConfigurationInput')
    GetReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#GetReplicationConfigurationOutput', name: 'GetReplicationConfigurationOutput')
    IPsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#IPsList', name: 'IPsList')
    ISO8601DatetimeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ISO8601DatetimeString', name: 'ISO8601DatetimeString', traits: {"smithy.api#length" => {"min" => 19, "max" => 32}, "smithy.api#pattern" => "^[1-9][0-9]*-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?Z$"})
    ISO8601DurationString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ISO8601DurationString', name: 'ISO8601DurationString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    IdentificationHints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#IdentificationHints', name: 'IdentificationHints')
    InitializeServiceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#InitializeServiceInput', name: 'InitializeServiceInput')
    InitializeServiceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#InitializeServiceOutput', name: 'InitializeServiceOutput')
    InitiatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#InitiatedBy', name: 'InitiatedBy', traits: {"smithy.api#enum" => [{"value" => "START_RECOVERY", "name" => "START_RECOVERY"}, {"value" => "START_DRILL", "name" => "START_DRILL"}, {"value" => "FAILBACK", "name" => "FAILBACK"}, {"value" => "DIAGNOSTIC", "name" => "DIAGNOSTIC"}, {"value" => "TERMINATE_RECOVERY_INSTANCES", "name" => "TERMINATE_RECOVERY_INSTANCES"}, {"value" => "TARGET_ACCOUNT", "name" => "TARGET_ACCOUNT"}, {"value" => "CREATE_NETWORK_RECOVERY", "name" => "CREATE_NETWORK_RECOVERY"}, {"value" => "UPDATE_NETWORK_RECOVERY", "name" => "UPDATE_NETWORK_RECOVERY"}, {"value" => "ASSOCIATE_NETWORK_RECOVERY", "name" => "ASSOCIATE_NETWORK_RECOVERY"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#Job', name: 'Job')
    JobID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#JobID', name: 'JobID', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^drsjob-[0-9a-zA-Z]{17}$"})
    JobLog = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#JobLog', name: 'JobLog')
    JobLogEvent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#JobLogEvent', name: 'JobLogEvent', traits: {"smithy.api#enum" => [{"name" => "JOB_START", "value" => "JOB_START"}, {"name" => "SERVER_SKIPPED", "value" => "SERVER_SKIPPED"}, {"name" => "CLEANUP_START", "value" => "CLEANUP_START"}, {"name" => "CLEANUP_END", "value" => "CLEANUP_END"}, {"name" => "CLEANUP_FAIL", "value" => "CLEANUP_FAIL"}, {"name" => "SNAPSHOT_START", "value" => "SNAPSHOT_START"}, {"name" => "SNAPSHOT_END", "value" => "SNAPSHOT_END"}, {"name" => "SNAPSHOT_FAIL", "value" => "SNAPSHOT_FAIL"}, {"name" => "USING_PREVIOUS_SNAPSHOT", "value" => "USING_PREVIOUS_SNAPSHOT"}, {"name" => "USING_PREVIOUS_SNAPSHOT_FAILED", "value" => "USING_PREVIOUS_SNAPSHOT_FAILED"}, {"name" => "CONVERSION_START", "value" => "CONVERSION_START"}, {"name" => "CONVERSION_END", "value" => "CONVERSION_END"}, {"name" => "CONVERSION_FAIL", "value" => "CONVERSION_FAIL"}, {"name" => "LAUNCH_START", "value" => "LAUNCH_START"}, {"name" => "LAUNCH_FAILED", "value" => "LAUNCH_FAILED"}, {"name" => "JOB_CANCEL", "value" => "JOB_CANCEL"}, {"name" => "JOB_END", "value" => "JOB_END"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_START", "value" => "DEPLOY_NETWORK_CONFIGURATION_START"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_END", "value" => "DEPLOY_NETWORK_CONFIGURATION_END"}, {"name" => "DEPLOY_NETWORK_CONFIGURATION_FAILED", "value" => "DEPLOY_NETWORK_CONFIGURATION_FAILED"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_START", "value" => "UPDATE_NETWORK_CONFIGURATION_START"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_END", "value" => "UPDATE_NETWORK_CONFIGURATION_END"}, {"name" => "UPDATE_NETWORK_CONFIGURATION_FAILED", "value" => "UPDATE_NETWORK_CONFIGURATION_FAILED"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_START", "value" => "UPDATE_LAUNCH_TEMPLATE_START"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_END", "value" => "UPDATE_LAUNCH_TEMPLATE_END"}, {"name" => "UPDATE_LAUNCH_TEMPLATE_FAILED", "value" => "UPDATE_LAUNCH_TEMPLATE_FAILED"}, {"name" => "NETWORK_RECOVERY_FAIL", "value" => "NETWORK_RECOVERY_FAIL"}]})
    JobLogEventData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#JobLogEventData', name: 'JobLogEventData')
    JobLogs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#JobLogs', name: 'JobLogs')
    JobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#JobStatus', name: 'JobStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    JobType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#JobType', name: 'JobType', traits: {"smithy.api#enum" => [{"value" => "LAUNCH", "name" => "LAUNCH"}, {"value" => "TERMINATE", "name" => "TERMINATE"}, {"value" => "CREATE_CONVERTED_SNAPSHOT", "name" => "CREATE_CONVERTED_SNAPSHOT"}]})
    JobsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#JobsList', name: 'JobsList')
    LargeBoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LargeBoundedString', name: 'LargeBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    LastLaunchResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LastLaunchResult', name: 'LastLaunchResult', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "PENDING", "value" => "PENDING"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}]})
    LastLaunchType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LastLaunchType', name: 'LastLaunchType', traits: {"smithy.api#enum" => [{"name" => "RECOVERY", "value" => "RECOVERY"}, {"name" => "DRILL", "value" => "DRILL"}]})
    LaunchAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchAction', name: 'LaunchAction')
    LaunchActionCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionCategory', name: 'LaunchActionCategory', traits: {"smithy.api#enum" => [{"value" => "MONITORING", "name" => "MONITORING"}, {"value" => "VALIDATION", "name" => "VALIDATION"}, {"value" => "CONFIGURATION", "name" => "CONFIGURATION"}, {"value" => "SECURITY", "name" => "SECURITY"}, {"value" => "OTHER", "name" => "OTHER"}]})
    LaunchActionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionDescription', name: 'LaunchActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[0-9a-zA-Z ():/.,'-_#*;\n]*$"})
    LaunchActionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionId', name: 'LaunchActionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    LaunchActionIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#LaunchActionIds', name: 'LaunchActionIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    LaunchActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionName', name: 'LaunchActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9 /_-]*$"})
    LaunchActionOrder = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.drs#LaunchActionOrder', name: 'LaunchActionOrder', traits: {"smithy.api#range" => {"min" => 2, "max" => 10000}})
    LaunchActionParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchActionParameter', name: 'LaunchActionParameter')
    LaunchActionParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionParameterName', name: 'LaunchActionParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    LaunchActionParameterType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionParameterType', name: 'LaunchActionParameterType', traits: {"smithy.api#enum" => [{"value" => "SSM_STORE", "name" => "SSM_STORE"}, {"value" => "DYNAMIC", "name" => "DYNAMIC"}]})
    LaunchActionParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionParameterValue', name: 'LaunchActionParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[A-Za-z0-9.-]+$"})
    LaunchActionParameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#LaunchActionParameters', name: 'LaunchActionParameters', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    LaunchActionResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionResourceId', name: 'LaunchActionResourceId', traits: {"smithy.api#pattern" => "^(s-[0-9a-zA-Z]{17}$|lct-[0-9a-zA-Z]{17})$"})
    LaunchActionRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchActionRun', name: 'LaunchActionRun')
    LaunchActionRunId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionRunId', name: 'LaunchActionRunId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    LaunchActionRunStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionRunStatus', name: 'LaunchActionRunStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    LaunchActionRuns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#LaunchActionRuns', name: 'LaunchActionRuns')
    LaunchActionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionType', name: 'LaunchActionType', traits: {"smithy.api#enum" => [{"value" => "SSM_AUTOMATION", "name" => "SSM_AUTOMATION"}, {"value" => "SSM_COMMAND", "name" => "SSM_COMMAND"}]})
    LaunchActionVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchActionVersion', name: 'LaunchActionVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^(\\$DEFAULT|\\$LATEST|[0-9]+)$"})
    LaunchActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#LaunchActions', name: 'LaunchActions', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchActionsRequestFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchActionsRequestFilters', name: 'LaunchActionsRequestFilters')
    LaunchActionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchActionsStatus', name: 'LaunchActionsStatus')
    LaunchConfigurationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchConfigurationTemplate', name: 'LaunchConfigurationTemplate')
    LaunchConfigurationTemplateID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchConfigurationTemplateID', name: 'LaunchConfigurationTemplateID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^lct-[0-9a-zA-Z]{17}$"})
    LaunchConfigurationTemplateIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#LaunchConfigurationTemplateIDs', name: 'LaunchConfigurationTemplateIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    LaunchConfigurationTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#LaunchConfigurationTemplates', name: 'LaunchConfigurationTemplates', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    LaunchDisposition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchDisposition', name: 'LaunchDisposition', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "STARTED", "value" => "STARTED"}]})
    LaunchIntoInstanceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LaunchIntoInstanceProperties', name: 'LaunchIntoInstanceProperties')
    LaunchStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#LaunchStatus', name: 'LaunchStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "LAUNCHED", "name" => "LAUNCHED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    Licensing = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#Licensing', name: 'Licensing')
    LifeCycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LifeCycle', name: 'LifeCycle')
    LifeCycleLastLaunch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LifeCycleLastLaunch', name: 'LifeCycleLastLaunch')
    LifeCycleLastLaunchInitiated = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#LifeCycleLastLaunchInitiated', name: 'LifeCycleLastLaunchInitiated')
    ListExtensibleSourceServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListExtensibleSourceServersInput', name: 'ListExtensibleSourceServersInput')
    ListExtensibleSourceServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListExtensibleSourceServersOutput', name: 'ListExtensibleSourceServersOutput')
    ListLaunchActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListLaunchActionsRequest', name: 'ListLaunchActionsRequest')
    ListLaunchActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListLaunchActionsResponse', name: 'ListLaunchActionsResponse')
    ListStagingAccountsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListStagingAccountsInput', name: 'ListStagingAccountsInput')
    ListStagingAccountsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListStagingAccountsOutput', name: 'ListStagingAccountsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResultsReplicatingSourceServers = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.drs#MaxResultsReplicatingSourceServers', name: 'MaxResultsReplicatingSourceServers', traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    MaxResultsType = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.drs#MaxResultsType', name: 'MaxResultsType', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#NetworkInterfaces', name: 'NetworkInterfaces', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    OS = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#OS', name: 'OS')
    OriginEnvironment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#OriginEnvironment', name: 'OriginEnvironment', traits: {"smithy.api#enum" => [{"name" => "ON_PREMISES", "value" => "ON_PREMISES"}, {"name" => "AWS", "value" => "AWS"}]})
    OutpostARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#OutpostARN', name: 'OutpostARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 255}, "smithy.api#pattern" => "^arn:aws([a-z-]+)?:outposts:[a-z\\d-]+:\\d{12}:outpost/op-[a-f0-9]{17}$"})
    PITPolicy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#PITPolicy', name: 'PITPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PITPolicyRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#PITPolicyRule', name: 'PITPolicyRule')
    PITPolicyRuleUnits = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#PITPolicyRuleUnits', name: 'PITPolicyRuleUnits', traits: {"smithy.api#enum" => [{"value" => "MINUTE", "name" => "MINUTE"}, {"value" => "HOUR", "name" => "HOUR"}, {"value" => "DAY", "name" => "DAY"}]})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ParticipatingResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ParticipatingResource', name: 'ParticipatingResource')
    ParticipatingResourceID = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.drs#ParticipatingResourceID', name: 'ParticipatingResourceID')
    ParticipatingResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ParticipatingResources', name: 'ParticipatingResources')
    ParticipatingServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ParticipatingServer', name: 'ParticipatingServer')
    ParticipatingServers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ParticipatingServers', name: 'ParticipatingServers')
    PositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.drs#PositiveInteger', name: 'PositiveInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ProductCode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ProductCode', name: 'ProductCode')
    ProductCodeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ProductCodeId', name: 'ProductCodeId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^([A-Za-z0-9])+$"})
    ProductCodeMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ProductCodeMode', name: 'ProductCodeMode', traits: {"smithy.api#enum" => [{"name" => "ENABLED", "value" => "ENABLED"}, {"name" => "DISABLED", "value" => "DISABLED"}]})
    ProductCodes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ProductCodes', name: 'ProductCodes')
    PutLaunchActionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#PutLaunchActionRequest', name: 'PutLaunchActionRequest')
    PutLaunchActionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#PutLaunchActionResponse', name: 'PutLaunchActionResponse')
    RecoveryInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstance', name: 'RecoveryInstance')
    RecoveryInstanceDataReplicationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationError', name: 'RecoveryInstanceDataReplicationError')
    RecoveryInstanceDataReplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInfo', name: 'RecoveryInstanceDataReplicationInfo')
    RecoveryInstanceDataReplicationInfoReplicatedDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInfoReplicatedDisk', name: 'RecoveryInstanceDataReplicationInfoReplicatedDisk')
    RecoveryInstanceDataReplicationInfoReplicatedDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInfoReplicatedDisks', name: 'RecoveryInstanceDataReplicationInfoReplicatedDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    RecoveryInstanceDataReplicationInitiation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInitiation', name: 'RecoveryInstanceDataReplicationInitiation')
    RecoveryInstanceDataReplicationInitiationStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStep', name: 'RecoveryInstanceDataReplicationInitiationStep')
    RecoveryInstanceDataReplicationInitiationStepName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStepName', name: 'RecoveryInstanceDataReplicationInitiationStepName', traits: {"smithy.api#enum" => [{"name" => "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE", "value" => "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE"}, {"name" => "COMPLETE_VOLUME_MAPPING", "value" => "COMPLETE_VOLUME_MAPPING"}, {"name" => "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "value" => "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"}, {"name" => "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "value" => "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"}, {"name" => "CONFIGURE_REPLICATION_SOFTWARE", "value" => "CONFIGURE_REPLICATION_SOFTWARE"}, {"name" => "PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "value" => "PAIR_AGENT_WITH_REPLICATION_SOFTWARE"}, {"name" => "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "value" => "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"}, {"value" => "WAIT", "name" => "WAIT"}, {"value" => "CREATE_SECURITY_GROUP", "name" => "CREATE_SECURITY_GROUP"}, {"value" => "LAUNCH_REPLICATION_SERVER", "name" => "LAUNCH_REPLICATION_SERVER"}, {"value" => "BOOT_REPLICATION_SERVER", "name" => "BOOT_REPLICATION_SERVER"}, {"value" => "AUTHENTICATE_WITH_SERVICE", "name" => "AUTHENTICATE_WITH_SERVICE"}, {"value" => "DOWNLOAD_REPLICATION_SOFTWARE", "name" => "DOWNLOAD_REPLICATION_SOFTWARE"}, {"value" => "CREATE_STAGING_DISKS", "name" => "CREATE_STAGING_DISKS"}, {"value" => "ATTACH_STAGING_DISKS", "name" => "ATTACH_STAGING_DISKS"}, {"value" => "PAIR_REPLICATION_SERVER_WITH_AGENT", "name" => "PAIR_REPLICATION_SERVER_WITH_AGENT"}, {"value" => "CONNECT_AGENT_TO_REPLICATION_SERVER", "name" => "CONNECT_AGENT_TO_REPLICATION_SERVER"}, {"value" => "START_DATA_TRANSFER", "name" => "START_DATA_TRANSFER"}]})
    RecoveryInstanceDataReplicationInitiationStepStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationStepStatus', name: 'RecoveryInstanceDataReplicationInitiationStepStatus', traits: {"smithy.api#enum" => [{"name" => "NOT_STARTED", "value" => "NOT_STARTED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "SKIPPED", "value" => "SKIPPED"}]})
    RecoveryInstanceDataReplicationInitiationSteps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationInitiationSteps', name: 'RecoveryInstanceDataReplicationInitiationSteps')
    RecoveryInstanceDataReplicationState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDataReplicationState', name: 'RecoveryInstanceDataReplicationState', traits: {"smithy.api#enum" => [{"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "INITIATING", "value" => "INITIATING"}, {"name" => "INITIAL_SYNC", "value" => "INITIAL_SYNC"}, {"name" => "BACKLOG", "value" => "BACKLOG"}, {"name" => "CREATING_SNAPSHOT", "value" => "CREATING_SNAPSHOT"}, {"name" => "CONTINUOUS", "value" => "CONTINUOUS"}, {"name" => "PAUSED", "value" => "PAUSED"}, {"name" => "RESCAN", "value" => "RESCAN"}, {"name" => "STALLED", "value" => "STALLED"}, {"name" => "DISCONNECTED", "value" => "DISCONNECTED"}, {"name" => "REPLICATION_STATE_NOT_AVAILABLE", "value" => "REPLICATION_STATE_NOT_AVAILABLE"}, {"name" => "NOT_STARTED", "value" => "NOT_STARTED"}]})
    RecoveryInstanceDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDisk', name: 'RecoveryInstanceDisk')
    RecoveryInstanceDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoveryInstanceDisks', name: 'RecoveryInstanceDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RecoveryInstanceFailback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceFailback', name: 'RecoveryInstanceFailback')
    RecoveryInstanceID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoveryInstanceID', name: 'RecoveryInstanceID', traits: {"smithy.api#length" => {"min" => 10, "max" => 19}, "smithy.api#pattern" => "^i-[0-9a-fA-F]{8,}$"})
    RecoveryInstanceIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoveryInstanceIDs', name: 'RecoveryInstanceIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    RecoveryInstanceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryInstanceProperties', name: 'RecoveryInstanceProperties')
    RecoveryInstancesForTerminationRequest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoveryInstancesForTerminationRequest', name: 'RecoveryInstancesForTerminationRequest', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RecoveryLifeCycle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoveryLifeCycle', name: 'RecoveryLifeCycle')
    RecoveryResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoveryResult', name: 'RecoveryResult', traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAIL", "name" => "FAIL"}, {"value" => "PARTIAL_SUCCESS", "name" => "PARTIAL_SUCCESS"}, {"value" => "ASSOCIATE_SUCCESS", "name" => "ASSOCIATE_SUCCESS"}, {"value" => "ASSOCIATE_FAIL", "name" => "ASSOCIATE_FAIL"}]})
    RecoverySnapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RecoverySnapshot', name: 'RecoverySnapshot')
    RecoverySnapshotID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoverySnapshotID', name: 'RecoverySnapshotID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^pit-[0-9a-zA-Z]{17}$"})
    RecoverySnapshotsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#RecoverySnapshotsList', name: 'RecoverySnapshotsList')
    RecoverySnapshotsOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#RecoverySnapshotsOrder', name: 'RecoverySnapshotsOrder', traits: {"smithy.api#enum" => [{"name" => "ASC", "value" => "ASC"}, {"name" => "DESC", "value" => "DESC"}]})
    ReplicationConfigurationDataPlaneRouting = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationDataPlaneRouting', name: 'ReplicationConfigurationDataPlaneRouting', traits: {"smithy.api#enum" => [{"value" => "PRIVATE_IP", "name" => "PRIVATE_IP"}, {"value" => "PUBLIC_IP", "name" => "PUBLIC_IP"}]})
    ReplicationConfigurationDefaultLargeStagingDiskType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationDefaultLargeStagingDiskType', name: 'ReplicationConfigurationDefaultLargeStagingDiskType', traits: {"smithy.api#enum" => [{"value" => "GP2", "name" => "GP2"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "AUTO", "name" => "AUTO"}]})
    ReplicationConfigurationEbsEncryption = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationEbsEncryption', name: 'ReplicationConfigurationEbsEncryption', traits: {"smithy.api#enum" => [{"value" => "DEFAULT", "name" => "DEFAULT"}, {"value" => "CUSTOM", "name" => "CUSTOM"}, {"value" => "NONE", "name" => "NONE"}]})
    ReplicationConfigurationReplicatedDisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationReplicatedDisk', name: 'ReplicationConfigurationReplicatedDisk')
    ReplicationConfigurationReplicatedDiskStagingDiskType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationReplicatedDiskStagingDiskType', name: 'ReplicationConfigurationReplicatedDiskStagingDiskType', traits: {"smithy.api#enum" => [{"value" => "AUTO", "name" => "AUTO"}, {"value" => "GP2", "name" => "GP2"}, {"value" => "GP3", "name" => "GP3"}, {"value" => "IO1", "name" => "IO1"}, {"value" => "SC1", "name" => "SC1"}, {"value" => "ST1", "name" => "ST1"}, {"value" => "STANDARD", "name" => "STANDARD"}]})
    ReplicationConfigurationReplicatedDisks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationReplicatedDisks', name: 'ReplicationConfigurationReplicatedDisks', traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ReplicationConfigurationTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationTemplate', name: 'ReplicationConfigurationTemplate')
    ReplicationConfigurationTemplateID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationTemplateID', name: 'ReplicationConfigurationTemplateID', traits: {"smithy.api#length" => {"min" => 21, "max" => 21}, "smithy.api#pattern" => "^rct-[0-9a-zA-Z]{17}$"})
    ReplicationConfigurationTemplateIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationTemplateIDs', name: 'ReplicationConfigurationTemplateIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ReplicationConfigurationTemplates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ReplicationConfigurationTemplates', name: 'ReplicationConfigurationTemplates')
    ReplicationDirection = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationDirection', name: 'ReplicationDirection', traits: {"smithy.api#enum" => [{"name" => "FAILOVER", "value" => "FAILOVER"}, {"name" => "FAILBACK", "value" => "FAILBACK"}]})
    ReplicationServersSecurityGroupsIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ReplicationServersSecurityGroupsIDs', name: 'ReplicationServersSecurityGroupsIDs', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    ReplicationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ReplicationStatus', name: 'ReplicationStatus', traits: {"smithy.api#enum" => [{"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "PROTECTED", "name" => "PROTECTED"}, {"value" => "ERROR", "name" => "ERROR"}]})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetryDataReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RetryDataReplicationInput', name: 'RetryDataReplicationInput', traits: {"smithy.api#deprecated" => {"message" => "WARNING: RetryDataReplication is deprecated"}})
    RetryDataReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#RetryDataReplicationOutput', name: 'RetryDataReplicationOutput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    ReverseReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ReverseReplicationInput', name: 'ReverseReplicationInput')
    ReverseReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ReverseReplicationOutput', name: 'ReverseReplicationOutput')
    SecurityGroupID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SecurityGroupID', name: 'SecurityGroupID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^sg-[0-9a-fA-F]{8,}$"})
    SensitiveBoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SensitiveBoundedString', name: 'SensitiveBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SmallBoundedString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SmallBoundedString', name: 'SmallBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    SourceCloudProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#SourceCloudProperties', name: 'SourceCloudProperties')
    SourceNetwork = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#SourceNetwork', name: 'SourceNetwork', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceNetworkResource"}]})
    SourceNetworkData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#SourceNetworkData', name: 'SourceNetworkData')
    SourceNetworkID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SourceNetworkID', name: 'SourceNetworkID', traits: {"smithy.api#length" => {"min" => 20, "max" => 20}, "smithy.api#pattern" => "^sn-[0-9a-zA-Z]{17}$"})
    SourceNetworksList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#SourceNetworksList', name: 'SourceNetworksList')
    SourceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#SourceProperties', name: 'SourceProperties')
    SourceServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#SourceServer', name: 'SourceServer', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.drs#SourceServerResource"}]})
    SourceServerARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SourceServerARN', name: 'SourceServerARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(?:[0-9a-zA-Z_-]+:){3}([0-9]{12,}):source-server/(s-[0-9a-zA-Z]{17})$"})
    SourceServerID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SourceServerID', name: 'SourceServerID', traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^s-[0-9a-zA-Z]{17}$"})
    SourceServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#SourceServerIDs', name: 'SourceServerIDs')
    SourceServersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#SourceServersList', name: 'SourceServersList')
    SsmDocumentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SsmDocumentName', name: 'SsmDocumentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^([A-Za-z0-9-/:])+$"})
    StagingArea = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StagingArea', name: 'StagingArea')
    StagingSourceServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StagingSourceServer', name: 'StagingSourceServer')
    StagingSourceServersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#StagingSourceServersList', name: 'StagingSourceServersList')
    StartFailbackLaunchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartFailbackLaunchInput', name: 'StartFailbackLaunchInput')
    StartFailbackLaunchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartFailbackLaunchOutput', name: 'StartFailbackLaunchOutput')
    StartFailbackRequestRecoveryInstanceIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#StartFailbackRequestRecoveryInstanceIDs', name: 'StartFailbackRequestRecoveryInstanceIDs', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartRecoveryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartRecoveryInput', name: 'StartRecoveryInput')
    StartRecoveryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartRecoveryOutput', name: 'StartRecoveryOutput')
    StartRecoveryRequestSourceServer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartRecoveryRequestSourceServer', name: 'StartRecoveryRequestSourceServer')
    StartRecoveryRequestSourceServers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#StartRecoveryRequestSourceServers', name: 'StartRecoveryRequestSourceServers', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    StartReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartReplicationInput', name: 'StartReplicationInput')
    StartReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartReplicationOutput', name: 'StartReplicationOutput')
    StartSourceNetworkRecoveryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartSourceNetworkRecoveryRequest', name: 'StartSourceNetworkRecoveryRequest')
    StartSourceNetworkRecoveryRequestNetworkEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#StartSourceNetworkRecoveryRequestNetworkEntries', name: 'StartSourceNetworkRecoveryRequestNetworkEntries', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    StartSourceNetworkRecoveryRequestNetworkEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartSourceNetworkRecoveryRequestNetworkEntry', name: 'StartSourceNetworkRecoveryRequestNetworkEntry')
    StartSourceNetworkRecoveryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartSourceNetworkRecoveryResponse', name: 'StartSourceNetworkRecoveryResponse')
    StartSourceNetworkReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartSourceNetworkReplicationRequest', name: 'StartSourceNetworkReplicationRequest')
    StartSourceNetworkReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StartSourceNetworkReplicationResponse', name: 'StartSourceNetworkReplicationResponse')
    StopFailbackInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StopFailbackInput', name: 'StopFailbackInput')
    StopReplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StopReplicationInput', name: 'StopReplicationInput')
    StopReplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StopReplicationOutput', name: 'StopReplicationOutput')
    StopSourceNetworkReplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StopSourceNetworkReplicationRequest', name: 'StopSourceNetworkReplicationRequest')
    StopSourceNetworkReplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#StopSourceNetworkReplicationResponse', name: 'StopSourceNetworkReplicationResponse')
    StrictlyPositiveInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.drs#StrictlyPositiveInteger', name: 'StrictlyPositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    SubnetID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#SubnetID', name: 'SubnetID', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^subnet-[0-9a-fA-F]{8,}$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#TagKeys', name: 'TagKeys', traits: {"smithy.api#sensitive" => {}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#TagResourceInput', name: 'TagResourceInput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#TagsMap', name: 'TagsMap', traits: {"smithy.api#sensitive" => {}})
    TargetInstanceTypeRightSizingMethod = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#TargetInstanceTypeRightSizingMethod', name: 'TargetInstanceTypeRightSizingMethod', traits: {"smithy.api#enum" => [{"name" => "NONE", "value" => "NONE"}, {"name" => "BASIC", "value" => "BASIC"}, {"name" => "IN_AWS", "value" => "IN_AWS"}]})
    TerminateRecoveryInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#TerminateRecoveryInstancesInput', name: 'TerminateRecoveryInstancesInput')
    TerminateRecoveryInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#TerminateRecoveryInstancesOutput', name: 'TerminateRecoveryInstancesOutput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UninitializedAccountException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UninitializedAccountException', name: 'UninitializedAccountException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UntagResourceInput', name: 'UntagResourceInput')
    UpdateFailbackReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateFailbackReplicationConfigurationInput', name: 'UpdateFailbackReplicationConfigurationInput')
    UpdateLaunchConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateLaunchConfigurationInput', name: 'UpdateLaunchConfigurationInput')
    UpdateLaunchConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateLaunchConfigurationOutput', name: 'UpdateLaunchConfigurationOutput')
    UpdateLaunchConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateLaunchConfigurationTemplateInput', name: 'UpdateLaunchConfigurationTemplateInput')
    UpdateLaunchConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateLaunchConfigurationTemplateOutput', name: 'UpdateLaunchConfigurationTemplateOutput')
    UpdateReplicationConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateReplicationConfigurationInput', name: 'UpdateReplicationConfigurationInput')
    UpdateReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateReplicationConfigurationOutput', name: 'UpdateReplicationConfigurationOutput')
    UpdateReplicationConfigurationTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateReplicationConfigurationTemplateInput', name: 'UpdateReplicationConfigurationTemplateInput')
    UpdateReplicationConfigurationTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#UpdateReplicationConfigurationTemplateOutput', name: 'UpdateReplicationConfigurationTemplateOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.drs#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.drs#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    VolumeStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#VolumeStatus', name: 'VolumeStatus', traits: {"smithy.api#enum" => [{"value" => "REGULAR", "name" => "REGULAR"}, {"value" => "CONTAINS_MARKETPLACE_PRODUCT_CODES", "name" => "CONTAINS_MARKETPLACE_PRODUCT_CODES"}, {"value" => "MISSING_VOLUME_ATTRIBUTES", "name" => "MISSING_VOLUME_ATTRIBUTES"}, {"value" => "MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE", "name" => "MISSING_VOLUME_ATTRIBUTES_AND_PRECHECK_UNAVAILABLE"}, {"value" => "PENDING", "name" => "PENDING"}]})
    VolumeToConversionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#VolumeToConversionMap', name: 'VolumeToConversionMap')
    VolumeToProductCodes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#VolumeToProductCodes', name: 'VolumeToProductCodes')
    VolumeToSizeMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.drs#VolumeToSizeMap', name: 'VolumeToSizeMap')
    VpcID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.drs#VpcID', name: 'VpcID', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-[0-9a-fA-F]{8,}$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'accountID', traits: {"smithy.api#documentation" => "<p>Account ID of AWS account.</p>"}))
    Account.type = Types::Account
    AccountIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID)
    Accounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Account)
    AssociateSourceNetworkStackRequest.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>The Source Network ID to associate with CloudFormation template.</p>", "smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.add_member(:cfn_stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CfnStackName, location_name: 'cfnStackName', traits: {"smithy.api#documentation" => "<p>CloudFormation template to associate with a Source Network.</p>", "smithy.api#required" => {}}))
    AssociateSourceNetworkStackRequest.type = Types::AssociateSourceNetworkStackRequest
    AssociateSourceNetworkStackResponse.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Source Network association Job.</p>"}))
    AssociateSourceNetworkStackResponse.type = Types::AssociateSourceNetworkStackResponse
    CPU.add_member(:cores, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'cores', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of CPU cores.</p>"}))
    CPU.add_member(:model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'modelName', traits: {"smithy.api#documentation" => "<p>The model name of the CPU.</p>"}))
    CPU.type = Types::CPU
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ConflictException.type = Types::ConflictException
    ConversionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshot)
    ConversionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshot)
    ConversionProperties.add_member(:volume_to_conversion_map, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeToConversionMap, location_name: 'volumeToConversionMap', traits: {"smithy.api#documentation" => "<p>A mapping between the volumes being converted and the converted snapshot ids</p>"}))
    ConversionProperties.add_member(:root_volume_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rootVolumeName', traits: {"smithy.api#documentation" => "<p>The root volume name of a conversion job</p>"}))
    ConversionProperties.add_member(:force_uefi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'forceUefi', traits: {"smithy.api#documentation" => "<p>Whether the volume being converted uses UEFI or not</p>"}))
    ConversionProperties.add_member(:data_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'dataTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the snapshot being converted was taken</p>"}))
    ConversionProperties.add_member(:volume_to_volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeToSizeMap, location_name: 'volumeToVolumeSize', traits: {"smithy.api#documentation" => "<p>A mapping between the volumes and their sizes</p>"}))
    ConversionProperties.add_member(:volume_to_product_codes, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeToProductCodes, location_name: 'volumeToProductCodes', traits: {"smithy.api#documentation" => "<p>A mapping between the volumes being converted and the product codes associated with them</p>"}))
    ConversionProperties.type = Types::ConversionProperties
    Cpus.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CPU)
    CreateExtendedSourceServerInput.add_member(:source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'sourceServerArn', traits: {"smithy.api#documentation" => "<p>This defines the ARN of the source server in staging Account based on which you want to create an extended source server.</p>", "smithy.api#required" => {}}))
    CreateExtendedSourceServerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the extended source server.</p>"}))
    CreateExtendedSourceServerInput.type = Types::CreateExtendedSourceServerInput
    CreateExtendedSourceServerOutput.add_member(:source_server, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServer, location_name: 'sourceServer', traits: {"smithy.api#documentation" => "<p>Created extended source server.</p>"}))
    CreateExtendedSourceServerOutput.type = Types::CreateExtendedSourceServerOutput
    CreateLaunchConfigurationTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Request to associate tags during creation of a Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private IP.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Licensing.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'exportBucketArn', traits: {"smithy.api#documentation" => "<p>S3 bucket ARN to export Source Network templates.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Whether we want to activate post-launch actions.</p>"}))
    CreateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'launchIntoSourceInstance', traits: {"smithy.api#documentation" => "<p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>"}))
    CreateLaunchConfigurationTemplateInput.type = Types::CreateLaunchConfigurationTemplateInput
    CreateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate, location_name: 'launchConfigurationTemplate', traits: {"smithy.api#documentation" => "<p>Created Launch Configuration Template.</p>"}))
    CreateLaunchConfigurationTemplateOutput.type = Types::CreateLaunchConfigurationTemplateOutput
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    CreateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"}))
    CreateReplicationConfigurationTemplateInput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    CreateReplicationConfigurationTemplateInput.type = Types::CreateReplicationConfigurationTemplateInput
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ID.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ARN.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    CreateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    CreateReplicationConfigurationTemplateOutput.type = Types::CreateReplicationConfigurationTemplateOutput
    CreateSourceNetworkRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcID, location_name: 'vpcID', traits: {"smithy.api#documentation" => "<p>Which VPC ID to protect.</p>", "smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'originAccountID', traits: {"smithy.api#documentation" => "<p>Account containing the VPC to protect.</p>", "smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:origin_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'originRegion', traits: {"smithy.api#documentation" => "<p>Region containing the VPC to protect.</p>", "smithy.api#required" => {}}))
    CreateSourceNetworkRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with the Source Network resource.</p>"}))
    CreateSourceNetworkRequest.type = Types::CreateSourceNetworkRequest
    CreateSourceNetworkResponse.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the created Source Network.</p>"}))
    CreateSourceNetworkResponse.type = Types::CreateSourceNetworkResponse
    DataReplicationError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    DataReplicationError.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    DataReplicationError.type = Types::DataReplicationError
    DataReplicationInfo.add_member(:lag_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: 'lagDuration', traits: {"smithy.api#documentation" => "<p>Data replication lag duration.</p>"}))
    DataReplicationInfo.add_member(:eta_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'etaDateTime', traits: {"smithy.api#documentation" => "<p>An estimate of when the data replication will be completed.</p>"}))
    DataReplicationInfo.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>The disks that should be replicated.</p>"}))
    DataReplicationInfo.add_member(:data_replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationState, location_name: 'dataReplicationState', traits: {"smithy.api#documentation" => "<p>The state of the data replication.</p>"}))
    DataReplicationInfo.add_member(:data_replication_initiation, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: 'dataReplicationInitiation', traits: {"smithy.api#documentation" => "<p>Information about whether the data replication has been initiated.</p>"}))
    DataReplicationInfo.add_member(:data_replication_error, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationError, location_name: 'dataReplicationError', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    DataReplicationInfo.add_member(:staging_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: 'stagingAvailabilityZone', traits: {"smithy.api#documentation" => "<p>AWS Availability zone into which data is being replicated.</p>"}))
    DataReplicationInfo.add_member(:staging_outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostARN, location_name: 'stagingOutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN of the staging Outpost</p>"}))
    DataReplicationInfo.type = Types::DataReplicationInfo
    DataReplicationInfoReplicatedDisk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The name of the device.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'totalStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total amount of data to be replicated in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'replicatedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data replicated so far in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'rescannedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data to be rescanned in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'backloggedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the replication backlog in bytes.</p>"}))
    DataReplicationInfoReplicatedDisk.add_member(:volume_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatus, location_name: 'volumeStatus', traits: {"smithy.api#documentation" => "<p>The status of the volume.</p>"}))
    DataReplicationInfoReplicatedDisk.type = Types::DataReplicationInfoReplicatedDisk
    DataReplicationInfoReplicatedDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisk)
    DataReplicationInitiation.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'startDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the current attempt to initiate data replication.</p>"}))
    DataReplicationInitiation.add_member(:next_attempt_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'nextAttemptDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the next attempt to initiate data replication.</p>"}))
    DataReplicationInitiation.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationSteps, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>The steps of the current attempt to initiate data replication.</p>"}))
    DataReplicationInitiation.type = Types::DataReplicationInitiation
    DataReplicationInitiationStep.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>"}))
    DataReplicationInitiationStep.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStepStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the step.</p>"}))
    DataReplicationInitiationStep.type = Types::DataReplicationInitiationStep
    DataReplicationInitiationSteps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInitiationStep)
    DeleteJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteJobInput.type = Types::DeleteJobInput
    DeleteJobOutput.type = Types::DeleteJobOutput
    DeleteLaunchActionRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionId, location_name: 'actionId', traits: {"smithy.api#required" => {}}))
    DeleteLaunchActionRequest.type = Types::DeleteLaunchActionRequest
    DeleteLaunchActionResponse.type = Types::DeleteLaunchActionResponse
    DeleteLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The ID of the Launch Configuration Template to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteLaunchConfigurationTemplateInput.type = Types::DeleteLaunchConfigurationTemplateInput
    DeleteLaunchConfigurationTemplateOutput.type = Types::DeleteLaunchConfigurationTemplateOutput
    DeleteRecoveryInstanceInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteRecoveryInstanceInput.type = Types::DeleteRecoveryInstanceInput
    DeleteReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The ID of the Replication Configuration Template to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteReplicationConfigurationTemplateInput.type = Types::DeleteReplicationConfigurationTemplateInput
    DeleteReplicationConfigurationTemplateOutput.type = Types::DeleteReplicationConfigurationTemplateOutput
    DeleteSourceNetworkRequest.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network to delete.</p>", "smithy.api#required" => {}}))
    DeleteSourceNetworkRequest.type = Types::DeleteSourceNetworkRequest
    DeleteSourceNetworkResponse.type = Types::DeleteSourceNetworkResponse
    DeleteSourceServerInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteSourceServerInput.type = Types::DeleteSourceServerInput
    DeleteSourceServerOutput.type = Types::DeleteSourceServerOutput
    DescribeJobLogItemsInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job for which Job log items will be retrieved.</p>", "smithy.api#required" => {}}))
    DescribeJobLogItemsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Job log items to retrieve.</p>"}))
    DescribeJobLogItemsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Job log items to retrieve.</p>"}))
    DescribeJobLogItemsInput.type = Types::DescribeJobLogItemsInput
    DescribeJobLogItemsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogs, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Job log items.</p>"}))
    DescribeJobLogItemsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Job log items to retrieve.</p>"}))
    DescribeJobLogItemsOutput.type = Types::DescribeJobLogItemsOutput
    DescribeJobsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A set of filters by which to return Jobs.</p>"}))
    DescribeJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Jobs to retrieve.</p>"}))
    DescribeJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Job to retrieve.</p>"}))
    DescribeJobsInput.type = Types::DescribeJobsInput
    DescribeJobsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: JobsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Jobs.</p>"}))
    DescribeJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Job to retrieve.</p>"}))
    DescribeJobsOutput.type = Types::DescribeJobsOutput
    DescribeJobsRequestFilters.add_member(:job_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsRequestFiltersJobIDs, location_name: 'jobIDs', traits: {"smithy.api#documentation" => "<p>An array of Job IDs that should be returned. An empty array means all jobs.</p>"}))
    DescribeJobsRequestFilters.add_member(:from_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'fromDate', traits: {"smithy.api#documentation" => "<p>The start date in a date range query.</p>"}))
    DescribeJobsRequestFilters.add_member(:to_date, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'toDate', traits: {"smithy.api#documentation" => "<p>The end date in a date range query.</p>"}))
    DescribeJobsRequestFilters.type = Types::DescribeJobsRequestFilters
    DescribeJobsRequestFiltersJobIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobID)
    DescribeLaunchConfigurationTemplatesInput.add_member(:launch_configuration_template_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateIDs, location_name: 'launchConfigurationTemplateIDs', traits: {"smithy.api#documentation" => "<p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Launch Configuration Template to retrieve.</p>"}))
    DescribeLaunchConfigurationTemplatesInput.type = Types::DescribeLaunchConfigurationTemplatesInput
    DescribeLaunchConfigurationTemplatesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplates, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of items returned by DescribeLaunchConfigurationTemplates.</p>"}))
    DescribeLaunchConfigurationTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Launch Configuration Template to retrieve.</p>"}))
    DescribeLaunchConfigurationTemplatesOutput.type = Types::DescribeLaunchConfigurationTemplatesOutput
    DescribeRecoveryInstancesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A set of filters by which to return Recovery Instances.</p>"}))
    DescribeRecoveryInstancesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Recovery Instances to retrieve.</p>"}))
    DescribeRecoveryInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Recovery Instance to retrieve.</p>"}))
    DescribeRecoveryInstancesInput.type = Types::DescribeRecoveryInstancesInput
    DescribeRecoveryInstancesItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstance)
    DescribeRecoveryInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Recovery Instance to retrieve.</p>"}))
    DescribeRecoveryInstancesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesItems, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Recovery Instances.</p>"}))
    DescribeRecoveryInstancesOutput.type = Types::DescribeRecoveryInstancesOutput
    DescribeRecoveryInstancesRequestFilters.add_member(:recovery_instance_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceIDs, location_name: 'recoveryInstanceIDs', traits: {"smithy.api#documentation" => "<p>An array of Recovery Instance IDs that should be returned. An empty array means all Recovery Instances.</p>"}))
    DescribeRecoveryInstancesRequestFilters.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>An array of Source Server IDs for which associated Recovery Instances should be returned.</p>"}))
    DescribeRecoveryInstancesRequestFilters.type = Types::DescribeRecoveryInstancesRequestFilters
    DescribeRecoverySnapshotsInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>Filter Recovery Snapshots by Source Server ID.</p>", "smithy.api#required" => {}}))
    DescribeRecoverySnapshotsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A set of filters by which to return Recovery Snapshots.</p>"}))
    DescribeRecoverySnapshotsInput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoverySnapshotsOrder, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The sorted ordering by which to return Recovery Snapshots.</p>"}))
    DescribeRecoverySnapshotsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Recovery Snapshots to retrieve.</p>"}))
    DescribeRecoverySnapshotsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Recovery Snapshot to retrieve.</p>"}))
    DescribeRecoverySnapshotsInput.type = Types::DescribeRecoverySnapshotsInput
    DescribeRecoverySnapshotsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoverySnapshotsList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Recovery Snapshots.</p>"}))
    DescribeRecoverySnapshotsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Recovery Snapshot to retrieve.</p>"}))
    DescribeRecoverySnapshotsOutput.type = Types::DescribeRecoverySnapshotsOutput
    DescribeRecoverySnapshotsRequestFilters.add_member(:from_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'fromDateTime', traits: {"smithy.api#documentation" => "<p>The start date in a date range query.</p>"}))
    DescribeRecoverySnapshotsRequestFilters.add_member(:to_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'toDateTime', traits: {"smithy.api#documentation" => "<p>The end date in a date range query.</p>"}))
    DescribeRecoverySnapshotsRequestFilters.type = Types::DescribeRecoverySnapshotsRequestFilters
    DescribeReplicationConfigurationTemplatesInput.add_member(:replication_configuration_template_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, location_name: 'replicationConfigurationTemplateIDs', traits: {"smithy.api#documentation" => "<p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Replication Configuration Templates to retrieve.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Replication Configuration Template to retrieve.</p>"}))
    DescribeReplicationConfigurationTemplatesInput.type = Types::DescribeReplicationConfigurationTemplatesInput
    DescribeReplicationConfigurationTemplatesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Replication Configuration Templates.</p>"}))
    DescribeReplicationConfigurationTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Replication Configuration Template to retrieve.</p>"}))
    DescribeReplicationConfigurationTemplatesOutput.type = Types::DescribeReplicationConfigurationTemplatesOutput
    DescribeSourceNetworksRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A set of filters by which to return Source Networks.</p>"}))
    DescribeSourceNetworksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Source Networks to retrieve.</p>"}))
    DescribeSourceNetworksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Source Networks to retrieve.</p>"}))
    DescribeSourceNetworksRequest.type = Types::DescribeSourceNetworksRequest
    DescribeSourceNetworksRequestFilters.add_member(:source_network_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequestFiltersIDs, location_name: 'sourceNetworkIDs', traits: {"smithy.api#documentation" => "<p>An array of Source Network IDs that should be returned. An empty array means all Source Networks.</p>"}))
    DescribeSourceNetworksRequestFilters.add_member(:origin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'originAccountID', traits: {"smithy.api#documentation" => "<p>Filter Source Networks by account ID containing the protected VPCs.</p>"}))
    DescribeSourceNetworksRequestFilters.add_member(:origin_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'originRegion', traits: {"smithy.api#documentation" => "<p>Filter Source Networks by the region containing the protected VPCs.</p>"}))
    DescribeSourceNetworksRequestFilters.type = Types::DescribeSourceNetworksRequestFilters
    DescribeSourceNetworksRequestFiltersIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID)
    DescribeSourceNetworksResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworksList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Source Networks.</p>"}))
    DescribeSourceNetworksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Source Networks to retrieve.</p>"}))
    DescribeSourceNetworksResponse.type = Types::DescribeSourceNetworksResponse
    DescribeSourceServersInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A set of filters by which to return Source Servers.</p>"}))
    DescribeSourceServersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of Source Servers to retrieve.</p>"}))
    DescribeSourceServersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Source Server to retrieve.</p>"}))
    DescribeSourceServersInput.type = Types::DescribeSourceServersInput
    DescribeSourceServersOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServersList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of Source Servers.</p>"}))
    DescribeSourceServersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next Source Server to retrieve.</p>"}))
    DescribeSourceServersOutput.type = Types::DescribeSourceServersOutput
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: 'sourceServerIDs', traits: {"smithy.api#documentation" => "<p>An array of Source Servers IDs that should be returned. An empty array means all Source Servers.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:hardware_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'hardwareId', traits: {"smithy.api#documentation" => "<p>An ID that describes the hardware of the Source Server. This is either an EC2 instance id, a VMware uuid or a mac address.</p>"}))
    DescribeSourceServersRequestFilters.add_member(:staging_account_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIDs, location_name: 'stagingAccountIDs', traits: {"smithy.api#documentation" => "<p>An array of staging account IDs that extended source servers belong to. An empty array means all source servers will be shown.</p>"}))
    DescribeSourceServersRequestFilters.type = Types::DescribeSourceServersRequestFilters
    DescribeSourceServersRequestFiltersIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    DisconnectRecoveryInstanceInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance to disconnect.</p>", "smithy.api#required" => {}}))
    DisconnectRecoveryInstanceInput.type = Types::DisconnectRecoveryInstanceInput
    DisconnectSourceServerInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server to disconnect.</p>", "smithy.api#required" => {}}))
    DisconnectSourceServerInput.type = Types::DisconnectSourceServerInput
    DisconnectSourceServerOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance associated with this Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:last_launch_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LastLaunchResult, location_name: 'lastLaunchResult', traits: {"smithy.api#documentation" => "<p>The status of the last recovery launch of this Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>The Data Replication Info of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>The lifecycle information of this Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>The source properties of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:staging_area, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingArea, location_name: 'stagingArea', traits: {"smithy.api#documentation" => "<p>The staging area of the source server.</p>"}))
    DisconnectSourceServerOutput.add_member(:source_cloud_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCloudProperties, location_name: 'sourceCloudProperties', traits: {"smithy.api#documentation" => "<p>Source cloud properties of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:replication_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDirection, location_name: 'replicationDirection', traits: {"smithy.api#documentation" => "<p>Replication direction of the Source Server.</p>"}))
    DisconnectSourceServerOutput.add_member(:reversed_direction_source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'reversedDirectionSourceServerArn', traits: {"smithy.api#documentation" => "<p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>"}))
    DisconnectSourceServerOutput.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network which is protecting this Source Server's network.</p>"}))
    DisconnectSourceServerOutput.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the DRS agent installed on the source server</p>"}))
    DisconnectSourceServerOutput.type = Types::DisconnectSourceServerOutput
    Disk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The disk or device name.</p>"}))
    Disk.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of storage on the disk in bytes.</p>"}))
    Disk.type = Types::Disk
    Disks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Disk)
    EbsSnapshotsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshot)
    EventResourceData.add_member(:source_network_data, Types::EventResourceData::SourceNetworkData, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkData, location_name: 'sourceNetworkData', traits: {"smithy.api#documentation" => "<p>Source Network properties.</p>"}))
    EventResourceData.add_member(:unknown, Types::EventResourceData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    EventResourceData.type = Types::EventResourceData
    ExportSourceNetworkCfnTemplateRequest.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>The Source Network ID to export its CloudFormation template to an S3 bucket.</p>", "smithy.api#required" => {}}))
    ExportSourceNetworkCfnTemplateRequest.type = Types::ExportSourceNetworkCfnTemplateRequest
    ExportSourceNetworkCfnTemplateResponse.add_member(:s3_destination_url, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 's3DestinationUrl', traits: {"smithy.api#documentation" => "<p>S3 bucket URL where the Source Network CloudFormation template was exported to.</p>"}))
    ExportSourceNetworkCfnTemplateResponse.type = Types::ExportSourceNetworkCfnTemplateResponse
    GetFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>", "smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationInput.type = Types::GetFailbackReplicationConfigurationInput
    GetFailbackReplicationConfigurationOutput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance.</p>", "smithy.api#required" => {}}))
    GetFailbackReplicationConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Failback Replication Configuration.</p>"}))
    GetFailbackReplicationConfigurationOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>"}))
    GetFailbackReplicationConfigurationOutput.add_member(:use_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'usePrivateIP', traits: {"smithy.api#documentation" => "<p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>"}))
    GetFailbackReplicationConfigurationOutput.type = Types::GetFailbackReplicationConfigurationOutput
    GetLaunchConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>", "smithy.api#required" => {}}))
    GetLaunchConfigurationInput.type = Types::GetLaunchConfigurationInput
    GetLaunchConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server for this launch configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the launch configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>The EC2 launch template ID of this launch configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>"}))
    GetLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"}))
    GetLaunchConfigurationOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"}))
    GetLaunchConfigurationOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"}))
    GetLaunchConfigurationOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>The licensing configuration to be used for this launch configuration.</p>"}))
    GetLaunchConfigurationOutput.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Whether we want to activate post-launch actions for the Source Server.</p>"}))
    GetLaunchConfigurationOutput.add_member(:launch_into_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchIntoInstanceProperties, location_name: 'launchIntoInstanceProperties', traits: {"smithy.api#documentation" => "<p>Launch into existing instance properties.</p>"}))
    GetLaunchConfigurationOutput.type = Types::GetLaunchConfigurationOutput
    GetReplicationConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Serve for this Replication Configuration.r</p>", "smithy.api#required" => {}}))
    GetReplicationConfigurationInput.type = Types::GetReplicationConfigurationInput
    GetReplicationConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server for this Replication Configuration.</p>"}))
    GetReplicationConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Replication Configuration.</p>"}))
    GetReplicationConfigurationOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    GetReplicationConfigurationOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    GetReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    GetReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    GetReplicationConfigurationOutput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>The configuration of the disks of the Source Server to be replicated.</p>"}))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    GetReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    GetReplicationConfigurationOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    GetReplicationConfigurationOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    GetReplicationConfigurationOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    GetReplicationConfigurationOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    GetReplicationConfigurationOutput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    GetReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    GetReplicationConfigurationOutput.type = Types::GetReplicationConfigurationOutput
    IPsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString)
    IdentificationHints.add_member(:fqdn, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fqdn', traits: {"smithy.api#documentation" => "<p>Fully Qualified Domain Name identification hint.</p>"}))
    IdentificationHints.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>Hostname identification hint.</p>"}))
    IdentificationHints.add_member(:vm_ware_uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'vmWareUuid', traits: {"smithy.api#documentation" => "<p>vCenter VM path identification hint.</p>"}))
    IdentificationHints.add_member(:aws_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'awsInstanceID', traits: {"smithy.api#documentation" => "<p>AWS Instance ID identification hint.</p>"}))
    IdentificationHints.type = Types::IdentificationHints
    InitializeServiceInput.type = Types::InitializeServiceInput
    InitializeServiceOutput.type = Types::InitializeServiceOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds after which the request should be safe to retry.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    Job.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job.</p>", "smithy.api#required" => {}}))
    Job.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of a Job.</p>"}))
    Job.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the Job.</p>"}))
    Job.add_member(:initiated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: InitiatedBy, location_name: 'initiatedBy', traits: {"smithy.api#documentation" => "<p>A string representing who initiated the Job.</p>"}))
    Job.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'creationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of when the Job was created.</p>"}))
    Job.add_member(:end_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'endDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of when the Job ended.</p>"}))
    Job.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Job.</p>"}))
    Job.add_member(:participating_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingServers, location_name: 'participatingServers', traits: {"smithy.api#documentation" => "<p>A list of servers that the Job is acting upon.</p>"}))
    Job.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the Job.</p>"}))
    Job.add_member(:participating_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingResources, location_name: 'participatingResources', traits: {"smithy.api#documentation" => "<p>A list of resources that the Job is acting upon.</p>"}))
    Job.type = Types::Job
    JobLog.add_member(:log_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'logDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the log was taken.</p>"}))
    JobLog.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogEvent, location_name: 'event', traits: {"smithy.api#documentation" => "<p>The event represents the type of a log.</p>"}))
    JobLog.add_member(:event_data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobLogEventData, location_name: 'eventData', traits: {"smithy.api#documentation" => "<p>Metadata associated with a Job log.</p>"}))
    JobLog.type = Types::JobLog
    JobLogEventData.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of a Source Server.</p>"}))
    JobLogEventData.add_member(:conversion_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'conversionServerID', traits: {"smithy.api#documentation" => "<p>The ID of a conversion server.</p>"}))
    JobLogEventData.add_member(:target_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'targetInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of a Recovery Instance.</p>"}))
    JobLogEventData.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>A string representing a job error.</p>"}))
    JobLogEventData.add_member(:conversion_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversionProperties, location_name: 'conversionProperties', traits: {"smithy.api#documentation" => "<p>Properties of a conversion job</p>"}))
    JobLogEventData.add_member(:event_resource_data, Smithy::Schema::Shapes::ShapeRef.new(shape: EventResourceData, location_name: 'eventResourceData', traits: {"smithy.api#documentation" => "<p>Properties of resource related to a job event.</p>"}))
    JobLogEventData.type = Types::JobLogEventData
    JobLogs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobLog)
    JobsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    LaunchAction.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionId, location_name: 'actionId'))
    LaunchAction.add_member(:action_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentName, location_name: 'actionCode', traits: {"smithy.api#documentation" => "<p>Launch action code.</p>"}))
    LaunchAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Launch action type.</p>"}))
    LaunchAction.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionName, location_name: 'name'))
    LaunchAction.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Whether the launch action is active.</p>"}))
    LaunchAction.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionOrder, location_name: 'order'))
    LaunchAction.add_member(:action_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionVersion, location_name: 'actionVersion'))
    LaunchAction.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'optional', traits: {"smithy.api#documentation" => "<p>Whether the launch will not be marked as failed if this action fails.</p>"}))
    LaunchAction.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameters, location_name: 'parameters'))
    LaunchAction.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionDescription, location_name: 'description'))
    LaunchAction.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionCategory, location_name: 'category'))
    LaunchAction.type = Types::LaunchAction
    LaunchActionIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionId)
    LaunchActionParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameterValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Value.</p>"}))
    LaunchActionParameter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Type.</p>"}))
    LaunchActionParameter.type = Types::LaunchActionParameter
    LaunchActionParameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameterName)
    LaunchActionParameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameter)
    LaunchActionRun.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Action.</p>"}))
    LaunchActionRun.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionRunId, location_name: 'runId', traits: {"smithy.api#documentation" => "<p>Run Id.</p>"}))
    LaunchActionRun.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Run status.</p>"}))
    LaunchActionRun.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>Failure reason.</p>"}))
    LaunchActionRun.type = Types::LaunchActionRun
    LaunchActionRuns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionRun)
    LaunchActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchAction)
    LaunchActionsRequestFilters.add_member(:action_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionIds, location_name: 'actionIds', traits: {"smithy.api#documentation" => "<p>Launch actions Ids.</p>"}))
    LaunchActionsRequestFilters.type = Types::LaunchActionsRequestFilters
    LaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'ssmAgentDiscoveryDatetime', traits: {"smithy.api#documentation" => "<p>Time where the AWS Systems Manager was detected as running on the launched instance.</p>"}))
    LaunchActionsStatus.add_member(:runs, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionRuns, location_name: 'runs', traits: {"smithy.api#documentation" => "<p>List of post launch action status.</p>"}))
    LaunchActionsStatus.type = Types::LaunchActionsStatus
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>ID of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags of the Launch Configuration Template.</p>"}))
    LaunchConfigurationTemplate.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private IP.</p>"}))
    LaunchConfigurationTemplate.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    LaunchConfigurationTemplate.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Licensing.</p>"}))
    LaunchConfigurationTemplate.add_member(:export_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'exportBucketArn', traits: {"smithy.api#documentation" => "<p>S3 bucket ARN to export Source Network templates.</p>"}))
    LaunchConfigurationTemplate.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Post-launch actions activated.</p>"}))
    LaunchConfigurationTemplate.add_member(:launch_into_source_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'launchIntoSourceInstance', traits: {"smithy.api#documentation" => "<p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>"}))
    LaunchConfigurationTemplate.type = Types::LaunchConfigurationTemplate
    LaunchConfigurationTemplateIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID)
    LaunchConfigurationTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)
    LaunchIntoInstanceProperties.add_member(:launch_into_ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'launchIntoEC2InstanceID', traits: {"smithy.api#documentation" => "<p>Optionally holds EC2 instance ID of an instance to launch into, instead of launching a new instance during drill, recovery or failback.</p>"}))
    LaunchIntoInstanceProperties.type = Types::LaunchIntoInstanceProperties
    Licensing.add_member(:os_byol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'osByol', traits: {"smithy.api#documentation" => "<p>Whether to enable \"Bring your own license\" or not.</p>"}))
    Licensing.type = Types::Licensing
    LifeCycle.add_member(:added_to_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'addedToServiceDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of when the Source Server was added to the service.</p>"}))
    LifeCycle.add_member(:first_byte_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'firstByteDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the first byte that was replicated from the Source Server.</p>"}))
    LifeCycle.add_member(:elapsed_replication_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: 'elapsedReplicationDuration', traits: {"smithy.api#documentation" => "<p>The amount of time that the Source Server has been replicating for.</p>"}))
    LifeCycle.add_member(:last_seen_by_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastSeenByServiceDateTime', traits: {"smithy.api#documentation" => "<p>The date and time this Source Server was last seen by the service.</p>"}))
    LifeCycle.add_member(:last_launch, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastLaunch, location_name: 'lastLaunch', traits: {"smithy.api#documentation" => "<p>An object containing information regarding the last launch of the Source Server.</p>"}))
    LifeCycle.type = Types::LifeCycle
    LifeCycleLastLaunch.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleLastLaunchInitiated, location_name: 'initiated', traits: {"smithy.api#documentation" => "<p>An object containing information regarding the initiation of the last launch of a Source Server.</p>"}))
    LifeCycleLastLaunch.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of Source Server's last launch.</p>"}))
    LifeCycleLastLaunch.type = Types::LifeCycleLastLaunch
    LifeCycleLastLaunchInitiated.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the last Source Server launch was initiated.</p>"}))
    LifeCycleLastLaunchInitiated.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job that was used to last launch the Source Server.</p>"}))
    LifeCycleLastLaunchInitiated.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LastLaunchType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The Job type that was used to last launch the Source Server.</p>"}))
    LifeCycleLastLaunchInitiated.type = Types::LifeCycleLastLaunchInitiated
    ListExtensibleSourceServersInput.add_member(:staging_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'stagingAccountID', traits: {"smithy.api#documentation" => "<p>The Id of the staging Account to retrieve extensible source servers from.</p>", "smithy.api#required" => {}}))
    ListExtensibleSourceServersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsReplicatingSourceServers, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of extensible source servers to retrieve.</p>"}))
    ListExtensibleSourceServersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next extensible source server to retrieve.</p>"}))
    ListExtensibleSourceServersInput.type = Types::ListExtensibleSourceServersInput
    ListExtensibleSourceServersOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingSourceServersList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of source servers on a staging Account that are extensible.</p>"}))
    ListExtensibleSourceServersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next extensible source server to retrieve.</p>"}))
    ListExtensibleSourceServersOutput.type = Types::ListExtensibleSourceServersOutput
    ListLaunchActionsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ListLaunchActionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionsRequestFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Filters to apply when listing resource launch actions.</p>"}))
    ListLaunchActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsType, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>Maximum amount of items to return when listing resource launch actions.</p>"}))
    ListLaunchActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token to use when listing resource launch actions.</p>"}))
    ListLaunchActionsRequest.type = Types::ListLaunchActionsRequest
    ListLaunchActionsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActions, location_name: 'items', traits: {"smithy.api#documentation" => "<p>List of resource launch actions.</p>"}))
    ListLaunchActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned when listing resource launch actions.</p>"}))
    ListLaunchActionsResponse.type = Types::ListLaunchActionsResponse
    ListStagingAccountsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of staging Accounts to retrieve.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListStagingAccountsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next staging Account to retrieve.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListStagingAccountsInput.type = Types::ListStagingAccountsInput
    ListStagingAccountsOutput.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Accounts, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>An array of staging AWS Accounts.</p>"}))
    ListStagingAccountsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token of the next staging Account to retrieve.</p>"}))
    ListStagingAccountsOutput.type = Types::ListStagingAccountsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource whose tags should be returned.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags of the requested resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NetworkInterface.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p>The MAC address of the network interface.</p>"}))
    NetworkInterface.add_member(:ips, Smithy::Schema::Shapes::ShapeRef.new(shape: IPsList, location_name: 'ips', traits: {"smithy.api#documentation" => "<p>Network interface IPs.</p>"}))
    NetworkInterface.add_member(:is_primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPrimary', traits: {"smithy.api#documentation" => "<p>Whether this is the primary network interface.</p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface)
    OS.add_member(:full_string, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'fullString', traits: {"smithy.api#documentation" => "<p>The long name of the Operating System.</p>"}))
    OS.type = Types::OS
    PITPolicy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicyRule)
    PITPolicyRule.add_member(:rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ruleID', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The ID of the rule.</p>"}))
    PITPolicyRule.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicyRuleUnits, location_name: 'units', traits: {"smithy.api#documentation" => "<p>The units used to measure the interval and retentionDuration.</p>", "smithy.api#required" => {}}))
    PITPolicyRule.add_member(:interval, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'interval', traits: {"smithy.api#documentation" => "<p>How often, in the chosen units, a snapshot should be taken.</p>", "smithy.api#required" => {}}))
    PITPolicyRule.add_member(:retention_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: 'retentionDuration', traits: {"smithy.api#documentation" => "<p>The duration to retain a snapshot for, in the chosen units.</p>", "smithy.api#required" => {}}))
    PITPolicyRule.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#documentation" => "<p>Whether this rule is enabled or not.</p>"}))
    PITPolicyRule.type = Types::PITPolicyRule
    ParticipatingResource.add_member(:participating_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingResourceID, location_name: 'participatingResourceID', traits: {"smithy.api#documentation" => "<p>The ID of a participating resource.</p>"}))
    ParticipatingResource.add_member(:launch_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'launchStatus', traits: {"smithy.api#documentation" => "<p>The launch status of a participating resource.</p>"}))
    ParticipatingResource.type = Types::ParticipatingResource
    ParticipatingResourceID.add_member(:source_network_id, Types::ParticipatingResourceID::SourceNetworkId, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>Source Network ID.</p>"}))
    ParticipatingResourceID.add_member(:unknown, Types::ParticipatingResourceID::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ParticipatingResourceID.type = Types::ParticipatingResourceID
    ParticipatingResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingResource)
    ParticipatingServer.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The Source Server ID of a participating server.</p>"}))
    ParticipatingServer.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The Recovery Instance ID of a participating server.</p>"}))
    ParticipatingServer.add_member(:launch_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchStatus, location_name: 'launchStatus', traits: {"smithy.api#documentation" => "<p>The launch status of a participating server.</p>"}))
    ParticipatingServer.add_member(:launch_actions_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionsStatus, location_name: 'launchActionsStatus', traits: {"smithy.api#documentation" => "<p>The post-launch action runs of a participating server.</p>"}))
    ParticipatingServer.type = Types::ParticipatingServer
    ParticipatingServers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipatingServer)
    ProductCode.add_member(:product_code_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeId, location_name: 'productCodeId', traits: {"smithy.api#documentation" => "<p>Id of a product code associated with a volume.</p>"}))
    ProductCode.add_member(:product_code_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodeMode, location_name: 'productCodeMode', traits: {"smithy.api#documentation" => "<p>Mode of a product code associated with a volume.</p>"}))
    ProductCode.type = Types::ProductCode
    ProductCodes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode)
    PutLaunchActionRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentName, location_name: 'actionCode', traits: {"smithy.api#documentation" => "<p>Launch action code.</p>", "smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionOrder, location_name: 'order', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionId, location_name: 'actionId', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'optional', traits: {"smithy.api#documentation" => "<p>Whether the launch will not be marked as failed if this action fails.</p>", "smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Whether the launch action is active.</p>", "smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:action_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionVersion, location_name: 'actionVersion', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionCategory, location_name: 'category', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameters, location_name: 'parameters'))
    PutLaunchActionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionDescription, location_name: 'description', traits: {"smithy.api#required" => {}}))
    PutLaunchActionRequest.type = Types::PutLaunchActionRequest
    PutLaunchActionResponse.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionResourceId, location_name: 'resourceId'))
    PutLaunchActionResponse.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionId, location_name: 'actionId'))
    PutLaunchActionResponse.add_member(:action_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SsmDocumentName, location_name: 'actionCode', traits: {"smithy.api#documentation" => "<p>Launch action code.</p>"}))
    PutLaunchActionResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Launch action type.</p>"}))
    PutLaunchActionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionName, location_name: 'name'))
    PutLaunchActionResponse.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'active', traits: {"smithy.api#documentation" => "<p>Whether the launch action is active.</p>"}))
    PutLaunchActionResponse.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionOrder, location_name: 'order'))
    PutLaunchActionResponse.add_member(:action_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionVersion, location_name: 'actionVersion'))
    PutLaunchActionResponse.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'optional', traits: {"smithy.api#documentation" => "<p>Whether the launch will not be marked as failed if this action fails.</p>"}))
    PutLaunchActionResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionParameters, location_name: 'parameters'))
    PutLaunchActionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionDescription, location_name: 'description'))
    PutLaunchActionResponse.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchActionCategory, location_name: 'category'))
    PutLaunchActionResponse.type = Types::PutLaunchActionResponse
    RecoveryInstance.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: 'ec2InstanceID', traits: {"smithy.api#documentation" => "<p>The EC2 instance ID of the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:ec2_instance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceState, location_name: 'ec2InstanceState', traits: {"smithy.api#documentation" => "<p>The state of the EC2 instance for this Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job that created the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The Source Server ID that this Recovery Instance is associated with.</p>"}))
    RecoveryInstance.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of tags that are associated with the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:failback, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceFailback, location_name: 'failback', traits: {"smithy.api#documentation" => "<p>An object representing failback related information of the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>The Data Replication Info of the Recovery Instance.</p>"}))
    RecoveryInstance.add_member(:recovery_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceProperties, location_name: 'recoveryInstanceProperties', traits: {"smithy.api#documentation" => "<p>Properties of the Recovery Instance machine.</p>"}))
    RecoveryInstance.add_member(:point_in_time_snapshot_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'pointInTimeSnapshotDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the Point in Time (PIT) snapshot that this Recovery Instance was launched from.</p>"}))
    RecoveryInstance.add_member(:is_drill, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isDrill', traits: {"smithy.api#documentation" => "<p>Whether this Recovery Instance was created for a drill or for an actual Recovery event.</p>"}))
    RecoveryInstance.add_member(:origin_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginEnvironment, location_name: 'originEnvironment', traits: {"smithy.api#documentation" => "<p>Environment (On Premises / AWS) of the instance that the recovery instance originated from.</p>"}))
    RecoveryInstance.add_member(:origin_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: 'originAvailabilityZone', traits: {"smithy.api#documentation" => "<p>AWS availability zone associated with the recovery instance.</p>"}))
    RecoveryInstance.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the DRS agent installed on the recovery instance</p>"}))
    RecoveryInstance.add_member(:source_outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostARN, location_name: 'sourceOutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN of the source Outpost</p>"}))
    RecoveryInstance.type = Types::RecoveryInstance
    RecoveryInstanceDataReplicationError.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: FailbackReplicationError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    RecoveryInstanceDataReplicationError.add_member(:raw_error, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'rawError', traits: {"smithy.api#documentation" => "<p>Error in data replication.</p>"}))
    RecoveryInstanceDataReplicationError.type = Types::RecoveryInstanceDataReplicationError
    RecoveryInstanceDataReplicationInfo.add_member(:lag_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lagDuration', traits: {"smithy.api#documentation" => "<p>Data replication lag duration.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:eta_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'etaDateTime', traits: {"smithy.api#documentation" => "<p>An estimate of when the data replication will be completed.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfoReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>The disks that should be replicated.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_state, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationState, location_name: 'dataReplicationState', traits: {"smithy.api#documentation" => "<p>The state of the data replication.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_initiation, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiation, location_name: 'dataReplicationInitiation', traits: {"smithy.api#documentation" => "<p>Information about whether the data replication has been initiated.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_error, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationError, location_name: 'dataReplicationError', traits: {"smithy.api#documentation" => "<p>Information about Data Replication</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: 'stagingAvailabilityZone', traits: {"smithy.api#documentation" => "<p>AWS Availability zone into which data is being replicated.</p>"}))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostARN, location_name: 'stagingOutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN of the staging Outpost</p>"}))
    RecoveryInstanceDataReplicationInfo.type = Types::RecoveryInstanceDataReplicationInfo
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The name of the device.</p>"}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'totalStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total amount of data to be replicated in bytes.</p>"}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'replicatedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data replicated so far in bytes.</p>"}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'rescannedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of data to be rescanned in bytes.</p>"}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'backloggedStorageBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the replication backlog in bytes.</p>"}))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.type = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk
    RecoveryInstanceDataReplicationInfoReplicatedDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfoReplicatedDisk)
    RecoveryInstanceDataReplicationInitiation.add_member(:start_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'startDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the current attempt to initiate data replication.</p>"}))
    RecoveryInstanceDataReplicationInitiation.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationSteps, location_name: 'steps', traits: {"smithy.api#documentation" => "<p>The steps of the current attempt to initiate data replication.</p>"}))
    RecoveryInstanceDataReplicationInitiation.type = Types::RecoveryInstanceDataReplicationInitiation
    RecoveryInstanceDataReplicationInitiationStep.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStepName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>"}))
    RecoveryInstanceDataReplicationInitiationStep.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStepStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the step.</p>"}))
    RecoveryInstanceDataReplicationInitiationStep.type = Types::RecoveryInstanceDataReplicationInitiationStep
    RecoveryInstanceDataReplicationInitiationSteps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStep)
    RecoveryInstanceDisk.add_member(:internal_device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'internalDeviceName', traits: {"smithy.api#documentation" => "<p>The internal device name of this disk. This is the name that is visible on the machine itself and not from the EC2 console.</p>"}))
    RecoveryInstanceDisk.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of storage on the disk in bytes.</p>"}))
    RecoveryInstanceDisk.add_member(:ebs_volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsVolumeID, location_name: 'ebsVolumeID', traits: {"smithy.api#documentation" => "<p>The EBS Volume ID of this disk.</p>"}))
    RecoveryInstanceDisk.type = Types::RecoveryInstanceDisk
    RecoveryInstanceDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDisk)
    RecoveryInstanceFailback.add_member(:failback_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'failbackClientID', traits: {"smithy.api#documentation" => "<p>The ID of the failback client that this Recovery Instance is associated with.</p>"}))
    RecoveryInstanceFailback.add_member(:failback_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'failbackJobID', traits: {"smithy.api#documentation" => "<p>The Job ID of the last failback log for this Recovery Instance.</p>"}))
    RecoveryInstanceFailback.add_member(:failback_initiation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'failbackInitiationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the failback initiation started.</p>"}))
    RecoveryInstanceFailback.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: FailbackState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the failback process that this Recovery Instance is in.</p>"}))
    RecoveryInstanceFailback.add_member(:agent_last_seen_by_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'agentLastSeenByServiceDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the agent on the Recovery Instance was last seen by the service.</p>"}))
    RecoveryInstanceFailback.add_member(:failback_client_last_seen_by_service_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'failbackClientLastSeenByServiceDateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the failback client was last seen by the service.</p>"}))
    RecoveryInstanceFailback.add_member(:failback_to_original_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'failbackToOriginalServer', traits: {"smithy.api#documentation" => "<p>Whether we are failing back to the original Source Server for this Recovery Instance.</p>"}))
    RecoveryInstanceFailback.add_member(:first_byte_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'firstByteDateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the first byte that was replicated from the Recovery Instance.</p>"}))
    RecoveryInstanceFailback.add_member(:elapsed_replication_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'elapsedReplicationDuration', traits: {"smithy.api#documentation" => "<p>The amount of time that the Recovery Instance has been replicating for.</p>"}))
    RecoveryInstanceFailback.add_member(:failback_launch_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FailbackLaunchType, location_name: 'failbackLaunchType', traits: {"smithy.api#documentation" => "<p>The launch type (Recovery / Drill) of the last launch for the failback replication of this recovery instance.</p>"}))
    RecoveryInstanceFailback.type = Types::RecoveryInstanceFailback
    RecoveryInstanceIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID)
    RecoveryInstanceProperties.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the Recovery Instance properties were last updated on.</p>"}))
    RecoveryInstanceProperties.add_member(:identification_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentificationHints, location_name: 'identificationHints', traits: {"smithy.api#documentation" => "<p>Hints used to uniquely identify a machine.</p>"}))
    RecoveryInstanceProperties.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>An array of network interfaces.</p>"}))
    RecoveryInstanceProperties.add_member(:disks, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceDisks, location_name: 'disks', traits: {"smithy.api#documentation" => "<p>An array of disks.</p>"}))
    RecoveryInstanceProperties.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Cpus, location_name: 'cpus', traits: {"smithy.api#documentation" => "<p>An array of CPUs.</p>"}))
    RecoveryInstanceProperties.add_member(:ram_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ramBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of RAM in bytes.</p>"}))
    RecoveryInstanceProperties.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: OS, location_name: 'os', traits: {"smithy.api#documentation" => "<p>Operating system.</p>"}))
    RecoveryInstanceProperties.type = Types::RecoveryInstanceProperties
    RecoveryInstancesForTerminationRequest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID)
    RecoveryLifeCycle.add_member(:api_call_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'apiCallDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the last Source Network recovery was initiated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    RecoveryLifeCycle.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobID, location_name: 'jobID', traits: {"smithy.api#documentation" => "<p>The ID of the Job that was used to last recover the Source Network.</p>"}))
    RecoveryLifeCycle.add_member(:last_recovery_result, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryResult, location_name: 'lastRecoveryResult', traits: {"smithy.api#documentation" => "<p>The status of the last recovery status of this Source Network.</p>"}))
    RecoveryLifeCycle.type = Types::RecoveryLifeCycle
    RecoverySnapshot.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoverySnapshotID, location_name: 'snapshotID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Snapshot.</p>", "smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server that the snapshot was taken for.</p>", "smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:expected_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'expectedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when we expect the snapshot to be taken.</p>", "smithy.api#required" => {}}))
    RecoverySnapshot.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'timestamp', traits: {"smithy.api#documentation" => "<p>The actual timestamp that the snapshot was taken.</p>"}))
    RecoverySnapshot.add_member(:ebs_snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshotsList, location_name: 'ebsSnapshots', traits: {"smithy.api#documentation" => "<p>A list of EBS snapshots.</p>"}))
    RecoverySnapshot.type = Types::RecoverySnapshot
    RecoverySnapshotsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoverySnapshot)
    ReplicationConfigurationReplicatedDisk.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The name of the device.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isBootDisk', traits: {"smithy.api#documentation" => "<p>Whether to boot from this disk or not.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: 'stagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'iops', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The requested number of I/O operations per second (IOPS).</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'throughput', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The throughput to use for the EBS volume in MiB/s. This parameter is valid only for gp3 volumes.</p>"}))
    ReplicationConfigurationReplicatedDisk.add_member(:optimized_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: 'optimizedStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication when <code>stagingDiskType</code> is set to Auto. This is a read-only field.</p>"}))
    ReplicationConfigurationReplicatedDisk.type = Types::ReplicationConfigurationReplicatedDisk
    ReplicationConfigurationReplicatedDisks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)
    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ID.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationTemplate.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ARN.</p>"}))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"}))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    ReplicationConfigurationTemplate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"}))
    ReplicationConfigurationTemplate.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    ReplicationConfigurationTemplate.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    ReplicationConfigurationTemplate.type = Types::ReplicationConfigurationTemplate
    ReplicationConfigurationTemplateIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID)
    ReplicationConfigurationTemplates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
    ReplicationServersSecurityGroupsIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupID)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryDataReplicationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server whose data replication should be retried.</p>", "smithy.api#required" => {}}))
    RetryDataReplicationInput.type = Types::RetryDataReplicationInput
    RetryDataReplicationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance associated with this Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:last_launch_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LastLaunchResult, location_name: 'lastLaunchResult', traits: {"smithy.api#documentation" => "<p>The status of the last recovery launch of this Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>The Data Replication Info of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>The lifecycle information of this Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>The source properties of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:staging_area, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingArea, location_name: 'stagingArea', traits: {"smithy.api#documentation" => "<p>The staging area of the source server.</p>"}))
    RetryDataReplicationOutput.add_member(:source_cloud_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCloudProperties, location_name: 'sourceCloudProperties', traits: {"smithy.api#documentation" => "<p>Source cloud properties of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:replication_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDirection, location_name: 'replicationDirection', traits: {"smithy.api#documentation" => "<p>Replication direction of the Source Server.</p>"}))
    RetryDataReplicationOutput.add_member(:reversed_direction_source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'reversedDirectionSourceServerArn', traits: {"smithy.api#documentation" => "<p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>"}))
    RetryDataReplicationOutput.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network which is protecting this Source Server's network.</p>"}))
    RetryDataReplicationOutput.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the DRS agent installed on the source server</p>"}))
    RetryDataReplicationOutput.type = Types::RetryDataReplicationOutput
    ReverseReplicationInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance that we want to reverse the replication for.</p>", "smithy.api#required" => {}}))
    ReverseReplicationInput.type = Types::ReverseReplicationInput
    ReverseReplicationOutput.add_member(:reversed_direction_source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'reversedDirectionSourceServerArn', traits: {"smithy.api#documentation" => "<p>ARN of created SourceServer.</p>"}))
    ReverseReplicationOutput.type = Types::ReverseReplicationOutput
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ServiceQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>"}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Service code.</p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Quota code.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceCloudProperties.add_member(:origin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'originAccountID', traits: {"smithy.api#documentation" => "<p>AWS Account ID for an EC2-originated Source Server.</p>"}))
    SourceCloudProperties.add_member(:origin_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'originRegion', traits: {"smithy.api#documentation" => "<p>AWS Region for an EC2-originated Source Server.</p>"}))
    SourceCloudProperties.add_member(:origin_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: 'originAvailabilityZone', traits: {"smithy.api#documentation" => "<p>AWS Availability Zone for an EC2-originated Source Server.</p>"}))
    SourceCloudProperties.add_member(:source_outpost_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostARN, location_name: 'sourceOutpostArn', traits: {"smithy.api#documentation" => "<p>The ARN of the source Outpost</p>"}))
    SourceCloudProperties.type = Types::SourceCloudProperties
    SourceNetwork.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>Source Network ID.</p>"}))
    SourceNetwork.add_member(:source_vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcID, location_name: 'sourceVpcID', traits: {"smithy.api#documentation" => "<p>VPC ID protected by the Source Network.</p>"}))
    SourceNetwork.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Source Network.</p>"}))
    SourceNetwork.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the Source Network.</p>"}))
    SourceNetwork.add_member(:replication_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: 'replicationStatus', traits: {"smithy.api#documentation" => "<p>Status of Source Network Replication. Possible values:\n            (a) STOPPED - Source Network is not replicating.\n            (b) IN_PROGRESS - Source Network is being replicated.\n            (c) PROTECTED - Source Network was replicated successfully and is being synchronized for changes.\n            (d) ERROR - Source Network replication has failed</p>"}))
    SourceNetwork.add_member(:replication_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBoundedString, location_name: 'replicationStatusDetails', traits: {"smithy.api#documentation" => "<p>Error details in case Source Network replication status is ERROR.</p>"}))
    SourceNetwork.add_member(:cfn_stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CfnStackName, location_name: 'cfnStackName', traits: {"smithy.api#documentation" => "<p>CloudFormation stack name that was deployed for recovering the Source Network.</p>"}))
    SourceNetwork.add_member(:source_region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'sourceRegion', traits: {"smithy.api#documentation" => "<p>Region containing the VPC protected by the Source Network.</p>"}))
    SourceNetwork.add_member(:source_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'sourceAccountID', traits: {"smithy.api#documentation" => "<p>Account ID containing the VPC protected by the Source Network.</p>"}))
    SourceNetwork.add_member(:last_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryLifeCycle, location_name: 'lastRecovery', traits: {"smithy.api#documentation" => "<p>An object containing information regarding the last recovery of the Source Network.</p>"}))
    SourceNetwork.add_member(:launched_vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcID, location_name: 'launchedVpcID', traits: {"smithy.api#documentation" => "<p>ID of the recovered VPC following Source Network recovery.</p>"}))
    SourceNetwork.type = Types::SourceNetwork
    SourceNetworkData.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>Source Network ID.</p>"}))
    SourceNetworkData.add_member(:source_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcID, location_name: 'sourceVpc', traits: {"smithy.api#documentation" => "<p>VPC ID protected by the Source Network.</p>"}))
    SourceNetworkData.add_member(:target_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcID, location_name: 'targetVpc', traits: {"smithy.api#documentation" => "<p>ID of the recovered VPC following Source Network recovery.</p>"}))
    SourceNetworkData.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'stackName', traits: {"smithy.api#documentation" => "<p>CloudFormation stack name that was deployed for recovering the Source Network.</p>"}))
    SourceNetworkData.type = Types::SourceNetworkData
    SourceNetworksList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetwork)
    SourceProperties.add_member(:last_updated_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: 'lastUpdatedDateTime', traits: {"smithy.api#documentation" => "<p>The date and time the Source Properties were last updated on.</p>"}))
    SourceProperties.add_member(:recommended_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'recommendedInstanceType', traits: {"smithy.api#documentation" => "<p>The recommended EC2 instance type that will be used when recovering the Source Server.</p>"}))
    SourceProperties.add_member(:identification_hints, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentificationHints, location_name: 'identificationHints', traits: {"smithy.api#documentation" => "<p>Hints used to uniquely identify a machine.</p>"}))
    SourceProperties.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: 'networkInterfaces', traits: {"smithy.api#documentation" => "<p>An array of network interfaces.</p>"}))
    SourceProperties.add_member(:disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Disks, location_name: 'disks', traits: {"smithy.api#documentation" => "<p>An array of disks.</p>"}))
    SourceProperties.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Cpus, location_name: 'cpus', traits: {"smithy.api#documentation" => "<p>An array of CPUs.</p>"}))
    SourceProperties.add_member(:ram_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'ramBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of RAM in bytes.</p>"}))
    SourceProperties.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: OS, location_name: 'os', traits: {"smithy.api#documentation" => "<p>Operating system.</p>"}))
    SourceProperties.add_member(:supports_nitro_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'supportsNitroInstances', traits: {"smithy.api#documentation" => "<p>Are EC2 nitro instance types supported when recovering the Source Server.</p>"}))
    SourceProperties.type = Types::SourceProperties
    SourceServer.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server.</p>"}))
    SourceServer.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the Source Server.</p>"}))
    SourceServer.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the Source Server.</p>"}))
    SourceServer.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance associated with this Source Server.</p>"}))
    SourceServer.add_member(:last_launch_result, Smithy::Schema::Shapes::ShapeRef.new(shape: LastLaunchResult, location_name: 'lastLaunchResult', traits: {"smithy.api#documentation" => "<p>The status of the last recovery launch of this Source Server.</p>"}))
    SourceServer.add_member(:data_replication_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: 'dataReplicationInfo', traits: {"smithy.api#documentation" => "<p>The Data Replication Info of the Source Server.</p>"}))
    SourceServer.add_member(:life_cycle, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycle, location_name: 'lifeCycle', traits: {"smithy.api#documentation" => "<p>The lifecycle information of this Source Server.</p>"}))
    SourceServer.add_member(:source_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceProperties, location_name: 'sourceProperties', traits: {"smithy.api#documentation" => "<p>The source properties of the Source Server.</p>"}))
    SourceServer.add_member(:staging_area, Smithy::Schema::Shapes::ShapeRef.new(shape: StagingArea, location_name: 'stagingArea', traits: {"smithy.api#documentation" => "<p>The staging area of the source server.</p>"}))
    SourceServer.add_member(:source_cloud_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCloudProperties, location_name: 'sourceCloudProperties', traits: {"smithy.api#documentation" => "<p>Source cloud properties of the Source Server.</p>"}))
    SourceServer.add_member(:replication_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDirection, location_name: 'replicationDirection', traits: {"smithy.api#documentation" => "<p>Replication direction of the Source Server.</p>"}))
    SourceServer.add_member(:reversed_direction_source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'reversedDirectionSourceServerArn', traits: {"smithy.api#documentation" => "<p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>"}))
    SourceServer.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network which is protecting this Source Server's network.</p>"}))
    SourceServer.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: 'agentVersion', traits: {"smithy.api#documentation" => "<p>The version of the DRS agent installed on the source server</p>"}))
    SourceServer.type = Types::SourceServer
    SourceServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID)
    SourceServersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServer)
    StagingArea.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of Source server extension. Possible values:\n            (a) NOT_EXTENDED - This is a source server that is replicating in the current account.\n            (b) EXTENDED - Source server is extended from a staging source server. In this case, the value of stagingSourceServerArn is pointing to the Arn of the source server in the staging account.\n            (c) EXTENSION_ERROR - Some issue occurred when accessing staging source server. In this case, errorMessage field will contain an error message that explains what happened.</p>"}))
    StagingArea.add_member(:staging_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountID, location_name: 'stagingAccountID', traits: {"smithy.api#documentation" => "<p>Account ID of the account to which source server belongs. If this source server is extended - shows Account ID of staging source server.</p>"}))
    StagingArea.add_member(:staging_source_server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'stagingSourceServerArn', traits: {"smithy.api#documentation" => "<p>Arn of the staging source server if this source server is extended</p>"}))
    StagingArea.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Shows an error message that occurred when DRS tried to access the staging source server. In this case StagingArea$status will have value EXTENSION_ERROR</p>"}))
    StagingArea.type = Types::StagingArea
    StagingSourceServer.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'hostname', traits: {"smithy.api#documentation" => "<p>Hostname of staging source server.</p>"}))
    StagingSourceServer.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the source server.</p>"}))
    StagingSourceServer.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the staging source server.</p>"}))
    StagingSourceServer.type = Types::StagingSourceServer
    StagingSourceServersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StagingSourceServer)
    StartFailbackLaunchInput.add_member(:recovery_instance_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: StartFailbackRequestRecoveryInstanceIDs, location_name: 'recoveryInstanceIDs', traits: {"smithy.api#documentation" => "<p>The IDs of the Recovery Instance whose failback launch we want to request.</p>", "smithy.api#required" => {}}))
    StartFailbackLaunchInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be associated with the failback launch Job.</p>"}))
    StartFailbackLaunchInput.type = Types::StartFailbackLaunchInput
    StartFailbackLaunchOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The failback launch Job.</p>"}))
    StartFailbackLaunchOutput.type = Types::StartFailbackLaunchOutput
    StartFailbackRequestRecoveryInstanceIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID)
    StartRecoveryInput.add_member(:source_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecoveryRequestSourceServers, location_name: 'sourceServers', traits: {"smithy.api#documentation" => "<p>The Source Servers that we want to start a Recovery Job for.</p>", "smithy.api#required" => {}}))
    StartRecoveryInput.add_member(:is_drill, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isDrill', traits: {"smithy.api#documentation" => "<p>Whether this Source Server Recovery operation is a drill or not.</p>"}))
    StartRecoveryInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be associated with the Recovery Job.</p>"}))
    StartRecoveryInput.type = Types::StartRecoveryInput
    StartRecoveryOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Recovery Job.</p>"}))
    StartRecoveryOutput.type = Types::StartRecoveryOutput
    StartRecoveryRequestSourceServer.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server you want to recover.</p>", "smithy.api#required" => {}}))
    StartRecoveryRequestSourceServer.add_member(:recovery_snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoverySnapshotID, location_name: 'recoverySnapshotID', traits: {"smithy.api#documentation" => "<p>The ID of a Recovery Snapshot we want to recover from. Omit this field to launch from the latest data by taking an on-demand snapshot.</p>"}))
    StartRecoveryRequestSourceServer.type = Types::StartRecoveryRequestSourceServer
    StartRecoveryRequestSourceServers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecoveryRequestSourceServer)
    StartReplicationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server to start replication for.</p>", "smithy.api#required" => {}}))
    StartReplicationInput.type = Types::StartReplicationInput
    StartReplicationOutput.add_member(:source_server, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServer, location_name: 'sourceServer', traits: {"smithy.api#documentation" => "<p>The Source Server that this action was targeted on.</p>"}))
    StartReplicationOutput.type = Types::StartReplicationOutput
    StartSourceNetworkRecoveryRequest.add_member(:source_networks, Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequestNetworkEntries, location_name: 'sourceNetworks', traits: {"smithy.api#documentation" => "<p>The Source Networks that we want to start a Recovery Job for.</p>", "smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequest.add_member(:deploy_as_new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deployAsNew', traits: {"smithy.api#documentation" => "<p>Don't update existing CloudFormation Stack, recover the network using a new stack.</p>"}))
    StartSourceNetworkRecoveryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be associated with the Source Network recovery Job.</p>"}))
    StartSourceNetworkRecoveryRequest.type = Types::StartSourceNetworkRecoveryRequest
    StartSourceNetworkRecoveryRequestNetworkEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequestNetworkEntry)
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Network you want to recover.</p>", "smithy.api#required" => {}}))
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:cfn_stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CfnStackName, location_name: 'cfnStackName', traits: {"smithy.api#documentation" => "<p>CloudFormation stack name to be used for recovering the network.</p>"}))
    StartSourceNetworkRecoveryRequestNetworkEntry.type = Types::StartSourceNetworkRecoveryRequestNetworkEntry
    StartSourceNetworkRecoveryResponse.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Source Network recovery Job.</p>"}))
    StartSourceNetworkRecoveryResponse.type = Types::StartSourceNetworkRecoveryResponse
    StartSourceNetworkReplicationRequest.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network to replicate.</p>", "smithy.api#required" => {}}))
    StartSourceNetworkReplicationRequest.type = Types::StartSourceNetworkReplicationRequest
    StartSourceNetworkReplicationResponse.add_member(:source_network, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetwork, location_name: 'sourceNetwork', traits: {"smithy.api#documentation" => "<p>Source Network which was requested for replication.</p>"}))
    StartSourceNetworkReplicationResponse.type = Types::StartSourceNetworkReplicationResponse
    StopFailbackInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance we want to stop failback for.</p>", "smithy.api#required" => {}}))
    StopFailbackInput.type = Types::StopFailbackInput
    StopReplicationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server to stop replication for.</p>", "smithy.api#required" => {}}))
    StopReplicationInput.type = Types::StopReplicationInput
    StopReplicationOutput.add_member(:source_server, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServer, location_name: 'sourceServer', traits: {"smithy.api#documentation" => "<p>The Source Server that this action was targeted on.</p>"}))
    StopReplicationOutput.type = Types::StopReplicationOutput
    StopSourceNetworkReplicationRequest.add_member(:source_network_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: 'sourceNetworkID', traits: {"smithy.api#documentation" => "<p>ID of the Source Network to stop replication.</p>", "smithy.api#required" => {}}))
    StopSourceNetworkReplicationRequest.type = Types::StopSourceNetworkReplicationRequest
    StopSourceNetworkReplicationResponse.add_member(:source_network, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetwork, location_name: 'sourceNetwork', traits: {"smithy.api#documentation" => "<p>Source Network which was requested to stop replication.</p>"}))
    StopSourceNetworkReplicationResponse.type = Types::StopSourceNetworkReplicationResponse
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource for which tags are to be added or updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Array of tags to be added or updated.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TerminateRecoveryInstancesInput.add_member(:recovery_instance_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstancesForTerminationRequest, location_name: 'recoveryInstanceIDs', traits: {"smithy.api#documentation" => "<p>The IDs of the Recovery Instances that should be terminated.</p>", "smithy.api#required" => {}}))
    TerminateRecoveryInstancesInput.type = Types::TerminateRecoveryInstancesInput
    TerminateRecoveryInstancesOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#documentation" => "<p>The Job for terminating the Recovery Instances.</p>"}))
    TerminateRecoveryInstancesOutput.type = Types::TerminateRecoveryInstancesOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>Service code.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>Quota code.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds after which the request should be safe to retry.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UninitializedAccountException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    UninitializedAccountException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    UninitializedAccountException.type = Types::UninitializedAccountException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the resource for which tags are to be removed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Array of tags to be removed.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateFailbackReplicationConfigurationInput.add_member(:recovery_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: 'recoveryInstanceID', traits: {"smithy.api#documentation" => "<p>The ID of the Recovery Instance.</p>", "smithy.api#required" => {}}))
    UpdateFailbackReplicationConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Failback Replication Configuration.</p>"}))
    UpdateFailbackReplicationConfigurationInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>"}))
    UpdateFailbackReplicationConfigurationInput.add_member(:use_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'usePrivateIP', traits: {"smithy.api#documentation" => "<p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>"}))
    UpdateFailbackReplicationConfigurationInput.type = Types::UpdateFailbackReplicationConfigurationInput
    UpdateLaunchConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>", "smithy.api#required" => {}}))
    UpdateLaunchConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the launch configuration.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>The licensing configuration to be used for this launch configuration.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Whether we want to enable post-launch actions for the Source Server.</p>"}))
    UpdateLaunchConfigurationInput.add_member(:launch_into_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchIntoInstanceProperties, location_name: 'launchIntoInstanceProperties', traits: {"smithy.api#documentation" => "<p>Launch into existing instance properties.</p>"}))
    UpdateLaunchConfigurationInput.type = Types::UpdateLaunchConfigurationInput
    UpdateLaunchConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server for this launch configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the launch configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:ec2_launch_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedString, location_name: 'ec2LaunchTemplateID', traits: {"smithy.api#documentation" => "<p>The EC2 launch template ID of this launch configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>The state of the Recovery Instance in EC2 after the recovery operation.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>The licensing configuration to be used for this launch configuration.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Whether we want to activate post-launch actions for the Source Server.</p>"}))
    UpdateLaunchConfigurationOutput.add_member(:launch_into_instance_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchIntoInstanceProperties, location_name: 'launchIntoInstanceProperties', traits: {"smithy.api#documentation" => "<p>Launch into existing instance properties.</p>"}))
    UpdateLaunchConfigurationOutput.type = Types::UpdateLaunchConfigurationOutput
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: 'launchConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>Launch Configuration Template ID.</p>", "smithy.api#required" => {}}))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: 'launchDisposition', traits: {"smithy.api#documentation" => "<p>Launch disposition.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:target_instance_type_right_sizing_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: 'targetInstanceTypeRightSizingMethod', traits: {"smithy.api#documentation" => "<p>Target instance type right-sizing method.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyPrivateIp', traits: {"smithy.api#documentation" => "<p>Copy private IP.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#documentation" => "<p>Copy tags.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:licensing, Smithy::Schema::Shapes::ShapeRef.new(shape: Licensing, location_name: 'licensing', traits: {"smithy.api#documentation" => "<p>Licensing.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:export_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'exportBucketArn', traits: {"smithy.api#documentation" => "<p>S3 bucket ARN to export Source Network templates.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:post_launch_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'postLaunchEnabled', traits: {"smithy.api#documentation" => "<p>Whether we want to activate post-launch actions.</p>"}))
    UpdateLaunchConfigurationTemplateInput.add_member(:launch_into_source_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'launchIntoSourceInstance', traits: {"smithy.api#documentation" => "<p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>"}))
    UpdateLaunchConfigurationTemplateInput.type = Types::UpdateLaunchConfigurationTemplateInput
    UpdateLaunchConfigurationTemplateOutput.add_member(:launch_configuration_template, Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate, location_name: 'launchConfigurationTemplate', traits: {"smithy.api#documentation" => "<p>Updated Launch Configuration Template.</p>"}))
    UpdateLaunchConfigurationTemplateOutput.type = Types::UpdateLaunchConfigurationTemplateOutput
    UpdateReplicationConfigurationInput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server for this Replication Configuration.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Replication Configuration.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>The configuration of the disks of the Source Server to be replicated.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    UpdateReplicationConfigurationInput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    UpdateReplicationConfigurationInput.type = Types::UpdateReplicationConfigurationInput
    UpdateReplicationConfigurationOutput.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceServerID, location_name: 'sourceServerID', traits: {"smithy.api#documentation" => "<p>The ID of the Source Server for this Replication Configuration.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Replication Configuration.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:replicated_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: 'replicatedDisks', traits: {"smithy.api#documentation" => "<p>The configuration of the disks of the Source Server to be replicated.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    UpdateReplicationConfigurationOutput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    UpdateReplicationConfigurationOutput.type = Types::UpdateReplicationConfigurationOutput
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ID.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ARN.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    UpdateReplicationConfigurationTemplateInput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    UpdateReplicationConfigurationTemplateInput.type = Types::UpdateReplicationConfigurationTemplateInput
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_configuration_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, location_name: 'replicationConfigurationTemplateID', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ID.</p>", "smithy.api#required" => {}}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Replication Configuration Template ARN.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetID, location_name: 'stagingAreaSubnetId', traits: {"smithy.api#documentation" => "<p>The subnet to be used by the replication staging area.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:associate_default_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'associateDefaultSecurityGroup', traits: {"smithy.api#documentation" => "<p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_servers_security_groups_i_ds, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: 'replicationServersSecurityGroupsIDs', traits: {"smithy.api#documentation" => "<p>The security group IDs that will be used by the replication server.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:replication_server_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: 'replicationServerInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to be used for the replication server.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:use_dedicated_replication_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'useDedicatedReplicationServer', traits: {"smithy.api#documentation" => "<p>Whether to use a dedicated Replication Server in the replication staging area.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:default_large_staging_disk_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: 'defaultLargeStagingDiskType', traits: {"smithy.api#documentation" => "<p>The Staging Disk EBS volume type to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: 'ebsEncryption', traits: {"smithy.api#documentation" => "<p>The type of EBS encryption to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:ebs_encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ebsEncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the EBS encryption key to be used during replication.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:bandwidth_throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'bandwidthThrottling', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:data_plane_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: 'dataPlaneRouting', traits: {"smithy.api#documentation" => "<p>The data plane routing mechanism that will be used for replication.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:create_public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'createPublicIP', traits: {"smithy.api#documentation" => "<p>Whether to create a Public IP for the Recovery Instance by default.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:staging_area_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'stagingAreaTags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A set of tags to be associated with the Replication Configuration Template resource.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:pit_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: PITPolicy, location_name: 'pitPolicy', traits: {"smithy.api#documentation" => "<p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.add_member(:auto_replicate_new_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoReplicateNewDisks', traits: {"smithy.api#documentation" => "<p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>"}))
    UpdateReplicationConfigurationTemplateOutput.type = Types::UpdateReplicationConfigurationTemplateOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message'))
    ValidationException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'code'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Validation exception reason.</p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Validate exception field name.</p>"}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Validate exception field message.</p>"}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VolumeToConversionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString)
    VolumeToConversionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ConversionMap)
    VolumeToProductCodes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString)
    VolumeToProductCodes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCodes)
    VolumeToSizeMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LargeBoundedString)
    VolumeToSizeMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger)

    ElasticDisasterRecoveryService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.drs#ElasticDisasterRecoveryService"
      service.name = "ElasticDisasterRecoveryService"
      service.version = "2020-02-26"
      service.traits = {"aws.api#service" => {"sdkId" => "drs", "arnNamespace" => "drs", "awsProductName" => "drs", "cloudTrailEventSource" => "drs.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "drs"}, "aws.iam#defineConditionKeys" => {"drs:EC2InstanceARN" => {"type" => "String", "documentation" => "Filters access by the EC2 instance the request originated from"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "X-Amz-Content-Sha256", "X-Amz-User-Agent", "X-Amzn-Trace-Id"], "additionalExposedHeaders" => ["X-Amzn-Errortype", "X-Amzn-Requestid", "X-Amzn-Trace-Id", "X-Amz-Apigw-Id"]}, "smithy.api#title" => "Elastic Disaster Recovery Service"}
      service.add_operation(:associate_source_network_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#AssociateSourceNetworkStack"
        operation.name = "AssociateSourceNetworkStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceNetworkStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceNetworkStackResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["cloudformation:DescribeStacks", "cloudformation:DescribeStackResource", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "ec2:ModifyLaunchTemplate", "ec2:CreateLaunchTemplateVersion", "drs:GetLaunchConfiguration"], "smithy.api#http" => {"uri" => "/AssociateSourceNetworkStack", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:create_extended_source_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateExtendedSourceServer"
        operation.name = "CreateExtendedSourceServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtendedSourceServerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtendedSourceServerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateExtendedSourceServer", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateLaunchConfigurationTemplate"
        operation.name = "CreateLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateLaunchConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateReplicationConfigurationTemplate"
        operation.name = "CreateReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/CreateReplicationConfigurationTemplate", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:create_source_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#CreateSourceNetwork"
        operation.name = "CreateSourceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeVpcs", "ec2:DescribeInstances"], "smithy.api#http" => {"uri" => "/CreateSourceNetwork", "method" => "POST", "code" => 201}}
      end)
      service.add_operation(:delete_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteJob", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_launch_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteLaunchAction"
        operation.name = "DeleteLaunchAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchAction", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:delete_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteLaunchConfigurationTemplate"
        operation.name = "DeleteLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteLaunchConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_recovery_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteRecoveryInstance"
        operation.name = "DeleteRecoveryInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRecoveryInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteRecoveryInstance", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:delete_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteReplicationConfigurationTemplate"
        operation.name = "DeleteReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteReplicationConfigurationTemplate", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_network, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteSourceNetwork"
        operation.name = "DeleteSourceNetwork"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceNetworkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceNetworkResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceNetwork", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DeleteSourceServer"
        operation.name = "DeleteSourceServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceServerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceServerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DeleteSourceServer", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_job_log_items, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeJobLogItems"
        operation.name = "DescribeJobLogItems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobLogItemsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobLogItemsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobLogItems", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobLogItems.new
      end)
      service.add_operation(:describe_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeJobs"
        operation.name = "DescribeJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeJobs", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeJobs.new
      end)
      service.add_operation(:describe_launch_configuration_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeLaunchConfigurationTemplates"
        operation.name = "DescribeLaunchConfigurationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeLaunchConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeLaunchConfigurationTemplates.new
      end)
      service.add_operation(:describe_recovery_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeRecoveryInstances"
        operation.name = "DescribeRecoveryInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeInstances", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/DescribeRecoveryInstances", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeRecoveryInstances.new
      end)
      service.add_operation(:describe_recovery_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeRecoverySnapshots"
        operation.name = "DescribeRecoverySnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeRecoverySnapshots", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeRecoverySnapshots.new
      end)
      service.add_operation(:describe_replication_configuration_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeReplicationConfigurationTemplates"
        operation.name = "DescribeReplicationConfigurationTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeReplicationConfigurationTemplates", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurationTemplates.new
      end)
      service.add_operation(:describe_source_networks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeSourceNetworks"
        operation.name = "DescribeSourceNetworks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceNetworksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceNetworks", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceNetworks.new
      end)
      service.add_operation(:describe_source_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DescribeSourceServers"
        operation.name = "DescribeSourceServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DescribeSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::DescribeSourceServers.new
      end)
      service.add_operation(:disconnect_recovery_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DisconnectRecoveryInstance"
        operation.name = "DisconnectRecoveryInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectRecoveryInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectRecoveryInstance", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:disconnect_source_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#DisconnectSourceServer"
        operation.name = "DisconnectSourceServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectSourceServerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectSourceServerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/DisconnectSourceServer", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:export_source_network_cfn_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ExportSourceNetworkCfnTemplate"
        operation.name = "ExportSourceNetworkCfnTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceNetworkCfnTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceNetworkCfnTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["s3:GetBucketLocation", "s3:PutObject", "s3:GetObject"], "smithy.api#http" => {"uri" => "/ExportSourceNetworkCfnTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_failback_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetFailbackReplicationConfiguration"
        operation.name = "GetFailbackReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFailbackReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFailbackReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetFailbackReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetLaunchConfiguration"
        operation.name = "GetLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLaunchConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#GetReplicationConfiguration"
        operation.name = "GetReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GetReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:initialize_service, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#InitializeService"
        operation.name = "InitializeService"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeServiceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitializeServiceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "iam:GetInstanceProfile", "iam:CreateInstanceProfile", "iam:AddRoleToInstanceProfile"], "smithy.api#http" => {"uri" => "/InitializeService", "method" => "POST", "code" => 204}}
      end)
      service.add_operation(:list_extensible_source_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListExtensibleSourceServers"
        operation.name = "ListExtensibleSourceServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensibleSourceServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensibleSourceServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListExtensibleSourceServers", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExtensibleSourceServers.new
      end)
      service.add_operation(:list_launch_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListLaunchActions"
        operation.name = "ListLaunchActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLaunchActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListLaunchActions", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLaunchActions.new
      end)
      service.add_operation(:list_staging_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListStagingAccounts"
        operation.name = "ListStagingAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStagingAccountsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStagingAccountsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/ListStagingAccounts", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStagingAccounts.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ListTagsForResource"
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
      service.add_operation(:put_launch_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#PutLaunchAction"
        operation.name = "PutLaunchAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLaunchActionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLaunchActionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/PutLaunchAction", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:retry_data_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#RetryDataReplication"
        operation.name = "RetryDataReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryDataReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryDataReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "WARNING: RetryDataReplication is deprecated"}, "smithy.api#http" => {"uri" => "/RetryDataReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:reverse_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#ReverseReplication"
        operation.name = "ReverseReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ReverseReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReverseReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeInstances", "drs:DescribeReplicationConfigurationTemplates", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/ReverseReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_failback_launch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartFailbackLaunch"
        operation.name = "StartFailbackLaunch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFailbackLaunchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFailbackLaunchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartFailbackLaunch", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_recovery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartRecovery"
        operation.name = "StartRecovery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecoveryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecoveryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DetachVolume", "ec2:DescribeInstances", "ec2:TerminateInstances", "ec2:CreateTags", "ec2:DescribeLaunchTemplateVersions", "ec2:RunInstances", "ec2:DescribeSnapshots", "ec2:StopInstances", "ec2:CreateLaunchTemplateVersion", "ec2:DeleteVolume", "ec2:StartInstances", "ec2:DescribeVolumes", "ec2:DeleteLaunchTemplateVersions", "ec2:AttachVolume", "ec2:AuthorizeSecurityGroupEgress", "ec2:AuthorizeSecurityGroupIngress", "ec2:CreateLaunchTemplate", "ec2:CreateSnapshot", "ec2:CreateVolume", "ec2:DeleteSnapshot", "ec2:DescribeImages", "ec2:DescribeInstanceAttribute", "ec2:DescribeInstanceStatus", "ec2:DescribeLaunchTemplates", "ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:ModifyInstanceAttribute", "ec2:ModifyLaunchTemplate", "ec2:RevokeSecurityGroupEgress", "ec2:DescribeAccountAttributes", "ec2:DescribeAvailabilityZones", "ec2:DescribeInstanceTypes", "iam:PassRole", "drs:CreateRecoveryInstanceForDrs", "drs:ListTagsForResource"], "smithy.api#http" => {"uri" => "/StartRecovery", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartReplication"
        operation.name = "StartReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:start_source_network_recovery, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartSourceNetworkRecovery"
        operation.name = "StartSourceNetworkRecovery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "ec2:ModifyLaunchTemplate", "ec2:CreateLaunchTemplateVersion", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeLaunchTemplates", "ec2:DescribeLaunchTemplateVersions", "cloudformation:DescribeStacks", "cloudformation:UpdateStack", "cloudformation:CreateStack", "cloudformation:DescribeStackResource", "cloudformation:DescribeStacks", "drs:GetLaunchConfiguration", "s3:PutObject", "s3:GetObject"], "smithy.api#http" => {"uri" => "/StartSourceNetworkRecovery", "method" => "POST", "code" => 202}}
      end)
      service.add_operation(:start_source_network_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StartSourceNetworkReplication"
        operation.name = "StartSourceNetworkReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSourceNetworkReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StartSourceNetworkReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_failback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopFailback"
        operation.name = "StopFailback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopFailbackInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StopFailback", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopReplication"
        operation.name = "StopReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopReplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StopReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:stop_source_network_replication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#StopSourceNetworkReplication"
        operation.name = "StopSourceNetworkReplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSourceNetworkReplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSourceNetworkReplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/StopSourceNetworkReplication", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#TagResource"
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
      service.add_operation(:terminate_recovery_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#TerminateRecoveryInstances"
        operation.name = "TerminateRecoveryInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateRecoveryInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateRecoveryInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"aws.iam#requiredActions" => ["ec2:DescribeVolumes", "ec2:DescribeInstances", "ec2:TerminateInstances", "ec2:DeleteVolume", "drs:DescribeSourceServers"], "smithy.api#http" => {"uri" => "/TerminateRecoveryInstances", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UntagResource"
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
      service.add_operation(:update_failback_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateFailbackReplicationConfiguration"
        operation.name = "UpdateFailbackReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFailbackReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateFailbackReplicationConfiguration", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_launch_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateLaunchConfiguration"
        operation.name = "UpdateLaunchConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_launch_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateLaunchConfigurationTemplate"
        operation.name = "UpdateLaunchConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateLaunchConfigurationTemplate", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:update_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateReplicationConfiguration"
        operation.name = "UpdateReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfiguration", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_replication_configuration_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.drs#UpdateReplicationConfigurationTemplate"
        operation.name = "UpdateReplicationConfigurationTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UninitializedAccountException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/UpdateReplicationConfigurationTemplate", "method" => "POST", "code" => 200}}
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
