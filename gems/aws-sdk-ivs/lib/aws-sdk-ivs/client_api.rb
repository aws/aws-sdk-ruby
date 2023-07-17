# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AudioConfiguration = Shapes::StructureShape.new(name: 'AudioConfiguration')
    BatchError = Shapes::StructureShape.new(name: 'BatchError')
    BatchErrors = Shapes::ListShape.new(name: 'BatchErrors')
    BatchGetChannelRequest = Shapes::StructureShape.new(name: 'BatchGetChannelRequest')
    BatchGetChannelResponse = Shapes::StructureShape.new(name: 'BatchGetChannelResponse')
    BatchGetStreamKeyRequest = Shapes::StructureShape.new(name: 'BatchGetStreamKeyRequest')
    BatchGetStreamKeyResponse = Shapes::StructureShape.new(name: 'BatchGetStreamKeyResponse')
    BatchStartViewerSessionRevocationError = Shapes::StructureShape.new(name: 'BatchStartViewerSessionRevocationError')
    BatchStartViewerSessionRevocationErrors = Shapes::ListShape.new(name: 'BatchStartViewerSessionRevocationErrors')
    BatchStartViewerSessionRevocationRequest = Shapes::StructureShape.new(name: 'BatchStartViewerSessionRevocationRequest')
    BatchStartViewerSessionRevocationResponse = Shapes::StructureShape.new(name: 'BatchStartViewerSessionRevocationResponse')
    BatchStartViewerSessionRevocationViewerSession = Shapes::StructureShape.new(name: 'BatchStartViewerSessionRevocationViewerSession')
    BatchStartViewerSessionRevocationViewerSessionList = Shapes::ListShape.new(name: 'BatchStartViewerSessionRevocationViewerSessionList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelArnList = Shapes::ListShape.new(name: 'ChannelArnList')
    ChannelLatencyMode = Shapes::StringShape.new(name: 'ChannelLatencyMode')
    ChannelList = Shapes::ListShape.new(name: 'ChannelList')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelNotBroadcasting = Shapes::StructureShape.new(name: 'ChannelNotBroadcasting')
    ChannelRecordingConfigurationArn = Shapes::StringShape.new(name: 'ChannelRecordingConfigurationArn')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateRecordingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateRecordingConfigurationRequest')
    CreateRecordingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateRecordingConfigurationResponse')
    CreateStreamKeyRequest = Shapes::StructureShape.new(name: 'CreateStreamKeyRequest')
    CreateStreamKeyResponse = Shapes::StructureShape.new(name: 'CreateStreamKeyResponse')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeletePlaybackKeyPairRequest = Shapes::StructureShape.new(name: 'DeletePlaybackKeyPairRequest')
    DeletePlaybackKeyPairResponse = Shapes::StructureShape.new(name: 'DeletePlaybackKeyPairResponse')
    DeleteRecordingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteRecordingConfigurationRequest')
    DeleteStreamKeyRequest = Shapes::StructureShape.new(name: 'DeleteStreamKeyRequest')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    GetChannelRequest = Shapes::StructureShape.new(name: 'GetChannelRequest')
    GetChannelResponse = Shapes::StructureShape.new(name: 'GetChannelResponse')
    GetPlaybackKeyPairRequest = Shapes::StructureShape.new(name: 'GetPlaybackKeyPairRequest')
    GetPlaybackKeyPairResponse = Shapes::StructureShape.new(name: 'GetPlaybackKeyPairResponse')
    GetRecordingConfigurationRequest = Shapes::StructureShape.new(name: 'GetRecordingConfigurationRequest')
    GetRecordingConfigurationResponse = Shapes::StructureShape.new(name: 'GetRecordingConfigurationResponse')
    GetStreamKeyRequest = Shapes::StructureShape.new(name: 'GetStreamKeyRequest')
    GetStreamKeyResponse = Shapes::StructureShape.new(name: 'GetStreamKeyResponse')
    GetStreamRequest = Shapes::StructureShape.new(name: 'GetStreamRequest')
    GetStreamResponse = Shapes::StructureShape.new(name: 'GetStreamResponse')
    GetStreamSessionRequest = Shapes::StructureShape.new(name: 'GetStreamSessionRequest')
    GetStreamSessionResponse = Shapes::StructureShape.new(name: 'GetStreamSessionResponse')
    ImportPlaybackKeyPairRequest = Shapes::StructureShape.new(name: 'ImportPlaybackKeyPairRequest')
    ImportPlaybackKeyPairResponse = Shapes::StructureShape.new(name: 'ImportPlaybackKeyPairResponse')
    IngestConfiguration = Shapes::StructureShape.new(name: 'IngestConfiguration')
    IngestEndpoint = Shapes::StringShape.new(name: 'IngestEndpoint')
    InsecureIngest = Shapes::BooleanShape.new(name: 'InsecureIngest')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsAuthorized = Shapes::BooleanShape.new(name: 'IsAuthorized')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListPlaybackKeyPairsRequest = Shapes::StructureShape.new(name: 'ListPlaybackKeyPairsRequest')
    ListPlaybackKeyPairsResponse = Shapes::StructureShape.new(name: 'ListPlaybackKeyPairsResponse')
    ListRecordingConfigurationsRequest = Shapes::StructureShape.new(name: 'ListRecordingConfigurationsRequest')
    ListRecordingConfigurationsResponse = Shapes::StructureShape.new(name: 'ListRecordingConfigurationsResponse')
    ListStreamKeysRequest = Shapes::StructureShape.new(name: 'ListStreamKeysRequest')
    ListStreamKeysResponse = Shapes::StructureShape.new(name: 'ListStreamKeysResponse')
    ListStreamSessionsRequest = Shapes::StructureShape.new(name: 'ListStreamSessionsRequest')
    ListStreamSessionsResponse = Shapes::StructureShape.new(name: 'ListStreamSessionsResponse')
    ListStreamsRequest = Shapes::StructureShape.new(name: 'ListStreamsRequest')
    ListStreamsResponse = Shapes::StructureShape.new(name: 'ListStreamsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxChannelResults = Shapes::IntegerShape.new(name: 'MaxChannelResults')
    MaxPlaybackKeyPairResults = Shapes::IntegerShape.new(name: 'MaxPlaybackKeyPairResults')
    MaxRecordingConfigurationResults = Shapes::IntegerShape.new(name: 'MaxRecordingConfigurationResults')
    MaxStreamKeyResults = Shapes::IntegerShape.new(name: 'MaxStreamKeyResults')
    MaxStreamResults = Shapes::IntegerShape.new(name: 'MaxStreamResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PendingVerification = Shapes::StructureShape.new(name: 'PendingVerification')
    PlaybackKeyPair = Shapes::StructureShape.new(name: 'PlaybackKeyPair')
    PlaybackKeyPairArn = Shapes::StringShape.new(name: 'PlaybackKeyPairArn')
    PlaybackKeyPairFingerprint = Shapes::StringShape.new(name: 'PlaybackKeyPairFingerprint')
    PlaybackKeyPairList = Shapes::ListShape.new(name: 'PlaybackKeyPairList')
    PlaybackKeyPairName = Shapes::StringShape.new(name: 'PlaybackKeyPairName')
    PlaybackKeyPairSummary = Shapes::StructureShape.new(name: 'PlaybackKeyPairSummary')
    PlaybackPublicKeyMaterial = Shapes::StringShape.new(name: 'PlaybackPublicKeyMaterial')
    PlaybackURL = Shapes::StringShape.new(name: 'PlaybackURL')
    PutMetadataRequest = Shapes::StructureShape.new(name: 'PutMetadataRequest')
    RecordingConfiguration = Shapes::StructureShape.new(name: 'RecordingConfiguration')
    RecordingConfigurationArn = Shapes::StringShape.new(name: 'RecordingConfigurationArn')
    RecordingConfigurationList = Shapes::ListShape.new(name: 'RecordingConfigurationList')
    RecordingConfigurationName = Shapes::StringShape.new(name: 'RecordingConfigurationName')
    RecordingConfigurationState = Shapes::StringShape.new(name: 'RecordingConfigurationState')
    RecordingConfigurationSummary = Shapes::StructureShape.new(name: 'RecordingConfigurationSummary')
    RecordingMode = Shapes::StringShape.new(name: 'RecordingMode')
    RecordingReconnectWindowSeconds = Shapes::IntegerShape.new(name: 'RecordingReconnectWindowSeconds')
    RenditionConfiguration = Shapes::StructureShape.new(name: 'RenditionConfiguration')
    RenditionConfigurationRendition = Shapes::StringShape.new(name: 'RenditionConfigurationRendition')
    RenditionConfigurationRenditionList = Shapes::ListShape.new(name: 'RenditionConfigurationRenditionList')
    RenditionConfigurationRenditionSelection = Shapes::StringShape.new(name: 'RenditionConfigurationRenditionSelection')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3DestinationBucketName = Shapes::StringShape.new(name: 'S3DestinationBucketName')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartViewerSessionRevocationRequest = Shapes::StructureShape.new(name: 'StartViewerSessionRevocationRequest')
    StartViewerSessionRevocationResponse = Shapes::StructureShape.new(name: 'StartViewerSessionRevocationResponse')
    StopStreamRequest = Shapes::StructureShape.new(name: 'StopStreamRequest')
    StopStreamResponse = Shapes::StructureShape.new(name: 'StopStreamResponse')
    Stream = Shapes::StructureShape.new(name: 'Stream')
    StreamEvent = Shapes::StructureShape.new(name: 'StreamEvent')
    StreamEvents = Shapes::ListShape.new(name: 'StreamEvents')
    StreamFilters = Shapes::StructureShape.new(name: 'StreamFilters')
    StreamHealth = Shapes::StringShape.new(name: 'StreamHealth')
    StreamId = Shapes::StringShape.new(name: 'StreamId')
    StreamKey = Shapes::StructureShape.new(name: 'StreamKey')
    StreamKeyArn = Shapes::StringShape.new(name: 'StreamKeyArn')
    StreamKeyArnList = Shapes::ListShape.new(name: 'StreamKeyArnList')
    StreamKeyList = Shapes::ListShape.new(name: 'StreamKeyList')
    StreamKeySummary = Shapes::StructureShape.new(name: 'StreamKeySummary')
    StreamKeyValue = Shapes::StringShape.new(name: 'StreamKeyValue')
    StreamKeys = Shapes::ListShape.new(name: 'StreamKeys')
    StreamList = Shapes::ListShape.new(name: 'StreamList')
    StreamMetadata = Shapes::StringShape.new(name: 'StreamMetadata')
    StreamSession = Shapes::StructureShape.new(name: 'StreamSession')
    StreamSessionList = Shapes::ListShape.new(name: 'StreamSessionList')
    StreamSessionSummary = Shapes::StructureShape.new(name: 'StreamSessionSummary')
    StreamStartTime = Shapes::TimestampShape.new(name: 'StreamStartTime', timestampFormat: "iso8601")
    StreamState = Shapes::StringShape.new(name: 'StreamState')
    StreamSummary = Shapes::StructureShape.new(name: 'StreamSummary')
    StreamUnavailable = Shapes::StructureShape.new(name: 'StreamUnavailable')
    StreamViewerCount = Shapes::IntegerShape.new(name: 'StreamViewerCount')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TargetIntervalSeconds = Shapes::IntegerShape.new(name: 'TargetIntervalSeconds')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThumbnailConfiguration = Shapes::StructureShape.new(name: 'ThumbnailConfiguration')
    ThumbnailConfigurationResolution = Shapes::StringShape.new(name: 'ThumbnailConfigurationResolution')
    ThumbnailConfigurationStorage = Shapes::StringShape.new(name: 'ThumbnailConfigurationStorage')
    ThumbnailConfigurationStorageList = Shapes::ListShape.new(name: 'ThumbnailConfigurationStorageList')
    Time = Shapes::TimestampShape.new(name: 'Time', timestampFormat: "iso8601")
    TranscodePreset = Shapes::StringShape.new(name: 'TranscodePreset')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VideoConfiguration = Shapes::StructureShape.new(name: 'VideoConfiguration')
    ViewerId = Shapes::StringShape.new(name: 'ViewerId')
    ViewerSessionVersion = Shapes::IntegerShape.new(name: 'ViewerSessionVersion')
    errorCode = Shapes::StringShape.new(name: 'errorCode')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AudioConfiguration.add_member(:channels, Shapes::ShapeRef.new(shape: Integer, location_name: "channels"))
    AudioConfiguration.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    AudioConfiguration.add_member(:sample_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "sampleRate"))
    AudioConfiguration.add_member(:target_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate"))
    AudioConfiguration.struct_class = Types::AudioConfiguration

    BatchError.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    BatchError.add_member(:code, Shapes::ShapeRef.new(shape: errorCode, location_name: "code"))
    BatchError.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    BatchError.struct_class = Types::BatchError

    BatchErrors.member = Shapes::ShapeRef.new(shape: BatchError)

    BatchGetChannelRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ChannelArnList, required: true, location_name: "arns"))
    BatchGetChannelRequest.struct_class = Types::BatchGetChannelRequest

    BatchGetChannelResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    BatchGetChannelResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetChannelResponse.struct_class = Types::BatchGetChannelResponse

    BatchGetStreamKeyRequest.add_member(:arns, Shapes::ShapeRef.new(shape: StreamKeyArnList, required: true, location_name: "arns"))
    BatchGetStreamKeyRequest.struct_class = Types::BatchGetStreamKeyRequest

    BatchGetStreamKeyResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetStreamKeyResponse.add_member(:stream_keys, Shapes::ShapeRef.new(shape: StreamKeys, location_name: "streamKeys"))
    BatchGetStreamKeyResponse.struct_class = Types::BatchGetStreamKeyResponse

    BatchStartViewerSessionRevocationError.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    BatchStartViewerSessionRevocationError.add_member(:code, Shapes::ShapeRef.new(shape: errorCode, location_name: "code"))
    BatchStartViewerSessionRevocationError.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    BatchStartViewerSessionRevocationError.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    BatchStartViewerSessionRevocationError.struct_class = Types::BatchStartViewerSessionRevocationError

    BatchStartViewerSessionRevocationErrors.member = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationError)

    BatchStartViewerSessionRevocationRequest.add_member(:viewer_sessions, Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSessionList, required: true, location_name: "viewerSessions"))
    BatchStartViewerSessionRevocationRequest.struct_class = Types::BatchStartViewerSessionRevocationRequest

    BatchStartViewerSessionRevocationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationErrors, location_name: "errors"))
    BatchStartViewerSessionRevocationResponse.struct_class = Types::BatchStartViewerSessionRevocationResponse

    BatchStartViewerSessionRevocationViewerSession.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_session_versions_less_than_or_equal_to, Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo"))
    BatchStartViewerSessionRevocationViewerSession.struct_class = Types::BatchStartViewerSessionRevocationViewerSession

    BatchStartViewerSessionRevocationViewerSessionList.member = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSession)

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    Channel.add_member(:authorized, Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized"))
    Channel.add_member(:ingest_endpoint, Shapes::ShapeRef.new(shape: IngestEndpoint, location_name: "ingestEndpoint"))
    Channel.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest"))
    Channel.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    Channel.add_member(:playback_url, Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Channel.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    Channel.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    Channel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Channel.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    Channel.struct_class = Types::Channel

    ChannelArnList.member = Shapes::ShapeRef.new(shape: ChannelArn)

    ChannelList.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ChannelNotBroadcasting.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ChannelNotBroadcasting.struct_class = Types::ChannelNotBroadcasting

    ChannelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    ChannelSummary.add_member(:authorized, Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized"))
    ChannelSummary.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest"))
    ChannelSummary.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    ChannelSummary.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    ChannelSummary.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    ChannelSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ChannelSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    ChannelSummary.struct_class = Types::ChannelSummary

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ConflictException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ConflictException.struct_class = Types::ConflictException

    CreateChannelRequest.add_member(:authorized, Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized"))
    CreateChannelRequest.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest"))
    CreateChannelRequest.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    CreateChannelRequest.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    CreateChannelRequest.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResponse.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateRecordingConfigurationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    CreateRecordingConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    CreateRecordingConfigurationRequest.add_member(:recording_reconnect_window_seconds, Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds"))
    CreateRecordingConfigurationRequest.add_member(:rendition_configuration, Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    CreateRecordingConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRecordingConfigurationRequest.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    CreateRecordingConfigurationRequest.struct_class = Types::CreateRecordingConfigurationRequest

    CreateRecordingConfigurationResponse.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    CreateRecordingConfigurationResponse.struct_class = Types::CreateRecordingConfigurationResponse

    CreateStreamKeyRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    CreateStreamKeyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamKeyRequest.struct_class = Types::CreateStreamKeyRequest

    CreateStreamKeyResponse.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateStreamKeyResponse.struct_class = Types::CreateStreamKeyResponse

    DeleteChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeletePlaybackKeyPairRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, required: true, location_name: "arn"))
    DeletePlaybackKeyPairRequest.struct_class = Types::DeletePlaybackKeyPairRequest

    DeletePlaybackKeyPairResponse.struct_class = Types::DeletePlaybackKeyPairResponse

    DeleteRecordingConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    DeleteRecordingConfigurationRequest.struct_class = Types::DeleteRecordingConfigurationRequest

    DeleteStreamKeyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, required: true, location_name: "arn"))
    DeleteStreamKeyRequest.struct_class = Types::DeleteStreamKeyRequest

    DestinationConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    GetChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    GetChannelRequest.struct_class = Types::GetChannelRequest

    GetChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    GetChannelResponse.struct_class = Types::GetChannelResponse

    GetPlaybackKeyPairRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, required: true, location_name: "arn"))
    GetPlaybackKeyPairRequest.struct_class = Types::GetPlaybackKeyPairRequest

    GetPlaybackKeyPairResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    GetPlaybackKeyPairResponse.struct_class = Types::GetPlaybackKeyPairResponse

    GetRecordingConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    GetRecordingConfigurationRequest.struct_class = Types::GetRecordingConfigurationRequest

    GetRecordingConfigurationResponse.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    GetRecordingConfigurationResponse.struct_class = Types::GetRecordingConfigurationResponse

    GetStreamKeyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, required: true, location_name: "arn"))
    GetStreamKeyRequest.struct_class = Types::GetStreamKeyRequest

    GetStreamKeyResponse.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    GetStreamKeyResponse.struct_class = Types::GetStreamKeyResponse

    GetStreamRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    GetStreamRequest.struct_class = Types::GetStreamRequest

    GetStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: Stream, location_name: "stream"))
    GetStreamResponse.struct_class = Types::GetStreamResponse

    GetStreamSessionRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    GetStreamSessionRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    GetStreamSessionRequest.struct_class = Types::GetStreamSessionRequest

    GetStreamSessionResponse.add_member(:stream_session, Shapes::ShapeRef.new(shape: StreamSession, location_name: "streamSession"))
    GetStreamSessionResponse.struct_class = Types::GetStreamSessionResponse

    ImportPlaybackKeyPairRequest.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    ImportPlaybackKeyPairRequest.add_member(:public_key_material, Shapes::ShapeRef.new(shape: PlaybackPublicKeyMaterial, required: true, location_name: "publicKeyMaterial"))
    ImportPlaybackKeyPairRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ImportPlaybackKeyPairRequest.struct_class = Types::ImportPlaybackKeyPairRequest

    ImportPlaybackKeyPairResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    ImportPlaybackKeyPairResponse.struct_class = Types::ImportPlaybackKeyPairResponse

    IngestConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioConfiguration, location_name: "audio"))
    IngestConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoConfiguration, location_name: "video"))
    IngestConfiguration.struct_class = Types::IngestConfiguration

    InternalServerException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChannelsRequest.add_member(:filter_by_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "filterByName"))
    ListChannelsRequest.add_member(:filter_by_recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "filterByRecordingConfigurationArn"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxChannelResults, location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelList, required: true, location_name: "channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListPlaybackKeyPairsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPlaybackKeyPairResults, location_name: "maxResults"))
    ListPlaybackKeyPairsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsRequest.struct_class = Types::ListPlaybackKeyPairsRequest

    ListPlaybackKeyPairsResponse.add_member(:key_pairs, Shapes::ShapeRef.new(shape: PlaybackKeyPairList, required: true, location_name: "keyPairs"))
    ListPlaybackKeyPairsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsResponse.struct_class = Types::ListPlaybackKeyPairsResponse

    ListRecordingConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxRecordingConfigurationResults, location_name: "maxResults"))
    ListRecordingConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsRequest.struct_class = Types::ListRecordingConfigurationsRequest

    ListRecordingConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsResponse.add_member(:recording_configurations, Shapes::ShapeRef.new(shape: RecordingConfigurationList, required: true, location_name: "recordingConfigurations"))
    ListRecordingConfigurationsResponse.struct_class = Types::ListRecordingConfigurationsResponse

    ListStreamKeysRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    ListStreamKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamKeyResults, location_name: "maxResults"))
    ListStreamKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysRequest.struct_class = Types::ListStreamKeysRequest

    ListStreamKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysResponse.add_member(:stream_keys, Shapes::ShapeRef.new(shape: StreamKeyList, required: true, location_name: "streamKeys"))
    ListStreamKeysResponse.struct_class = Types::ListStreamKeysResponse

    ListStreamSessionsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    ListStreamSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsRequest.struct_class = Types::ListStreamSessionsRequest

    ListStreamSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsResponse.add_member(:stream_sessions, Shapes::ShapeRef.new(shape: StreamSessionList, required: true, location_name: "streamSessions"))
    ListStreamSessionsResponse.struct_class = Types::ListStreamSessionsResponse

    ListStreamsRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: StreamFilters, location_name: "filterBy"))
    ListStreamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsRequest.struct_class = Types::ListStreamsRequest

    ListStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsResponse.add_member(:streams, Shapes::ShapeRef.new(shape: StreamList, required: true, location_name: "streams"))
    ListStreamsResponse.struct_class = Types::ListStreamsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PendingVerification.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    PendingVerification.struct_class = Types::PendingVerification

    PlaybackKeyPair.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPair.add_member(:fingerprint, Shapes::ShapeRef.new(shape: PlaybackKeyPairFingerprint, location_name: "fingerprint"))
    PlaybackKeyPair.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPair.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPair.struct_class = Types::PlaybackKeyPair

    PlaybackKeyPairList.member = Shapes::ShapeRef.new(shape: PlaybackKeyPairSummary)

    PlaybackKeyPairSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPairSummary.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPairSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPairSummary.struct_class = Types::PlaybackKeyPairSummary

    PutMetadataRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    PutMetadataRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: StreamMetadata, required: true, location_name: "metadata"))
    PutMetadataRequest.struct_class = Types::PutMetadataRequest

    RecordingConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    RecordingConfiguration.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    RecordingConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfiguration.add_member(:recording_reconnect_window_seconds, Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds"))
    RecordingConfiguration.add_member(:rendition_configuration, Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    RecordingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: RecordingConfigurationState, required: true, location_name: "state"))
    RecordingConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfiguration.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    RecordingConfiguration.struct_class = Types::RecordingConfiguration

    RecordingConfigurationList.member = Shapes::ShapeRef.new(shape: RecordingConfigurationSummary)

    RecordingConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    RecordingConfigurationSummary.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    RecordingConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfigurationSummary.add_member(:state, Shapes::ShapeRef.new(shape: RecordingConfigurationState, required: true, location_name: "state"))
    RecordingConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfigurationSummary.struct_class = Types::RecordingConfigurationSummary

    RenditionConfiguration.add_member(:rendition_selection, Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionSelection, location_name: "renditionSelection"))
    RenditionConfiguration.add_member(:renditions, Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionList, location_name: "renditions"))
    RenditionConfiguration.struct_class = Types::RenditionConfiguration

    RenditionConfigurationRenditionList.member = Shapes::ShapeRef.new(shape: RenditionConfigurationRendition)

    ResourceNotFoundException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3DestinationBucketName, required: true, location_name: "bucketName"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

    ServiceQuotaExceededException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartViewerSessionRevocationRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    StartViewerSessionRevocationRequest.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    StartViewerSessionRevocationRequest.add_member(:viewer_session_versions_less_than_or_equal_to, Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo"))
    StartViewerSessionRevocationRequest.struct_class = Types::StartViewerSessionRevocationRequest

    StartViewerSessionRevocationResponse.struct_class = Types::StartViewerSessionRevocationResponse

    StopStreamRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    StopStreamRequest.struct_class = Types::StopStreamRequest

    StopStreamResponse.struct_class = Types::StopStreamResponse

    Stream.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    Stream.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    Stream.add_member(:playback_url, Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Stream.add_member(:start_time, Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    Stream.add_member(:state, Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    Stream.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    Stream.add_member(:viewer_count, Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount"))
    Stream.struct_class = Types::Stream

    StreamEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: Time, location_name: "eventTime"))
    StreamEvent.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    StreamEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    StreamEvent.struct_class = Types::StreamEvent

    StreamEvents.member = Shapes::ShapeRef.new(shape: StreamEvent)

    StreamFilters.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamFilters.struct_class = Types::StreamFilters

    StreamKey.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKey.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKey.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKey.add_member(:value, Shapes::ShapeRef.new(shape: StreamKeyValue, location_name: "value"))
    StreamKey.struct_class = Types::StreamKey

    StreamKeyArnList.member = Shapes::ShapeRef.new(shape: StreamKeyArn)

    StreamKeyList.member = Shapes::ShapeRef.new(shape: StreamKeySummary)

    StreamKeySummary.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKeySummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKeySummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKeySummary.struct_class = Types::StreamKeySummary

    StreamKeys.member = Shapes::ShapeRef.new(shape: StreamKey)

    StreamList.member = Shapes::ShapeRef.new(shape: StreamSummary)

    StreamSession.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    StreamSession.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSession.add_member(:ingest_configuration, Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    StreamSession.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    StreamSession.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSession.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSession.add_member(:truncated_events, Shapes::ShapeRef.new(shape: StreamEvents, location_name: "truncatedEvents"))
    StreamSession.struct_class = Types::StreamSession

    StreamSessionList.member = Shapes::ShapeRef.new(shape: StreamSessionSummary)

    StreamSessionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSessionSummary.add_member(:has_error_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasErrorEvent"))
    StreamSessionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSessionSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSessionSummary.struct_class = Types::StreamSessionSummary

    StreamSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamSummary.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    StreamSummary.add_member(:state, Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    StreamSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSummary.add_member(:viewer_count, Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount"))
    StreamSummary.struct_class = Types::StreamSummary

    StreamUnavailable.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    StreamUnavailable.struct_class = Types::StreamUnavailable

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ThumbnailConfiguration.add_member(:recording_mode, Shapes::ShapeRef.new(shape: RecordingMode, location_name: "recordingMode"))
    ThumbnailConfiguration.add_member(:resolution, Shapes::ShapeRef.new(shape: ThumbnailConfigurationResolution, location_name: "resolution"))
    ThumbnailConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorageList, location_name: "storage"))
    ThumbnailConfiguration.add_member(:target_interval_seconds, Shapes::ShapeRef.new(shape: TargetIntervalSeconds, location_name: "targetIntervalSeconds"))
    ThumbnailConfiguration.struct_class = Types::ThumbnailConfiguration

    ThumbnailConfigurationStorageList.member = Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorage)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    UpdateChannelRequest.add_member(:authorized, Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized"))
    UpdateChannelRequest.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest"))
    UpdateChannelRequest.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    UpdateChannelRequest.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    UpdateChannelRequest.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    UpdateChannelRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    ValidationException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ValidationException.struct_class = Types::ValidationException

    VideoConfiguration.add_member(:avc_level, Shapes::ShapeRef.new(shape: String, location_name: "avcLevel"))
    VideoConfiguration.add_member(:avc_profile, Shapes::ShapeRef.new(shape: String, location_name: "avcProfile"))
    VideoConfiguration.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    VideoConfiguration.add_member(:encoder, Shapes::ShapeRef.new(shape: String, location_name: "encoder"))
    VideoConfiguration.add_member(:target_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate"))
    VideoConfiguration.add_member(:target_framerate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetFramerate"))
    VideoConfiguration.add_member(:video_height, Shapes::ShapeRef.new(shape: Integer, location_name: "videoHeight"))
    VideoConfiguration.add_member(:video_width, Shapes::ShapeRef.new(shape: Integer, location_name: "videoWidth"))
    VideoConfiguration.struct_class = Types::VideoConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-14"

      api.metadata = {
        "apiVersion" => "2020-07-14",
        "endpointPrefix" => "ivs",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon IVS",
        "serviceFullName" => "Amazon Interactive Video Service",
        "serviceId" => "ivs",
        "signatureVersion" => "v4",
        "signingName" => "ivs",
        "uid" => "ivs-2020-07-14",
      }

      api.add_operation(:batch_get_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetChannel"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetChannel"
        o.input = Shapes::ShapeRef.new(shape: BatchGetChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetChannelResponse)
      end)

      api.add_operation(:batch_get_stream_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetStreamKey"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetStreamKey"
        o.input = Shapes::ShapeRef.new(shape: BatchGetStreamKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetStreamKeyResponse)
      end)

      api.add_operation(:batch_start_viewer_session_revocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStartViewerSessionRevocation"
        o.http_method = "POST"
        o.http_request_uri = "/BatchStartViewerSessionRevocation"
        o.input = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/CreateChannel"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_recording_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecordingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateRecordingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateRecordingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecordingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_stream_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStreamKey"
        o.http_method = "POST"
        o.http_request_uri = "/CreateStreamKey"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStreamKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteChannel"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_playback_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlaybackKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/DeletePlaybackKeyPair"
        o.input = Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlaybackKeyPairResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_recording_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecordingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteRecordingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecordingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_stream_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStreamKey"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteStreamKey"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:get_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannel"
        o.http_method = "POST"
        o.http_request_uri = "/GetChannel"
        o.input = Shapes::ShapeRef.new(shape: GetChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_playback_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlaybackKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/GetPlaybackKeyPair"
        o.input = Shapes::ShapeRef.new(shape: GetPlaybackKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaybackKeyPairResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_recording_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecordingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetRecordingConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetRecordingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecordingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStream"
        o.http_method = "POST"
        o.http_request_uri = "/GetStream"
        o.input = Shapes::ShapeRef.new(shape: GetStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
      end)

      api.add_operation(:get_stream_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamKey"
        o.http_method = "POST"
        o.http_request_uri = "/GetStreamKey"
        o.input = Shapes::ShapeRef.new(shape: GetStreamKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_stream_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStreamSession"
        o.http_method = "POST"
        o.http_request_uri = "/GetStreamSession"
        o.input = Shapes::ShapeRef.new(shape: GetStreamSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStreamSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:import_playback_key_pair, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportPlaybackKeyPair"
        o.http_method = "POST"
        o.http_request_uri = "/ImportPlaybackKeyPair"
        o.input = Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportPlaybackKeyPairResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "POST"
        o.http_request_uri = "/ListChannels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_playback_key_pairs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlaybackKeyPairs"
        o.http_method = "POST"
        o.http_request_uri = "/ListPlaybackKeyPairs"
        o.input = Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlaybackKeyPairsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recording_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecordingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListRecordingConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListRecordingConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecordingConfigurationsResponse)
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

      api.add_operation(:list_stream_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamKeys"
        o.http_method = "POST"
        o.http_request_uri = "/ListStreamKeys"
        o.input = Shapes::ShapeRef.new(shape: ListStreamKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_method = "POST"
        o.http_request_uri = "/ListStreamSessions"
        o.input = Shapes::ShapeRef.new(shape: ListStreamSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "POST"
        o.http_request_uri = "/ListStreams"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsResponse)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/PutMetadata"
        o.input = Shapes::ShapeRef.new(shape: PutMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_viewer_session_revocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartViewerSessionRevocation"
        o.http_method = "POST"
        o.http_request_uri = "/StartViewerSessionRevocation"
        o.input = Shapes::ShapeRef.new(shape: StartViewerSessionRevocationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartViewerSessionRevocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStream"
        o.http_method = "POST"
        o.http_request_uri = "/StopStream"
        o.input = Shapes::ShapeRef.new(shape: StopStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: StopStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        o.errors << Shapes::ShapeRef.new(shape: StreamUnavailable)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateChannel"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
