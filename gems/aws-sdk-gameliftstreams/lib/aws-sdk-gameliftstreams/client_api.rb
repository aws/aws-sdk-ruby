# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GameLiftStreams
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddStreamGroupLocationsInput = Shapes::StructureShape.new(name: 'AddStreamGroupLocationsInput')
    AddStreamGroupLocationsOutput = Shapes::StructureShape.new(name: 'AddStreamGroupLocationsOutput')
    AlwaysOnCapacity = Shapes::IntegerShape.new(name: 'AlwaysOnCapacity')
    ApplicationLogOutputUri = Shapes::StringShape.new(name: 'ApplicationLogOutputUri')
    ApplicationSourceUri = Shapes::StringShape.new(name: 'ApplicationSourceUri')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationStatusReason = Shapes::StringShape.new(name: 'ApplicationStatusReason')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationSummaryList = Shapes::ListShape.new(name: 'ApplicationSummaryList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssociateApplicationsInput = Shapes::StructureShape.new(name: 'AssociateApplicationsInput')
    AssociateApplicationsOutput = Shapes::StructureShape.new(name: 'AssociateApplicationsOutput')
    CapacityValue = Shapes::IntegerShape.new(name: 'CapacityValue')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionTimeoutSeconds = Shapes::IntegerShape.new(name: 'ConnectionTimeoutSeconds')
    CreateApplicationInput = Shapes::StructureShape.new(name: 'CreateApplicationInput')
    CreateApplicationOutput = Shapes::StructureShape.new(name: 'CreateApplicationOutput')
    CreateStreamGroupInput = Shapes::StructureShape.new(name: 'CreateStreamGroupInput')
    CreateStreamGroupOutput = Shapes::StructureShape.new(name: 'CreateStreamGroupOutput')
    CreateStreamSessionConnectionInput = Shapes::StructureShape.new(name: 'CreateStreamSessionConnectionInput')
    CreateStreamSessionConnectionOutput = Shapes::StructureShape.new(name: 'CreateStreamSessionConnectionOutput')
    DefaultApplication = Shapes::StructureShape.new(name: 'DefaultApplication')
    DeleteApplicationInput = Shapes::StructureShape.new(name: 'DeleteApplicationInput')
    DeleteStreamGroupInput = Shapes::StructureShape.new(name: 'DeleteStreamGroupInput')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateApplicationsInput = Shapes::StructureShape.new(name: 'DisassociateApplicationsInput')
    DisassociateApplicationsOutput = Shapes::StructureShape.new(name: 'DisassociateApplicationsOutput')
    EnvironmentVariables = Shapes::MapShape.new(name: 'EnvironmentVariables')
    EnvironmentVariablesKeyString = Shapes::StringShape.new(name: 'EnvironmentVariablesKeyString')
    EnvironmentVariablesValueString = Shapes::StringShape.new(name: 'EnvironmentVariablesValueString')
    ExecutablePath = Shapes::StringShape.new(name: 'ExecutablePath')
    ExportFilesMetadata = Shapes::StructureShape.new(name: 'ExportFilesMetadata')
    ExportFilesReason = Shapes::StringShape.new(name: 'ExportFilesReason')
    ExportFilesStatus = Shapes::StringShape.new(name: 'ExportFilesStatus')
    ExportStreamSessionFilesInput = Shapes::StructureShape.new(name: 'ExportStreamSessionFilesInput')
    ExportStreamSessionFilesOutput = Shapes::StructureShape.new(name: 'ExportStreamSessionFilesOutput')
    FileLocationUri = Shapes::StringShape.new(name: 'FileLocationUri')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    FilePaths = Shapes::ListShape.new(name: 'FilePaths')
    GameLaunchArgList = Shapes::ListShape.new(name: 'GameLaunchArgList')
    GetApplicationInput = Shapes::StructureShape.new(name: 'GetApplicationInput')
    GetApplicationOutput = Shapes::StructureShape.new(name: 'GetApplicationOutput')
    GetStreamGroupInput = Shapes::StructureShape.new(name: 'GetStreamGroupInput')
    GetStreamGroupOutput = Shapes::StructureShape.new(name: 'GetStreamGroupOutput')
    GetStreamSessionInput = Shapes::StructureShape.new(name: 'GetStreamSessionInput')
    GetStreamSessionOutput = Shapes::StructureShape.new(name: 'GetStreamSessionOutput')
    Id = Shapes::StringShape.new(name: 'Id')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Identifiers = Shapes::ListShape.new(name: 'Identifiers')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListApplicationsInput = Shapes::StructureShape.new(name: 'ListApplicationsInput')
    ListApplicationsOutput = Shapes::StructureShape.new(name: 'ListApplicationsOutput')
    ListStreamGroupsInput = Shapes::StructureShape.new(name: 'ListStreamGroupsInput')
    ListStreamGroupsOutput = Shapes::StructureShape.new(name: 'ListStreamGroupsOutput')
    ListStreamSessionsByAccountInput = Shapes::StructureShape.new(name: 'ListStreamSessionsByAccountInput')
    ListStreamSessionsByAccountOutput = Shapes::StructureShape.new(name: 'ListStreamSessionsByAccountOutput')
    ListStreamSessionsInput = Shapes::StructureShape.new(name: 'ListStreamSessionsInput')
    ListStreamSessionsOutput = Shapes::StructureShape.new(name: 'ListStreamSessionsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocationConfiguration = Shapes::StructureShape.new(name: 'LocationConfiguration')
    LocationConfigurations = Shapes::ListShape.new(name: 'LocationConfigurations')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    LocationName = Shapes::StringShape.new(name: 'LocationName')
    LocationState = Shapes::StructureShape.new(name: 'LocationState')
    LocationStates = Shapes::ListShape.new(name: 'LocationStates')
    LocationsList = Shapes::ListShape.new(name: 'LocationsList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OnDemandCapacity = Shapes::IntegerShape.new(name: 'OnDemandCapacity')
    OutputUri = Shapes::StringShape.new(name: 'OutputUri')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    RemoveStreamGroupLocationsInput = Shapes::StructureShape.new(name: 'RemoveStreamGroupLocationsInput')
    ReplicationStatus = Shapes::StructureShape.new(name: 'ReplicationStatus')
    ReplicationStatusType = Shapes::StringShape.new(name: 'ReplicationStatusType')
    ReplicationStatuses = Shapes::ListShape.new(name: 'ReplicationStatuses')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuntimeEnvironment = Shapes::StructureShape.new(name: 'RuntimeEnvironment')
    RuntimeEnvironmentType = Shapes::StringShape.new(name: 'RuntimeEnvironmentType')
    RuntimeEnvironmentVersion = Shapes::StringShape.new(name: 'RuntimeEnvironmentVersion')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionLengthSeconds = Shapes::IntegerShape.new(name: 'SessionLengthSeconds')
    SignalRequest = Shapes::StringShape.new(name: 'SignalRequest')
    SignalResponse = Shapes::StringShape.new(name: 'SignalResponse')
    StartStreamSessionInput = Shapes::StructureShape.new(name: 'StartStreamSessionInput')
    StartStreamSessionOutput = Shapes::StructureShape.new(name: 'StartStreamSessionOutput')
    StreamClass = Shapes::StringShape.new(name: 'StreamClass')
    StreamGroupLocationStatus = Shapes::StringShape.new(name: 'StreamGroupLocationStatus')
    StreamGroupStatus = Shapes::StringShape.new(name: 'StreamGroupStatus')
    StreamGroupStatusReason = Shapes::StringShape.new(name: 'StreamGroupStatusReason')
    StreamGroupSummary = Shapes::StructureShape.new(name: 'StreamGroupSummary')
    StreamGroupSummaryList = Shapes::ListShape.new(name: 'StreamGroupSummaryList')
    StreamSessionStatus = Shapes::StringShape.new(name: 'StreamSessionStatus')
    StreamSessionStatusReason = Shapes::StringShape.new(name: 'StreamSessionStatusReason')
    StreamSessionSummary = Shapes::StructureShape.new(name: 'StreamSessionSummary')
    StreamSessionSummaryList = Shapes::ListShape.new(name: 'StreamSessionSummaryList')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TerminateStreamSessionInput = Shapes::StructureShape.new(name: 'TerminateStreamSessionInput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationInput = Shapes::StructureShape.new(name: 'UpdateApplicationInput')
    UpdateApplicationOutput = Shapes::StructureShape.new(name: 'UpdateApplicationOutput')
    UpdateStreamGroupInput = Shapes::StructureShape.new(name: 'UpdateStreamGroupInput')
    UpdateStreamGroupOutput = Shapes::StructureShape.new(name: 'UpdateStreamGroupOutput')
    UserId = Shapes::StringShape.new(name: 'UserId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WebSdkProtocolUrl = Shapes::StringShape.new(name: 'WebSdkProtocolUrl')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddStreamGroupLocationsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    AddStreamGroupLocationsInput.add_member(:location_configurations, Shapes::ShapeRef.new(shape: LocationConfigurations, required: true, location_name: "LocationConfigurations"))
    AddStreamGroupLocationsInput.struct_class = Types::AddStreamGroupLocationsInput

    AddStreamGroupLocationsOutput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Identifier"))
    AddStreamGroupLocationsOutput.add_member(:locations, Shapes::ShapeRef.new(shape: LocationStates, required: true, location_name: "Locations"))
    AddStreamGroupLocationsOutput.struct_class = Types::AddStreamGroupLocationsOutput

    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ApplicationSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ApplicationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    ApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ApplicationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    ApplicationSummary.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: "RuntimeEnvironment"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssociateApplicationsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    AssociateApplicationsInput.add_member(:application_identifiers, Shapes::ShapeRef.new(shape: Identifiers, required: true, location_name: "ApplicationIdentifiers"))
    AssociateApplicationsInput.struct_class = Types::AssociateApplicationsInput

    AssociateApplicationsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssociateApplicationsOutput.add_member(:application_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "ApplicationArns"))
    AssociateApplicationsOutput.struct_class = Types::AssociateApplicationsOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    CreateApplicationInput.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, required: true, location_name: "RuntimeEnvironment"))
    CreateApplicationInput.add_member(:executable_path, Shapes::ShapeRef.new(shape: ExecutablePath, required: true, location_name: "ExecutablePath"))
    CreateApplicationInput.add_member(:application_source_uri, Shapes::ShapeRef.new(shape: ApplicationSourceUri, required: true, location_name: "ApplicationSourceUri"))
    CreateApplicationInput.add_member(:application_log_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "ApplicationLogPaths"))
    CreateApplicationInput.add_member(:application_log_output_uri, Shapes::ShapeRef.new(shape: ApplicationLogOutputUri, location_name: "ApplicationLogOutputUri"))
    CreateApplicationInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApplicationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateApplicationInput.struct_class = Types::CreateApplicationInput

    CreateApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    CreateApplicationOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationOutput.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: "RuntimeEnvironment"))
    CreateApplicationOutput.add_member(:executable_path, Shapes::ShapeRef.new(shape: ExecutablePath, location_name: "ExecutablePath"))
    CreateApplicationOutput.add_member(:application_log_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "ApplicationLogPaths"))
    CreateApplicationOutput.add_member(:application_log_output_uri, Shapes::ShapeRef.new(shape: ApplicationLogOutputUri, location_name: "ApplicationLogOutputUri"))
    CreateApplicationOutput.add_member(:application_source_uri, Shapes::ShapeRef.new(shape: ApplicationSourceUri, location_name: "ApplicationSourceUri"))
    CreateApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateApplicationOutput.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    CreateApplicationOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: ApplicationStatusReason, location_name: "StatusReason"))
    CreateApplicationOutput.add_member(:replication_statuses, Shapes::ShapeRef.new(shape: ReplicationStatuses, location_name: "ReplicationStatuses"))
    CreateApplicationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateApplicationOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    CreateApplicationOutput.add_member(:associated_stream_groups, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedStreamGroups"))
    CreateApplicationOutput.struct_class = Types::CreateApplicationOutput

    CreateStreamGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    CreateStreamGroupInput.add_member(:stream_class, Shapes::ShapeRef.new(shape: StreamClass, required: true, location_name: "StreamClass"))
    CreateStreamGroupInput.add_member(:default_application_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "DefaultApplicationIdentifier"))
    CreateStreamGroupInput.add_member(:location_configurations, Shapes::ShapeRef.new(shape: LocationConfigurations, location_name: "LocationConfigurations"))
    CreateStreamGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateStreamGroupInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateStreamGroupInput.struct_class = Types::CreateStreamGroupInput

    CreateStreamGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    CreateStreamGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateStreamGroupOutput.add_member(:default_application, Shapes::ShapeRef.new(shape: DefaultApplication, location_name: "DefaultApplication"))
    CreateStreamGroupOutput.add_member(:location_states, Shapes::ShapeRef.new(shape: LocationStates, location_name: "LocationStates"))
    CreateStreamGroupOutput.add_member(:stream_class, Shapes::ShapeRef.new(shape: StreamClass, location_name: "StreamClass"))
    CreateStreamGroupOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    CreateStreamGroupOutput.add_member(:status, Shapes::ShapeRef.new(shape: StreamGroupStatus, location_name: "Status"))
    CreateStreamGroupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StreamGroupStatusReason, location_name: "StatusReason"))
    CreateStreamGroupOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    CreateStreamGroupOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    CreateStreamGroupOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    CreateStreamGroupOutput.add_member(:associated_applications, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedApplications"))
    CreateStreamGroupOutput.struct_class = Types::CreateStreamGroupOutput

    CreateStreamSessionConnectionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateStreamSessionConnectionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    CreateStreamSessionConnectionInput.add_member(:stream_session_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "StreamSessionIdentifier"))
    CreateStreamSessionConnectionInput.add_member(:signal_request, Shapes::ShapeRef.new(shape: SignalRequest, required: true, location_name: "SignalRequest"))
    CreateStreamSessionConnectionInput.struct_class = Types::CreateStreamSessionConnectionInput

    CreateStreamSessionConnectionOutput.add_member(:signal_response, Shapes::ShapeRef.new(shape: SignalResponse, location_name: "SignalResponse"))
    CreateStreamSessionConnectionOutput.struct_class = Types::CreateStreamSessionConnectionOutput

    DefaultApplication.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    DefaultApplication.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DefaultApplication.struct_class = Types::DefaultApplication

    DeleteApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteApplicationInput.struct_class = Types::DeleteApplicationInput

    DeleteStreamGroupInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteStreamGroupInput.struct_class = Types::DeleteStreamGroupInput

    DisassociateApplicationsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    DisassociateApplicationsInput.add_member(:application_identifiers, Shapes::ShapeRef.new(shape: Identifiers, required: true, location_name: "ApplicationIdentifiers"))
    DisassociateApplicationsInput.struct_class = Types::DisassociateApplicationsInput

    DisassociateApplicationsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DisassociateApplicationsOutput.add_member(:application_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "ApplicationArns"))
    DisassociateApplicationsOutput.struct_class = Types::DisassociateApplicationsOutput

    EnvironmentVariables.key = Shapes::ShapeRef.new(shape: EnvironmentVariablesKeyString)
    EnvironmentVariables.value = Shapes::ShapeRef.new(shape: EnvironmentVariablesValueString)

    ExportFilesMetadata.add_member(:status, Shapes::ShapeRef.new(shape: ExportFilesStatus, location_name: "Status"))
    ExportFilesMetadata.add_member(:status_reason, Shapes::ShapeRef.new(shape: ExportFilesReason, location_name: "StatusReason"))
    ExportFilesMetadata.add_member(:output_uri, Shapes::ShapeRef.new(shape: OutputUri, location_name: "OutputUri"))
    ExportFilesMetadata.struct_class = Types::ExportFilesMetadata

    ExportStreamSessionFilesInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    ExportStreamSessionFilesInput.add_member(:stream_session_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "StreamSessionIdentifier"))
    ExportStreamSessionFilesInput.add_member(:output_uri, Shapes::ShapeRef.new(shape: OutputUri, required: true, location_name: "OutputUri"))
    ExportStreamSessionFilesInput.struct_class = Types::ExportStreamSessionFilesInput

    ExportStreamSessionFilesOutput.struct_class = Types::ExportStreamSessionFilesOutput

    FilePaths.member = Shapes::ShapeRef.new(shape: FilePath)

    GameLaunchArgList.member = Shapes::ShapeRef.new(shape: String)

    GetApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetApplicationInput.struct_class = Types::GetApplicationInput

    GetApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    GetApplicationOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetApplicationOutput.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: "RuntimeEnvironment"))
    GetApplicationOutput.add_member(:executable_path, Shapes::ShapeRef.new(shape: ExecutablePath, location_name: "ExecutablePath"))
    GetApplicationOutput.add_member(:application_log_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "ApplicationLogPaths"))
    GetApplicationOutput.add_member(:application_log_output_uri, Shapes::ShapeRef.new(shape: ApplicationLogOutputUri, location_name: "ApplicationLogOutputUri"))
    GetApplicationOutput.add_member(:application_source_uri, Shapes::ShapeRef.new(shape: ApplicationSourceUri, location_name: "ApplicationSourceUri"))
    GetApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetApplicationOutput.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    GetApplicationOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: ApplicationStatusReason, location_name: "StatusReason"))
    GetApplicationOutput.add_member(:replication_statuses, Shapes::ShapeRef.new(shape: ReplicationStatuses, location_name: "ReplicationStatuses"))
    GetApplicationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetApplicationOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    GetApplicationOutput.add_member(:associated_stream_groups, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedStreamGroups"))
    GetApplicationOutput.struct_class = Types::GetApplicationOutput

    GetStreamGroupInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetStreamGroupInput.struct_class = Types::GetStreamGroupInput

    GetStreamGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    GetStreamGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetStreamGroupOutput.add_member(:default_application, Shapes::ShapeRef.new(shape: DefaultApplication, location_name: "DefaultApplication"))
    GetStreamGroupOutput.add_member(:location_states, Shapes::ShapeRef.new(shape: LocationStates, location_name: "LocationStates"))
    GetStreamGroupOutput.add_member(:stream_class, Shapes::ShapeRef.new(shape: StreamClass, location_name: "StreamClass"))
    GetStreamGroupOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    GetStreamGroupOutput.add_member(:status, Shapes::ShapeRef.new(shape: StreamGroupStatus, location_name: "Status"))
    GetStreamGroupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StreamGroupStatusReason, location_name: "StatusReason"))
    GetStreamGroupOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    GetStreamGroupOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetStreamGroupOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    GetStreamGroupOutput.add_member(:associated_applications, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedApplications"))
    GetStreamGroupOutput.struct_class = Types::GetStreamGroupOutput

    GetStreamSessionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    GetStreamSessionInput.add_member(:stream_session_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "StreamSessionIdentifier"))
    GetStreamSessionInput.struct_class = Types::GetStreamSessionInput

    GetStreamSessionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GetStreamSessionOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetStreamSessionOutput.add_member(:stream_group_id, Shapes::ShapeRef.new(shape: Id, location_name: "StreamGroupId"))
    GetStreamSessionOutput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    GetStreamSessionOutput.add_member(:status, Shapes::ShapeRef.new(shape: StreamSessionStatus, location_name: "Status"))
    GetStreamSessionOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StreamSessionStatusReason, location_name: "StatusReason"))
    GetStreamSessionOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    GetStreamSessionOutput.add_member(:location, Shapes::ShapeRef.new(shape: LocationName, location_name: "Location"))
    GetStreamSessionOutput.add_member(:signal_request, Shapes::ShapeRef.new(shape: SignalRequest, location_name: "SignalRequest"))
    GetStreamSessionOutput.add_member(:signal_response, Shapes::ShapeRef.new(shape: SignalResponse, location_name: "SignalResponse"))
    GetStreamSessionOutput.add_member(:connection_timeout_seconds, Shapes::ShapeRef.new(shape: ConnectionTimeoutSeconds, location_name: "ConnectionTimeoutSeconds"))
    GetStreamSessionOutput.add_member(:session_length_seconds, Shapes::ShapeRef.new(shape: SessionLengthSeconds, location_name: "SessionLengthSeconds"))
    GetStreamSessionOutput.add_member(:additional_launch_args, Shapes::ShapeRef.new(shape: GameLaunchArgList, location_name: "AdditionalLaunchArgs"))
    GetStreamSessionOutput.add_member(:additional_environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "AdditionalEnvironmentVariables"))
    GetStreamSessionOutput.add_member(:log_file_location_uri, Shapes::ShapeRef.new(shape: FileLocationUri, location_name: "LogFileLocationUri"))
    GetStreamSessionOutput.add_member(:web_sdk_protocol_url, Shapes::ShapeRef.new(shape: WebSdkProtocolUrl, location_name: "WebSdkProtocolUrl"))
    GetStreamSessionOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    GetStreamSessionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    GetStreamSessionOutput.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationArn"))
    GetStreamSessionOutput.add_member(:export_files_metadata, Shapes::ShapeRef.new(shape: ExportFilesMetadata, location_name: "ExportFilesMetadata"))
    GetStreamSessionOutput.struct_class = Types::GetStreamSessionOutput

    Identifiers.member = Shapes::ShapeRef.new(shape: Identifier)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListApplicationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListApplicationsInput.struct_class = Types::ListApplicationsInput

    ListApplicationsOutput.add_member(:items, Shapes::ShapeRef.new(shape: ApplicationSummaryList, location_name: "Items"))
    ListApplicationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListApplicationsOutput.struct_class = Types::ListApplicationsOutput

    ListStreamGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStreamGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStreamGroupsInput.struct_class = Types::ListStreamGroupsInput

    ListStreamGroupsOutput.add_member(:items, Shapes::ShapeRef.new(shape: StreamGroupSummaryList, location_name: "Items"))
    ListStreamGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamGroupsOutput.struct_class = Types::ListStreamGroupsOutput

    ListStreamSessionsByAccountInput.add_member(:status, Shapes::ShapeRef.new(shape: StreamSessionStatus, location: "querystring", location_name: "Status"))
    ListStreamSessionsByAccountInput.add_member(:export_files_status, Shapes::ShapeRef.new(shape: ExportFilesStatus, location: "querystring", location_name: "ExportFilesStatus"))
    ListStreamSessionsByAccountInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStreamSessionsByAccountInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStreamSessionsByAccountInput.struct_class = Types::ListStreamSessionsByAccountInput

    ListStreamSessionsByAccountOutput.add_member(:items, Shapes::ShapeRef.new(shape: StreamSessionSummaryList, location_name: "Items"))
    ListStreamSessionsByAccountOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamSessionsByAccountOutput.struct_class = Types::ListStreamSessionsByAccountOutput

    ListStreamSessionsInput.add_member(:status, Shapes::ShapeRef.new(shape: StreamSessionStatus, location: "querystring", location_name: "Status"))
    ListStreamSessionsInput.add_member(:export_files_status, Shapes::ShapeRef.new(shape: ExportFilesStatus, location: "querystring", location_name: "ExportFilesStatus"))
    ListStreamSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStreamSessionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStreamSessionsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    ListStreamSessionsInput.struct_class = Types::ListStreamSessionsInput

    ListStreamSessionsOutput.add_member(:items, Shapes::ShapeRef.new(shape: StreamSessionSummaryList, location_name: "Items"))
    ListStreamSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamSessionsOutput.struct_class = Types::ListStreamSessionsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LocationConfiguration.add_member(:location_name, Shapes::ShapeRef.new(shape: LocationName, required: true, location_name: "LocationName"))
    LocationConfiguration.add_member(:always_on_capacity, Shapes::ShapeRef.new(shape: AlwaysOnCapacity, location_name: "AlwaysOnCapacity"))
    LocationConfiguration.add_member(:on_demand_capacity, Shapes::ShapeRef.new(shape: OnDemandCapacity, location_name: "OnDemandCapacity"))
    LocationConfiguration.struct_class = Types::LocationConfiguration

    LocationConfigurations.member = Shapes::ShapeRef.new(shape: LocationConfiguration)

    LocationList.member = Shapes::ShapeRef.new(shape: LocationName)

    LocationState.add_member(:location_name, Shapes::ShapeRef.new(shape: LocationName, location_name: "LocationName"))
    LocationState.add_member(:status, Shapes::ShapeRef.new(shape: StreamGroupLocationStatus, location_name: "Status"))
    LocationState.add_member(:always_on_capacity, Shapes::ShapeRef.new(shape: AlwaysOnCapacity, location_name: "AlwaysOnCapacity"))
    LocationState.add_member(:on_demand_capacity, Shapes::ShapeRef.new(shape: OnDemandCapacity, location_name: "OnDemandCapacity"))
    LocationState.add_member(:requested_capacity, Shapes::ShapeRef.new(shape: CapacityValue, location_name: "RequestedCapacity"))
    LocationState.add_member(:allocated_capacity, Shapes::ShapeRef.new(shape: CapacityValue, location_name: "AllocatedCapacity"))
    LocationState.add_member(:idle_capacity, Shapes::ShapeRef.new(shape: CapacityValue, location_name: "IdleCapacity"))
    LocationState.struct_class = Types::LocationState

    LocationStates.member = Shapes::ShapeRef.new(shape: LocationState)

    LocationsList.member = Shapes::ShapeRef.new(shape: String)

    RemoveStreamGroupLocationsInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    RemoveStreamGroupLocationsInput.add_member(:locations, Shapes::ShapeRef.new(shape: LocationsList, required: true, location: "querystring", location_name: "locations"))
    RemoveStreamGroupLocationsInput.struct_class = Types::RemoveStreamGroupLocationsInput

    ReplicationStatus.add_member(:location, Shapes::ShapeRef.new(shape: LocationName, location_name: "Location"))
    ReplicationStatus.add_member(:status, Shapes::ShapeRef.new(shape: ReplicationStatusType, location_name: "Status"))
    ReplicationStatus.struct_class = Types::ReplicationStatus

    ReplicationStatuses.member = Shapes::ShapeRef.new(shape: ReplicationStatus)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuntimeEnvironment.add_member(:type, Shapes::ShapeRef.new(shape: RuntimeEnvironmentType, required: true, location_name: "Type"))
    RuntimeEnvironment.add_member(:version, Shapes::ShapeRef.new(shape: RuntimeEnvironmentVersion, required: true, location_name: "Version"))
    RuntimeEnvironment.struct_class = Types::RuntimeEnvironment

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartStreamSessionInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartStreamSessionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartStreamSessionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    StartStreamSessionInput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    StartStreamSessionInput.add_member(:signal_request, Shapes::ShapeRef.new(shape: SignalRequest, required: true, location_name: "SignalRequest"))
    StartStreamSessionInput.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ApplicationIdentifier"))
    StartStreamSessionInput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    StartStreamSessionInput.add_member(:locations, Shapes::ShapeRef.new(shape: LocationList, location_name: "Locations"))
    StartStreamSessionInput.add_member(:connection_timeout_seconds, Shapes::ShapeRef.new(shape: ConnectionTimeoutSeconds, location_name: "ConnectionTimeoutSeconds"))
    StartStreamSessionInput.add_member(:session_length_seconds, Shapes::ShapeRef.new(shape: SessionLengthSeconds, location_name: "SessionLengthSeconds"))
    StartStreamSessionInput.add_member(:additional_launch_args, Shapes::ShapeRef.new(shape: GameLaunchArgList, location_name: "AdditionalLaunchArgs"))
    StartStreamSessionInput.add_member(:additional_environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "AdditionalEnvironmentVariables"))
    StartStreamSessionInput.struct_class = Types::StartStreamSessionInput

    StartStreamSessionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    StartStreamSessionOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartStreamSessionOutput.add_member(:stream_group_id, Shapes::ShapeRef.new(shape: Id, location_name: "StreamGroupId"))
    StartStreamSessionOutput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    StartStreamSessionOutput.add_member(:status, Shapes::ShapeRef.new(shape: StreamSessionStatus, location_name: "Status"))
    StartStreamSessionOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StreamSessionStatusReason, location_name: "StatusReason"))
    StartStreamSessionOutput.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    StartStreamSessionOutput.add_member(:location, Shapes::ShapeRef.new(shape: LocationName, location_name: "Location"))
    StartStreamSessionOutput.add_member(:signal_request, Shapes::ShapeRef.new(shape: SignalRequest, location_name: "SignalRequest"))
    StartStreamSessionOutput.add_member(:signal_response, Shapes::ShapeRef.new(shape: SignalResponse, location_name: "SignalResponse"))
    StartStreamSessionOutput.add_member(:connection_timeout_seconds, Shapes::ShapeRef.new(shape: ConnectionTimeoutSeconds, location_name: "ConnectionTimeoutSeconds"))
    StartStreamSessionOutput.add_member(:session_length_seconds, Shapes::ShapeRef.new(shape: SessionLengthSeconds, location_name: "SessionLengthSeconds"))
    StartStreamSessionOutput.add_member(:additional_launch_args, Shapes::ShapeRef.new(shape: GameLaunchArgList, location_name: "AdditionalLaunchArgs"))
    StartStreamSessionOutput.add_member(:additional_environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "AdditionalEnvironmentVariables"))
    StartStreamSessionOutput.add_member(:log_file_location_uri, Shapes::ShapeRef.new(shape: FileLocationUri, location_name: "LogFileLocationUri"))
    StartStreamSessionOutput.add_member(:web_sdk_protocol_url, Shapes::ShapeRef.new(shape: WebSdkProtocolUrl, location_name: "WebSdkProtocolUrl"))
    StartStreamSessionOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    StartStreamSessionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    StartStreamSessionOutput.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationArn"))
    StartStreamSessionOutput.add_member(:export_files_metadata, Shapes::ShapeRef.new(shape: ExportFilesMetadata, location_name: "ExportFilesMetadata"))
    StartStreamSessionOutput.struct_class = Types::StartStreamSessionOutput

    StreamGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    StreamGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    StreamGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StreamGroupSummary.add_member(:default_application, Shapes::ShapeRef.new(shape: DefaultApplication, location_name: "DefaultApplication"))
    StreamGroupSummary.add_member(:stream_class, Shapes::ShapeRef.new(shape: StreamClass, location_name: "StreamClass"))
    StreamGroupSummary.add_member(:status, Shapes::ShapeRef.new(shape: StreamGroupStatus, location_name: "Status"))
    StreamGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    StreamGroupSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    StreamGroupSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    StreamGroupSummary.struct_class = Types::StreamGroupSummary

    StreamGroupSummaryList.member = Shapes::ShapeRef.new(shape: StreamGroupSummary)

    StreamSessionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    StreamSessionSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    StreamSessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: StreamSessionStatus, location_name: "Status"))
    StreamSessionSummary.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    StreamSessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    StreamSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    StreamSessionSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ApplicationArn"))
    StreamSessionSummary.add_member(:export_files_metadata, Shapes::ShapeRef.new(shape: ExportFilesMetadata, location_name: "ExportFilesMetadata"))
    StreamSessionSummary.add_member(:location, Shapes::ShapeRef.new(shape: LocationName, location_name: "Location"))
    StreamSessionSummary.struct_class = Types::StreamSessionSummary

    StreamSessionSummaryList.member = Shapes::ShapeRef.new(shape: StreamSessionSummary)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TerminateStreamSessionInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    TerminateStreamSessionInput.add_member(:stream_session_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "StreamSessionIdentifier"))
    TerminateStreamSessionInput.struct_class = Types::TerminateStreamSessionInput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateApplicationInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationInput.add_member(:application_log_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "ApplicationLogPaths"))
    UpdateApplicationInput.add_member(:application_log_output_uri, Shapes::ShapeRef.new(shape: ApplicationLogOutputUri, location_name: "ApplicationLogOutputUri"))
    UpdateApplicationInput.struct_class = Types::UpdateApplicationInput

    UpdateApplicationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    UpdateApplicationOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationOutput.add_member(:runtime_environment, Shapes::ShapeRef.new(shape: RuntimeEnvironment, location_name: "RuntimeEnvironment"))
    UpdateApplicationOutput.add_member(:executable_path, Shapes::ShapeRef.new(shape: ExecutablePath, location_name: "ExecutablePath"))
    UpdateApplicationOutput.add_member(:application_log_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "ApplicationLogPaths"))
    UpdateApplicationOutput.add_member(:application_log_output_uri, Shapes::ShapeRef.new(shape: ApplicationLogOutputUri, location_name: "ApplicationLogOutputUri"))
    UpdateApplicationOutput.add_member(:application_source_uri, Shapes::ShapeRef.new(shape: ApplicationSourceUri, location_name: "ApplicationSourceUri"))
    UpdateApplicationOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateApplicationOutput.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "Status"))
    UpdateApplicationOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: ApplicationStatusReason, location_name: "StatusReason"))
    UpdateApplicationOutput.add_member(:replication_statuses, Shapes::ShapeRef.new(shape: ReplicationStatuses, location_name: "ReplicationStatuses"))
    UpdateApplicationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateApplicationOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    UpdateApplicationOutput.add_member(:associated_stream_groups, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedStreamGroups"))
    UpdateApplicationOutput.struct_class = Types::UpdateApplicationOutput

    UpdateStreamGroupInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateStreamGroupInput.add_member(:location_configurations, Shapes::ShapeRef.new(shape: LocationConfigurations, location_name: "LocationConfigurations"))
    UpdateStreamGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStreamGroupInput.add_member(:default_application_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "DefaultApplicationIdentifier"))
    UpdateStreamGroupInput.struct_class = Types::UpdateStreamGroupInput

    UpdateStreamGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Arn"))
    UpdateStreamGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateStreamGroupOutput.add_member(:default_application, Shapes::ShapeRef.new(shape: DefaultApplication, location_name: "DefaultApplication"))
    UpdateStreamGroupOutput.add_member(:location_states, Shapes::ShapeRef.new(shape: LocationStates, location_name: "LocationStates"))
    UpdateStreamGroupOutput.add_member(:stream_class, Shapes::ShapeRef.new(shape: StreamClass, location_name: "StreamClass"))
    UpdateStreamGroupOutput.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    UpdateStreamGroupOutput.add_member(:status, Shapes::ShapeRef.new(shape: StreamGroupStatus, location_name: "Status"))
    UpdateStreamGroupOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: StreamGroupStatusReason, location_name: "StatusReason"))
    UpdateStreamGroupOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    UpdateStreamGroupOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    UpdateStreamGroupOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    UpdateStreamGroupOutput.add_member(:associated_applications, Shapes::ShapeRef.new(shape: ArnList, location_name: "AssociatedApplications"))
    UpdateStreamGroupOutput.struct_class = Types::UpdateStreamGroupOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "gameliftstreams",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon GameLift Streams",
        "serviceId" => "GameLiftStreams",
        "signatureVersion" => "v4",
        "signingName" => "gameliftstreams",
        "uid" => "gameliftstreams-2018-05-10",
      }

      api.add_operation(:add_stream_group_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddStreamGroupLocations"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups/{Identifier}/locations"
        o.input = Shapes::ShapeRef.new(shape: AddStreamGroupLocationsInput)
        o.output = Shapes::ShapeRef.new(shape: AddStreamGroupLocationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:associate_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApplications"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups/{Identifier}/associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_stream_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamGroup"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_stream_session_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamSessionConnection"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamSessionConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamSessionConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_stream_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/streamgroups/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamGroupInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApplications"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups/{Identifier}/disassociations"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:export_stream_session_files, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportStreamSessionFiles"
        o.http_method = "PUT"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles"
        o.input = Shapes::ShapeRef.new(shape: ExportStreamSessionFilesInput)
        o.output = Shapes::ShapeRef.new(shape: ExportStreamSessionFilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_stream_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamGroup"
        o.http_method = "GET"
        o.http_request_uri = "/streamgroups/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetStreamGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_stream_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamSession"
        o.http_method = "GET"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetStreamSessionInput)
        o.output = Shapes::ShapeRef.new(shape: GetStreamSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stream_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamGroups"
        o.http_method = "GET"
        o.http_request_uri = "/streamgroups"
        o.input = Shapes::ShapeRef.new(shape: ListStreamGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stream_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamSessions"
        o.http_method = "GET"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions"
        o.input = Shapes::ShapeRef.new(shape: ListStreamSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stream_sessions_by_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamSessionsByAccount"
        o.http_method = "GET"
        o.http_request_uri = "/streamsessions"
        o.input = Shapes::ShapeRef.new(shape: ListStreamSessionsByAccountInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamSessionsByAccountOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:remove_stream_group_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveStreamGroupLocations"
        o.http_method = "DELETE"
        o.http_request_uri = "/streamgroups/{Identifier}/locations"
        o.input = Shapes::ShapeRef.new(shape: RemoveStreamGroupLocationsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_stream_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStreamSession"
        o.http_method = "POST"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions"
        o.input = Shapes::ShapeRef.new(shape: StartStreamSessionInput)
        o.output = Shapes::ShapeRef.new(shape: StartStreamSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:terminate_stream_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateStreamSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: TerminateStreamSessionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_stream_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/streamgroups/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
