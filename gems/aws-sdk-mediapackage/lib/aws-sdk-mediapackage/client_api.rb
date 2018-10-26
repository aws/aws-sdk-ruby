# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaPackage
  # @api private
  module ClientApi

    include Seahorse::Model

    AdMarkers = Shapes::StringShape.new(name: 'AdMarkers')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelCreateParameters = Shapes::StructureShape.new(name: 'ChannelCreateParameters')
    ChannelList = Shapes::StructureShape.new(name: 'ChannelList')
    ChannelUpdateParameters = Shapes::StructureShape.new(name: 'ChannelUpdateParameters')
    CmafEncryption = Shapes::StructureShape.new(name: 'CmafEncryption')
    CmafPackage = Shapes::StructureShape.new(name: 'CmafPackage')
    CmafPackageCreateOrUpdateParameters = Shapes::StructureShape.new(name: 'CmafPackageCreateOrUpdateParameters')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateOriginEndpointRequest = Shapes::StructureShape.new(name: 'CreateOriginEndpointRequest')
    CreateOriginEndpointResponse = Shapes::StructureShape.new(name: 'CreateOriginEndpointResponse')
    DashEncryption = Shapes::StructureShape.new(name: 'DashEncryption')
    DashPackage = Shapes::StructureShape.new(name: 'DashPackage')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteOriginEndpointRequest = Shapes::StructureShape.new(name: 'DeleteOriginEndpointRequest')
    DeleteOriginEndpointResponse = Shapes::StructureShape.new(name: 'DeleteOriginEndpointResponse')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeOriginEndpointRequest = Shapes::StructureShape.new(name: 'DescribeOriginEndpointRequest')
    DescribeOriginEndpointResponse = Shapes::StructureShape.new(name: 'DescribeOriginEndpointResponse')
    EncryptionMethod = Shapes::StringShape.new(name: 'EncryptionMethod')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    HlsEncryption = Shapes::StructureShape.new(name: 'HlsEncryption')
    HlsIngest = Shapes::StructureShape.new(name: 'HlsIngest')
    HlsManifest = Shapes::StructureShape.new(name: 'HlsManifest')
    HlsManifestCreateOrUpdateParameters = Shapes::StructureShape.new(name: 'HlsManifestCreateOrUpdateParameters')
    HlsPackage = Shapes::StructureShape.new(name: 'HlsPackage')
    IngestEndpoint = Shapes::StructureShape.new(name: 'IngestEndpoint')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListOriginEndpointsRequest = Shapes::StructureShape.new(name: 'ListOriginEndpointsRequest')
    ListOriginEndpointsResponse = Shapes::StructureShape.new(name: 'ListOriginEndpointsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MssEncryption = Shapes::StructureShape.new(name: 'MssEncryption')
    MssPackage = Shapes::StructureShape.new(name: 'MssPackage')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OriginEndpoint = Shapes::StructureShape.new(name: 'OriginEndpoint')
    OriginEndpointCreateParameters = Shapes::StructureShape.new(name: 'OriginEndpointCreateParameters')
    OriginEndpointList = Shapes::StructureShape.new(name: 'OriginEndpointList')
    OriginEndpointUpdateParameters = Shapes::StructureShape.new(name: 'OriginEndpointUpdateParameters')
    PlaylistType = Shapes::StringShape.new(name: 'PlaylistType')
    Profile = Shapes::StringShape.new(name: 'Profile')
    RotateChannelCredentialsRequest = Shapes::StructureShape.new(name: 'RotateChannelCredentialsRequest')
    RotateChannelCredentialsResponse = Shapes::StructureShape.new(name: 'RotateChannelCredentialsResponse')
    RotateIngestEndpointCredentialsRequest = Shapes::StructureShape.new(name: 'RotateIngestEndpointCredentialsRequest')
    RotateIngestEndpointCredentialsResponse = Shapes::StructureShape.new(name: 'RotateIngestEndpointCredentialsResponse')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SpekeKeyProvider = Shapes::StructureShape.new(name: 'SpekeKeyProvider')
    StreamOrder = Shapes::StringShape.new(name: 'StreamOrder')
    StreamSelection = Shapes::StructureShape.new(name: 'StreamSelection')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateOriginEndpointRequest = Shapes::StructureShape.new(name: 'UpdateOriginEndpointRequest')
    UpdateOriginEndpointResponse = Shapes::StructureShape.new(name: 'UpdateOriginEndpointResponse')
    __PeriodTriggersElement = Shapes::StringShape.new(name: '__PeriodTriggersElement')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfChannel = Shapes::ListShape.new(name: '__listOfChannel')
    __listOfHlsManifest = Shapes::ListShape.new(name: '__listOfHlsManifest')
    __listOfHlsManifestCreateOrUpdateParameters = Shapes::ListShape.new(name: '__listOfHlsManifestCreateOrUpdateParameters')
    __listOfIngestEndpoint = Shapes::ListShape.new(name: '__listOfIngestEndpoint')
    __listOfOriginEndpoint = Shapes::ListShape.new(name: '__listOfOriginEndpoint')
    __listOf__PeriodTriggersElement = Shapes::ListShape.new(name: '__listOf__PeriodTriggersElement')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Channel.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Channel.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    Channel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Channel.struct_class = Types::Channel

    ChannelCreateParameters.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    ChannelCreateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    ChannelCreateParameters.struct_class = Types::ChannelCreateParameters

    ChannelList.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannel, location_name: "channels"))
    ChannelList.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ChannelList.struct_class = Types::ChannelList

    ChannelUpdateParameters.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    ChannelUpdateParameters.struct_class = Types::ChannelUpdateParameters

    CmafEncryption.add_member(:key_rotation_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "keyRotationIntervalSeconds"))
    CmafEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    CmafEncryption.struct_class = Types::CmafEncryption

    CmafPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: CmafEncryption, location_name: "encryption"))
    CmafPackage.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: __listOfHlsManifest, location_name: "hlsManifests"))
    CmafPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    CmafPackage.add_member(:segment_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "segmentPrefix"))
    CmafPackage.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    CmafPackage.struct_class = Types::CmafPackage

    CmafPackageCreateOrUpdateParameters.add_member(:encryption, Shapes::ShapeRef.new(shape: CmafEncryption, location_name: "encryption"))
    CmafPackageCreateOrUpdateParameters.add_member(:hls_manifests, Shapes::ShapeRef.new(shape: __listOfHlsManifestCreateOrUpdateParameters, location_name: "hlsManifests"))
    CmafPackageCreateOrUpdateParameters.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    CmafPackageCreateOrUpdateParameters.add_member(:segment_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "segmentPrefix"))
    CmafPackageCreateOrUpdateParameters.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    CmafPackageCreateOrUpdateParameters.struct_class = Types::CmafPackageCreateOrUpdateParameters

    CreateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateChannelResponse.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    CreateChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateOriginEndpointRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "channelId"))
    CreateOriginEndpointRequest.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: "cmafPackage"))
    CreateOriginEndpointRequest.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    CreateOriginEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateOriginEndpointRequest.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    CreateOriginEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    CreateOriginEndpointRequest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    CreateOriginEndpointRequest.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    CreateOriginEndpointRequest.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    CreateOriginEndpointRequest.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    CreateOriginEndpointRequest.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    CreateOriginEndpointRequest.struct_class = Types::CreateOriginEndpointRequest

    CreateOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateOriginEndpointResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    CreateOriginEndpointResponse.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    CreateOriginEndpointResponse.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    CreateOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateOriginEndpointResponse.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    CreateOriginEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateOriginEndpointResponse.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    CreateOriginEndpointResponse.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    CreateOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    CreateOriginEndpointResponse.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    CreateOriginEndpointResponse.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    CreateOriginEndpointResponse.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    CreateOriginEndpointResponse.struct_class = Types::CreateOriginEndpointResponse

    DashEncryption.add_member(:key_rotation_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "keyRotationIntervalSeconds"))
    DashEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    DashEncryption.struct_class = Types::DashEncryption

    DashPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: DashEncryption, location_name: "encryption"))
    DashPackage.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "manifestWindowSeconds"))
    DashPackage.add_member(:min_buffer_time_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "minBufferTimeSeconds"))
    DashPackage.add_member(:min_update_period_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "minUpdatePeriodSeconds"))
    DashPackage.add_member(:period_triggers, Shapes::ShapeRef.new(shape: __listOf__PeriodTriggersElement, location_name: "periodTriggers"))
    DashPackage.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "profile"))
    DashPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    DashPackage.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    DashPackage.add_member(:suggested_presentation_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "suggestedPresentationDelaySeconds"))
    DashPackage.struct_class = Types::DashPackage

    DeleteChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteOriginEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteOriginEndpointRequest.struct_class = Types::DeleteOriginEndpointRequest

    DeleteOriginEndpointResponse.struct_class = Types::DeleteOriginEndpointResponse

    DescribeChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeChannelResponse.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    DescribeChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeOriginEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DescribeOriginEndpointRequest.struct_class = Types::DescribeOriginEndpointRequest

    DescribeOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeOriginEndpointResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    DescribeOriginEndpointResponse.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    DescribeOriginEndpointResponse.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    DescribeOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeOriginEndpointResponse.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    DescribeOriginEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeOriginEndpointResponse.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    DescribeOriginEndpointResponse.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    DescribeOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    DescribeOriginEndpointResponse.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    DescribeOriginEndpointResponse.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    DescribeOriginEndpointResponse.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    DescribeOriginEndpointResponse.struct_class = Types::DescribeOriginEndpointResponse

    HlsEncryption.add_member(:constant_initialization_vector, Shapes::ShapeRef.new(shape: __string, location_name: "constantInitializationVector"))
    HlsEncryption.add_member(:encryption_method, Shapes::ShapeRef.new(shape: EncryptionMethod, location_name: "encryptionMethod"))
    HlsEncryption.add_member(:key_rotation_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "keyRotationIntervalSeconds"))
    HlsEncryption.add_member(:repeat_ext_x_key, Shapes::ShapeRef.new(shape: __boolean, location_name: "repeatExtXKey"))
    HlsEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    HlsEncryption.struct_class = Types::HlsEncryption

    HlsIngest.add_member(:ingest_endpoints, Shapes::ShapeRef.new(shape: __listOfIngestEndpoint, location_name: "ingestEndpoints"))
    HlsIngest.struct_class = Types::HlsIngest

    HlsManifest.add_member(:ad_markers, Shapes::ShapeRef.new(shape: AdMarkers, location_name: "adMarkers"))
    HlsManifest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    HlsManifest.add_member(:include_iframe_only_stream, Shapes::ShapeRef.new(shape: __boolean, location_name: "includeIframeOnlyStream"))
    HlsManifest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    HlsManifest.add_member(:playlist_type, Shapes::ShapeRef.new(shape: PlaylistType, location_name: "playlistType"))
    HlsManifest.add_member(:playlist_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "playlistWindowSeconds"))
    HlsManifest.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "programDateTimeIntervalSeconds"))
    HlsManifest.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    HlsManifest.struct_class = Types::HlsManifest

    HlsManifestCreateOrUpdateParameters.add_member(:ad_markers, Shapes::ShapeRef.new(shape: AdMarkers, location_name: "adMarkers"))
    HlsManifestCreateOrUpdateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    HlsManifestCreateOrUpdateParameters.add_member(:include_iframe_only_stream, Shapes::ShapeRef.new(shape: __boolean, location_name: "includeIframeOnlyStream"))
    HlsManifestCreateOrUpdateParameters.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    HlsManifestCreateOrUpdateParameters.add_member(:playlist_type, Shapes::ShapeRef.new(shape: PlaylistType, location_name: "playlistType"))
    HlsManifestCreateOrUpdateParameters.add_member(:playlist_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "playlistWindowSeconds"))
    HlsManifestCreateOrUpdateParameters.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "programDateTimeIntervalSeconds"))
    HlsManifestCreateOrUpdateParameters.struct_class = Types::HlsManifestCreateOrUpdateParameters

    HlsPackage.add_member(:ad_markers, Shapes::ShapeRef.new(shape: AdMarkers, location_name: "adMarkers"))
    HlsPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: HlsEncryption, location_name: "encryption"))
    HlsPackage.add_member(:include_iframe_only_stream, Shapes::ShapeRef.new(shape: __boolean, location_name: "includeIframeOnlyStream"))
    HlsPackage.add_member(:playlist_type, Shapes::ShapeRef.new(shape: PlaylistType, location_name: "playlistType"))
    HlsPackage.add_member(:playlist_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "playlistWindowSeconds"))
    HlsPackage.add_member(:program_date_time_interval_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "programDateTimeIntervalSeconds"))
    HlsPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    HlsPackage.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    HlsPackage.add_member(:use_audio_rendition_group, Shapes::ShapeRef.new(shape: __boolean, location_name: "useAudioRenditionGroup"))
    HlsPackage.struct_class = Types::HlsPackage

    IngestEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    IngestEndpoint.add_member(:password, Shapes::ShapeRef.new(shape: __string, location_name: "password"))
    IngestEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    IngestEndpoint.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    IngestEndpoint.struct_class = Types::IngestEndpoint

    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannel, location_name: "channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListOriginEndpointsRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelId"))
    ListOriginEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOriginEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListOriginEndpointsRequest.struct_class = Types::ListOriginEndpointsRequest

    ListOriginEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOriginEndpointsResponse.add_member(:origin_endpoints, Shapes::ShapeRef.new(shape: __listOfOriginEndpoint, location_name: "originEndpoints"))
    ListOriginEndpointsResponse.struct_class = Types::ListOriginEndpointsResponse

    MssEncryption.add_member(:speke_key_provider, Shapes::ShapeRef.new(shape: SpekeKeyProvider, required: true, location_name: "spekeKeyProvider"))
    MssEncryption.struct_class = Types::MssEncryption

    MssPackage.add_member(:encryption, Shapes::ShapeRef.new(shape: MssEncryption, location_name: "encryption"))
    MssPackage.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "manifestWindowSeconds"))
    MssPackage.add_member(:segment_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "segmentDurationSeconds"))
    MssPackage.add_member(:stream_selection, Shapes::ShapeRef.new(shape: StreamSelection, location_name: "streamSelection"))
    MssPackage.struct_class = Types::MssPackage

    OriginEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    OriginEndpoint.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    OriginEndpoint.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    OriginEndpoint.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    OriginEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    OriginEndpoint.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    OriginEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    OriginEndpoint.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    OriginEndpoint.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    OriginEndpoint.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    OriginEndpoint.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    OriginEndpoint.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    OriginEndpoint.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    OriginEndpoint.struct_class = Types::OriginEndpoint

    OriginEndpointCreateParameters.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "channelId"))
    OriginEndpointCreateParameters.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: "cmafPackage"))
    OriginEndpointCreateParameters.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    OriginEndpointCreateParameters.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    OriginEndpointCreateParameters.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    OriginEndpointCreateParameters.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id"))
    OriginEndpointCreateParameters.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    OriginEndpointCreateParameters.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    OriginEndpointCreateParameters.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    OriginEndpointCreateParameters.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    OriginEndpointCreateParameters.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    OriginEndpointCreateParameters.struct_class = Types::OriginEndpointCreateParameters

    OriginEndpointList.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    OriginEndpointList.add_member(:origin_endpoints, Shapes::ShapeRef.new(shape: __listOfOriginEndpoint, location_name: "originEndpoints"))
    OriginEndpointList.struct_class = Types::OriginEndpointList

    OriginEndpointUpdateParameters.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: "cmafPackage"))
    OriginEndpointUpdateParameters.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    OriginEndpointUpdateParameters.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    OriginEndpointUpdateParameters.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    OriginEndpointUpdateParameters.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    OriginEndpointUpdateParameters.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    OriginEndpointUpdateParameters.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    OriginEndpointUpdateParameters.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    OriginEndpointUpdateParameters.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    OriginEndpointUpdateParameters.struct_class = Types::OriginEndpointUpdateParameters

    RotateChannelCredentialsRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    RotateChannelCredentialsRequest.struct_class = Types::RotateChannelCredentialsRequest

    RotateChannelCredentialsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    RotateChannelCredentialsResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    RotateChannelCredentialsResponse.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    RotateChannelCredentialsResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    RotateChannelCredentialsResponse.struct_class = Types::RotateChannelCredentialsResponse

    RotateIngestEndpointCredentialsRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    RotateIngestEndpointCredentialsRequest.add_member(:ingest_endpoint_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ingest_endpoint_id"))
    RotateIngestEndpointCredentialsRequest.struct_class = Types::RotateIngestEndpointCredentialsRequest

    RotateIngestEndpointCredentialsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    RotateIngestEndpointCredentialsResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    RotateIngestEndpointCredentialsResponse.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    RotateIngestEndpointCredentialsResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    RotateIngestEndpointCredentialsResponse.struct_class = Types::RotateIngestEndpointCredentialsResponse

    SpekeKeyProvider.add_member(:resource_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceId"))
    SpekeKeyProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    SpekeKeyProvider.add_member(:system_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "systemIds"))
    SpekeKeyProvider.add_member(:url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "url"))
    SpekeKeyProvider.struct_class = Types::SpekeKeyProvider

    StreamSelection.add_member(:max_video_bits_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "maxVideoBitsPerSecond"))
    StreamSelection.add_member(:min_video_bits_per_second, Shapes::ShapeRef.new(shape: __integer, location_name: "minVideoBitsPerSecond"))
    StreamSelection.add_member(:stream_order, Shapes::ShapeRef.new(shape: StreamOrder, location_name: "streamOrder"))
    StreamSelection.struct_class = Types::StreamSelection

    UpdateChannelRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateChannelRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateChannelResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateChannelResponse.add_member(:hls_ingest, Shapes::ShapeRef.new(shape: HlsIngest, location_name: "hlsIngest"))
    UpdateChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateOriginEndpointRequest.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackageCreateOrUpdateParameters, location_name: "cmafPackage"))
    UpdateOriginEndpointRequest.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    UpdateOriginEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateOriginEndpointRequest.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    UpdateOriginEndpointRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateOriginEndpointRequest.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    UpdateOriginEndpointRequest.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    UpdateOriginEndpointRequest.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    UpdateOriginEndpointRequest.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    UpdateOriginEndpointRequest.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    UpdateOriginEndpointRequest.struct_class = Types::UpdateOriginEndpointRequest

    UpdateOriginEndpointResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateOriginEndpointResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    UpdateOriginEndpointResponse.add_member(:cmaf_package, Shapes::ShapeRef.new(shape: CmafPackage, location_name: "cmafPackage"))
    UpdateOriginEndpointResponse.add_member(:dash_package, Shapes::ShapeRef.new(shape: DashPackage, location_name: "dashPackage"))
    UpdateOriginEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateOriginEndpointResponse.add_member(:hls_package, Shapes::ShapeRef.new(shape: HlsPackage, location_name: "hlsPackage"))
    UpdateOriginEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateOriginEndpointResponse.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, location_name: "manifestName"))
    UpdateOriginEndpointResponse.add_member(:mss_package, Shapes::ShapeRef.new(shape: MssPackage, location_name: "mssPackage"))
    UpdateOriginEndpointResponse.add_member(:startover_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "startoverWindowSeconds"))
    UpdateOriginEndpointResponse.add_member(:time_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "timeDelaySeconds"))
    UpdateOriginEndpointResponse.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    UpdateOriginEndpointResponse.add_member(:whitelist, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "whitelist"))
    UpdateOriginEndpointResponse.struct_class = Types::UpdateOriginEndpointResponse

    __listOfChannel.member = Shapes::ShapeRef.new(shape: Channel)

    __listOfHlsManifest.member = Shapes::ShapeRef.new(shape: HlsManifest)

    __listOfHlsManifestCreateOrUpdateParameters.member = Shapes::ShapeRef.new(shape: HlsManifestCreateOrUpdateParameters)

    __listOfIngestEndpoint.member = Shapes::ShapeRef.new(shape: IngestEndpoint)

    __listOfOriginEndpoint.member = Shapes::ShapeRef.new(shape: OriginEndpoint)

    __listOf__PeriodTriggersElement.member = Shapes::ShapeRef.new(shape: __PeriodTriggersElement)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-12"

      api.metadata = {
        "apiVersion" => "2017-10-12",
        "endpointPrefix" => "mediapackage",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaPackage",
        "serviceFullName" => "AWS Elemental MediaPackage",
        "serviceId" => "MediaPackage",
        "signatureVersion" => "v4",
        "signingName" => "mediapackage",
        "uid" => "mediapackage-2017-10-12",
      }

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOriginEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/origin_endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channels/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOriginEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/origin_endpoints/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channels/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOriginEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/origin_endpoints/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_origin_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOriginEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/origin_endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListOriginEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOriginEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:rotate_channel_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RotateChannelCredentials"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{id}/credentials"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: RotateChannelCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: RotateChannelCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:rotate_ingest_endpoint_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RotateIngestEndpointCredentials"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials"
        o.input = Shapes::ShapeRef.new(shape: RotateIngestEndpointCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: RotateIngestEndpointCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channels/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_origin_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOriginEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/origin_endpoints/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOriginEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOriginEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
