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
    AdBreakId = Shapes::StringShape.new(name: 'AdBreakId')
    AdConfiguration = Shapes::StructureShape.new(name: 'AdConfiguration')
    AdConfigurationArn = Shapes::StringShape.new(name: 'AdConfigurationArn')
    AdConfigurationList = Shapes::ListShape.new(name: 'AdConfigurationList')
    AdConfigurationName = Shapes::StringShape.new(name: 'AdConfigurationName')
    AdConfigurationSummary = Shapes::StructureShape.new(name: 'AdConfigurationSummary')
    AdDurationSeconds = Shapes::IntegerShape.new(name: 'AdDurationSeconds')
    AudioConfiguration = Shapes::StructureShape.new(name: 'AudioConfiguration')
    AudioConfigurationList = Shapes::ListShape.new(name: 'AudioConfigurationList')
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
    ChannelAdConfigurationArn = Shapes::StringShape.new(name: 'ChannelAdConfigurationArn')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    ChannelArnList = Shapes::ListShape.new(name: 'ChannelArnList')
    ChannelLatencyMode = Shapes::StringShape.new(name: 'ChannelLatencyMode')
    ChannelList = Shapes::ListShape.new(name: 'ChannelList')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelNotBroadcasting = Shapes::StructureShape.new(name: 'ChannelNotBroadcasting')
    ChannelPlaybackRestrictionPolicyArn = Shapes::StringShape.new(name: 'ChannelPlaybackRestrictionPolicyArn')
    ChannelRecordingConfigurationArn = Shapes::StringShape.new(name: 'ChannelRecordingConfigurationArn')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ChannelType = Shapes::StringShape.new(name: 'ChannelType')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContainerFormat = Shapes::StringShape.new(name: 'ContainerFormat')
    CreateAdConfigurationRequest = Shapes::StructureShape.new(name: 'CreateAdConfigurationRequest')
    CreateAdConfigurationResponse = Shapes::StructureShape.new(name: 'CreateAdConfigurationResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreatePlaybackRestrictionPolicyRequest = Shapes::StructureShape.new(name: 'CreatePlaybackRestrictionPolicyRequest')
    CreatePlaybackRestrictionPolicyResponse = Shapes::StructureShape.new(name: 'CreatePlaybackRestrictionPolicyResponse')
    CreateRecordingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateRecordingConfigurationRequest')
    CreateRecordingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateRecordingConfigurationResponse')
    CreateStreamKeyRequest = Shapes::StructureShape.new(name: 'CreateStreamKeyRequest')
    CreateStreamKeyResponse = Shapes::StructureShape.new(name: 'CreateStreamKeyResponse')
    DeleteAdConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAdConfigurationRequest')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeletePlaybackKeyPairRequest = Shapes::StructureShape.new(name: 'DeletePlaybackKeyPairRequest')
    DeletePlaybackKeyPairResponse = Shapes::StructureShape.new(name: 'DeletePlaybackKeyPairResponse')
    DeletePlaybackRestrictionPolicyRequest = Shapes::StructureShape.new(name: 'DeletePlaybackRestrictionPolicyRequest')
    DeleteRecordingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteRecordingConfigurationRequest')
    DeleteStreamKeyRequest = Shapes::StructureShape.new(name: 'DeleteStreamKeyRequest')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    GetAdConfigurationRequest = Shapes::StructureShape.new(name: 'GetAdConfigurationRequest')
    GetAdConfigurationResponse = Shapes::StructureShape.new(name: 'GetAdConfigurationResponse')
    GetChannelRequest = Shapes::StructureShape.new(name: 'GetChannelRequest')
    GetChannelResponse = Shapes::StructureShape.new(name: 'GetChannelResponse')
    GetPlaybackKeyPairRequest = Shapes::StructureShape.new(name: 'GetPlaybackKeyPairRequest')
    GetPlaybackKeyPairResponse = Shapes::StructureShape.new(name: 'GetPlaybackKeyPairResponse')
    GetPlaybackRestrictionPolicyRequest = Shapes::StructureShape.new(name: 'GetPlaybackRestrictionPolicyRequest')
    GetPlaybackRestrictionPolicyResponse = Shapes::StructureShape.new(name: 'GetPlaybackRestrictionPolicyResponse')
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
    IngestConfigurations = Shapes::StructureShape.new(name: 'IngestConfigurations')
    IngestEndpoint = Shapes::StringShape.new(name: 'IngestEndpoint')
    InsecureIngest = Shapes::BooleanShape.new(name: 'InsecureIngest')
    InsertAdBreakRequest = Shapes::StructureShape.new(name: 'InsertAdBreakRequest')
    InsertAdBreakResponse = Shapes::StructureShape.new(name: 'InsertAdBreakResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsAuthorized = Shapes::BooleanShape.new(name: 'IsAuthorized')
    IsMultitrackInputEnabled = Shapes::BooleanShape.new(name: 'IsMultitrackInputEnabled')
    ListAdConfigurationsRequest = Shapes::StructureShape.new(name: 'ListAdConfigurationsRequest')
    ListAdConfigurationsResponse = Shapes::StructureShape.new(name: 'ListAdConfigurationsResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListPlaybackKeyPairsRequest = Shapes::StructureShape.new(name: 'ListPlaybackKeyPairsRequest')
    ListPlaybackKeyPairsResponse = Shapes::StructureShape.new(name: 'ListPlaybackKeyPairsResponse')
    ListPlaybackRestrictionPoliciesRequest = Shapes::StructureShape.new(name: 'ListPlaybackRestrictionPoliciesRequest')
    ListPlaybackRestrictionPoliciesResponse = Shapes::StructureShape.new(name: 'ListPlaybackRestrictionPoliciesResponse')
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
    MaxAdConfigurationResults = Shapes::IntegerShape.new(name: 'MaxAdConfigurationResults')
    MaxChannelResults = Shapes::IntegerShape.new(name: 'MaxChannelResults')
    MaxPlaybackKeyPairResults = Shapes::IntegerShape.new(name: 'MaxPlaybackKeyPairResults')
    MaxPlaybackRestrictionPolicyResults = Shapes::IntegerShape.new(name: 'MaxPlaybackRestrictionPolicyResults')
    MaxRecordingConfigurationResults = Shapes::IntegerShape.new(name: 'MaxRecordingConfigurationResults')
    MaxStreamKeyResults = Shapes::IntegerShape.new(name: 'MaxStreamKeyResults')
    MaxStreamResults = Shapes::IntegerShape.new(name: 'MaxStreamResults')
    MediaTailorPlaybackConfiguration = Shapes::StructureShape.new(name: 'MediaTailorPlaybackConfiguration')
    MediaTailorPlaybackConfigurationArn = Shapes::StringShape.new(name: 'MediaTailorPlaybackConfigurationArn')
    MediaTailorPlaybackConfigurationsList = Shapes::ListShape.new(name: 'MediaTailorPlaybackConfigurationsList')
    MultitrackInputConfiguration = Shapes::StructureShape.new(name: 'MultitrackInputConfiguration')
    MultitrackMaximumResolution = Shapes::StringShape.new(name: 'MultitrackMaximumResolution')
    MultitrackPolicy = Shapes::StringShape.new(name: 'MultitrackPolicy')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PendingVerification = Shapes::StructureShape.new(name: 'PendingVerification')
    PlaybackKeyPair = Shapes::StructureShape.new(name: 'PlaybackKeyPair')
    PlaybackKeyPairArn = Shapes::StringShape.new(name: 'PlaybackKeyPairArn')
    PlaybackKeyPairFingerprint = Shapes::StringShape.new(name: 'PlaybackKeyPairFingerprint')
    PlaybackKeyPairList = Shapes::ListShape.new(name: 'PlaybackKeyPairList')
    PlaybackKeyPairName = Shapes::StringShape.new(name: 'PlaybackKeyPairName')
    PlaybackKeyPairSummary = Shapes::StructureShape.new(name: 'PlaybackKeyPairSummary')
    PlaybackPublicKeyMaterial = Shapes::StringShape.new(name: 'PlaybackPublicKeyMaterial')
    PlaybackRestrictionPolicy = Shapes::StructureShape.new(name: 'PlaybackRestrictionPolicy')
    PlaybackRestrictionPolicyAllowedCountry = Shapes::StringShape.new(name: 'PlaybackRestrictionPolicyAllowedCountry')
    PlaybackRestrictionPolicyAllowedCountryList = Shapes::ListShape.new(name: 'PlaybackRestrictionPolicyAllowedCountryList')
    PlaybackRestrictionPolicyAllowedOrigin = Shapes::StringShape.new(name: 'PlaybackRestrictionPolicyAllowedOrigin')
    PlaybackRestrictionPolicyAllowedOriginList = Shapes::ListShape.new(name: 'PlaybackRestrictionPolicyAllowedOriginList')
    PlaybackRestrictionPolicyArn = Shapes::StringShape.new(name: 'PlaybackRestrictionPolicyArn')
    PlaybackRestrictionPolicyEnableStrictOriginEnforcement = Shapes::BooleanShape.new(name: 'PlaybackRestrictionPolicyEnableStrictOriginEnforcement')
    PlaybackRestrictionPolicyList = Shapes::ListShape.new(name: 'PlaybackRestrictionPolicyList')
    PlaybackRestrictionPolicyName = Shapes::StringShape.new(name: 'PlaybackRestrictionPolicyName')
    PlaybackRestrictionPolicySummary = Shapes::StructureShape.new(name: 'PlaybackRestrictionPolicySummary')
    PlaybackURL = Shapes::StringShape.new(name: 'PlaybackURL')
    PostRollConfiguration = Shapes::StructureShape.new(name: 'PostRollConfiguration')
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
    ServiceUnavailable = Shapes::StructureShape.new(name: 'ServiceUnavailable')
    Srt = Shapes::StructureShape.new(name: 'Srt')
    SrtEndpoint = Shapes::StringShape.new(name: 'SrtEndpoint')
    SrtPassphrase = Shapes::StringShape.new(name: 'SrtPassphrase')
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
    UpdateAdConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAdConfigurationRequest')
    UpdateAdConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAdConfigurationResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdatePlaybackRestrictionPolicyRequest = Shapes::StructureShape.new(name: 'UpdatePlaybackRestrictionPolicyRequest')
    UpdatePlaybackRestrictionPolicyResponse = Shapes::StructureShape.new(name: 'UpdatePlaybackRestrictionPolicyResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VideoConfiguration = Shapes::StructureShape.new(name: 'VideoConfiguration')
    VideoConfigurationList = Shapes::ListShape.new(name: 'VideoConfigurationList')
    ViewerId = Shapes::StringShape.new(name: 'ViewerId')
    ViewerSessionVersion = Shapes::IntegerShape.new(name: 'ViewerSessionVersion')
    errorCode = Shapes::StringShape.new(name: 'errorCode')
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

    AdConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: AdConfigurationArn, required: true, location_name: "arn"))
    AdConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: AdConfigurationName, location_name: "name"))
    AdConfiguration.add_member(:media_tailor_playback_configurations, Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfigurationsList, required: true, location_name: "mediaTailorPlaybackConfigurations"))
    AdConfiguration.add_member(:post_roll_configuration, Shapes::ShapeRef.new(shape: PostRollConfiguration, location_name: "postRollConfiguration"))
    AdConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AdConfiguration.struct_class = Types::AdConfiguration

    AdConfigurationList.member = Shapes::ShapeRef.new(shape: AdConfigurationSummary)

    AdConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AdConfigurationArn, required: true, location_name: "arn"))
    AdConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: AdConfigurationName, location_name: "name"))
    AdConfigurationSummary.add_member(:media_tailor_playback_configurations, Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfigurationsList, required: true, location_name: "mediaTailorPlaybackConfigurations"))
    AdConfigurationSummary.add_member(:post_roll_configuration, Shapes::ShapeRef.new(shape: PostRollConfiguration, location_name: "postRollConfiguration"))
    AdConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AdConfigurationSummary.struct_class = Types::AdConfigurationSummary

    AudioConfiguration.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    AudioConfiguration.add_member(:target_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate"))
    AudioConfiguration.add_member(:sample_rate, Shapes::ShapeRef.new(shape: Integer, location_name: "sampleRate"))
    AudioConfiguration.add_member(:channels, Shapes::ShapeRef.new(shape: Integer, location_name: "channels"))
    AudioConfiguration.add_member(:track, Shapes::ShapeRef.new(shape: String, location_name: "track"))
    AudioConfiguration.struct_class = Types::AudioConfiguration

    AudioConfigurationList.member = Shapes::ShapeRef.new(shape: AudioConfiguration)

    BatchError.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    BatchError.add_member(:code, Shapes::ShapeRef.new(shape: errorCode, location_name: "code"))
    BatchError.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    BatchError.struct_class = Types::BatchError

    BatchErrors.member = Shapes::ShapeRef.new(shape: BatchError)

    BatchGetChannelRequest.add_member(:arns, Shapes::ShapeRef.new(shape: ChannelArnList, required: true, location_name: "arns"))
    BatchGetChannelRequest.struct_class = Types::BatchGetChannelRequest

    BatchGetChannelResponse.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    BatchGetChannelResponse.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    BatchGetChannelResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    BatchGetChannelResponse.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    BatchGetChannelResponse.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    BatchGetChannelResponse.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    BatchGetChannelResponse.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    BatchGetChannelResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    BatchGetChannelResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetChannelResponse.struct_class = Types::BatchGetChannelResponse

    BatchGetStreamKeyRequest.add_member(:arns, Shapes::ShapeRef.new(shape: StreamKeyArnList, required: true, location_name: "arns"))
    BatchGetStreamKeyRequest.struct_class = Types::BatchGetStreamKeyRequest

    BatchGetStreamKeyResponse.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    BatchGetStreamKeyResponse.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    BatchGetStreamKeyResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    BatchGetStreamKeyResponse.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    BatchGetStreamKeyResponse.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    BatchGetStreamKeyResponse.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    BatchGetStreamKeyResponse.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    BatchGetStreamKeyResponse.add_member(:stream_keys, Shapes::ShapeRef.new(shape: StreamKeys, location_name: "streamKeys"))
    BatchGetStreamKeyResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchErrors, location_name: "errors"))
    BatchGetStreamKeyResponse.struct_class = Types::BatchGetStreamKeyResponse

    BatchStartViewerSessionRevocationError.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    BatchStartViewerSessionRevocationError.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    BatchStartViewerSessionRevocationError.add_member(:code, Shapes::ShapeRef.new(shape: errorCode, location_name: "code"))
    BatchStartViewerSessionRevocationError.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    BatchStartViewerSessionRevocationError.struct_class = Types::BatchStartViewerSessionRevocationError

    BatchStartViewerSessionRevocationErrors.member = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationError)

    BatchStartViewerSessionRevocationRequest.add_member(:viewer_sessions, Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSessionList, required: true, location_name: "viewerSessions"))
    BatchStartViewerSessionRevocationRequest.struct_class = Types::BatchStartViewerSessionRevocationRequest

    BatchStartViewerSessionRevocationResponse.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    BatchStartViewerSessionRevocationResponse.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    BatchStartViewerSessionRevocationResponse.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    BatchStartViewerSessionRevocationResponse.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    BatchStartViewerSessionRevocationResponse.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    BatchStartViewerSessionRevocationResponse.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    BatchStartViewerSessionRevocationResponse.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    BatchStartViewerSessionRevocationResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationErrors, location_name: "errors"))
    BatchStartViewerSessionRevocationResponse.struct_class = Types::BatchStartViewerSessionRevocationResponse

    BatchStartViewerSessionRevocationViewerSession.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    BatchStartViewerSessionRevocationViewerSession.add_member(:viewer_session_versions_less_than_or_equal_to, Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo"))
    BatchStartViewerSessionRevocationViewerSession.struct_class = Types::BatchStartViewerSessionRevocationViewerSession

    BatchStartViewerSessionRevocationViewerSessionList.member = Shapes::ShapeRef.new(shape: BatchStartViewerSessionRevocationViewerSession)

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    Channel.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    Channel.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    Channel.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    Channel.add_member(:ingest_endpoint, Shapes::ShapeRef.new(shape: IngestEndpoint, location_name: "ingestEndpoint"))
    Channel.add_member(:playback_url, Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Channel.add_member(:authorized, Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized"))
    Channel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Channel.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest"))
    Channel.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    Channel.add_member(:srt, Shapes::ShapeRef.new(shape: Srt, location_name: "srt"))
    Channel.add_member(:playback_restriction_policy_arn, Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    Channel.add_member(:multitrack_input_configuration, Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    Channel.add_member(:container_format, Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    Channel.add_member(:ad_configuration_arn, Shapes::ShapeRef.new(shape: ChannelAdConfigurationArn, location_name: "adConfigurationArn"))
    Channel.struct_class = Types::Channel

    ChannelArnList.member = Shapes::ShapeRef.new(shape: ChannelArn)

    ChannelList.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ChannelNotBroadcasting.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ChannelNotBroadcasting.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ChannelNotBroadcasting.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ChannelNotBroadcasting.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ChannelNotBroadcasting.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ChannelNotBroadcasting.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ChannelNotBroadcasting.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ChannelNotBroadcasting.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ChannelNotBroadcasting.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ChannelNotBroadcasting.struct_class = Types::ChannelNotBroadcasting

    ChannelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "arn"))
    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    ChannelSummary.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    ChannelSummary.add_member(:authorized, Shapes::ShapeRef.new(shape: IsAuthorized, location_name: "authorized"))
    ChannelSummary.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    ChannelSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ChannelSummary.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: InsecureIngest, location_name: "insecureIngest"))
    ChannelSummary.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    ChannelSummary.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    ChannelSummary.add_member(:playback_restriction_policy_arn, Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    ChannelSummary.add_member(:ad_configuration_arn, Shapes::ShapeRef.new(shape: ChannelAdConfigurationArn, location_name: "adConfigurationArn"))
    ChannelSummary.struct_class = Types::ChannelSummary

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

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

    CreateAdConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AdConfigurationName, location_name: "name"))
    CreateAdConfigurationRequest.add_member(:media_tailor_playback_configurations, Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfigurationsList, required: true, location_name: "mediaTailorPlaybackConfigurations"))
    CreateAdConfigurationRequest.add_member(:post_roll_configuration, Shapes::ShapeRef.new(shape: PostRollConfiguration, location_name: "postRollConfiguration"))
    CreateAdConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAdConfigurationRequest.struct_class = Types::CreateAdConfigurationRequest

    CreateAdConfigurationResponse.add_member(:ad_configuration, Shapes::ShapeRef.new(shape: AdConfiguration, required: true, location_name: "adConfiguration"))
    CreateAdConfigurationResponse.struct_class = Types::CreateAdConfigurationResponse

    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    CreateChannelRequest.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    CreateChannelRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    CreateChannelRequest.add_member(:authorized, Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized"))
    CreateChannelRequest.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelRequest.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest"))
    CreateChannelRequest.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    CreateChannelRequest.add_member(:playback_restriction_policy_arn, Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    CreateChannelRequest.add_member(:multitrack_input_configuration, Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    CreateChannelRequest.add_member(:container_format, Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    CreateChannelRequest.add_member(:ad_configuration_arn, Shapes::ShapeRef.new(shape: ChannelAdConfigurationArn, location_name: "adConfigurationArn"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResponse.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    CreatePlaybackRestrictionPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePlaybackRestrictionPolicyRequest.struct_class = Types::CreatePlaybackRestrictionPolicyRequest

    CreatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    CreatePlaybackRestrictionPolicyResponse.struct_class = Types::CreatePlaybackRestrictionPolicyResponse

    CreateRecordingConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    CreateRecordingConfigurationRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    CreateRecordingConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRecordingConfigurationRequest.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    CreateRecordingConfigurationRequest.add_member(:recording_reconnect_window_seconds, Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds"))
    CreateRecordingConfigurationRequest.add_member(:rendition_configuration, Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    CreateRecordingConfigurationRequest.struct_class = Types::CreateRecordingConfigurationRequest

    CreateRecordingConfigurationResponse.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    CreateRecordingConfigurationResponse.struct_class = Types::CreateRecordingConfigurationResponse

    CreateStreamKeyRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    CreateStreamKeyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStreamKeyRequest.struct_class = Types::CreateStreamKeyRequest

    CreateStreamKeyResponse.add_member(:stream_key, Shapes::ShapeRef.new(shape: StreamKey, location_name: "streamKey"))
    CreateStreamKeyResponse.struct_class = Types::CreateStreamKeyResponse

    DeleteAdConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AdConfigurationArn, required: true, location_name: "arn"))
    DeleteAdConfigurationRequest.struct_class = Types::DeleteAdConfigurationRequest

    DeleteChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeletePlaybackKeyPairRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, required: true, location_name: "arn"))
    DeletePlaybackKeyPairRequest.struct_class = Types::DeletePlaybackKeyPairRequest

    DeletePlaybackKeyPairResponse.struct_class = Types::DeletePlaybackKeyPairResponse

    DeletePlaybackRestrictionPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, required: true, location_name: "arn"))
    DeletePlaybackRestrictionPolicyRequest.struct_class = Types::DeletePlaybackRestrictionPolicyRequest

    DeleteRecordingConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    DeleteRecordingConfigurationRequest.struct_class = Types::DeleteRecordingConfigurationRequest

    DeleteStreamKeyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, required: true, location_name: "arn"))
    DeleteStreamKeyRequest.struct_class = Types::DeleteStreamKeyRequest

    DestinationConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "s3"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    GetAdConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AdConfigurationArn, required: true, location_name: "arn"))
    GetAdConfigurationRequest.struct_class = Types::GetAdConfigurationRequest

    GetAdConfigurationResponse.add_member(:ad_configuration, Shapes::ShapeRef.new(shape: AdConfiguration, location_name: "adConfiguration"))
    GetAdConfigurationResponse.struct_class = Types::GetAdConfigurationResponse

    GetChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    GetChannelRequest.struct_class = Types::GetChannelRequest

    GetChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    GetChannelResponse.struct_class = Types::GetChannelResponse

    GetPlaybackKeyPairRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, required: true, location_name: "arn"))
    GetPlaybackKeyPairRequest.struct_class = Types::GetPlaybackKeyPairRequest

    GetPlaybackKeyPairResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    GetPlaybackKeyPairResponse.struct_class = Types::GetPlaybackKeyPairResponse

    GetPlaybackRestrictionPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, required: true, location_name: "arn"))
    GetPlaybackRestrictionPolicyRequest.struct_class = Types::GetPlaybackRestrictionPolicyRequest

    GetPlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    GetPlaybackRestrictionPolicyResponse.struct_class = Types::GetPlaybackRestrictionPolicyResponse

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

    ImportPlaybackKeyPairRequest.add_member(:public_key_material, Shapes::ShapeRef.new(shape: PlaybackPublicKeyMaterial, required: true, location_name: "publicKeyMaterial"))
    ImportPlaybackKeyPairRequest.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    ImportPlaybackKeyPairRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ImportPlaybackKeyPairRequest.struct_class = Types::ImportPlaybackKeyPairRequest

    ImportPlaybackKeyPairResponse.add_member(:key_pair, Shapes::ShapeRef.new(shape: PlaybackKeyPair, location_name: "keyPair"))
    ImportPlaybackKeyPairResponse.struct_class = Types::ImportPlaybackKeyPairResponse

    IngestConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoConfiguration, location_name: "video"))
    IngestConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioConfiguration, location_name: "audio"))
    IngestConfiguration.struct_class = Types::IngestConfiguration

    IngestConfigurations.add_member(:video_configurations, Shapes::ShapeRef.new(shape: VideoConfigurationList, required: true, location_name: "videoConfigurations"))
    IngestConfigurations.add_member(:audio_configurations, Shapes::ShapeRef.new(shape: AudioConfigurationList, required: true, location_name: "audioConfigurations"))
    IngestConfigurations.struct_class = Types::IngestConfigurations

    InsertAdBreakRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    InsertAdBreakRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: AdDurationSeconds, required: true, location_name: "durationSeconds"))
    InsertAdBreakRequest.struct_class = Types::InsertAdBreakRequest

    InsertAdBreakResponse.add_member(:ad_break_id, Shapes::ShapeRef.new(shape: AdBreakId, location_name: "adBreakId"))
    InsertAdBreakResponse.struct_class = Types::InsertAdBreakResponse

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

    ListAdConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAdConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxAdConfigurationResults, location_name: "maxResults"))
    ListAdConfigurationsRequest.struct_class = Types::ListAdConfigurationsRequest

    ListAdConfigurationsResponse.add_member(:ad_configurations, Shapes::ShapeRef.new(shape: AdConfigurationList, required: true, location_name: "adConfigurations"))
    ListAdConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAdConfigurationsResponse.struct_class = Types::ListAdConfigurationsResponse

    ListChannelsRequest.add_member(:filter_by_name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "filterByName"))
    ListChannelsRequest.add_member(:filter_by_recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "filterByRecordingConfigurationArn"))
    ListChannelsRequest.add_member(:filter_by_playback_restriction_policy_arn, Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "filterByPlaybackRestrictionPolicyArn"))
    ListChannelsRequest.add_member(:filter_by_ad_configuration_arn, Shapes::ShapeRef.new(shape: ChannelAdConfigurationArn, location_name: "filterByAdConfigurationArn"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxChannelResults, location_name: "maxResults"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: ChannelList, required: true, location_name: "channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListPlaybackKeyPairsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPlaybackKeyPairResults, location_name: "maxResults"))
    ListPlaybackKeyPairsRequest.struct_class = Types::ListPlaybackKeyPairsRequest

    ListPlaybackKeyPairsResponse.add_member(:key_pairs, Shapes::ShapeRef.new(shape: PlaybackKeyPairList, required: true, location_name: "keyPairs"))
    ListPlaybackKeyPairsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackKeyPairsResponse.struct_class = Types::ListPlaybackKeyPairsResponse

    ListPlaybackRestrictionPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackRestrictionPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxPlaybackRestrictionPolicyResults, location_name: "maxResults"))
    ListPlaybackRestrictionPoliciesRequest.struct_class = Types::ListPlaybackRestrictionPoliciesRequest

    ListPlaybackRestrictionPoliciesResponse.add_member(:playback_restriction_policies, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyList, required: true, location_name: "playbackRestrictionPolicies"))
    ListPlaybackRestrictionPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPlaybackRestrictionPoliciesResponse.struct_class = Types::ListPlaybackRestrictionPoliciesResponse

    ListRecordingConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxRecordingConfigurationResults, location_name: "maxResults"))
    ListRecordingConfigurationsRequest.struct_class = Types::ListRecordingConfigurationsRequest

    ListRecordingConfigurationsResponse.add_member(:recording_configurations, Shapes::ShapeRef.new(shape: RecordingConfigurationList, required: true, location_name: "recordingConfigurations"))
    ListRecordingConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRecordingConfigurationsResponse.struct_class = Types::ListRecordingConfigurationsResponse

    ListStreamKeysRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    ListStreamKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamKeyResults, location_name: "maxResults"))
    ListStreamKeysRequest.struct_class = Types::ListStreamKeysRequest

    ListStreamKeysResponse.add_member(:stream_keys, Shapes::ShapeRef.new(shape: StreamKeyList, required: true, location_name: "streamKeys"))
    ListStreamKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamKeysResponse.struct_class = Types::ListStreamKeysResponse

    ListStreamSessionsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    ListStreamSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamSessionsRequest.struct_class = Types::ListStreamSessionsRequest

    ListStreamSessionsResponse.add_member(:stream_sessions, Shapes::ShapeRef.new(shape: StreamSessionList, required: true, location_name: "streamSessions"))
    ListStreamSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamSessionsResponse.struct_class = Types::ListStreamSessionsResponse

    ListStreamsRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: StreamFilters, location_name: "filterBy"))
    ListStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStreamResults, location_name: "maxResults"))
    ListStreamsRequest.struct_class = Types::ListStreamsRequest

    ListStreamsResponse.add_member(:streams, Shapes::ShapeRef.new(shape: StreamList, required: true, location_name: "streams"))
    ListStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStreamsResponse.struct_class = Types::ListStreamsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MediaTailorPlaybackConfiguration.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfigurationArn, location_name: "playbackConfigurationArn"))
    MediaTailorPlaybackConfiguration.struct_class = Types::MediaTailorPlaybackConfiguration

    MediaTailorPlaybackConfigurationsList.member = Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfiguration)

    MultitrackInputConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: IsMultitrackInputEnabled, location_name: "enabled"))
    MultitrackInputConfiguration.add_member(:policy, Shapes::ShapeRef.new(shape: MultitrackPolicy, location_name: "policy"))
    MultitrackInputConfiguration.add_member(:maximum_resolution, Shapes::ShapeRef.new(shape: MultitrackMaximumResolution, location_name: "maximumResolution"))
    MultitrackInputConfiguration.struct_class = Types::MultitrackInputConfiguration

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

    PlaybackKeyPair.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPair.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPair.add_member(:fingerprint, Shapes::ShapeRef.new(shape: PlaybackKeyPairFingerprint, location_name: "fingerprint"))
    PlaybackKeyPair.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPair.struct_class = Types::PlaybackKeyPair

    PlaybackKeyPairList.member = Shapes::ShapeRef.new(shape: PlaybackKeyPairSummary)

    PlaybackKeyPairSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackKeyPairArn, location_name: "arn"))
    PlaybackKeyPairSummary.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackKeyPairName, location_name: "name"))
    PlaybackKeyPairSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackKeyPairSummary.struct_class = Types::PlaybackKeyPairSummary

    PlaybackRestrictionPolicy.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, required: true, location_name: "arn"))
    PlaybackRestrictionPolicy.add_member(:allowed_countries, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, required: true, location_name: "allowedCountries"))
    PlaybackRestrictionPolicy.add_member(:allowed_origins, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, required: true, location_name: "allowedOrigins"))
    PlaybackRestrictionPolicy.add_member(:enable_strict_origin_enforcement, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    PlaybackRestrictionPolicy.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    PlaybackRestrictionPolicy.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackRestrictionPolicy.struct_class = Types::PlaybackRestrictionPolicy

    PlaybackRestrictionPolicyAllowedCountryList.member = Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountry)

    PlaybackRestrictionPolicyAllowedOriginList.member = Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOrigin)

    PlaybackRestrictionPolicyList.member = Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicySummary)

    PlaybackRestrictionPolicySummary.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, required: true, location_name: "arn"))
    PlaybackRestrictionPolicySummary.add_member(:allowed_countries, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, required: true, location_name: "allowedCountries"))
    PlaybackRestrictionPolicySummary.add_member(:allowed_origins, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, required: true, location_name: "allowedOrigins"))
    PlaybackRestrictionPolicySummary.add_member(:enable_strict_origin_enforcement, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    PlaybackRestrictionPolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    PlaybackRestrictionPolicySummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PlaybackRestrictionPolicySummary.struct_class = Types::PlaybackRestrictionPolicySummary

    PostRollConfiguration.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: AdDurationSeconds, required: true, location_name: "durationSeconds"))
    PostRollConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    PostRollConfiguration.struct_class = Types::PostRollConfiguration

    PutMetadataRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    PutMetadataRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: StreamMetadata, required: true, location_name: "metadata"))
    PutMetadataRequest.struct_class = Types::PutMetadataRequest

    RecordingConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    RecordingConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfiguration.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    RecordingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: RecordingConfigurationState, required: true, location_name: "state"))
    RecordingConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfiguration.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    RecordingConfiguration.add_member(:recording_reconnect_window_seconds, Shapes::ShapeRef.new(shape: RecordingReconnectWindowSeconds, location_name: "recordingReconnectWindowSeconds"))
    RecordingConfiguration.add_member(:rendition_configuration, Shapes::ShapeRef.new(shape: RenditionConfiguration, location_name: "renditionConfiguration"))
    RecordingConfiguration.struct_class = Types::RecordingConfiguration

    RecordingConfigurationList.member = Shapes::ShapeRef.new(shape: RecordingConfigurationSummary)

    RecordingConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RecordingConfigurationArn, required: true, location_name: "arn"))
    RecordingConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: RecordingConfigurationName, location_name: "name"))
    RecordingConfigurationSummary.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, required: true, location_name: "destinationConfiguration"))
    RecordingConfigurationSummary.add_member(:state, Shapes::ShapeRef.new(shape: RecordingConfigurationState, required: true, location_name: "state"))
    RecordingConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecordingConfigurationSummary.struct_class = Types::RecordingConfigurationSummary

    RenditionConfiguration.add_member(:rendition_selection, Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionSelection, location_name: "renditionSelection"))
    RenditionConfiguration.add_member(:renditions, Shapes::ShapeRef.new(shape: RenditionConfigurationRenditionList, location_name: "renditions"))
    RenditionConfiguration.struct_class = Types::RenditionConfiguration

    RenditionConfigurationRenditionList.member = Shapes::ShapeRef.new(shape: RenditionConfigurationRendition)

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

    S3DestinationConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3DestinationBucketName, required: true, location_name: "bucketName"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

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

    ServiceUnavailable.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ServiceUnavailable.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ServiceUnavailable.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ServiceUnavailable.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ServiceUnavailable.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ServiceUnavailable.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ServiceUnavailable.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ServiceUnavailable.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ServiceUnavailable.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ServiceUnavailable.struct_class = Types::ServiceUnavailable

    Srt.add_member(:endpoint, Shapes::ShapeRef.new(shape: SrtEndpoint, location_name: "endpoint"))
    Srt.add_member(:passphrase, Shapes::ShapeRef.new(shape: SrtPassphrase, location_name: "passphrase"))
    Srt.struct_class = Types::Srt

    StartViewerSessionRevocationRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    StartViewerSessionRevocationRequest.add_member(:viewer_id, Shapes::ShapeRef.new(shape: ViewerId, required: true, location_name: "viewerId"))
    StartViewerSessionRevocationRequest.add_member(:viewer_session_versions_less_than_or_equal_to, Shapes::ShapeRef.new(shape: ViewerSessionVersion, location_name: "viewerSessionVersionsLessThanOrEqualTo"))
    StartViewerSessionRevocationRequest.struct_class = Types::StartViewerSessionRevocationRequest

    StartViewerSessionRevocationResponse.struct_class = Types::StartViewerSessionRevocationResponse

    StopStreamRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "channelArn"))
    StopStreamRequest.struct_class = Types::StopStreamRequest

    StopStreamResponse.struct_class = Types::StopStreamResponse

    Stream.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    Stream.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    Stream.add_member(:playback_url, Shapes::ShapeRef.new(shape: PlaybackURL, location_name: "playbackUrl"))
    Stream.add_member(:start_time, Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    Stream.add_member(:state, Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    Stream.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    Stream.add_member(:viewer_count, Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount"))
    Stream.struct_class = Types::Stream

    StreamEvent.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    StreamEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    StreamEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: Time, location_name: "eventTime"))
    StreamEvent.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    StreamEvent.struct_class = Types::StreamEvent

    StreamEvents.member = Shapes::ShapeRef.new(shape: StreamEvent)

    StreamFilters.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamFilters.struct_class = Types::StreamFilters

    StreamKey.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKey.add_member(:value, Shapes::ShapeRef.new(shape: StreamKeyValue, location_name: "value"))
    StreamKey.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKey.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKey.struct_class = Types::StreamKey

    StreamKeyArnList.member = Shapes::ShapeRef.new(shape: StreamKeyArn)

    StreamKeyList.member = Shapes::ShapeRef.new(shape: StreamKeySummary)

    StreamKeySummary.add_member(:arn, Shapes::ShapeRef.new(shape: StreamKeyArn, location_name: "arn"))
    StreamKeySummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamKeySummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StreamKeySummary.struct_class = Types::StreamKeySummary

    StreamKeys.member = Shapes::ShapeRef.new(shape: StreamKey)

    StreamList.member = Shapes::ShapeRef.new(shape: StreamSummary)

    StreamSession.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSession.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSession.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSession.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    StreamSession.add_member(:ingest_configuration, Shapes::ShapeRef.new(shape: IngestConfiguration, location_name: "ingestConfiguration"))
    StreamSession.add_member(:ingest_configurations, Shapes::ShapeRef.new(shape: IngestConfigurations, location_name: "ingestConfigurations"))
    StreamSession.add_member(:recording_configuration, Shapes::ShapeRef.new(shape: RecordingConfiguration, location_name: "recordingConfiguration"))
    StreamSession.add_member(:truncated_events, Shapes::ShapeRef.new(shape: StreamEvents, location_name: "truncatedEvents"))
    StreamSession.struct_class = Types::StreamSession

    StreamSessionList.member = Shapes::ShapeRef.new(shape: StreamSessionSummary)

    StreamSessionSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSessionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StreamSessionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StreamSessionSummary.add_member(:has_error_event, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasErrorEvent"))
    StreamSessionSummary.struct_class = Types::StreamSessionSummary

    StreamSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location_name: "channelArn"))
    StreamSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "streamId"))
    StreamSummary.add_member(:state, Shapes::ShapeRef.new(shape: StreamState, location_name: "state"))
    StreamSummary.add_member(:health, Shapes::ShapeRef.new(shape: StreamHealth, location_name: "health"))
    StreamSummary.add_member(:viewer_count, Shapes::ShapeRef.new(shape: StreamViewerCount, location_name: "viewerCount"))
    StreamSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StreamStartTime, location_name: "startTime"))
    StreamSummary.struct_class = Types::StreamSummary

    StreamUnavailable.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    StreamUnavailable.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    StreamUnavailable.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    StreamUnavailable.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    StreamUnavailable.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    StreamUnavailable.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    StreamUnavailable.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    StreamUnavailable.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    StreamUnavailable.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    StreamUnavailable.struct_class = Types::StreamUnavailable

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:access_control_allow_origin, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Allow-Origin"))
    ThrottlingException.add_member(:access_control_expose_headers, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Access-Control-Expose-Headers"))
    ThrottlingException.add_member(:cache_control, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Cache-Control"))
    ThrottlingException.add_member(:content_security_policy, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Security-Policy"))
    ThrottlingException.add_member(:strict_transport_security, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Strict-Transport-Security"))
    ThrottlingException.add_member(:x_content_type_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Content-Type-Options"))
    ThrottlingException.add_member(:x_frame_options, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Frame-Options"))
    ThrottlingException.add_member(:x_amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    ThrottlingException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ThumbnailConfiguration.add_member(:recording_mode, Shapes::ShapeRef.new(shape: RecordingMode, location_name: "recordingMode"))
    ThumbnailConfiguration.add_member(:target_interval_seconds, Shapes::ShapeRef.new(shape: TargetIntervalSeconds, location_name: "targetIntervalSeconds"))
    ThumbnailConfiguration.add_member(:resolution, Shapes::ShapeRef.new(shape: ThumbnailConfigurationResolution, location_name: "resolution"))
    ThumbnailConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorageList, location_name: "storage"))
    ThumbnailConfiguration.struct_class = Types::ThumbnailConfiguration

    ThumbnailConfigurationStorageList.member = Shapes::ShapeRef.new(shape: ThumbnailConfigurationStorage)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAdConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AdConfigurationArn, required: true, location_name: "arn"))
    UpdateAdConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AdConfigurationName, location_name: "name"))
    UpdateAdConfigurationRequest.add_member(:media_tailor_playback_configurations, Shapes::ShapeRef.new(shape: MediaTailorPlaybackConfigurationsList, location_name: "mediaTailorPlaybackConfigurations"))
    UpdateAdConfigurationRequest.add_member(:post_roll_configuration, Shapes::ShapeRef.new(shape: PostRollConfiguration, location_name: "postRollConfiguration"))
    UpdateAdConfigurationRequest.struct_class = Types::UpdateAdConfigurationRequest

    UpdateAdConfigurationResponse.add_member(:ad_configuration, Shapes::ShapeRef.new(shape: AdConfiguration, required: true, location_name: "adConfiguration"))
    UpdateAdConfigurationResponse.struct_class = Types::UpdateAdConfigurationResponse

    UpdateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location_name: "arn"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    UpdateChannelRequest.add_member(:latency_mode, Shapes::ShapeRef.new(shape: ChannelLatencyMode, location_name: "latencyMode"))
    UpdateChannelRequest.add_member(:type, Shapes::ShapeRef.new(shape: ChannelType, location_name: "type"))
    UpdateChannelRequest.add_member(:authorized, Shapes::ShapeRef.new(shape: Boolean, location_name: "authorized"))
    UpdateChannelRequest.add_member(:recording_configuration_arn, Shapes::ShapeRef.new(shape: ChannelRecordingConfigurationArn, location_name: "recordingConfigurationArn"))
    UpdateChannelRequest.add_member(:insecure_ingest, Shapes::ShapeRef.new(shape: Boolean, location_name: "insecureIngest"))
    UpdateChannelRequest.add_member(:preset, Shapes::ShapeRef.new(shape: TranscodePreset, location_name: "preset"))
    UpdateChannelRequest.add_member(:playback_restriction_policy_arn, Shapes::ShapeRef.new(shape: ChannelPlaybackRestrictionPolicyArn, location_name: "playbackRestrictionPolicyArn"))
    UpdateChannelRequest.add_member(:multitrack_input_configuration, Shapes::ShapeRef.new(shape: MultitrackInputConfiguration, location_name: "multitrackInputConfiguration"))
    UpdateChannelRequest.add_member(:container_format, Shapes::ShapeRef.new(shape: ContainerFormat, location_name: "containerFormat"))
    UpdateChannelRequest.add_member(:ad_configuration_arn, Shapes::ShapeRef.new(shape: ChannelAdConfigurationArn, location_name: "adConfigurationArn"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdatePlaybackRestrictionPolicyRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyArn, required: true, location_name: "arn"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_countries, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedCountryList, location_name: "allowedCountries"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:allowed_origins, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyAllowedOriginList, location_name: "allowedOrigins"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:enable_strict_origin_enforcement, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyEnableStrictOriginEnforcement, location_name: "enableStrictOriginEnforcement"))
    UpdatePlaybackRestrictionPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicyName, location_name: "name"))
    UpdatePlaybackRestrictionPolicyRequest.struct_class = Types::UpdatePlaybackRestrictionPolicyRequest

    UpdatePlaybackRestrictionPolicyResponse.add_member(:playback_restriction_policy, Shapes::ShapeRef.new(shape: PlaybackRestrictionPolicy, location_name: "playbackRestrictionPolicy"))
    UpdatePlaybackRestrictionPolicyResponse.struct_class = Types::UpdatePlaybackRestrictionPolicyResponse

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

    VideoConfiguration.add_member(:avc_profile, Shapes::ShapeRef.new(shape: String, location_name: "avcProfile"))
    VideoConfiguration.add_member(:avc_level, Shapes::ShapeRef.new(shape: String, location_name: "avcLevel"))
    VideoConfiguration.add_member(:codec, Shapes::ShapeRef.new(shape: String, location_name: "codec"))
    VideoConfiguration.add_member(:encoder, Shapes::ShapeRef.new(shape: String, location_name: "encoder"))
    VideoConfiguration.add_member(:target_bitrate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetBitrate"))
    VideoConfiguration.add_member(:target_framerate, Shapes::ShapeRef.new(shape: Integer, location_name: "targetFramerate"))
    VideoConfiguration.add_member(:video_height, Shapes::ShapeRef.new(shape: Integer, location_name: "videoHeight"))
    VideoConfiguration.add_member(:video_width, Shapes::ShapeRef.new(shape: Integer, location_name: "videoWidth"))
    VideoConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: String, location_name: "level"))
    VideoConfiguration.add_member(:track, Shapes::ShapeRef.new(shape: String, location_name: "track"))
    VideoConfiguration.add_member(:profile, Shapes::ShapeRef.new(shape: String, location_name: "profile"))
    VideoConfiguration.struct_class = Types::VideoConfiguration

    VideoConfigurationList.member = Shapes::ShapeRef.new(shape: VideoConfiguration)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-14"

      api.metadata = {
        "apiVersion" => "2020-07-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ivs",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
      end)

      api.add_operation(:batch_get_stream_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetStreamKey"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetStreamKey"
        o.input = Shapes::ShapeRef.new(shape: BatchGetStreamKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetStreamKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailable)
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

      api.add_operation(:create_ad_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAdConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateAdConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateAdConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAdConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:create_playback_restriction_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlaybackRestrictionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/CreatePlaybackRestrictionPolicy"
        o.input = Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePlaybackRestrictionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_ad_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAdConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteAdConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteAdConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_playback_restriction_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlaybackRestrictionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/DeletePlaybackRestrictionPolicy"
        o.input = Shapes::ShapeRef.new(shape: DeletePlaybackRestrictionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:get_ad_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetAdConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetAdConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_playback_restriction_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlaybackRestrictionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/GetPlaybackRestrictionPolicy"
        o.input = Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaybackRestrictionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
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

      api.add_operation(:insert_ad_break, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InsertAdBreak"
        o.http_method = "POST"
        o.http_request_uri = "/InsertAdBreak"
        o.input = Shapes::ShapeRef.new(shape: InsertAdBreakRequest)
        o.output = Shapes::ShapeRef.new(shape: InsertAdBreakResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ChannelNotBroadcasting)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_ad_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListAdConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListAdConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdConfigurationsResponse)
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

      api.add_operation(:list_playback_restriction_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlaybackRestrictionPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/ListPlaybackRestrictionPolicies"
        o.input = Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlaybackRestrictionPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
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

      api.add_operation(:update_ad_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAdConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateAdConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAdConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAdConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:update_playback_restriction_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlaybackRestrictionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/UpdatePlaybackRestrictionPolicy"
        o.input = Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePlaybackRestrictionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
