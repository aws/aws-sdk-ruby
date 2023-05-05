# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimSpaceWeaver
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppPortMappings = Shapes::ListShape.new(name: 'AppPortMappings')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClockStatus = Shapes::StringShape.new(name: 'ClockStatus')
    ClockTargetStatus = Shapes::StringShape.new(name: 'ClockTargetStatus')
    CloudWatchLogsLogGroup = Shapes::StructureShape.new(name: 'CloudWatchLogsLogGroup')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateSnapshotInput = Shapes::StructureShape.new(name: 'CreateSnapshotInput')
    CreateSnapshotOutput = Shapes::StructureShape.new(name: 'CreateSnapshotOutput')
    DeleteAppInput = Shapes::StructureShape.new(name: 'DeleteAppInput')
    DeleteAppOutput = Shapes::StructureShape.new(name: 'DeleteAppOutput')
    DeleteSimulationInput = Shapes::StructureShape.new(name: 'DeleteSimulationInput')
    DeleteSimulationOutput = Shapes::StructureShape.new(name: 'DeleteSimulationOutput')
    DescribeAppInput = Shapes::StructureShape.new(name: 'DescribeAppInput')
    DescribeAppOutput = Shapes::StructureShape.new(name: 'DescribeAppOutput')
    DescribeSimulationInput = Shapes::StructureShape.new(name: 'DescribeSimulationInput')
    DescribeSimulationOutput = Shapes::StructureShape.new(name: 'DescribeSimulationOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LaunchCommandList = Shapes::ListShape.new(name: 'LaunchCommandList')
    LaunchOverrides = Shapes::StructureShape.new(name: 'LaunchOverrides')
    LifecycleManagementStrategy = Shapes::StringShape.new(name: 'LifecycleManagementStrategy')
    ListAppsInput = Shapes::StructureShape.new(name: 'ListAppsInput')
    ListAppsOutput = Shapes::StructureShape.new(name: 'ListAppsOutput')
    ListSimulationsInput = Shapes::StructureShape.new(name: 'ListSimulationsInput')
    ListSimulationsOutput = Shapes::StructureShape.new(name: 'ListSimulationsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    LiveSimulationState = Shapes::StructureShape.new(name: 'LiveSimulationState')
    LogDestination = Shapes::StructureShape.new(name: 'LogDestination')
    LogDestinations = Shapes::ListShape.new(name: 'LogDestinations')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    ObjectKey = Shapes::StringShape.new(name: 'ObjectKey')
    ObjectKeyPrefix = Shapes::StringShape.new(name: 'ObjectKeyPrefix')
    OptionalString = Shapes::StringShape.new(name: 'OptionalString')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SimSpaceWeaverArn = Shapes::StringShape.new(name: 'SimSpaceWeaverArn')
    SimSpaceWeaverLongResourceName = Shapes::StringShape.new(name: 'SimSpaceWeaverLongResourceName')
    SimSpaceWeaverResourceName = Shapes::StringShape.new(name: 'SimSpaceWeaverResourceName')
    SimulationAppEndpointInfo = Shapes::StructureShape.new(name: 'SimulationAppEndpointInfo')
    SimulationAppList = Shapes::ListShape.new(name: 'SimulationAppList')
    SimulationAppMetadata = Shapes::StructureShape.new(name: 'SimulationAppMetadata')
    SimulationAppPortMapping = Shapes::StructureShape.new(name: 'SimulationAppPortMapping')
    SimulationAppStatus = Shapes::StringShape.new(name: 'SimulationAppStatus')
    SimulationAppTargetStatus = Shapes::StringShape.new(name: 'SimulationAppTargetStatus')
    SimulationClock = Shapes::StructureShape.new(name: 'SimulationClock')
    SimulationClockList = Shapes::ListShape.new(name: 'SimulationClockList')
    SimulationList = Shapes::ListShape.new(name: 'SimulationList')
    SimulationMetadata = Shapes::StructureShape.new(name: 'SimulationMetadata')
    SimulationStatus = Shapes::StringShape.new(name: 'SimulationStatus')
    SimulationTargetStatus = Shapes::StringShape.new(name: 'SimulationTargetStatus')
    StartAppInput = Shapes::StructureShape.new(name: 'StartAppInput')
    StartAppOutput = Shapes::StructureShape.new(name: 'StartAppOutput')
    StartClockInput = Shapes::StructureShape.new(name: 'StartClockInput')
    StartClockOutput = Shapes::StructureShape.new(name: 'StartClockOutput')
    StartSimulationInput = Shapes::StructureShape.new(name: 'StartSimulationInput')
    StartSimulationOutput = Shapes::StructureShape.new(name: 'StartSimulationOutput')
    StopAppInput = Shapes::StructureShape.new(name: 'StopAppInput')
    StopAppOutput = Shapes::StructureShape.new(name: 'StopAppOutput')
    StopClockInput = Shapes::StructureShape.new(name: 'StopClockInput')
    StopClockOutput = Shapes::StructureShape.new(name: 'StopClockOutput')
    StopSimulationInput = Shapes::StructureShape.new(name: 'StopSimulationInput')
    StopSimulationOutput = Shapes::StructureShape.new(name: 'StopSimulationOutput')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeToLiveString = Shapes::StringShape.new(name: 'TimeToLiveString')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AppPortMappings.member = Shapes::ShapeRef.new(shape: SimulationAppPortMapping)

    CloudWatchLogsLogGroup.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "LogGroupArn"))
    CloudWatchLogsLogGroup.struct_class = Types::CloudWatchLogsLogGroup

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateSnapshotInput.add_member(:destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "Destination"))
    CreateSnapshotInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    CreateSnapshotInput.struct_class = Types::CreateSnapshotInput

    CreateSnapshotOutput.struct_class = Types::CreateSnapshotOutput

    DeleteAppInput.add_member(:app, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "app"))
    DeleteAppInput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "domain"))
    DeleteAppInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "simulation"))
    DeleteAppInput.struct_class = Types::DeleteAppInput

    DeleteAppOutput.struct_class = Types::DeleteAppOutput

    DeleteSimulationInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "simulation"))
    DeleteSimulationInput.struct_class = Types::DeleteSimulationInput

    DeleteSimulationOutput.struct_class = Types::DeleteSimulationOutput

    DescribeAppInput.add_member(:app, Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, required: true, location: "querystring", location_name: "app"))
    DescribeAppInput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "domain"))
    DescribeAppInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "simulation"))
    DescribeAppInput.struct_class = Types::DescribeAppInput

    DescribeAppOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeAppOutput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Domain"))
    DescribeAppOutput.add_member(:endpoint_info, Shapes::ShapeRef.new(shape: SimulationAppEndpointInfo, location_name: "EndpointInfo"))
    DescribeAppOutput.add_member(:launch_overrides, Shapes::ShapeRef.new(shape: LaunchOverrides, location_name: "LaunchOverrides"))
    DescribeAppOutput.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, location_name: "Name"))
    DescribeAppOutput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Simulation"))
    DescribeAppOutput.add_member(:status, Shapes::ShapeRef.new(shape: SimulationAppStatus, location_name: "Status"))
    DescribeAppOutput.add_member(:target_status, Shapes::ShapeRef.new(shape: SimulationAppTargetStatus, location_name: "TargetStatus"))
    DescribeAppOutput.struct_class = Types::DescribeAppOutput

    DescribeSimulationInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "simulation"))
    DescribeSimulationInput.struct_class = Types::DescribeSimulationInput

    DescribeSimulationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: "Arn"))
    DescribeSimulationOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeSimulationOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeSimulationOutput.add_member(:execution_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ExecutionId"))
    DescribeSimulationOutput.add_member(:live_simulation_state, Shapes::ShapeRef.new(shape: LiveSimulationState, location_name: "LiveSimulationState"))
    DescribeSimulationOutput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "LoggingConfiguration"))
    DescribeSimulationOutput.add_member(:maximum_duration, Shapes::ShapeRef.new(shape: TimeToLiveString, location_name: "MaximumDuration"))
    DescribeSimulationOutput.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Name"))
    DescribeSimulationOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeSimulationOutput.add_member(:schema_error, Shapes::ShapeRef.new(shape: OptionalString, deprecated: true, location_name: "SchemaError", metadata: {"deprecatedMessage"=>"SchemaError is no longer used, check StartError instead."}))
    DescribeSimulationOutput.add_member(:schema_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SchemaS3Location"))
    DescribeSimulationOutput.add_member(:snapshot_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SnapshotS3Location"))
    DescribeSimulationOutput.add_member(:start_error, Shapes::ShapeRef.new(shape: OptionalString, location_name: "StartError"))
    DescribeSimulationOutput.add_member(:status, Shapes::ShapeRef.new(shape: SimulationStatus, location_name: "Status"))
    DescribeSimulationOutput.add_member(:target_status, Shapes::ShapeRef.new(shape: SimulationTargetStatus, location_name: "TargetStatus"))
    DescribeSimulationOutput.struct_class = Types::DescribeSimulationOutput

    Domain.add_member(:lifecycle, Shapes::ShapeRef.new(shape: LifecycleManagementStrategy, location_name: "Lifecycle"))
    Domain.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Name"))
    Domain.struct_class = Types::Domain

    DomainList.member = Shapes::ShapeRef.new(shape: Domain)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LaunchCommandList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    LaunchOverrides.add_member(:launch_commands, Shapes::ShapeRef.new(shape: LaunchCommandList, location_name: "LaunchCommands"))
    LaunchOverrides.struct_class = Types::LaunchOverrides

    ListAppsInput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location: "querystring", location_name: "domain"))
    ListAppsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PositiveInteger, location: "querystring", location_name: "maxResults"))
    ListAppsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: OptionalString, location: "querystring", location_name: "nextToken"))
    ListAppsInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location: "querystring", location_name: "simulation"))
    ListAppsInput.struct_class = Types::ListAppsInput

    ListAppsOutput.add_member(:apps, Shapes::ShapeRef.new(shape: SimulationAppList, location_name: "Apps"))
    ListAppsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: OptionalString, location_name: "NextToken"))
    ListAppsOutput.struct_class = Types::ListAppsOutput

    ListSimulationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: PositiveInteger, location: "querystring", location_name: "maxResults"))
    ListSimulationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: OptionalString, location: "querystring", location_name: "nextToken"))
    ListSimulationsInput.struct_class = Types::ListSimulationsInput

    ListSimulationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: OptionalString, location_name: "NextToken"))
    ListSimulationsOutput.add_member(:simulations, Shapes::ShapeRef.new(shape: SimulationList, location_name: "Simulations"))
    ListSimulationsOutput.struct_class = Types::ListSimulationsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    LiveSimulationState.add_member(:clocks, Shapes::ShapeRef.new(shape: SimulationClockList, location_name: "Clocks"))
    LiveSimulationState.add_member(:domains, Shapes::ShapeRef.new(shape: DomainList, location_name: "Domains"))
    LiveSimulationState.struct_class = Types::LiveSimulationState

    LogDestination.add_member(:cloud_watch_logs_log_group, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroup, location_name: "CloudWatchLogsLogGroup"))
    LogDestination.struct_class = Types::LogDestination

    LogDestinations.member = Shapes::ShapeRef.new(shape: LogDestination)

    LoggingConfiguration.add_member(:destinations, Shapes::ShapeRef.new(shape: LogDestinations, location_name: "Destinations"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "BucketName"))
    S3Destination.add_member(:object_key_prefix, Shapes::ShapeRef.new(shape: ObjectKeyPrefix, location_name: "ObjectKeyPrefix"))
    S3Destination.struct_class = Types::S3Destination

    S3Location.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, location_name: "BucketName"))
    S3Location.add_member(:object_key, Shapes::ShapeRef.new(shape: ObjectKey, location_name: "ObjectKey"))
    S3Location.struct_class = Types::S3Location

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SimulationAppEndpointInfo.add_member(:address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Address"))
    SimulationAppEndpointInfo.add_member(:ingress_port_mappings, Shapes::ShapeRef.new(shape: AppPortMappings, location_name: "IngressPortMappings"))
    SimulationAppEndpointInfo.struct_class = Types::SimulationAppEndpointInfo

    SimulationAppList.member = Shapes::ShapeRef.new(shape: SimulationAppMetadata)

    SimulationAppMetadata.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Domain"))
    SimulationAppMetadata.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, location_name: "Name"))
    SimulationAppMetadata.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Simulation"))
    SimulationAppMetadata.add_member(:status, Shapes::ShapeRef.new(shape: SimulationAppStatus, location_name: "Status"))
    SimulationAppMetadata.add_member(:target_status, Shapes::ShapeRef.new(shape: SimulationAppTargetStatus, location_name: "TargetStatus"))
    SimulationAppMetadata.struct_class = Types::SimulationAppMetadata

    SimulationAppPortMapping.add_member(:actual, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Actual"))
    SimulationAppPortMapping.add_member(:declared, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Declared"))
    SimulationAppPortMapping.struct_class = Types::SimulationAppPortMapping

    SimulationClock.add_member(:status, Shapes::ShapeRef.new(shape: ClockStatus, location_name: "Status"))
    SimulationClock.add_member(:target_status, Shapes::ShapeRef.new(shape: ClockTargetStatus, location_name: "TargetStatus"))
    SimulationClock.struct_class = Types::SimulationClock

    SimulationClockList.member = Shapes::ShapeRef.new(shape: SimulationClock)

    SimulationList.member = Shapes::ShapeRef.new(shape: SimulationMetadata)

    SimulationMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: "Arn"))
    SimulationMetadata.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    SimulationMetadata.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Name"))
    SimulationMetadata.add_member(:status, Shapes::ShapeRef.new(shape: SimulationStatus, location_name: "Status"))
    SimulationMetadata.add_member(:target_status, Shapes::ShapeRef.new(shape: SimulationTargetStatus, location_name: "TargetStatus"))
    SimulationMetadata.struct_class = Types::SimulationMetadata

    StartAppInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartAppInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartAppInput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Domain"))
    StartAppInput.add_member(:launch_overrides, Shapes::ShapeRef.new(shape: LaunchOverrides, location_name: "LaunchOverrides"))
    StartAppInput.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Name"))
    StartAppInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    StartAppInput.struct_class = Types::StartAppInput

    StartAppOutput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Domain"))
    StartAppOutput.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Name"))
    StartAppOutput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: "Simulation"))
    StartAppOutput.struct_class = Types::StartAppOutput

    StartClockInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    StartClockInput.struct_class = Types::StartClockInput

    StartClockOutput.struct_class = Types::StartClockOutput

    StartSimulationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartSimulationInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartSimulationInput.add_member(:maximum_duration, Shapes::ShapeRef.new(shape: TimeToLiveString, location_name: "MaximumDuration"))
    StartSimulationInput.add_member(:name, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Name"))
    StartSimulationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    StartSimulationInput.add_member(:schema_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SchemaS3Location"))
    StartSimulationInput.add_member(:snapshot_s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "SnapshotS3Location"))
    StartSimulationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartSimulationInput.struct_class = Types::StartSimulationInput

    StartSimulationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: "Arn"))
    StartSimulationOutput.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    StartSimulationOutput.add_member(:execution_id, Shapes::ShapeRef.new(shape: UUID, location_name: "ExecutionId"))
    StartSimulationOutput.struct_class = Types::StartSimulationOutput

    StopAppInput.add_member(:app, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "App"))
    StopAppInput.add_member(:domain, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Domain"))
    StopAppInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    StopAppInput.struct_class = Types::StopAppInput

    StopAppOutput.struct_class = Types::StopAppOutput

    StopClockInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    StopClockInput.struct_class = Types::StopClockInput

    StopClockOutput.struct_class = Types::StopClockOutput

    StopSimulationInput.add_member(:simulation, Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, required: true, location_name: "Simulation"))
    StopSimulationInput.struct_class = Types::StopSimulationInput

    StopSimulationOutput.struct_class = Types::StopSimulationOutput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-10-28"

      api.metadata = {
        "apiVersion" => "2022-10-28",
        "endpointPrefix" => "simspaceweaver",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS SimSpace Weaver",
        "serviceId" => "SimSpaceWeaver",
        "signatureVersion" => "v4",
        "signingName" => "simspaceweaver",
        "uid" => "simspaceweaver-2022-10-28",
      }

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/createsnapshot"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "DELETE"
        o.http_request_uri = "/deleteapp"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_simulation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSimulation"
        o.http_method = "DELETE"
        o.http_request_uri = "/deletesimulation"
        o.input = Shapes::ShapeRef.new(shape: DeleteSimulationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSimulationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApp"
        o.http_method = "GET"
        o.http_request_uri = "/describeapp"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_simulation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSimulation"
        o.http_method = "GET"
        o.http_request_uri = "/describesimulation"
        o.input = Shapes::ShapeRef.new(shape: DescribeSimulationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeSimulationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApps"
        o.http_method = "GET"
        o.http_request_uri = "/listapps"
        o.input = Shapes::ShapeRef.new(shape: ListAppsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAppsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_simulations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSimulations"
        o.http_method = "GET"
        o.http_request_uri = "/listsimulations"
        o.input = Shapes::ShapeRef.new(shape: ListSimulationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSimulationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApp"
        o.http_method = "POST"
        o.http_request_uri = "/startapp"
        o.input = Shapes::ShapeRef.new(shape: StartAppInput)
        o.output = Shapes::ShapeRef.new(shape: StartAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_clock, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartClock"
        o.http_method = "POST"
        o.http_request_uri = "/startclock"
        o.input = Shapes::ShapeRef.new(shape: StartClockInput)
        o.output = Shapes::ShapeRef.new(shape: StartClockOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_simulation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSimulation"
        o.http_method = "POST"
        o.http_request_uri = "/startsimulation"
        o.input = Shapes::ShapeRef.new(shape: StartSimulationInput)
        o.output = Shapes::ShapeRef.new(shape: StartSimulationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApp"
        o.http_method = "POST"
        o.http_request_uri = "/stopapp"
        o.input = Shapes::ShapeRef.new(shape: StopAppInput)
        o.output = Shapes::ShapeRef.new(shape: StopAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_clock, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopClock"
        o.http_method = "POST"
        o.http_request_uri = "/stopclock"
        o.input = Shapes::ShapeRef.new(shape: StopClockInput)
        o.output = Shapes::ShapeRef.new(shape: StopClockOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_simulation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSimulation"
        o.http_method = "POST"
        o.http_request_uri = "/stopsimulation"
        o.input = Shapes::ShapeRef.new(shape: StopSimulationInput)
        o.output = Shapes::ShapeRef.new(shape: StopSimulationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
