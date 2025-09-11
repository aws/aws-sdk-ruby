# frozen_string_literal: true

# This is generated code!

module Aws::SimSpaceWeaver
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AppPortMappings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#AppPortMappings', name: 'AppPortMappings')
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#BucketName', name: 'BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$", "smithy.api#sensitive" => {}})
    ClockStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#ClockStatus', name: 'ClockStatus', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    ClockTargetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#ClockTargetStatus', name: 'ClockTargetStatus', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    CloudWatchLogsLogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#CloudWatchLogsLogGroup', name: 'CloudWatchLogsLogGroup')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#CreateSnapshotInput', name: 'CreateSnapshotInput')
    CreateSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#CreateSnapshotOutput', name: 'CreateSnapshotOutput')
    DeleteAppOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DeleteAppOperationInput', name: 'DeleteAppOperationInput')
    DeleteAppOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DeleteAppOperationOutput', name: 'DeleteAppOperationOutput')
    DeleteSimulationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DeleteSimulationOperationInput', name: 'DeleteSimulationOperationInput')
    DeleteSimulationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DeleteSimulationOperationOutput', name: 'DeleteSimulationOperationOutput')
    DescribeAppOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DescribeAppOperationInput', name: 'DescribeAppOperationInput')
    DescribeAppOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DescribeAppOperationOutput', name: 'DescribeAppOperationOutput')
    DescribeSimulationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DescribeSimulationOperationInput', name: 'DescribeSimulationOperationInput')
    DescribeSimulationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#DescribeSimulationOperationOutput', name: 'DescribeSimulationOperationOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    Domain = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#Domain', name: 'Domain')
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#DomainList', name: 'DomainList')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LaunchCommandList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#LaunchCommandList', name: 'LaunchCommandList')
    LaunchOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#LaunchOverrides', name: 'LaunchOverrides')
    LifecycleManagementStrategy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#LifecycleManagementStrategy', name: 'LifecycleManagementStrategy', traits: {"smithy.api#enum" => [{"value" => "Unknown", "name" => "Unknown"}, {"value" => "PerWorker", "name" => "PerWorker"}, {"value" => "BySpatialSubdivision", "name" => "BySpatialSubdivision"}, {"value" => "ByRequest", "name" => "ByRequest"}]})
    ListAppsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListAppsOperationInput', name: 'ListAppsOperationInput')
    ListAppsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListAppsOperationOutput', name: 'ListAppsOperationOutput')
    ListSimulationsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListSimulationsOperationInput', name: 'ListSimulationsOperationInput')
    ListSimulationsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListSimulationsOperationOutput', name: 'ListSimulationsOperationOutput')
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    LiveSimulationState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#LiveSimulationState', name: 'LiveSimulationState')
    LogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#LogDestination', name: 'LogDestination')
    LogDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#LogDestinations', name: 'LogDestinations')
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#LogGroupArn', name: 'LogGroupArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov):log-group:([a-z]{2}-[a-z]+-\\d{1}):(\\d{12})?:role\\/(.+)$"})
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#LoggingConfiguration', name: 'LoggingConfiguration')
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#ObjectKey', name: 'ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ObjectKeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#ObjectKeyPrefix', name: 'ObjectKeyPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    OptionalString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#OptionalString', name: 'OptionalString')
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.simspaceweaver#PortNumber', name: 'PortNumber', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.simspaceweaver#PositiveInteger', name: 'PositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov):iam::(\\d{12})?:role\\/(.+)$"})
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#S3Destination', name: 'S3Destination')
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#S3Location', name: 'S3Location')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SimSpaceWeaverArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimSpaceWeaverArn', name: 'SimSpaceWeaverArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}, "smithy.api#pattern" => "^arn:(?:aws|aws-cn|aws-us-gov):simspaceweaver:([a-z]{2}-[a-z]+-\\d{1}):(\\d{12})?:([a-z]+)\\/(.+)$"})
    SimSpaceWeaverLongResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimSpaceWeaverLongResourceName', name: 'SimSpaceWeaverLongResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    SimSpaceWeaverResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimSpaceWeaverResourceName', name: 'SimSpaceWeaverResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    SimulationAppEndpointInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppEndpointInfo', name: 'SimulationAppEndpointInfo')
    SimulationAppList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppList', name: 'SimulationAppList')
    SimulationAppMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppMetadata', name: 'SimulationAppMetadata')
    SimulationAppPortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppPortMapping', name: 'SimulationAppPortMapping')
    SimulationAppStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppStatus', name: 'SimulationAppStatus', traits: {"smithy.api#enum" => [{"value" => "STARTING", "name" => "STARTING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "UNKNOWN", "name" => "UNKNOWN"}]})
    SimulationAppTargetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimulationAppTargetStatus', name: 'SimulationAppTargetStatus', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    SimulationClock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#SimulationClock', name: 'SimulationClock')
    SimulationClockList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#SimulationClockList', name: 'SimulationClockList')
    SimulationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#SimulationList', name: 'SimulationList')
    SimulationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#SimulationMetadata', name: 'SimulationMetadata')
    SimulationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimulationStatus', name: 'SimulationStatus', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "SNAPSHOT_IN_PROGRESS", "name" => "SNAPSHOT_IN_PROGRESS"}]})
    SimulationTargetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#SimulationTargetStatus', name: 'SimulationTargetStatus', traits: {"smithy.api#enum" => [{"value" => "UNKNOWN", "name" => "UNKNOWN"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "DELETED", "name" => "DELETED"}]})
    StartAppOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartAppOperationInput', name: 'StartAppOperationInput')
    StartAppOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartAppOperationOutput', name: 'StartAppOperationOutput')
    StartClockOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartClockOperationInput', name: 'StartClockOperationInput')
    StartClockOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartClockOperationOutput', name: 'StartClockOperationOutput')
    StartSimulationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartSimulationOperationInput', name: 'StartSimulationOperationInput')
    StartSimulationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StartSimulationOperationOutput', name: 'StartSimulationOperationOutput')
    StopAppOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopAppOperationInput', name: 'StopAppOperationInput')
    StopAppOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopAppOperationOutput', name: 'StopAppOperationOutput')
    StopClockOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopClockOperationInput', name: 'StopClockOperationInput')
    StopClockOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopClockOperationOutput', name: 'StopClockOperationOutput')
    StopSimulationOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopSimulationOperationInput', name: 'StopSimulationOperationInput')
    StopSimulationOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#StopSimulationOperationOutput', name: 'StopSimulationOperationOutput')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.simspaceweaver#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.simspaceweaver#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#TagResourceOperationInput', name: 'TagResourceOperationInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.simspaceweaver#Simulation", "ids" => {"SimulationName" => "ResourceArn"}}]})
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#TagResourceOperationOutput', name: 'TagResourceOperationOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TimeToLiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#TimeToLiveString', name: 'TimeToLiveString', traits: {"smithy.api#length" => {"min" => 2, "max" => 6}, "smithy.api#pattern" => "^\\d{1,5}[mhdMHD]$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.simspaceweaver#Timestamp', name: 'Timestamp')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.simspaceweaver#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#UntagResourceOperationInput', name: 'UntagResourceOperationInput', traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.simspaceweaver#Simulation", "ids" => {"SimulationName" => "ResourceArn"}}]})
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#UntagResourceOperationOutput', name: 'UntagResourceOperationOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.simspaceweaver#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AppPortMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppPortMapping)
    CloudWatchLogsLogGroup.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: 'LogGroupArn'))
    CloudWatchLogsLogGroup.type = Types::CloudWatchLogsLogGroup
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateSnapshotInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    CreateSnapshotInput.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    CreateSnapshotInput.type = Types::CreateSnapshotInput
    CreateSnapshotOutput.type = Types::CreateSnapshotOutput
    DeleteAppOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#httpQuery" => "simulation", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    DeleteAppOperationInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain', traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "DomainName"}))
    DeleteAppOperationInput.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'App', traits: {"smithy.api#httpQuery" => "app", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AppName"}))
    DeleteAppOperationInput.type = Types::DeleteAppOperationInput
    DeleteAppOperationOutput.type = Types::DeleteAppOperationOutput
    DeleteSimulationOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#httpQuery" => "simulation", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    DeleteSimulationOperationInput.type = Types::DeleteSimulationOperationInput
    DeleteSimulationOperationOutput.type = Types::DeleteSimulationOperationOutput
    DescribeAppOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#httpQuery" => "simulation", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    DescribeAppOperationInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain', traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "DomainName"}))
    DescribeAppOperationInput.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, location_name: 'App', traits: {"smithy.api#httpQuery" => "app", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AppName"}))
    DescribeAppOperationInput.type = Types::DescribeAppOperationInput
    DescribeAppOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, location_name: 'Name'))
    DescribeAppOperationOutput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation'))
    DescribeAppOperationOutput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain'))
    DescribeAppOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppStatus, location_name: 'Status'))
    DescribeAppOperationOutput.add_member(:target_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppTargetStatus, location_name: 'TargetStatus'))
    DescribeAppOperationOutput.add_member(:launch_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchOverrides, location_name: 'LaunchOverrides'))
    DescribeAppOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DescribeAppOperationOutput.add_member(:endpoint_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppEndpointInfo, location_name: 'EndpointInfo'))
    DescribeAppOperationOutput.type = Types::DescribeAppOperationOutput
    DescribeSimulationOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#httpQuery" => "simulation", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    DescribeSimulationOperationInput.type = Types::DescribeSimulationOperationInput
    DescribeSimulationOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name'))
    DescribeSimulationOperationOutput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ExecutionId'))
    DescribeSimulationOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'Arn'))
    DescribeSimulationOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DescribeSimulationOperationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    DescribeSimulationOperationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    DescribeSimulationOperationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationStatus, location_name: 'Status'))
    DescribeSimulationOperationOutput.add_member(:target_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTargetStatus, location_name: 'TargetStatus'))
    DescribeSimulationOperationOutput.add_member(:schema_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SchemaS3Location'))
    DescribeSimulationOperationOutput.add_member(:schema_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'SchemaError', traits: {"smithy.api#deprecated" => {"message" => "SchemaError is no longer used, check StartError instead."}}))
    DescribeSimulationOperationOutput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: 'LoggingConfiguration'))
    DescribeSimulationOperationOutput.add_member(:live_simulation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LiveSimulationState, location_name: 'LiveSimulationState'))
    DescribeSimulationOperationOutput.add_member(:maximum_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveString, location_name: 'MaximumDuration'))
    DescribeSimulationOperationOutput.add_member(:snapshot_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SnapshotS3Location'))
    DescribeSimulationOperationOutput.add_member(:start_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'StartError'))
    DescribeSimulationOperationOutput.type = Types::DescribeSimulationOperationOutput
    Domain.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name'))
    Domain.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleManagementStrategy, location_name: 'Lifecycle'))
    Domain.type = Types::Domain
    DomainList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    LaunchCommandList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    LaunchOverrides.add_member(:launch_commands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchCommandList, location_name: 'LaunchCommands'))
    LaunchOverrides.type = Types::LaunchOverrides
    ListAppsOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#httpQuery" => "simulation", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    ListAppsOperationInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain', traits: {"smithy.api#httpQuery" => "domain"}))
    ListAppsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppsOperationInput.type = Types::ListAppsOperationInput
    ListAppsOperationOutput.add_member(:apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppList, location_name: 'Apps'))
    ListAppsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'NextToken'))
    ListAppsOperationOutput.type = Types::ListAppsOperationOutput
    ListSimulationsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSimulationsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSimulationsOperationInput.type = Types::ListSimulationsOperationInput
    ListSimulationsOperationOutput.add_member(:simulations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationList, location_name: 'Simulations'))
    ListSimulationsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalString, location_name: 'NextToken'))
    ListSimulationsOperationOutput.type = Types::ListSimulationsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    LiveSimulationState.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'Domains'))
    LiveSimulationState.add_member(:clocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationClockList, location_name: 'Clocks'))
    LiveSimulationState.type = Types::LiveSimulationState
    LogDestination.add_member(:cloud_watch_logs_log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroup, location_name: 'CloudWatchLogsLogGroup'))
    LogDestination.type = Types::LogDestination
    LogDestinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestination)
    LoggingConfiguration.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinations, location_name: 'Destinations'))
    LoggingConfiguration.type = Types::LoggingConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'BucketName', traits: {"smithy.api#required" => {}}))
    S3Destination.add_member(:object_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKeyPrefix, location_name: 'ObjectKeyPrefix'))
    S3Destination.type = Types::S3Destination
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: 'BucketName', traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectKey, location_name: 'ObjectKey', traits: {"smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SimulationAppEndpointInfo.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Address'))
    SimulationAppEndpointInfo.add_member(:ingress_port_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppPortMappings, location_name: 'IngressPortMappings'))
    SimulationAppEndpointInfo.type = Types::SimulationAppEndpointInfo
    SimulationAppList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppMetadata)
    SimulationAppMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverLongResourceName, location_name: 'Name'))
    SimulationAppMetadata.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation'))
    SimulationAppMetadata.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain'))
    SimulationAppMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppStatus, location_name: 'Status'))
    SimulationAppMetadata.add_member(:target_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationAppTargetStatus, location_name: 'TargetStatus'))
    SimulationAppMetadata.type = Types::SimulationAppMetadata
    SimulationAppPortMapping.add_member(:declared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'Declared'))
    SimulationAppPortMapping.add_member(:actual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortNumber, location_name: 'Actual'))
    SimulationAppPortMapping.type = Types::SimulationAppPortMapping
    SimulationClock.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClockStatus, location_name: 'Status'))
    SimulationClock.add_member(:target_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClockTargetStatus, location_name: 'TargetStatus'))
    SimulationClock.type = Types::SimulationClock
    SimulationClockList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationClock)
    SimulationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationMetadata)
    SimulationMetadata.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name'))
    SimulationMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'Arn'))
    SimulationMetadata.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    SimulationMetadata.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationStatus, location_name: 'Status'))
    SimulationMetadata.add_member(:target_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimulationTargetStatus, location_name: 'TargetStatus'))
    SimulationMetadata.type = Types::SimulationMetadata
    StartAppOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartAppOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    StartAppOperationInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    StartAppOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    StartAppOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    StartAppOperationInput.add_member(:launch_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchOverrides, location_name: 'LaunchOverrides'))
    StartAppOperationInput.type = Types::StartAppOperationInput
    StartAppOperationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name'))
    StartAppOperationOutput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain'))
    StartAppOperationOutput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation'))
    StartAppOperationOutput.type = Types::StartAppOperationOutput
    StartClockOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    StartClockOperationInput.type = Types::StartClockOperationInput
    StartClockOperationOutput.type = Types::StartClockOperationOutput
    StartSimulationOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartSimulationOperationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    StartSimulationOperationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    StartSimulationOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#required" => {}}))
    StartSimulationOperationInput.add_member(:schema_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SchemaS3Location'))
    StartSimulationOperationInput.add_member(:maximum_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveString, location_name: 'MaximumDuration'))
    StartSimulationOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    StartSimulationOperationInput.add_member(:snapshot_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SnapshotS3Location'))
    StartSimulationOperationInput.type = Types::StartSimulationOperationInput
    StartSimulationOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'Arn'))
    StartSimulationOperationOutput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ExecutionId'))
    StartSimulationOperationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    StartSimulationOperationOutput.type = Types::StartSimulationOperationOutput
    StopAppOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    StopAppOperationInput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Domain', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "DomainName"}))
    StopAppOperationInput.add_member(:app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'App', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "AppName"}))
    StopAppOperationInput.type = Types::StopAppOperationInput
    StopAppOperationOutput.type = Types::StopAppOperationOutput
    StopClockOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    StopClockOperationInput.type = Types::StopClockOperationInput
    StopClockOperationOutput.type = Types::StopClockOperationOutput
    StopSimulationOperationInput.add_member(:simulation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverResourceName, location_name: 'Simulation', traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "SimulationName"}))
    StopSimulationOperationInput.type = Types::StopSimulationOperationInput
    StopSimulationOperationOutput.type = Types::StopSimulationOperationOutput
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimSpaceWeaverArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    SimSpaceWeaver = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.simspaceweaver#SimSpaceWeaver"
      service.name = "SimSpaceWeaver"
      service.version = "2022-10-28"
      service.traits = {"aws.api#service" => {"sdkId" => "SimSpaceWeaver", "arnNamespace" => "simspaceweaver", "cloudFormationName" => "SimSpaceWeaver", "endpointPrefix" => "simspaceweaver", "cloudTrailEventSource" => "simspaceweaver.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "simspaceweaver"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS SimSpace Weaver"}
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a snapshot", "smithy.api#http" => {"method" => "POST", "uri" => "/createsnapshot", "code" => 200}}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete an app", "smithy.api#http" => {"method" => "DELETE", "uri" => "/deleteapp", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_simulation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#DeleteSimulation"
        operation.name = "DeleteSimulation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSimulationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a simulation", "smithy.api#http" => {"method" => "DELETE", "uri" => "/deletesimulation", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#DescribeApp"
        operation.name = "DescribeApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to describe an app", "smithy.api#http" => {"method" => "GET", "uri" => "/describeapp", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_simulation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#DescribeSimulation"
        operation.name = "DescribeSimulation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSimulationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to describe a simulation", "smithy.api#http" => {"method" => "GET", "uri" => "/describesimulation", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#ListApps"
        operation.name = "ListApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list apps", "smithy.api#http" => {"method" => "GET", "uri" => "/listapps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApps.new
      end)
      service.add_operation(:list_simulations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#ListSimulations"
        operation.name = "ListSimulations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSimulationsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list simulations", "smithy.api#http" => {"method" => "GET", "uri" => "/listsimulations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSimulations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for a resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StartApp"
        operation.name = "StartApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start an app", "smithy.api#http" => {"method" => "POST", "uri" => "/startapp", "code" => 200}}
      end)
      service.add_operation(:start_clock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StartClock"
        operation.name = "StartClock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartClockOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartClockOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a simulation clock", "smithy.api#http" => {"method" => "POST", "uri" => "/startclock", "code" => 200}}
      end)
      service.add_operation(:start_simulation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StartSimulation"
        operation.name = "StartSimulation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSimulationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a simulation", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/startsimulation", "code" => 200}}
      end)
      service.add_operation(:stop_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StopApp"
        operation.name = "StopApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to stop an app", "smithy.api#http" => {"method" => "POST", "uri" => "/stopapp", "code" => 200}}
      end)
      service.add_operation(:stop_clock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StopClock"
        operation.name = "StopClock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopClockOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopClockOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to stop a simulation clock", "smithy.api#http" => {"method" => "POST", "uri" => "/stopclock", "code" => 200}}
      end)
      service.add_operation(:stop_simulation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#StopSimulation"
        operation.name = "StopSimulation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSimulationOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSimulationOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to stop a simulation", "smithy.api#http" => {"method" => "POST", "uri" => "/stopsimulation", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to tag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.simspaceweaver#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to untag a resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
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
