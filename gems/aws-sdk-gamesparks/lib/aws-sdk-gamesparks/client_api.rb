# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameSparks
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ByteSize = Shapes::IntegerShape.new(name: 'ByteSize')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionIdList = Shapes::ListShape.new(name: 'ConnectionIdList')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    CreateGameRequest = Shapes::StructureShape.new(name: 'CreateGameRequest')
    CreateGameResult = Shapes::StructureShape.new(name: 'CreateGameResult')
    CreateSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSnapshotRequest')
    CreateSnapshotResult = Shapes::StructureShape.new(name: 'CreateSnapshotResult')
    CreateStageRequest = Shapes::StructureShape.new(name: 'CreateStageRequest')
    CreateStageResult = Shapes::StructureShape.new(name: 'CreateStageResult')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteGameRequest = Shapes::StructureShape.new(name: 'DeleteGameRequest')
    DeleteGameResult = Shapes::StructureShape.new(name: 'DeleteGameResult')
    DeleteStageRequest = Shapes::StructureShape.new(name: 'DeleteStageRequest')
    DeleteStageResult = Shapes::StructureShape.new(name: 'DeleteStageResult')
    DeploymentAction = Shapes::StringShape.new(name: 'DeploymentAction')
    DeploymentId = Shapes::StringShape.new(name: 'DeploymentId')
    DeploymentResult = Shapes::StructureShape.new(name: 'DeploymentResult')
    DeploymentState = Shapes::StringShape.new(name: 'DeploymentState')
    DisconnectPlayerRequest = Shapes::StructureShape.new(name: 'DisconnectPlayerRequest')
    DisconnectPlayerResult = Shapes::StructureShape.new(name: 'DisconnectPlayerResult')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExportSnapshotRequest = Shapes::StructureShape.new(name: 'ExportSnapshotRequest')
    ExportSnapshotResult = Shapes::StructureShape.new(name: 'ExportSnapshotResult')
    ExtensionDescription = Shapes::StringShape.new(name: 'ExtensionDescription')
    ExtensionDetails = Shapes::StructureShape.new(name: 'ExtensionDetails')
    ExtensionDetailsList = Shapes::ListShape.new(name: 'ExtensionDetailsList')
    ExtensionName = Shapes::StringShape.new(name: 'ExtensionName')
    ExtensionNamespace = Shapes::StringShape.new(name: 'ExtensionNamespace')
    ExtensionVersion = Shapes::StringShape.new(name: 'ExtensionVersion')
    ExtensionVersionDetails = Shapes::StructureShape.new(name: 'ExtensionVersionDetails')
    ExtensionVersionDetailsList = Shapes::ListShape.new(name: 'ExtensionVersionDetailsList')
    ExtensionVersionSchema = Shapes::StringShape.new(name: 'ExtensionVersionSchema')
    GameConfigurationDetails = Shapes::StructureShape.new(name: 'GameConfigurationDetails')
    GameDescription = Shapes::StringShape.new(name: 'GameDescription')
    GameDetails = Shapes::StructureShape.new(name: 'GameDetails')
    GameKey = Shapes::StringShape.new(name: 'GameKey')
    GameName = Shapes::StringShape.new(name: 'GameName')
    GameSdkVersion = Shapes::StringShape.new(name: 'GameSdkVersion')
    GameState = Shapes::StringShape.new(name: 'GameState')
    GameSummary = Shapes::StructureShape.new(name: 'GameSummary')
    GameSummaryList = Shapes::ListShape.new(name: 'GameSummaryList')
    GameTerminationProtection = Shapes::BooleanShape.new(name: 'GameTerminationProtection')
    GeneratedCodeJobDescription = Shapes::StringShape.new(name: 'GeneratedCodeJobDescription')
    GeneratedCodeJobDetails = Shapes::StructureShape.new(name: 'GeneratedCodeJobDetails')
    GeneratedCodeJobDetailsList = Shapes::ListShape.new(name: 'GeneratedCodeJobDetailsList')
    GeneratedCodeJobId = Shapes::StringShape.new(name: 'GeneratedCodeJobId')
    GeneratedCodeJobState = Shapes::StringShape.new(name: 'GeneratedCodeJobState')
    Generator = Shapes::StructureShape.new(name: 'Generator')
    GetExtensionRequest = Shapes::StructureShape.new(name: 'GetExtensionRequest')
    GetExtensionResult = Shapes::StructureShape.new(name: 'GetExtensionResult')
    GetExtensionVersionRequest = Shapes::StructureShape.new(name: 'GetExtensionVersionRequest')
    GetExtensionVersionResult = Shapes::StructureShape.new(name: 'GetExtensionVersionResult')
    GetGameConfigurationRequest = Shapes::StructureShape.new(name: 'GetGameConfigurationRequest')
    GetGameConfigurationResult = Shapes::StructureShape.new(name: 'GetGameConfigurationResult')
    GetGameRequest = Shapes::StructureShape.new(name: 'GetGameRequest')
    GetGameResult = Shapes::StructureShape.new(name: 'GetGameResult')
    GetGeneratedCodeJobRequest = Shapes::StructureShape.new(name: 'GetGeneratedCodeJobRequest')
    GetGeneratedCodeJobResult = Shapes::StructureShape.new(name: 'GetGeneratedCodeJobResult')
    GetPlayerConnectionStatusRequest = Shapes::StructureShape.new(name: 'GetPlayerConnectionStatusRequest')
    GetPlayerConnectionStatusResult = Shapes::StructureShape.new(name: 'GetPlayerConnectionStatusResult')
    GetSnapshotRequest = Shapes::StructureShape.new(name: 'GetSnapshotRequest')
    GetSnapshotResult = Shapes::StructureShape.new(name: 'GetSnapshotResult')
    GetStageDeploymentRequest = Shapes::StructureShape.new(name: 'GetStageDeploymentRequest')
    GetStageDeploymentResult = Shapes::StructureShape.new(name: 'GetStageDeploymentResult')
    GetStageRequest = Shapes::StructureShape.new(name: 'GetStageRequest')
    GetStageResult = Shapes::StructureShape.new(name: 'GetStageResult')
    ImportGameConfigurationRequest = Shapes::StructureShape.new(name: 'ImportGameConfigurationRequest')
    ImportGameConfigurationResult = Shapes::StructureShape.new(name: 'ImportGameConfigurationResult')
    ImportGameConfigurationSource = Shapes::StructureShape.new(name: 'ImportGameConfigurationSource')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Language = Shapes::StringShape.new(name: 'Language')
    ListExtensionVersionsRequest = Shapes::StructureShape.new(name: 'ListExtensionVersionsRequest')
    ListExtensionVersionsResult = Shapes::StructureShape.new(name: 'ListExtensionVersionsResult')
    ListExtensionsRequest = Shapes::StructureShape.new(name: 'ListExtensionsRequest')
    ListExtensionsResult = Shapes::StructureShape.new(name: 'ListExtensionsResult')
    ListGamesRequest = Shapes::StructureShape.new(name: 'ListGamesRequest')
    ListGamesResult = Shapes::StructureShape.new(name: 'ListGamesResult')
    ListGeneratedCodeJobsRequest = Shapes::StructureShape.new(name: 'ListGeneratedCodeJobsRequest')
    ListGeneratedCodeJobsResult = Shapes::StructureShape.new(name: 'ListGeneratedCodeJobsResult')
    ListSnapshotsRequest = Shapes::StructureShape.new(name: 'ListSnapshotsRequest')
    ListSnapshotsResult = Shapes::StructureShape.new(name: 'ListSnapshotsResult')
    ListStageDeploymentsRequest = Shapes::StructureShape.new(name: 'ListStageDeploymentsRequest')
    ListStageDeploymentsResult = Shapes::StructureShape.new(name: 'ListStageDeploymentsResult')
    ListStagesRequest = Shapes::StructureShape.new(name: 'ListStagesRequest')
    ListStagesResult = Shapes::StructureShape.new(name: 'ListStagesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operation = Shapes::StringShape.new(name: 'Operation')
    Path = Shapes::StringShape.new(name: 'Path')
    PlayerId = Shapes::StringShape.new(name: 'PlayerId')
    RawGameConfigurationData = Shapes::BlobShape.new(name: 'RawGameConfigurationData')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultCode = Shapes::StringShape.new(name: 'ResultCode')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3PresignedUrl = Shapes::StringShape.new(name: 'S3PresignedUrl')
    Section = Shapes::StructureShape.new(name: 'Section')
    SectionList = Shapes::ListShape.new(name: 'SectionList')
    SectionModification = Shapes::StructureShape.new(name: 'SectionModification')
    SectionModificationList = Shapes::ListShape.new(name: 'SectionModificationList')
    SectionName = Shapes::StringShape.new(name: 'SectionName')
    Sections = Shapes::MapShape.new(name: 'Sections')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnapshotDescription = Shapes::StringShape.new(name: 'SnapshotDescription')
    SnapshotDetails = Shapes::StructureShape.new(name: 'SnapshotDetails')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SnapshotSummary = Shapes::StructureShape.new(name: 'SnapshotSummary')
    SnapshotSummaryList = Shapes::ListShape.new(name: 'SnapshotSummaryList')
    StageDeploymentDetails = Shapes::StructureShape.new(name: 'StageDeploymentDetails')
    StageDeploymentList = Shapes::ListShape.new(name: 'StageDeploymentList')
    StageDeploymentSummary = Shapes::StructureShape.new(name: 'StageDeploymentSummary')
    StageDescription = Shapes::StringShape.new(name: 'StageDescription')
    StageDetails = Shapes::StructureShape.new(name: 'StageDetails')
    StageName = Shapes::StringShape.new(name: 'StageName')
    StageState = Shapes::StringShape.new(name: 'StageState')
    StageSummary = Shapes::StructureShape.new(name: 'StageSummary')
    StageSummaryList = Shapes::ListShape.new(name: 'StageSummaryList')
    StartGeneratedCodeJobRequest = Shapes::StructureShape.new(name: 'StartGeneratedCodeJobRequest')
    StartGeneratedCodeJobResult = Shapes::StructureShape.new(name: 'StartGeneratedCodeJobResult')
    StartStageDeploymentRequest = Shapes::StructureShape.new(name: 'StartStageDeploymentRequest')
    StartStageDeploymentResult = Shapes::StructureShape.new(name: 'StartStageDeploymentResult')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetPlatform = Shapes::StringShape.new(name: 'TargetPlatform')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdateGameConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateGameConfigurationRequest')
    UpdateGameConfigurationResult = Shapes::StructureShape.new(name: 'UpdateGameConfigurationResult')
    UpdateGameRequest = Shapes::StructureShape.new(name: 'UpdateGameRequest')
    UpdateGameResult = Shapes::StructureShape.new(name: 'UpdateGameResult')
    UpdateSnapshotRequest = Shapes::StructureShape.new(name: 'UpdateSnapshotRequest')
    UpdateSnapshotResult = Shapes::StructureShape.new(name: 'UpdateSnapshotResult')
    UpdateStageRequest = Shapes::StructureShape.new(name: 'UpdateStageRequest')
    UpdateStageResult = Shapes::StructureShape.new(name: 'UpdateStageResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Connection.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    Connection.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "Id"))
    Connection.struct_class = Types::Connection

    ConnectionIdList.member = Shapes::ShapeRef.new(shape: ConnectionId)

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateGameRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateGameRequest.add_member(:description, Shapes::ShapeRef.new(shape: GameDescription, location_name: "Description"))
    CreateGameRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location_name: "GameName"))
    CreateGameRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateGameRequest.struct_class = Types::CreateGameRequest

    CreateGameResult.add_member(:game, Shapes::ShapeRef.new(shape: GameDetails, location_name: "Game"))
    CreateGameResult.struct_class = Types::CreateGameResult

    CreateSnapshotRequest.add_member(:description, Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: "Description"))
    CreateSnapshotRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    CreateSnapshotRequest.struct_class = Types::CreateSnapshotRequest

    CreateSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: SnapshotDetails, location_name: "Snapshot"))
    CreateSnapshotResult.struct_class = Types::CreateSnapshotResult

    CreateStageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StageDescription, location_name: "Description"))
    CreateStageRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    CreateStageRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "Role"))
    CreateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location_name: "StageName"))
    CreateStageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateStageRequest.struct_class = Types::CreateStageRequest

    CreateStageResult.add_member(:stage, Shapes::ShapeRef.new(shape: StageDetails, location_name: "Stage"))
    CreateStageResult.struct_class = Types::CreateStageResult

    DeleteGameRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    DeleteGameRequest.struct_class = Types::DeleteGameRequest

    DeleteGameResult.struct_class = Types::DeleteGameResult

    DeleteStageRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    DeleteStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    DeleteStageRequest.struct_class = Types::DeleteStageRequest

    DeleteStageResult.struct_class = Types::DeleteStageResult

    DeploymentResult.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DeploymentResult.add_member(:result_code, Shapes::ShapeRef.new(shape: ResultCode, location_name: "ResultCode"))
    DeploymentResult.struct_class = Types::DeploymentResult

    DisconnectPlayerRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    DisconnectPlayerRequest.add_member(:player_id, Shapes::ShapeRef.new(shape: PlayerId, required: true, location: "uri", location_name: "PlayerId"))
    DisconnectPlayerRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    DisconnectPlayerRequest.struct_class = Types::DisconnectPlayerRequest

    DisconnectPlayerResult.add_member(:disconnect_failures, Shapes::ShapeRef.new(shape: ConnectionIdList, location_name: "DisconnectFailures"))
    DisconnectPlayerResult.add_member(:disconnect_successes, Shapes::ShapeRef.new(shape: ConnectionIdList, location_name: "DisconnectSuccesses"))
    DisconnectPlayerResult.struct_class = Types::DisconnectPlayerResult

    ExportSnapshotRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ExportSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    ExportSnapshotRequest.struct_class = Types::ExportSnapshotRequest

    ExportSnapshotResult.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: "S3Url"))
    ExportSnapshotResult.struct_class = Types::ExportSnapshotResult

    ExtensionDetails.add_member(:description, Shapes::ShapeRef.new(shape: ExtensionDescription, location_name: "Description"))
    ExtensionDetails.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionName, location_name: "Name"))
    ExtensionDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: ExtensionNamespace, location_name: "Namespace"))
    ExtensionDetails.struct_class = Types::ExtensionDetails

    ExtensionDetailsList.member = Shapes::ShapeRef.new(shape: ExtensionDetails)

    ExtensionVersionDetails.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionName, location_name: "Name"))
    ExtensionVersionDetails.add_member(:namespace, Shapes::ShapeRef.new(shape: ExtensionNamespace, location_name: "Namespace"))
    ExtensionVersionDetails.add_member(:schema, Shapes::ShapeRef.new(shape: ExtensionVersionSchema, location_name: "Schema"))
    ExtensionVersionDetails.add_member(:version, Shapes::ShapeRef.new(shape: ExtensionVersion, location_name: "Version"))
    ExtensionVersionDetails.struct_class = Types::ExtensionVersionDetails

    ExtensionVersionDetailsList.member = Shapes::ShapeRef.new(shape: ExtensionVersionDetails)

    GameConfigurationDetails.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    GameConfigurationDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    GameConfigurationDetails.add_member(:sections, Shapes::ShapeRef.new(shape: Sections, location_name: "Sections"))
    GameConfigurationDetails.struct_class = Types::GameConfigurationDetails

    GameDetails.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    GameDetails.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    GameDetails.add_member(:description, Shapes::ShapeRef.new(shape: GameDescription, location_name: "Description"))
    GameDetails.add_member(:enable_termination_protection, Shapes::ShapeRef.new(shape: GameTerminationProtection, location_name: "EnableTerminationProtection"))
    GameDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    GameDetails.add_member(:name, Shapes::ShapeRef.new(shape: GameName, location_name: "Name"))
    GameDetails.add_member(:state, Shapes::ShapeRef.new(shape: GameState, location_name: "State"))
    GameDetails.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GameDetails.struct_class = Types::GameDetails

    GameSummary.add_member(:description, Shapes::ShapeRef.new(shape: GameDescription, location_name: "Description"))
    GameSummary.add_member(:name, Shapes::ShapeRef.new(shape: GameName, location_name: "Name"))
    GameSummary.add_member(:state, Shapes::ShapeRef.new(shape: GameState, location_name: "State"))
    GameSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GameSummary.struct_class = Types::GameSummary

    GameSummaryList.member = Shapes::ShapeRef.new(shape: GameSummary)

    GeneratedCodeJobDetails.add_member(:description, Shapes::ShapeRef.new(shape: GeneratedCodeJobDescription, location_name: "Description"))
    GeneratedCodeJobDetails.add_member(:expiration_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpirationTime"))
    GeneratedCodeJobDetails.add_member(:generated_code_job_id, Shapes::ShapeRef.new(shape: GeneratedCodeJobId, location_name: "GeneratedCodeJobId"))
    GeneratedCodeJobDetails.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: "S3Url"))
    GeneratedCodeJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: GeneratedCodeJobState, location_name: "Status"))
    GeneratedCodeJobDetails.struct_class = Types::GeneratedCodeJobDetails

    GeneratedCodeJobDetailsList.member = Shapes::ShapeRef.new(shape: GeneratedCodeJobDetails)

    Generator.add_member(:game_sdk_version, Shapes::ShapeRef.new(shape: GameSdkVersion, location_name: "GameSdkVersion"))
    Generator.add_member(:language, Shapes::ShapeRef.new(shape: Language, location_name: "Language"))
    Generator.add_member(:target_platform, Shapes::ShapeRef.new(shape: TargetPlatform, location_name: "TargetPlatform"))
    Generator.struct_class = Types::Generator

    GetExtensionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionName, required: true, location: "uri", location_name: "Name"))
    GetExtensionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: ExtensionNamespace, required: true, location: "uri", location_name: "Namespace"))
    GetExtensionRequest.struct_class = Types::GetExtensionRequest

    GetExtensionResult.add_member(:extension, Shapes::ShapeRef.new(shape: ExtensionDetails, location_name: "Extension"))
    GetExtensionResult.struct_class = Types::GetExtensionResult

    GetExtensionVersionRequest.add_member(:extension_version, Shapes::ShapeRef.new(shape: ExtensionVersion, required: true, location: "uri", location_name: "ExtensionVersion"))
    GetExtensionVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionName, required: true, location: "uri", location_name: "Name"))
    GetExtensionVersionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: ExtensionNamespace, required: true, location: "uri", location_name: "Namespace"))
    GetExtensionVersionRequest.struct_class = Types::GetExtensionVersionRequest

    GetExtensionVersionResult.add_member(:extension_version, Shapes::ShapeRef.new(shape: ExtensionVersionDetails, location_name: "ExtensionVersion"))
    GetExtensionVersionResult.struct_class = Types::GetExtensionVersionResult

    GetGameConfigurationRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetGameConfigurationRequest.add_member(:sections, Shapes::ShapeRef.new(shape: SectionList, location: "querystring", location_name: "Sections"))
    GetGameConfigurationRequest.struct_class = Types::GetGameConfigurationRequest

    GetGameConfigurationResult.add_member(:game_configuration, Shapes::ShapeRef.new(shape: GameConfigurationDetails, location_name: "GameConfiguration"))
    GetGameConfigurationResult.struct_class = Types::GetGameConfigurationResult

    GetGameRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetGameRequest.struct_class = Types::GetGameRequest

    GetGameResult.add_member(:game, Shapes::ShapeRef.new(shape: GameDetails, location_name: "Game"))
    GetGameResult.struct_class = Types::GetGameResult

    GetGeneratedCodeJobRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetGeneratedCodeJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: GeneratedCodeJobId, required: true, location: "uri", location_name: "JobId"))
    GetGeneratedCodeJobRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    GetGeneratedCodeJobRequest.struct_class = Types::GetGeneratedCodeJobRequest

    GetGeneratedCodeJobResult.add_member(:generated_code_job, Shapes::ShapeRef.new(shape: GeneratedCodeJobDetails, location_name: "GeneratedCodeJob"))
    GetGeneratedCodeJobResult.struct_class = Types::GetGeneratedCodeJobResult

    GetPlayerConnectionStatusRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetPlayerConnectionStatusRequest.add_member(:player_id, Shapes::ShapeRef.new(shape: PlayerId, required: true, location: "uri", location_name: "PlayerId"))
    GetPlayerConnectionStatusRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    GetPlayerConnectionStatusRequest.struct_class = Types::GetPlayerConnectionStatusRequest

    GetPlayerConnectionStatusResult.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    GetPlayerConnectionStatusResult.struct_class = Types::GetPlayerConnectionStatusResult

    GetSnapshotRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetSnapshotRequest.add_member(:sections, Shapes::ShapeRef.new(shape: SectionList, location: "querystring", location_name: "Sections"))
    GetSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    GetSnapshotRequest.struct_class = Types::GetSnapshotRequest

    GetSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: SnapshotDetails, location_name: "Snapshot"))
    GetSnapshotResult.struct_class = Types::GetSnapshotResult

    GetStageDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location: "querystring", location_name: "DeploymentId"))
    GetStageDeploymentRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetStageDeploymentRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    GetStageDeploymentRequest.struct_class = Types::GetStageDeploymentRequest

    GetStageDeploymentResult.add_member(:stage_deployment, Shapes::ShapeRef.new(shape: StageDeploymentDetails, location_name: "StageDeployment"))
    GetStageDeploymentResult.struct_class = Types::GetStageDeploymentResult

    GetStageRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    GetStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    GetStageRequest.struct_class = Types::GetStageRequest

    GetStageResult.add_member(:stage, Shapes::ShapeRef.new(shape: StageDetails, location_name: "Stage"))
    GetStageResult.struct_class = Types::GetStageResult

    ImportGameConfigurationRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ImportGameConfigurationRequest.add_member(:import_source, Shapes::ShapeRef.new(shape: ImportGameConfigurationSource, required: true, location_name: "ImportSource"))
    ImportGameConfigurationRequest.struct_class = Types::ImportGameConfigurationRequest

    ImportGameConfigurationResult.add_member(:game_configuration, Shapes::ShapeRef.new(shape: GameConfigurationDetails, location_name: "GameConfiguration"))
    ImportGameConfigurationResult.struct_class = Types::ImportGameConfigurationResult

    ImportGameConfigurationSource.add_member(:file, Shapes::ShapeRef.new(shape: RawGameConfigurationData, required: true, location_name: "File"))
    ImportGameConfigurationSource.struct_class = Types::ImportGameConfigurationSource

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListExtensionVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListExtensionVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionName, required: true, location: "uri", location_name: "Name"))
    ListExtensionVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: ExtensionNamespace, required: true, location: "uri", location_name: "Namespace"))
    ListExtensionVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListExtensionVersionsRequest.struct_class = Types::ListExtensionVersionsRequest

    ListExtensionVersionsResult.add_member(:extension_versions, Shapes::ShapeRef.new(shape: ExtensionVersionDetailsList, location_name: "ExtensionVersions"))
    ListExtensionVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExtensionVersionsResult.struct_class = Types::ListExtensionVersionsResult

    ListExtensionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListExtensionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListExtensionsRequest.struct_class = Types::ListExtensionsRequest

    ListExtensionsResult.add_member(:extensions, Shapes::ShapeRef.new(shape: ExtensionDetailsList, location_name: "Extensions"))
    ListExtensionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExtensionsResult.struct_class = Types::ListExtensionsResult

    ListGamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListGamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListGamesRequest.struct_class = Types::ListGamesRequest

    ListGamesResult.add_member(:games, Shapes::ShapeRef.new(shape: GameSummaryList, location_name: "Games"))
    ListGamesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGamesResult.struct_class = Types::ListGamesResult

    ListGeneratedCodeJobsRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ListGeneratedCodeJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListGeneratedCodeJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListGeneratedCodeJobsRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    ListGeneratedCodeJobsRequest.struct_class = Types::ListGeneratedCodeJobsRequest

    ListGeneratedCodeJobsResult.add_member(:generated_code_jobs, Shapes::ShapeRef.new(shape: GeneratedCodeJobDetailsList, location_name: "GeneratedCodeJobs"))
    ListGeneratedCodeJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGeneratedCodeJobsResult.struct_class = Types::ListGeneratedCodeJobsResult

    ListSnapshotsRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ListSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSnapshotsRequest.struct_class = Types::ListSnapshotsRequest

    ListSnapshotsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSnapshotsResult.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotSummaryList, location_name: "Snapshots"))
    ListSnapshotsResult.struct_class = Types::ListSnapshotsResult

    ListStageDeploymentsRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ListStageDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStageDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStageDeploymentsRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    ListStageDeploymentsRequest.struct_class = Types::ListStageDeploymentsRequest

    ListStageDeploymentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStageDeploymentsResult.add_member(:stage_deployments, Shapes::ShapeRef.new(shape: StageDeploymentList, location_name: "StageDeployments"))
    ListStageDeploymentsResult.struct_class = Types::ListStageDeploymentsResult

    ListStagesRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    ListStagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListStagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListStagesRequest.struct_class = Types::ListStagesRequest

    ListStagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStagesResult.add_member(:stages, Shapes::ShapeRef.new(shape: StageSummaryList, location_name: "Stages"))
    ListStagesResult.struct_class = Types::ListStagesResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Section.add_member(:attributes, Shapes::ShapeRef.new(shape: Document, location_name: "Attributes"))
    Section.add_member(:name, Shapes::ShapeRef.new(shape: SectionName, location_name: "Name"))
    Section.add_member(:size, Shapes::ShapeRef.new(shape: ByteSize, location_name: "Size"))
    Section.struct_class = Types::Section

    SectionList.member = Shapes::ShapeRef.new(shape: SectionName)

    SectionModification.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, required: true, location_name: "Operation"))
    SectionModification.add_member(:path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "Path"))
    SectionModification.add_member(:section, Shapes::ShapeRef.new(shape: SectionName, required: true, location_name: "Section"))
    SectionModification.add_member(:value, Shapes::ShapeRef.new(shape: Document, location_name: "Value"))
    SectionModification.struct_class = Types::SectionModification

    SectionModificationList.member = Shapes::ShapeRef.new(shape: SectionModification)

    Sections.key = Shapes::ShapeRef.new(shape: SectionName)
    Sections.value = Shapes::ShapeRef.new(shape: Section)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnapshotDetails.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    SnapshotDetails.add_member(:description, Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: "Description"))
    SnapshotDetails.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "Id"))
    SnapshotDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    SnapshotDetails.add_member(:sections, Shapes::ShapeRef.new(shape: Sections, location_name: "Sections"))
    SnapshotDetails.struct_class = Types::SnapshotDetails

    SnapshotSummary.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    SnapshotSummary.add_member(:description, Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: "Description"))
    SnapshotSummary.add_member(:id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "Id"))
    SnapshotSummary.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    SnapshotSummary.struct_class = Types::SnapshotSummary

    SnapshotSummaryList.member = Shapes::ShapeRef.new(shape: SnapshotSummary)

    StageDeploymentDetails.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    StageDeploymentDetails.add_member(:deployment_action, Shapes::ShapeRef.new(shape: DeploymentAction, location_name: "DeploymentAction"))
    StageDeploymentDetails.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "DeploymentId"))
    StageDeploymentDetails.add_member(:deployment_result, Shapes::ShapeRef.new(shape: DeploymentResult, location_name: "DeploymentResult"))
    StageDeploymentDetails.add_member(:deployment_state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "DeploymentState"))
    StageDeploymentDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    StageDeploymentDetails.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    StageDeploymentDetails.struct_class = Types::StageDeploymentDetails

    StageDeploymentList.member = Shapes::ShapeRef.new(shape: StageDeploymentSummary)

    StageDeploymentSummary.add_member(:deployment_action, Shapes::ShapeRef.new(shape: DeploymentAction, location_name: "DeploymentAction"))
    StageDeploymentSummary.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "DeploymentId"))
    StageDeploymentSummary.add_member(:deployment_result, Shapes::ShapeRef.new(shape: DeploymentResult, location_name: "DeploymentResult"))
    StageDeploymentSummary.add_member(:deployment_state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "DeploymentState"))
    StageDeploymentSummary.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    StageDeploymentSummary.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    StageDeploymentSummary.struct_class = Types::StageDeploymentSummary

    StageDetails.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    StageDetails.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "Created"))
    StageDetails.add_member(:description, Shapes::ShapeRef.new(shape: StageDescription, location_name: "Description"))
    StageDetails.add_member(:game_key, Shapes::ShapeRef.new(shape: GameKey, location_name: "GameKey"))
    StageDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdated"))
    StageDetails.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroup"))
    StageDetails.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "Name"))
    StageDetails.add_member(:role, Shapes::ShapeRef.new(shape: RoleARN, location_name: "Role"))
    StageDetails.add_member(:state, Shapes::ShapeRef.new(shape: StageState, location_name: "State"))
    StageDetails.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StageDetails.struct_class = Types::StageDetails

    StageSummary.add_member(:description, Shapes::ShapeRef.new(shape: StageDescription, location_name: "Description"))
    StageSummary.add_member(:game_key, Shapes::ShapeRef.new(shape: GameKey, location_name: "GameKey"))
    StageSummary.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "Name"))
    StageSummary.add_member(:state, Shapes::ShapeRef.new(shape: StageState, location_name: "State"))
    StageSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StageSummary.struct_class = Types::StageSummary

    StageSummaryList.member = Shapes::ShapeRef.new(shape: StageSummary)

    StartGeneratedCodeJobRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    StartGeneratedCodeJobRequest.add_member(:generator, Shapes::ShapeRef.new(shape: Generator, required: true, location_name: "Generator"))
    StartGeneratedCodeJobRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    StartGeneratedCodeJobRequest.struct_class = Types::StartGeneratedCodeJobRequest

    StartGeneratedCodeJobResult.add_member(:generated_code_job_id, Shapes::ShapeRef.new(shape: GeneratedCodeJobId, location_name: "GeneratedCodeJobId"))
    StartGeneratedCodeJobResult.struct_class = Types::StartGeneratedCodeJobResult

    StartStageDeploymentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    StartStageDeploymentRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    StartStageDeploymentRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    StartStageDeploymentRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    StartStageDeploymentRequest.struct_class = Types::StartStageDeploymentRequest

    StartStageDeploymentResult.add_member(:stage_deployment, Shapes::ShapeRef.new(shape: StageDeploymentDetails, location_name: "StageDeployment"))
    StartStageDeploymentResult.struct_class = Types::StartStageDeploymentResult

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdateGameConfigurationRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    UpdateGameConfigurationRequest.add_member(:modifications, Shapes::ShapeRef.new(shape: SectionModificationList, required: true, location_name: "Modifications"))
    UpdateGameConfigurationRequest.struct_class = Types::UpdateGameConfigurationRequest

    UpdateGameConfigurationResult.add_member(:game_configuration, Shapes::ShapeRef.new(shape: GameConfigurationDetails, location_name: "GameConfiguration"))
    UpdateGameConfigurationResult.struct_class = Types::UpdateGameConfigurationResult

    UpdateGameRequest.add_member(:description, Shapes::ShapeRef.new(shape: GameDescription, location_name: "Description"))
    UpdateGameRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    UpdateGameRequest.struct_class = Types::UpdateGameRequest

    UpdateGameResult.add_member(:game, Shapes::ShapeRef.new(shape: GameDetails, location_name: "Game"))
    UpdateGameResult.struct_class = Types::UpdateGameResult

    UpdateSnapshotRequest.add_member(:description, Shapes::ShapeRef.new(shape: SnapshotDescription, location_name: "Description"))
    UpdateSnapshotRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    UpdateSnapshotRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location: "uri", location_name: "SnapshotId"))
    UpdateSnapshotRequest.struct_class = Types::UpdateSnapshotRequest

    UpdateSnapshotResult.add_member(:snapshot, Shapes::ShapeRef.new(shape: SnapshotDetails, location_name: "Snapshot"))
    UpdateSnapshotResult.struct_class = Types::UpdateSnapshotResult

    UpdateStageRequest.add_member(:description, Shapes::ShapeRef.new(shape: StageDescription, location_name: "Description"))
    UpdateStageRequest.add_member(:game_name, Shapes::ShapeRef.new(shape: GameName, required: true, location: "uri", location_name: "GameName"))
    UpdateStageRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoleARN, location_name: "Role"))
    UpdateStageRequest.add_member(:stage_name, Shapes::ShapeRef.new(shape: StageName, required: true, location: "uri", location_name: "StageName"))
    UpdateStageRequest.struct_class = Types::UpdateStageRequest

    UpdateStageResult.add_member(:stage, Shapes::ShapeRef.new(shape: StageDetails, location_name: "Stage"))
    UpdateStageResult.struct_class = Types::UpdateStageResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-17"

      api.metadata = {
        "apiVersion" => "2021-08-17",
        "endpointPrefix" => "gamesparks",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "GameSparks",
        "serviceId" => "GameSparks",
        "signatureVersion" => "v4",
        "signingName" => "gamesparks",
        "uid" => "gamesparks-2021-08-17",
      }

      api.add_operation(:create_game, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGame"
        o.http_method = "POST"
        o.http_request_uri = "/game"
        o.input = Shapes::ShapeRef.new(shape: CreateGameRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGameResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/game/{GameName}/snapshot"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStage"
        o.http_method = "POST"
        o.http_request_uri = "/game/{GameName}/stage"
        o.input = Shapes::ShapeRef.new(shape: CreateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStageResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_game, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGame"
        o.http_method = "DELETE"
        o.http_request_uri = "/game/{GameName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGameRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGameResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStage"
        o.http_method = "DELETE"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteStageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStageResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disconnect_player, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectPlayer"
        o.http_method = "POST"
        o.http_request_uri = "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/disconnect"
        o.input = Shapes::ShapeRef.new(shape: DisconnectPlayerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectPlayerResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:export_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}/export"
        o.input = Shapes::ShapeRef.new(shape: ExportSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExtension"
        o.http_method = "GET"
        o.http_request_uri = "/extension/{Namespace}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExtensionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_extension_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExtensionVersion"
        o.http_method = "GET"
        o.http_request_uri = "/extension/{Namespace}/{Name}/version/{ExtensionVersion}"
        o.input = Shapes::ShapeRef.new(shape: GetExtensionVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExtensionVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_game, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGame"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}"
        o.input = Shapes::ShapeRef.new(shape: GetGameRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGameResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_game_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGameConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetGameConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGameConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_generated_code_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeneratedCodeJob"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetGeneratedCodeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGeneratedCodeJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_player_connection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlayerConnectionStatus"
        o.http_method = "GET"
        o.http_request_uri = "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/connection"
        o.input = Shapes::ShapeRef.new(shape: GetPlayerConnectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlayerConnectionStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStage"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}"
        o.input = Shapes::ShapeRef.new(shape: GetStageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_stage_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStageDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}/deployment"
        o.input = Shapes::ShapeRef.new(shape: GetStageDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageDeploymentResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:import_game_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportGameConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/game/{GameName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: ImportGameConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportGameConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_extension_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExtensionVersions"
        o.http_method = "GET"
        o.http_request_uri = "/extension/{Namespace}/{Name}/version"
        o.input = Shapes::ShapeRef.new(shape: ListExtensionVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExtensionVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_extensions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExtensions"
        o.http_method = "GET"
        o.http_request_uri = "/extension"
        o.input = Shapes::ShapeRef.new(shape: ListExtensionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExtensionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_games, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGames"
        o.http_method = "GET"
        o.http_request_uri = "/game"
        o.input = Shapes::ShapeRef.new(shape: ListGamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGamesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_generated_code_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGeneratedCodeJobs"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListGeneratedCodeJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGeneratedCodeJobsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/snapshot"
        o.input = Shapes::ShapeRef.new(shape: ListSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stage_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStageDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListStageDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStageDeploymentsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStages"
        o.http_method = "GET"
        o.http_request_uri = "/game/{GameName}/stage"
        o.input = Shapes::ShapeRef.new(shape: ListStagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStagesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_generated_code_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartGeneratedCodeJob"
        o.http_method = "POST"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job"
        o.input = Shapes::ShapeRef.new(shape: StartGeneratedCodeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartGeneratedCodeJobResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_stage_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStageDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}/deployment"
        o.input = Shapes::ShapeRef.new(shape: StartStageDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartStageDeploymentResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_game, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGame"
        o.http_method = "PATCH"
        o.http_request_uri = "/game/{GameName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_game_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/game/{GameName}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSnapshot"
        o.http_method = "PATCH"
        o.http_request_uri = "/game/{GameName}/snapshot/{SnapshotId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStage"
        o.http_method = "PATCH"
        o.http_request_uri = "/game/{GameName}/stage/{StageName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStageResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
