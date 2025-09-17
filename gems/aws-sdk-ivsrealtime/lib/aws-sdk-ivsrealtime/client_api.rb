# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IVSRealTime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AutoParticipantRecordingConfiguration = Shapes::StructureShape.new(name: 'AutoParticipantRecordingConfiguration')
    AutoParticipantRecordingStorageConfigurationArn = Shapes::StringShape.new(name: 'AutoParticipantRecordingStorageConfigurationArn')
    Bitrate = Shapes::IntegerShape.new(name: 'Bitrate')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelDestinationConfiguration = Shapes::StructureShape.new(name: 'ChannelDestinationConfiguration')
    Composition = Shapes::StructureShape.new(name: 'Composition')
    CompositionArn = Shapes::StringShape.new(name: 'CompositionArn')
    CompositionClientToken = Shapes::StringShape.new(name: 'CompositionClientToken')
    CompositionRecordingHlsConfiguration = Shapes::StructureShape.new(name: 'CompositionRecordingHlsConfiguration')
    CompositionRecordingTargetSegmentDurationSeconds = Shapes::IntegerShape.new(name: 'CompositionRecordingTargetSegmentDurationSeconds')
    CompositionState = Shapes::StringShape.new(name: 'CompositionState')
    CompositionSummary = Shapes::StructureShape.new(name: 'CompositionSummary')
    CompositionSummaryList = Shapes::ListShape.new(name: 'CompositionSummaryList')
    CompositionThumbnailConfiguration = Shapes::StructureShape.new(name: 'CompositionThumbnailConfiguration')
    CompositionThumbnailConfigurationList = Shapes::ListShape.new(name: 'CompositionThumbnailConfigurationList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEncoderConfigurationRequest = Shapes::StructureShape.new(name: 'CreateEncoderConfigurationRequest')
    CreateEncoderConfigurationResponse = Shapes::StructureShape.new(name: 'CreateEncoderConfigurationResponse')
    CreateIngestConfigurationRequest = Shapes::StructureShape.new(name: 'CreateIngestConfigurationRequest')
    CreateIngestConfigurationResponse = Shapes::StructureShape.new(name: 'CreateIngestConfigurationResponse')
    CreateParticipantTokenRequest = Shapes::StructureShape.new(name: 'CreateParticipantTokenRequest')
    CreateParticipantTokenResponse = Shapes::StructureShape.new(name: 'CreateParticipantTokenResponse')
    CreateStageRequest = Shapes::StructureShape.new(name: 'CreateStageRequest')
    CreateStageResponse = Shapes::StructureShape.new(name: 'CreateStageResponse')
    CreateStorageConfigurationRequest = Shapes::StructureShape.new(name: 'CreateStorageConfigurationRequest')
    CreateStorageConfigurationResponse = Shapes::StructureShape.new(name: 'CreateStorageConfigurationResponse')
    DeleteEncoderConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEncoderConfigurationRequest')
    DeleteEncoderConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteEncoderConfigurationResponse')
    DeleteIngestConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteIngestConfigurationRequest')
    DeleteIngestConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteIngestConfigurationResponse')
    DeletePublicKeyRequest = Shapes::StructureShape.new(name: 'DeletePublicKeyRequest')
    DeletePublicKeyResponse = Shapes::StructureShape.new(name: 'DeletePublicKeyResponse')
    DeleteStageRequest = Shapes::StructureShape.new(name: 'DeleteStageRequest')
    DeleteStageResponse = Shapes::StructureShape.new(name: 'DeleteStageResponse')
    DeleteStorageConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteStorageConfigurationRequest')
    DeleteStorageConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteStorageConfigurationResponse')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    DestinationConfigurationList = Shapes::ListShape.new(name: 'DestinationConfigurationList')
    DestinationConfigurationName = Shapes::StringShape.new(name: 'DestinationConfigurationName')
    DestinationDetail = Shapes::StructureShape.new(name: 'DestinationDetail')
    DestinationList = Shapes::ListShape.new(name: 'DestinationList')
    DestinationState = Shapes::StringShape.new(name: 'DestinationState')
    DestinationSummary = Shapes::StructureShape.new(name: 'DestinationSummary')
    DestinationSummaryList = Shapes::ListShape.new(name: 'DestinationSummaryList')
    DisconnectParticipantReason = Shapes::StringShape.new(name: 'DisconnectParticipantReason')
    DisconnectParticipantRequest = Shapes::StructureShape.new(name: 'DisconnectParticipantRequest')
    DisconnectParticipantResponse = Shapes::StructureShape.new(name: 'DisconnectParticipantResponse')
    EncoderConfiguration = Shapes::StructureShape.new(name: 'EncoderConfiguration')
    EncoderConfigurationArn = Shapes::StringShape.new(name: 'EncoderConfigurationArn')
    EncoderConfigurationArnList = Shapes::ListShape.new(name: 'EncoderConfigurationArnList')
    EncoderConfigurationName = Shapes::StringShape.new(name: 'EncoderConfigurationName')
    EncoderConfigurationSummary = Shapes::StructureShape.new(name: 'EncoderConfigurationSummary')
    EncoderConfigurationSummaryList = Shapes::ListShape.new(name: 'EncoderConfigurationSummaryList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventErrorCode = Shapes::StringShape.new(name: 'EventErrorCode')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventName = Shapes::StringShape.new(name: 'EventName')
    Framerate = Shapes::FloatShape.new(name: 'Framerate')
    GetCompositionRequest = Shapes::StructureShape.new(name: 'GetCompositionRequest')
    GetCompositionResponse = Shapes::StructureShape.new(name: 'GetCompositionResponse')
    GetEncoderConfigurationRequest = Shapes::StructureShape.new(name: 'GetEncoderConfigurationRequest')
    GetEncoderConfigurationResponse = Shapes::StructureShape.new(name: 'GetEncoderConfigurationResponse')
    GetIngestConfigurationRequest = Shapes::StructureShape.new(name: 'GetIngestConfigurationRequest')
    GetIngestConfigurationResponse = Shapes::StructureShape.new(name: 'GetIngestConfigurationResponse')
    GetParticipantRequest = Shapes::StructureShape.new(name: 'GetParticipantRequest')
    GetParticipantResponse = Shapes::StructureShape.new(name: 'GetParticipantResponse')
    GetPublicKeyRequest = Shapes::StructureShape.new(name: 'GetPublicKeyRequest')
    GetPublicKeyResponse = Shapes::StructureShape.new(name: 'GetPublicKeyResponse')
    GetStageRequest = Shapes::StructureShape.new(name: 'GetStageRequest')
    GetStageResponse = Shapes::StructureShape.new(name: 'GetStageResponse')
    GetStageSessionRequest = Shapes::StructureShape.new(name: 'GetStageSessionRequest')
    GetStageSessionResponse = Shapes::StructureShape.new(name: 'GetStageSessionResponse')
    GetStorageConfigurationRequest = Shapes::StructureShape.new(name: 'GetStorageConfigurationRequest')
    GetStorageConfigurationResponse = Shapes::StructureShape.new(name: 'GetStorageConfigurationResponse')
    GridConfiguration = Shapes::StructureShape.new(name: 'GridConfiguration')
    GridGap = Shapes::IntegerShape.new(name: 'GridGap')
    Height = Shapes::IntegerShape.new(name: 'Height')
    ImportPublicKeyRequest = Shapes::StructureShape.new(name: 'ImportPublicKeyRequest')
    ImportPublicKeyResponse = Shapes::StructureShape.new(name: 'ImportPublicKeyResponse')
    IngestConfiguration = Shapes::StructureShape.new(name: 'IngestConfiguration')
    IngestConfigurationArn = Shapes::StringShape.new(name: 'IngestConfigurationArn')
    IngestConfigurationList = Shapes::ListShape.new(name: 'IngestConfigurationList')
    IngestConfigurationName = Shapes::StringShape.new(name: 'IngestConfigurationName')
    IngestConfigurationStageArn = Shapes::StringShape.new(name: 'IngestConfigurationStageArn')
    IngestConfigurationState = Shapes::StringShape.new(name: 'IngestConfigurationState')
    IngestConfigurationSummary = Shapes::StructureShape.new(name: 'IngestConfigurationSummary')
    IngestProtocol = Shapes::StringShape.new(name: 'IngestProtocol')
    InsecureIngest = Shapes::BooleanShape.new(name: 'InsecureIngest')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LayoutConfiguration = Shapes::StructureShape.new(name: 'LayoutConfiguration')
    ListCompositionsRequest = Shapes::StructureShape.new(name: 'ListCompositionsRequest')
    ListCompositionsResponse = Shapes::StructureShape.new(name: 'ListCompositionsResponse')
    ListEncoderConfigurationsRequest = Shapes::StructureShape.new(name: 'ListEncoderConfigurationsRequest')
    ListEncoderConfigurationsResponse = Shapes::StructureShape.new(name: 'ListEncoderConfigurationsResponse')
    ListIngestConfigurationsRequest = Shapes::StructureShape.new(name: 'ListIngestConfigurationsRequest')
    ListIngestConfigurationsResponse = Shapes::StructureShape.new(name: 'ListIngestConfigurationsResponse')
    ListParticipantEventsRequest = Shapes::StructureShape.new(name: 'ListParticipantEventsRequest')
    ListParticipantEventsResponse = Shapes::StructureShape.new(name: 'ListParticipantEventsResponse')
    ListParticipantReplicasRequest = Shapes::StructureShape.new(name: 'ListParticipantReplicasRequest')
    ListParticipantReplicasResponse = Shapes::StructureShape.new(name: 'ListParticipantReplicasResponse')
    ListParticipantsRequest = Shapes::StructureShape.new(name: 'ListParticipantsRequest')
    ListParticipantsResponse = Shapes::StructureShape.new(name: 'ListParticipantsResponse')
    ListPublicKeysRequest = Shapes::StructureShape.new(name: 'ListPublicKeysRequest')
    ListPublicKeysResponse = Shapes::StructureShape.new(name: 'ListPublicKeysResponse')
    ListStageSessionsRequest = Shapes::StructureShape.new(name: 'ListStageSessionsRequest')
    ListStageSessionsResponse = Shapes::StructureShape.new(name: 'ListStageSessionsResponse')
    ListStagesRequest = Shapes::StructureShape.new(name: 'ListStagesRequest')
    ListStagesResponse = Shapes::StructureShape.new(name: 'ListStagesResponse')
    ListStorageConfigurationsRequest = Shapes::StructureShape.new(name: 'ListStorageConfigurationsRequest')
    ListStorageConfigurationsResponse = Shapes::StructureShape.new(name: 'ListStorageConfigurationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxCompositionResults = Shapes::IntegerShape.new(name: 'MaxCompositionResults')
    MaxEncoderConfigurationResults = Shapes::IntegerShape.new(name: 'MaxEncoderConfigurationResults')
    MaxIngestConfigurationResults = Shapes::IntegerShape.new(name: 'MaxIngestConfigurationResults')
    MaxParticipantEventResults = Shapes::IntegerShape.new(name: 'MaxParticipantEventResults')
    MaxParticipantReplicaResults = Shapes::IntegerShape.new(name: 'MaxParticipantReplicaResults')
    MaxParticipantResults = Shapes::IntegerShape.new(name: 'MaxParticipantResults')
    MaxPublicKeyResults = Shapes::IntegerShape.new(name: 'MaxPublicKeyResults')
    MaxStageResults = Shapes::IntegerShape.new(name: 'MaxStageResults')
    MaxStageSessionResults = Shapes::IntegerShape.new(name: 'MaxStageSessionResults')
    MaxStorageConfigurationResults = Shapes::IntegerShape.new(name: 'MaxStorageConfigurationResults')
    OmitStoppedVideo = Shapes::BooleanShape.new(name: 'OmitStoppedVideo')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Participant = Shapes::StructureShape.new(name: 'Participant')
    ParticipantAttributes = Shapes::MapShape.new(name: 'ParticipantAttributes')
    ParticipantClientAttribute = Shapes::StringShape.new(name: 'ParticipantClientAttribute')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantList = Shapes::ListShape.new(name: 'ParticipantList')
    ParticipantProtocol = Shapes::StringShape.new(name: 'ParticipantProtocol')
    ParticipantRecordingFilterByRecordingState = Shapes::StringShape.new(name: 'ParticipantRecordingFilterByRecordingState')
    ParticipantRecordingHlsConfiguration = Shapes::StructureShape.new(name: 'ParticipantRecordingHlsConfiguration')
    ParticipantRecordingMediaType = Shapes::StringShape.new(name: 'ParticipantRecordingMediaType')
    ParticipantRecordingMediaTypeList = Shapes::ListShape.new(name: 'ParticipantRecordingMediaTypeList')
    ParticipantRecordingReconnectWindowSeconds = Shapes::IntegerShape.new(name: 'ParticipantRecordingReconnectWindowSeconds')
    ParticipantRecordingS3BucketName = Shapes::StringShape.new(name: 'ParticipantRecordingS3BucketName')
    ParticipantRecordingS3Prefix = Shapes::StringShape.new(name: 'ParticipantRecordingS3Prefix')
    ParticipantRecordingState = Shapes::StringShape.new(name: 'ParticipantRecordingState')
    ParticipantRecordingTargetSegmentDurationSeconds = Shapes::IntegerShape.new(name: 'ParticipantRecordingTargetSegmentDurationSeconds')
    ParticipantReplica = Shapes::StructureShape.new(name: 'ParticipantReplica')
    ParticipantReplicaList = Shapes::ListShape.new(name: 'ParticipantReplicaList')
    ParticipantState = Shapes::StringShape.new(name: 'ParticipantState')
    ParticipantSummary = Shapes::StructureShape.new(name: 'ParticipantSummary')
    ParticipantThumbnailConfiguration = Shapes::StructureShape.new(name: 'ParticipantThumbnailConfiguration')
    ParticipantToken = Shapes::StructureShape.new(name: 'ParticipantToken')
    ParticipantTokenAttributes = Shapes::MapShape.new(name: 'ParticipantTokenAttributes')
    ParticipantTokenCapabilities = Shapes::ListShape.new(name: 'ParticipantTokenCapabilities')
    ParticipantTokenCapability = Shapes::StringShape.new(name: 'ParticipantTokenCapability')
    ParticipantTokenConfiguration = Shapes::StructureShape.new(name: 'ParticipantTokenConfiguration')
    ParticipantTokenConfigurations = Shapes::ListShape.new(name: 'ParticipantTokenConfigurations')
    ParticipantTokenDurationMinutes = Shapes::IntegerShape.new(name: 'ParticipantTokenDurationMinutes')
    ParticipantTokenExpirationTime = Shapes::TimestampShape.new(name: 'ParticipantTokenExpirationTime', timestampFormat: "iso8601")
    ParticipantTokenId = Shapes::StringShape.new(name: 'ParticipantTokenId')
    ParticipantTokenList = Shapes::ListShape.new(name: 'ParticipantTokenList')
    ParticipantTokenString = Shapes::StringShape.new(name: 'ParticipantTokenString')
    ParticipantTokenUserId = Shapes::StringShape.new(name: 'ParticipantTokenUserId')
    PendingVerification = Shapes::StructureShape.new(name: 'PendingVerification')
    PipBehavior = Shapes::StringShape.new(name: 'PipBehavior')
    PipConfiguration = Shapes::StructureShape.new(name: 'PipConfiguration')
    PipHeight = Shapes::IntegerShape.new(name: 'PipHeight')
    PipOffset = Shapes::IntegerShape.new(name: 'PipOffset')
    PipPosition = Shapes::StringShape.new(name: 'PipPosition')
    PipWidth = Shapes::IntegerShape.new(name: 'PipWidth')
    PublicKey = Shapes::StructureShape.new(name: 'PublicKey')
    PublicKeyArn = Shapes::StringShape.new(name: 'PublicKeyArn')
    PublicKeyFingerprint = Shapes::StringShape.new(name: 'PublicKeyFingerprint')
    PublicKeyList = Shapes::ListShape.new(name: 'PublicKeyList')
    PublicKeyMaterial = Shapes::StringShape.new(name: 'PublicKeyMaterial')
    PublicKeyName = Shapes::StringShape.new(name: 'PublicKeyName')
    PublicKeySummary = Shapes::StructureShape.new(name: 'PublicKeySummary')
    Published = Shapes::BooleanShape.new(name: 'Published')
    ReconnectWindowSeconds = Shapes::IntegerShape.new(name: 'ReconnectWindowSeconds')
    RecordParticipantReplicas = Shapes::BooleanShape.new(name: 'RecordParticipantReplicas')
    RecordingConfiguration = Shapes::StructureShape.new(name: 'RecordingConfiguration')
    RecordingConfigurationFormat = Shapes::StringShape.new(name: 'RecordingConfigurationFormat')
    Replica = Shapes::BooleanShape.new(name: 'Replica')
    ReplicationState = Shapes::StringShape.new(name: 'ReplicationState')
    ReplicationType = Shapes::StringShape.new(name: 'ReplicationType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    S3Detail = Shapes::StructureShape.new(name: 'S3Detail')
    S3StorageConfiguration = Shapes::StructureShape.new(name: 'S3StorageConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageArn = Shapes::StringShape.new(name: 'StageArn')
    StageEndpoint = Shapes::StringShape.new(name: 'StageEndpoint')
    StageEndpoints = Shapes::StructureShape.new(name: 'StageEndpoints')
    StageName = Shapes::StringShape.new(name: 'StageName')
    StageSession = Shapes::StructureShape.new(name: 'StageSession')
    StageSessionId = Shapes::StringShape.new(name: 'StageSessionId')
    StageSessionList = Shapes::ListShape.new(name: 'StageSessionList')
    StageSessionSummary = Shapes::StructureShape.new(name: 'StageSessionSummary')
    StageSummary = Shapes::StructureShape.new(name: 'StageSummary')
    StageSummaryList = Shapes::ListShape.new(name: 'StageSummaryList')
    StartCompositionRequest = Shapes::StructureShape.new(name: 'StartCompositionRequest')
    StartCompositionResponse = Shapes::StructureShape.new(name: 'StartCompositionResponse')
    StartParticipantReplicationRequest = Shapes::StructureShape.new(name: 'StartParticipantReplicationRequest')
    StartParticipantReplicationResponse = Shapes::StructureShape.new(name: 'StartParticipantReplicationResponse')
    StopCompositionRequest = Shapes::StructureShape.new(name: 'StopCompositionRequest')
    StopCompositionResponse = Shapes::StructureShape.new(name: 'StopCompositionResponse')
    StopParticipantReplicationRequest = Shapes::StructureShape.new(name: 'StopParticipantReplicationRequest')
    StopParticipantReplicationResponse = Shapes::StructureShape.new(name: 'StopParticipantReplicationResponse')
    StorageConfiguration = Shapes::StructureShape.new(name: 'StorageConfiguration')
    StorageConfigurationArn = Shapes::StringShape.new(name: 'StorageConfigurationArn')
    StorageConfigurationName = Shapes::StringShape.new(name: 'StorageConfigurationName')
    StorageConfigurationSummary = Shapes::StructureShape.new(name: 'StorageConfigurationSummary')
    StorageConfigurationSummaryList = Shapes::ListShape.new(name: 'StorageConfigurationSummaryList')
    StreamKey = Shapes::StringShape.new(name: 'StreamKey')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThumbnailIntervalSeconds = Shapes::IntegerShape.new(name: 'ThumbnailIntervalSeconds')
    ThumbnailRecordingMode = Shapes::StringShape.new(name: 'ThumbnailRecordingMode')
    ThumbnailStorageType = Shapes::StringShape.new(name: 'ThumbnailStorageType')
    ThumbnailStorageTypeList = Shapes::ListShape.new(name: 'ThumbnailStorageTypeList')
    Time = Shapes::TimestampShape.new(name: 'Time', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateIngestConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateIngestConfigurationRequest')
    UpdateIngestConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateIngestConfigurationResponse')
    UpdateStageRequest = Shapes::StructureShape.new(name: 'UpdateStageRequest')
    UpdateStageResponse = Shapes::StructureShape.new(name: 'UpdateStageResponse')
    UserId = Shapes::StringShape.new(name: 'UserId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Video = Shapes::StructureShape.new(name: 'Video')
    VideoAspectRatio = Shapes::StringShape.new(name: 'VideoAspectRatio')
    VideoFillMode = Shapes::StringShape.new(name: 'VideoFillMode')
    Width = Shapes::IntegerShape.new(name: 'Width')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    AccessDeniedException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    AccessDeniedException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    AccessDeniedException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    AccessDeniedException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    AccessDeniedException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    AccessDeniedException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    AccessDeniedException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AutoParticipantRecordingConfiguration.add_member(:storage_configuration_arn, Shapes::ShapeRef.new(shape: AutoParticipantRecordingStorageConfigurationArn, required: true, location_name: "storageConfigurationArn"))
    AutoParticipantRecordingConfiguration.add_member(:media_types, Shapes::ShapeRef.new(shape: ParticipantRecordingMediaTypeList, location_name: "mediaTypes"))
    AutoParticipantRecordingConfiguration.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ParticipantThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    AutoParticipantRecordingConfiguration.add_member(:recording_reconnect_window_seconds, Shapes::ShapeRef.new(shape: ParticipantRecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds"))
    AutoParticipantRecordingConfiguration.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: ParticipantRecordingHlsConfiguration, location_name: "hlsConfiguration"))
    AutoParticipantRecordingConfiguration.add_member(:record_participant_replicas, Shapes::ShapeRef.new(shape: RecordParticipantReplicas, location_name: "recordParticipantReplicas"))
    AutoParticipantRecordingConfiguration.struct_class = Types::AutoParticipantRecordingConfiguration

    ChannelDestinationConfiguration.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    ChannelDestinationConfiguration.add_member(:encoder_configuration_arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: "encoderConfigurationArn"))
    ChannelDestinationConfiguration.struct_class = Types::ChannelDestinationConfiguration

    Composition.add_member(:arn, Shapes::ShapeRef.new(shape: CompositionArn, required: true, location_name: "arn"))
    Composition.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    Composition.add_member(:state, Shapes::ShapeRef.new(shape: CompositionState, required: true, location_name: "state"))
    Composition.add_member(:layout, Shapes::ShapeRef.new(shape: LayoutConfiguration, required: true, location_name: "layout"))
    Composition.add_member(:destinations, Shapes::ShapeRef.new(shape: DestinationList, required: true, location_name: "destinations"))
    Composition.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Composition.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    Composition.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    Composition.struct_class = Types::Composition

    CompositionRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, Shapes::ShapeRef.new(shape: CompositionRecordingTargetSegmentDurationSeconds, location_name: "targetSegmentDurationSeconds"))
    CompositionRecordingHlsConfiguration.struct_class = Types::CompositionRecordingHlsConfiguration

    CompositionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CompositionArn, required: true, location_name: "arn"))
    CompositionSummary.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    CompositionSummary.add_member(:destinations, Shapes::ShapeRef.new(shape: DestinationSummaryList, required: true, location_name: "destinations"))
    CompositionSummary.add_member(:state, Shapes::ShapeRef.new(shape: CompositionState, required: true, location_name: "state"))
    CompositionSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CompositionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    CompositionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    CompositionSummary.struct_class = Types::CompositionSummary

    CompositionSummaryList.member = Shapes::ShapeRef.new(shape: CompositionSummary)

    CompositionThumbnailConfiguration.add_member(:target_interval_seconds, Shapes::ShapeRef.new(shape: ThumbnailIntervalSeconds, location_name: "targetIntervalSeconds"))
    CompositionThumbnailConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: ThumbnailStorageTypeList, location_name: "storage"))
    CompositionThumbnailConfiguration.struct_class = Types::CompositionThumbnailConfiguration

    CompositionThumbnailConfigurationList.member = Shapes::ShapeRef.new(shape: CompositionThumbnailConfiguration)

    ConflictException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ConflictException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ConflictException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ConflictException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ConflictException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ConflictException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ConflictException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ConflictException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ConflictException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ConflictException.struct_class = Types::ConflictException

    CreateEncoderConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: "name"))
    CreateEncoderConfigurationRequest.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "video"))
    CreateEncoderConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateEncoderConfigurationRequest.struct_class = Types::CreateEncoderConfigurationRequest

    CreateEncoderConfigurationResponse.add_member(:encoder_configuration, Shapes::ShapeRef.new(shape: EncoderConfiguration, location_name: "encoderConfiguration"))
    CreateEncoderConfigurationResponse.struct_class = Types::CreateEncoderConfigurationResponse

    CreateIngestConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: "name"))
    CreateIngestConfigurationRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: "stageArn"))
    CreateIngestConfigurationRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    CreateIngestConfigurationRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: "attributes"))
    CreateIngestConfigurationRequest.add_member(:ingest_protocol, Shapes::ShapeRef.new(shape: IngestProtocol, required: true, location_name: "ingestProtocol"))
    CreateIngestConfigurationRequest.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest"))
    CreateIngestConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateIngestConfigurationRequest.struct_class = Types::CreateIngestConfigurationRequest

    CreateIngestConfigurationResponse.add_member(:ingest_configuration, Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    CreateIngestConfigurationResponse.struct_class = Types::CreateIngestConfigurationResponse

    CreateParticipantTokenRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    CreateParticipantTokenRequest.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    CreateParticipantTokenRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    CreateParticipantTokenRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    CreateParticipantTokenRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    CreateParticipantTokenRequest.struct_class = Types::CreateParticipantTokenRequest

    CreateParticipantTokenResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "participantToken"))
    CreateParticipantTokenResponse.struct_class = Types::CreateParticipantTokenResponse

    CreateStageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    CreateStageRequest.add_member(:participant_token_configurations, Shapes::ShapeRef.new(shape: ParticipantTokenConfigurations, location_name: "participantTokenConfigurations"))
    CreateStageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStageRequest.add_member(:auto_participant_recording_configuration, Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: "autoParticipantRecordingConfiguration"))
    CreateStageRequest.struct_class = Types::CreateStageRequest

    CreateStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    CreateStageResponse.add_member(:participant_tokens, Shapes::ShapeRef.new(shape: ParticipantTokenList, location_name: "participantTokens"))
    CreateStageResponse.struct_class = Types::CreateStageResponse

    CreateStorageConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: "name"))
    CreateStorageConfigurationRequest.add_member(:s3, Shapes::ShapeRef.new(shape: S3StorageConfiguration, required: true, location_name: "s3"))
    CreateStorageConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStorageConfigurationRequest.struct_class = Types::CreateStorageConfigurationRequest

    CreateStorageConfigurationResponse.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: "storageConfiguration"))
    CreateStorageConfigurationResponse.struct_class = Types::CreateStorageConfigurationResponse

    DeleteEncoderConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, required: true, location_name: "arn"))
    DeleteEncoderConfigurationRequest.struct_class = Types::DeleteEncoderConfigurationRequest

    DeleteEncoderConfigurationResponse.struct_class = Types::DeleteEncoderConfigurationResponse

    DeleteIngestConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: IngestConfigurationArn, required: true, location_name: "arn"))
    DeleteIngestConfigurationRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    DeleteIngestConfigurationRequest.struct_class = Types::DeleteIngestConfigurationRequest

    DeleteIngestConfigurationResponse.struct_class = Types::DeleteIngestConfigurationResponse

    DeletePublicKeyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PublicKeyArn, required: true, location_name: "arn"))
    DeletePublicKeyRequest.struct_class = Types::DeletePublicKeyRequest

    DeletePublicKeyResponse.struct_class = Types::DeletePublicKeyResponse

    DeleteStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    DeleteStageRequest.struct_class = Types::DeleteStageRequest

    DeleteStageResponse.struct_class = Types::DeleteStageResponse

    DeleteStorageConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StorageConfigurationArn, required: true, location_name: "arn"))
    DeleteStorageConfigurationRequest.struct_class = Types::DeleteStorageConfigurationRequest

    DeleteStorageConfigurationResponse.struct_class = Types::DeleteStorageConfigurationResponse

    Destination.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Destination.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    Destination.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    Destination.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    Destination.add_member(:configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "configuration"))
    Destination.add_member(:detail, Shapes::ShapeRef.new(shape: DestinationDetail, location_name: "detail"))
    Destination.struct_class = Types::Destination

    DestinationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DestinationConfigurationName, location_name: "name"))
    DestinationConfiguration.add_member(:channel, Shapes::ShapeRef.new(shape: ChannelDestinationConfiguration, location_name: "channel"))
    DestinationConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    DestinationConfigurationList.member = Shapes::ShapeRef.new(shape: DestinationConfiguration)

    DestinationDetail.add_member(:s3, Shapes::ShapeRef.new(shape: S3Detail, location_name: "s3"))
    DestinationDetail.struct_class = Types::DestinationDetail

    DestinationList.member = Shapes::ShapeRef.new(shape: Destination)

    DestinationSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    DestinationSummary.add_member(:state, Shapes::ShapeRef.new(shape: DestinationState, required: true, location_name: "state"))
    DestinationSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    DestinationSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    DestinationSummary.struct_class = Types::DestinationSummary

    DestinationSummaryList.member = Shapes::ShapeRef.new(shape: DestinationSummary)

    DisconnectParticipantRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    DisconnectParticipantRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantTokenId, required: true, location_name: "participantId"))
    DisconnectParticipantRequest.add_member(:reason, Shapes::ShapeRef.new(shape: DisconnectParticipantReason, location_name: "reason"))
    DisconnectParticipantRequest.struct_class = Types::DisconnectParticipantRequest

    DisconnectParticipantResponse.struct_class = Types::DisconnectParticipantResponse

    EncoderConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, required: true, location_name: "arn"))
    EncoderConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: "name"))
    EncoderConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: Video, location_name: "video"))
    EncoderConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EncoderConfiguration.struct_class = Types::EncoderConfiguration

    EncoderConfigurationArnList.member = Shapes::ShapeRef.new(shape: EncoderConfigurationArn)

    EncoderConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, required: true, location_name: "arn"))
    EncoderConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: EncoderConfigurationName, location_name: "name"))
    EncoderConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EncoderConfigurationSummary.struct_class = Types::EncoderConfigurationSummary

    EncoderConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: EncoderConfigurationSummary)

    Event.add_member(:name, Shapes::ShapeRef.new(shape: EventName, location_name: "name"))
    Event.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    Event.add_member(:event_time, Shapes::ShapeRef.new(shape: Time, location_name: "eventTime"))
    Event.add_member(:remote_participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "remoteParticipantId"))
    Event.add_member(:error_code, Shapes::ShapeRef.new(shape: EventErrorCode, location_name: "errorCode"))
    Event.add_member(:destination_stage_arn, Shapes::ShapeRef.new(shape: StageArn, location_name: "destinationStageArn"))
    Event.add_member(:destination_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "destinationSessionId"))
    Event.add_member(:replica, Shapes::ShapeRef.new(shape: Replica, location_name: "replica"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    GetCompositionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: CompositionArn, required: true, location_name: "arn"))
    GetCompositionRequest.struct_class = Types::GetCompositionRequest

    GetCompositionResponse.add_member(:composition, Shapes::ShapeRef.new(shape: Composition, location_name: "composition"))
    GetCompositionResponse.struct_class = Types::GetCompositionResponse

    GetEncoderConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, required: true, location_name: "arn"))
    GetEncoderConfigurationRequest.struct_class = Types::GetEncoderConfigurationRequest

    GetEncoderConfigurationResponse.add_member(:encoder_configuration, Shapes::ShapeRef.new(shape: EncoderConfiguration, location_name: "encoderConfiguration"))
    GetEncoderConfigurationResponse.struct_class = Types::GetEncoderConfigurationResponse

    GetIngestConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: IngestConfigurationArn, required: true, location_name: "arn"))
    GetIngestConfigurationRequest.struct_class = Types::GetIngestConfigurationRequest

    GetIngestConfigurationResponse.add_member(:ingest_configuration, Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    GetIngestConfigurationResponse.struct_class = Types::GetIngestConfigurationResponse

    GetParticipantRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    GetParticipantRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    GetParticipantRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    GetParticipantRequest.struct_class = Types::GetParticipantRequest

    GetParticipantResponse.add_member(:participant, Shapes::ShapeRef.new(shape: Participant, location_name: "participant"))
    GetParticipantResponse.struct_class = Types::GetParticipantResponse

    GetPublicKeyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PublicKeyArn, required: true, location_name: "arn"))
    GetPublicKeyRequest.struct_class = Types::GetPublicKeyRequest

    GetPublicKeyResponse.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "publicKey"))
    GetPublicKeyResponse.struct_class = Types::GetPublicKeyResponse

    GetStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    GetStageRequest.struct_class = Types::GetStageRequest

    GetStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    GetStageResponse.struct_class = Types::GetStageResponse

    GetStageSessionRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    GetStageSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    GetStageSessionRequest.struct_class = Types::GetStageSessionRequest

    GetStageSessionResponse.add_member(:stage_session, Shapes::ShapeRef.new(shape: StageSession, location_name: "stageSession"))
    GetStageSessionResponse.struct_class = Types::GetStageSessionResponse

    GetStorageConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StorageConfigurationArn, required: true, location_name: "arn"))
    GetStorageConfigurationRequest.struct_class = Types::GetStorageConfigurationRequest

    GetStorageConfigurationResponse.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: "storageConfiguration"))
    GetStorageConfigurationResponse.struct_class = Types::GetStorageConfigurationResponse

    GridConfiguration.add_member(:featured_participant_attribute, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "featuredParticipantAttribute"))
    GridConfiguration.add_member(:omit_stopped_video, Shapes::ShapeRef.new(shape: OmitStoppedVideo, location_name: "omitStoppedVideo"))
    GridConfiguration.add_member(:video_aspect_ratio, Shapes::ShapeRef.new(shape: VideoAspectRatio, location_name: "videoAspectRatio"))
    GridConfiguration.add_member(:video_fill_mode, Shapes::ShapeRef.new(shape: VideoFillMode, location_name: "videoFillMode"))
    GridConfiguration.add_member(:grid_gap, Shapes::ShapeRef.new(shape: GridGap, location_name: "gridGap"))
    GridConfiguration.add_member(:participant_order_attribute, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "participantOrderAttribute"))
    GridConfiguration.struct_class = Types::GridConfiguration

    ImportPublicKeyRequest.add_member(:public_key_material, Shapes::ShapeRef.new(shape: PublicKeyMaterial, required: true, location_name: "publicKeyMaterial"))
    ImportPublicKeyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PublicKeyName, location_name: "name"))
    ImportPublicKeyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ImportPublicKeyRequest.struct_class = Types::ImportPublicKeyRequest

    ImportPublicKeyResponse.add_member(:public_key, Shapes::ShapeRef.new(shape: PublicKey, location_name: "publicKey"))
    ImportPublicKeyResponse.struct_class = Types::ImportPublicKeyResponse

    IngestConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: "name"))
    IngestConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: IngestConfigurationArn, required: true, location_name: "arn"))
    IngestConfiguration.add_member(:ingest_protocol, Shapes::ShapeRef.new(shape: IngestProtocol, required: true, location_name: "ingestProtocol"))
    IngestConfiguration.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, required: true, location_name: "streamKey"))
    IngestConfiguration.add_member(:stage_arn, Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, required: true, location_name: "stageArn"))
    IngestConfiguration.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    IngestConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: IngestConfigurationState, required: true, location_name: "state"))
    IngestConfiguration.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    IngestConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: "attributes"))
    IngestConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    IngestConfiguration.struct_class = Types::IngestConfiguration

    IngestConfigurationList.member = Shapes::ShapeRef.new(shape: IngestConfigurationSummary)

    IngestConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: IngestConfigurationName, location_name: "name"))
    IngestConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: IngestConfigurationArn, required: true, location_name: "arn"))
    IngestConfigurationSummary.add_member(:ingest_protocol, Shapes::ShapeRef.new(shape: IngestProtocol, required: true, location_name: "ingestProtocol"))
    IngestConfigurationSummary.add_member(:stage_arn, Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, required: true, location_name: "stageArn"))
    IngestConfigurationSummary.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    IngestConfigurationSummary.add_member(:state, Shapes::ShapeRef.new(shape: IngestConfigurationState, required: true, location_name: "state"))
    IngestConfigurationSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    IngestConfigurationSummary.struct_class = Types::IngestConfigurationSummary

    InternalServerException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    InternalServerException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    InternalServerException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    InternalServerException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    InternalServerException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    InternalServerException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    InternalServerException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    InternalServerException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    InternalServerException.struct_class = Types::InternalServerException

    LayoutConfiguration.add_member(:grid, Shapes::ShapeRef.new(shape: GridConfiguration, location_name: "grid"))
    LayoutConfiguration.add_member(:pip, Shapes::ShapeRef.new(shape: PipConfiguration, location_name: "pip"))
    LayoutConfiguration.struct_class = Types::LayoutConfiguration

    ListCompositionsRequest.add_member(:filter_by_stage_arn, Shapes::ShapeRef.new(shape: StageArn, location_name: "filterByStageArn"))
    ListCompositionsRequest.add_member(:filter_by_encoder_configuration_arn, Shapes::ShapeRef.new(shape: EncoderConfigurationArn, location_name: "filterByEncoderConfigurationArn"))
    ListCompositionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCompositionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCompositionResults, location_name: "maxResults"))
    ListCompositionsRequest.struct_class = Types::ListCompositionsRequest

    ListCompositionsResponse.add_member(:compositions, Shapes::ShapeRef.new(shape: CompositionSummaryList, required: true, location_name: "compositions"))
    ListCompositionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCompositionsResponse.struct_class = Types::ListCompositionsResponse

    ListEncoderConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEncoderConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEncoderConfigurationResults, location_name: "maxResults"))
    ListEncoderConfigurationsRequest.struct_class = Types::ListEncoderConfigurationsRequest

    ListEncoderConfigurationsResponse.add_member(:encoder_configurations, Shapes::ShapeRef.new(shape: EncoderConfigurationSummaryList, required: true, location_name: "encoderConfigurations"))
    ListEncoderConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEncoderConfigurationsResponse.struct_class = Types::ListEncoderConfigurationsResponse

    ListIngestConfigurationsRequest.add_member(:filter_by_stage_arn, Shapes::ShapeRef.new(shape: StageArn, location_name: "filterByStageArn"))
    ListIngestConfigurationsRequest.add_member(:filter_by_state, Shapes::ShapeRef.new(shape: IngestConfigurationState, location_name: "filterByState"))
    ListIngestConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIngestConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxIngestConfigurationResults, location_name: "maxResults"))
    ListIngestConfigurationsRequest.struct_class = Types::ListIngestConfigurationsRequest

    ListIngestConfigurationsResponse.add_member(:ingest_configurations, Shapes::ShapeRef.new(shape: IngestConfigurationList, required: true, location_name: "ingestConfigurations"))
    ListIngestConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListIngestConfigurationsResponse.struct_class = Types::ListIngestConfigurationsResponse

    ListParticipantEventsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListParticipantEventsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    ListParticipantEventsRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    ListParticipantEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxParticipantEventResults, location_name: "maxResults"))
    ListParticipantEventsRequest.struct_class = Types::ListParticipantEventsRequest

    ListParticipantEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    ListParticipantEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantEventsResponse.struct_class = Types::ListParticipantEventsResponse

    ListParticipantReplicasRequest.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "sourceStageArn"))
    ListParticipantReplicasRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    ListParticipantReplicasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantReplicasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxParticipantReplicaResults, location_name: "maxResults"))
    ListParticipantReplicasRequest.struct_class = Types::ListParticipantReplicasRequest

    ListParticipantReplicasResponse.add_member(:replicas, Shapes::ShapeRef.new(shape: ParticipantReplicaList, required: true, location_name: "replicas"))
    ListParticipantReplicasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantReplicasResponse.struct_class = Types::ListParticipantReplicasResponse

    ListParticipantsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListParticipantsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    ListParticipantsRequest.add_member(:filter_by_user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "filterByUserId"))
    ListParticipantsRequest.add_member(:filter_by_published, Shapes::ShapeRef.new(shape: Published, location_name: "filterByPublished"))
    ListParticipantsRequest.add_member(:filter_by_state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "filterByState"))
    ListParticipantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxParticipantResults, location_name: "maxResults"))
    ListParticipantsRequest.add_member(:filter_by_recording_state, Shapes::ShapeRef.new(shape: ParticipantRecordingFilterByRecordingState, location_name: "filterByRecordingState"))
    ListParticipantsRequest.struct_class = Types::ListParticipantsRequest

    ListParticipantsResponse.add_member(:participants, Shapes::ShapeRef.new(shape: ParticipantList, required: true, location_name: "participants"))
    ListParticipantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantsResponse.struct_class = Types::ListParticipantsResponse

    ListPublicKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPublicKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPublicKeyResults, location_name: "maxResults"))
    ListPublicKeysRequest.struct_class = Types::ListPublicKeysRequest

    ListPublicKeysResponse.add_member(:public_keys, Shapes::ShapeRef.new(shape: PublicKeyList, required: true, location_name: "publicKeys"))
    ListPublicKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPublicKeysResponse.struct_class = Types::ListPublicKeysResponse

    ListStageSessionsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListStageSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStageSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStageSessionResults, location_name: "maxResults"))
    ListStageSessionsRequest.struct_class = Types::ListStageSessionsRequest

    ListStageSessionsResponse.add_member(:stage_sessions, Shapes::ShapeRef.new(shape: StageSessionList, required: true, location_name: "stageSessions"))
    ListStageSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStageSessionsResponse.struct_class = Types::ListStageSessionsResponse

    ListStagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStageResults, location_name: "maxResults"))
    ListStagesRequest.struct_class = Types::ListStagesRequest

    ListStagesResponse.add_member(:stages, Shapes::ShapeRef.new(shape: StageSummaryList, required: true, location_name: "stages"))
    ListStagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStagesResponse.struct_class = Types::ListStagesResponse

    ListStorageConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStorageConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStorageConfigurationResults, location_name: "maxResults"))
    ListStorageConfigurationsRequest.struct_class = Types::ListStorageConfigurationsRequest

    ListStorageConfigurationsResponse.add_member(:storage_configurations, Shapes::ShapeRef.new(shape: StorageConfigurationSummaryList, required: true, location_name: "storageConfigurations"))
    ListStorageConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStorageConfigurationsResponse.struct_class = Types::ListStorageConfigurationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Participant.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    Participant.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    Participant.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "state"))
    Participant.add_member(:first_join_time, Shapes::ShapeRef.new(shape: Time, location_name: "firstJoinTime"))
    Participant.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: "attributes"))
    Participant.add_member(:published, Shapes::ShapeRef.new(shape: Published, location_name: "published"))
    Participant.add_member(:isp_name, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "ispName"))
    Participant.add_member(:os_name, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "osName"))
    Participant.add_member(:os_version, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "osVersion"))
    Participant.add_member(:browser_name, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "browserName"))
    Participant.add_member(:browser_version, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "browserVersion"))
    Participant.add_member(:sdk_version, Shapes::ShapeRef.new(shape: ParticipantClientAttribute, location_name: "sdkVersion"))
    Participant.add_member(:recording_s3_bucket_name, Shapes::ShapeRef.new(shape: ParticipantRecordingS3BucketName, location_name: "recordingS3BucketName"))
    Participant.add_member(:recording_s3_prefix, Shapes::ShapeRef.new(shape: ParticipantRecordingS3Prefix, location_name: "recordingS3Prefix"))
    Participant.add_member(:recording_state, Shapes::ShapeRef.new(shape: ParticipantRecordingState, location_name: "recordingState"))
    Participant.add_member(:protocol, Shapes::ShapeRef.new(shape: ParticipantProtocol, location_name: "protocol"))
    Participant.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, location_name: "replicationType"))
    Participant.add_member(:replication_state, Shapes::ShapeRef.new(shape: ReplicationState, location_name: "replicationState"))
    Participant.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, location_name: "sourceStageArn"))
    Participant.add_member(:source_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sourceSessionId"))
    Participant.struct_class = Types::Participant

    ParticipantAttributes.key = Shapes::ShapeRef.new(shape: String)
    ParticipantAttributes.value = Shapes::ShapeRef.new(shape: String)

    ParticipantList.member = Shapes::ShapeRef.new(shape: ParticipantSummary)

    ParticipantRecordingHlsConfiguration.add_member(:target_segment_duration_seconds, Shapes::ShapeRef.new(shape: ParticipantRecordingTargetSegmentDurationSeconds, location_name: "targetSegmentDurationSeconds"))
    ParticipantRecordingHlsConfiguration.struct_class = Types::ParticipantRecordingHlsConfiguration

    ParticipantRecordingMediaTypeList.member = Shapes::ShapeRef.new(shape: ParticipantRecordingMediaType)

    ParticipantReplica.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "sourceStageArn"))
    ParticipantReplica.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    ParticipantReplica.add_member(:source_session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sourceSessionId"))
    ParticipantReplica.add_member(:destination_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "destinationStageArn"))
    ParticipantReplica.add_member(:destination_session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "destinationSessionId"))
    ParticipantReplica.add_member(:replication_state, Shapes::ShapeRef.new(shape: ReplicationState, required: true, location_name: "replicationState"))
    ParticipantReplica.struct_class = Types::ParticipantReplica

    ParticipantReplicaList.member = Shapes::ShapeRef.new(shape: ParticipantReplica)

    ParticipantSummary.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    ParticipantSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    ParticipantSummary.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "state"))
    ParticipantSummary.add_member(:first_join_time, Shapes::ShapeRef.new(shape: Time, location_name: "firstJoinTime"))
    ParticipantSummary.add_member(:published, Shapes::ShapeRef.new(shape: Published, location_name: "published"))
    ParticipantSummary.add_member(:recording_state, Shapes::ShapeRef.new(shape: ParticipantRecordingState, location_name: "recordingState"))
    ParticipantSummary.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, location_name: "replicationType"))
    ParticipantSummary.add_member(:replication_state, Shapes::ShapeRef.new(shape: ReplicationState, location_name: "replicationState"))
    ParticipantSummary.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, location_name: "sourceStageArn"))
    ParticipantSummary.add_member(:source_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sourceSessionId"))
    ParticipantSummary.struct_class = Types::ParticipantSummary

    ParticipantThumbnailConfiguration.add_member(:target_interval_seconds, Shapes::ShapeRef.new(shape: ThumbnailIntervalSeconds, location_name: "targetIntervalSeconds"))
    ParticipantThumbnailConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: ThumbnailStorageTypeList, location_name: "storage"))
    ParticipantThumbnailConfiguration.add_member(:recording_mode, Shapes::ShapeRef.new(shape: ThumbnailRecordingMode, location_name: "recordingMode"))
    ParticipantThumbnailConfiguration.struct_class = Types::ParticipantThumbnailConfiguration

    ParticipantToken.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantTokenId, location_name: "participantId"))
    ParticipantToken.add_member(:token, Shapes::ShapeRef.new(shape: ParticipantTokenString, location_name: "token"))
    ParticipantToken.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    ParticipantToken.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    ParticipantToken.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    ParticipantToken.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    ParticipantToken.add_member(:expiration_time, Shapes::ShapeRef.new(shape: ParticipantTokenExpirationTime, location_name: "expirationTime"))
    ParticipantToken.struct_class = Types::ParticipantToken

    ParticipantTokenAttributes.key = Shapes::ShapeRef.new(shape: String)
    ParticipantTokenAttributes.value = Shapes::ShapeRef.new(shape: String)

    ParticipantTokenCapabilities.member = Shapes::ShapeRef.new(shape: ParticipantTokenCapability)

    ParticipantTokenConfiguration.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    ParticipantTokenConfiguration.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    ParticipantTokenConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    ParticipantTokenConfiguration.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    ParticipantTokenConfiguration.struct_class = Types::ParticipantTokenConfiguration

    ParticipantTokenConfigurations.member = Shapes::ShapeRef.new(shape: ParticipantTokenConfiguration)

    ParticipantTokenList.member = Shapes::ShapeRef.new(shape: ParticipantToken)

    PendingVerification.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    PendingVerification.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    PendingVerification.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    PendingVerification.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    PendingVerification.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    PendingVerification.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    PendingVerification.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    PendingVerification.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    PendingVerification.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    PendingVerification.struct_class = Types::PendingVerification

    PipConfiguration.add_member(:featured_participant_attribute, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "featuredParticipantAttribute"))
    PipConfiguration.add_member(:omit_stopped_video, Shapes::ShapeRef.new(shape: OmitStoppedVideo, location_name: "omitStoppedVideo"))
    PipConfiguration.add_member(:video_fill_mode, Shapes::ShapeRef.new(shape: VideoFillMode, location_name: "videoFillMode"))
    PipConfiguration.add_member(:grid_gap, Shapes::ShapeRef.new(shape: GridGap, location_name: "gridGap"))
    PipConfiguration.add_member(:pip_participant_attribute, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "pipParticipantAttribute"))
    PipConfiguration.add_member(:pip_behavior, Shapes::ShapeRef.new(shape: PipBehavior, location_name: "pipBehavior"))
    PipConfiguration.add_member(:pip_offset, Shapes::ShapeRef.new(shape: PipOffset, location_name: "pipOffset"))
    PipConfiguration.add_member(:pip_position, Shapes::ShapeRef.new(shape: PipPosition, location_name: "pipPosition"))
    PipConfiguration.add_member(:pip_width, Shapes::ShapeRef.new(shape: PipWidth, location_name: "pipWidth"))
    PipConfiguration.add_member(:pip_height, Shapes::ShapeRef.new(shape: PipHeight, location_name: "pipHeight"))
    PipConfiguration.add_member(:participant_order_attribute, Shapes::ShapeRef.new(shape: AttributeKey, location_name: "participantOrderAttribute"))
    PipConfiguration.struct_class = Types::PipConfiguration

    PublicKey.add_member(:arn, Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: "arn"))
    PublicKey.add_member(:name, Shapes::ShapeRef.new(shape: PublicKeyName, location_name: "name"))
    PublicKey.add_member(:public_key_material, Shapes::ShapeRef.new(shape: PublicKeyMaterial, location_name: "publicKeyMaterial"))
    PublicKey.add_member(:fingerprint, Shapes::ShapeRef.new(shape: PublicKeyFingerprint, location_name: "fingerprint"))
    PublicKey.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PublicKey.struct_class = Types::PublicKey

    PublicKeyList.member = Shapes::ShapeRef.new(shape: PublicKeySummary)

    PublicKeySummary.add_member(:arn, Shapes::ShapeRef.new(shape: PublicKeyArn, location_name: "arn"))
    PublicKeySummary.add_member(:name, Shapes::ShapeRef.new(shape: PublicKeyName, location_name: "name"))
    PublicKeySummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PublicKeySummary.struct_class = Types::PublicKeySummary

    RecordingConfiguration.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: CompositionRecordingHlsConfiguration, location_name: "hlsConfiguration"))
    RecordingConfiguration.add_member(:format, Shapes::ShapeRef.new(shape: RecordingConfigurationFormat, location_name: "format"))
    RecordingConfiguration.struct_class = Types::RecordingConfiguration

    ResourceNotFoundException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ResourceNotFoundException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ResourceNotFoundException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ResourceNotFoundException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ResourceNotFoundException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ResourceNotFoundException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ResourceNotFoundException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ResourceNotFoundException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ResourceNotFoundException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationConfiguration.add_member(:storage_configuration_arn, Shapes::ShapeRef.new(shape: StorageConfigurationArn, required: true, location_name: "storageConfigurationArn"))
    S3DestinationConfiguration.add_member(:encoder_configuration_arns, Shapes::ShapeRef.new(shape: EncoderConfigurationArnList, required: true, location_name: "encoderConfigurationArns"))
    S3DestinationConfiguration.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    S3DestinationConfiguration.add_member(:thumbnail_configurations, Shapes::ShapeRef.new(shape: CompositionThumbnailConfigurationList, location_name: "thumbnailConfigurations"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

    S3Detail.add_member(:recording_prefix, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recordingPrefix"))
    S3Detail.struct_class = Types::S3Detail

    S3StorageConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucketName"))
    S3StorageConfiguration.struct_class = Types::S3StorageConfiguration

    ServiceQuotaExceededException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ServiceQuotaExceededException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ServiceQuotaExceededException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ServiceQuotaExceededException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ServiceQuotaExceededException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ServiceQuotaExceededException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ServiceQuotaExceededException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ServiceQuotaExceededException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceQuotaExceededException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Stage.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    Stage.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    Stage.add_member(:active_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "activeSessionId"))
    Stage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Stage.add_member(:auto_participant_recording_configuration, Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: "autoParticipantRecordingConfiguration"))
    Stage.add_member(:endpoints, Shapes::ShapeRef.new(shape: StageEndpoints, location_name: "endpoints"))
    Stage.struct_class = Types::Stage

    StageEndpoints.add_member(:events, Shapes::ShapeRef.new(shape: StageEndpoint, location_name: "events"))
    StageEndpoints.add_member(:whip, Shapes::ShapeRef.new(shape: StageEndpoint, location_name: "whip"))
    StageEndpoints.add_member(:rtmp, Shapes::ShapeRef.new(shape: StageEndpoint, location_name: "rtmp"))
    StageEndpoints.add_member(:rtmps, Shapes::ShapeRef.new(shape: StageEndpoint, location_name: "rtmps"))
    StageEndpoints.struct_class = Types::StageEndpoints

    StageSession.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sessionId"))
    StageSession.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StageSession.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StageSession.struct_class = Types::StageSession

    StageSessionList.member = Shapes::ShapeRef.new(shape: StageSessionSummary)

    StageSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sessionId"))
    StageSessionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StageSessionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StageSessionSummary.struct_class = Types::StageSessionSummary

    StageSummary.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    StageSummary.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    StageSummary.add_member(:active_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "activeSessionId"))
    StageSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StageSummary.struct_class = Types::StageSummary

    StageSummaryList.member = Shapes::ShapeRef.new(shape: StageSummary)

    StartCompositionRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    StartCompositionRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: CompositionClientToken, location_name: "idempotencyToken", metadata: {"idempotencyToken" => true}))
    StartCompositionRequest.add_member(:layout, Shapes::ShapeRef.new(shape: LayoutConfiguration, location_name: "layout"))
    StartCompositionRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: DestinationConfigurationList, required: true, location_name: "destinations"))
    StartCompositionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartCompositionRequest.struct_class = Types::StartCompositionRequest

    StartCompositionResponse.add_member(:composition, Shapes::ShapeRef.new(shape: Composition, location_name: "composition"))
    StartCompositionResponse.struct_class = Types::StartCompositionResponse

    StartParticipantReplicationRequest.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "sourceStageArn"))
    StartParticipantReplicationRequest.add_member(:destination_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "destinationStageArn"))
    StartParticipantReplicationRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    StartParticipantReplicationRequest.add_member(:reconnect_window_seconds, Shapes::ShapeRef.new(shape: ReconnectWindowSeconds, location_name: "reconnectWindowSeconds"))
    StartParticipantReplicationRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: "attributes"))
    StartParticipantReplicationRequest.struct_class = Types::StartParticipantReplicationRequest

    StartParticipantReplicationResponse.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    StartParticipantReplicationResponse.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    StartParticipantReplicationResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    StartParticipantReplicationResponse.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    StartParticipantReplicationResponse.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    StartParticipantReplicationResponse.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    StartParticipantReplicationResponse.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    StartParticipantReplicationResponse.struct_class = Types::StartParticipantReplicationResponse

    StopCompositionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: CompositionArn, required: true, location_name: "arn"))
    StopCompositionRequest.struct_class = Types::StopCompositionRequest

    StopCompositionResponse.struct_class = Types::StopCompositionResponse

    StopParticipantReplicationRequest.add_member(:source_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "sourceStageArn"))
    StopParticipantReplicationRequest.add_member(:destination_stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "destinationStageArn"))
    StopParticipantReplicationRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    StopParticipantReplicationRequest.struct_class = Types::StopParticipantReplicationRequest

    StopParticipantReplicationResponse.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    StopParticipantReplicationResponse.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    StopParticipantReplicationResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    StopParticipantReplicationResponse.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    StopParticipantReplicationResponse.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    StopParticipantReplicationResponse.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    StopParticipantReplicationResponse.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    StopParticipantReplicationResponse.struct_class = Types::StopParticipantReplicationResponse

    StorageConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: StorageConfigurationArn, required: true, location_name: "arn"))
    StorageConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: "name"))
    StorageConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3StorageConfiguration, location_name: "s3"))
    StorageConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StorageConfiguration.struct_class = Types::StorageConfiguration

    StorageConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: StorageConfigurationArn, required: true, location_name: "arn"))
    StorageConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: StorageConfigurationName, location_name: "name"))
    StorageConfigurationSummary.add_member(:s3, Shapes::ShapeRef.new(shape: S3StorageConfiguration, location_name: "s3"))
    StorageConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StorageConfigurationSummary.struct_class = Types::StorageConfigurationSummary

    StorageConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: StorageConfigurationSummary)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThumbnailStorageTypeList.member = Shapes::ShapeRef.new(shape: ThumbnailStorageType)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateIngestConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: IngestConfigurationArn, required: true, location_name: "arn"))
    UpdateIngestConfigurationRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: IngestConfigurationStageArn, location_name: "stageArn"))
    UpdateIngestConfigurationRequest.struct_class = Types::UpdateIngestConfigurationRequest

    UpdateIngestConfigurationResponse.add_member(:ingest_configuration, Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    UpdateIngestConfigurationResponse.struct_class = Types::UpdateIngestConfigurationResponse

    UpdateStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    UpdateStageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    UpdateStageRequest.add_member(:auto_participant_recording_configuration, Shapes::ShapeRef.new(shape: AutoParticipantRecordingConfiguration, location_name: "autoParticipantRecordingConfiguration"))
    UpdateStageRequest.struct_class = Types::UpdateStageRequest

    UpdateStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    UpdateStageResponse.struct_class = Types::UpdateStageResponse

    ValidationException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ValidationException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ValidationException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ValidationException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ValidationException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ValidationException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ValidationException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ValidationException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ValidationException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ValidationException.struct_class = Types::ValidationException

    Video.add_member(:width, Shapes::ShapeRef.new(shape: Width, location_name: "width"))
    Video.add_member(:height, Shapes::ShapeRef.new(shape: Height, location_name: "height"))
    Video.add_member(:framerate, Shapes::ShapeRef.new(shape: Framerate, location_name: "framerate"))
    Video.add_member(:bitrate, Shapes::ShapeRef.new(shape: Bitrate, location_name: "bitrate"))
    Video.struct_class = Types::Video


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-14"

      api.metadata = {
        "apiVersion" => "2020-07-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ivsrealtime",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "ivsrealtime",
        "serviceFullName" => "Amazon Interactive Video Service RealTime",
        "serviceId" => "IVS RealTime",
        "signatureVersion" => "v4",
        "signingName" => "ivs",
        "uid" => "ivs-realtime-2020-07-14",
      }

      api.add_operation(:create_encoder_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEncoderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateEncoderConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateEncoderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEncoderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:create_ingest_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIngestConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateIngestConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateIngestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIngestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:create_participant_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParticipantToken"
        o.http_method = "POST"
        o.http_request_uri = "/CreateParticipantToken"
        o.input = Shapes::ShapeRef.new(shape: CreateParticipantTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParticipantTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:create_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStage"
        o.http_method = "POST"
        o.http_request_uri = "/CreateStage"
        o.input = Shapes::ShapeRef.new(shape: CreateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:create_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateStorageConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateStorageConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStorageConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_encoder_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEncoderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteEncoderConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteEncoderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEncoderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_ingest_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIngestConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteIngestConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteIngestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIngestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/DeletePublicKey"
        o.input = Shapes::ShapeRef.new(shape: DeletePublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStage"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteStage"
        o.input = Shapes::ShapeRef.new(shape: DeleteStageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteStorageConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteStorageConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStorageConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disconnect_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectParticipant"
        o.input = Shapes::ShapeRef.new(shape: DisconnectParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:get_composition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComposition"
        o.http_method = "POST"
        o.http_request_uri = "/GetComposition"
        o.input = Shapes::ShapeRef.new(shape: GetCompositionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCompositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_encoder_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEncoderConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetEncoderConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetEncoderConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEncoderConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_ingest_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIngestConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetIngestConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetIngestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIngestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/GetParticipant"
        o.input = Shapes::ShapeRef.new(shape: GetParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/GetPublicKey"
        o.input = Shapes::ShapeRef.new(shape: GetPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStage"
        o.http_method = "POST"
        o.http_request_uri = "/GetStage"
        o.input = Shapes::ShapeRef.new(shape: GetStageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_stage_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStageSession"
        o.http_method = "POST"
        o.http_request_uri = "/GetStageSession"
        o.input = Shapes::ShapeRef.new(shape: GetStageSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetStorageConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetStorageConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStorageConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:import_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/ImportPublicKey"
        o.input = Shapes::ShapeRef.new(shape: ImportPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:list_compositions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCompositions"
        o.http_method = "POST"
        o.http_request_uri = "/ListCompositions"
        o.input = Shapes::ShapeRef.new(shape: ListCompositionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCompositionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_encoder_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEncoderConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListEncoderConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListEncoderConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEncoderConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ingest_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngestConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListIngestConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListIngestConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngestConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_participant_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParticipantEvents"
        o.http_method = "POST"
        o.http_request_uri = "/ListParticipantEvents"
        o.input = Shapes::ShapeRef.new(shape: ListParticipantEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParticipantEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_participant_replicas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParticipantReplicas"
        o.http_method = "POST"
        o.http_request_uri = "/ListParticipantReplicas"
        o.input = Shapes::ShapeRef.new(shape: ListParticipantReplicasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParticipantReplicasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_participants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParticipants"
        o.http_method = "POST"
        o.http_request_uri = "/ListParticipants"
        o.input = Shapes::ShapeRef.new(shape: ListParticipantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParticipantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_public_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublicKeys"
        o.http_method = "POST"
        o.http_request_uri = "/ListPublicKeys"
        o.input = Shapes::ShapeRef.new(shape: ListPublicKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublicKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stage_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStageSessions"
        o.http_method = "POST"
        o.http_request_uri = "/ListStageSessions"
        o.input = Shapes::ShapeRef.new(shape: ListStageSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStageSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStages"
        o.http_method = "POST"
        o.http_request_uri = "/ListStages"
        o.input = Shapes::ShapeRef.new(shape: ListStagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_storage_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStorageConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListStorageConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListStorageConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStorageConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_composition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartComposition"
        o.http_method = "POST"
        o.http_request_uri = "/StartComposition"
        o.input = Shapes::ShapeRef.new(shape: StartCompositionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCompositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:start_participant_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartParticipantReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StartParticipantReplication"
        o.input = Shapes::ShapeRef.new(shape: StartParticipantReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartParticipantReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:stop_composition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopComposition"
        o.http_method = "POST"
        o.http_request_uri = "/StopComposition"
        o.input = Shapes::ShapeRef.new(shape: StopCompositionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCompositionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_participant_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopParticipantReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StopParticipantReplication"
        o.input = Shapes::ShapeRef.new(shape: StopParticipantReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopParticipantReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_ingest_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIngestConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateIngestConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateIngestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIngestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:update_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStage"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateStage"
        o.input = Shapes::ShapeRef.new(shape: UpdateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)
    end

  end
end
