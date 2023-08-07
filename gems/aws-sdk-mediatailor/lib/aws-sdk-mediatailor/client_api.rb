# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaTailor
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessConfiguration = Shapes::StructureShape.new(name: 'AccessConfiguration')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    AdBreak = Shapes::StructureShape.new(name: 'AdBreak')
    AdBreakMetadataList = Shapes::ListShape.new(name: 'AdBreakMetadataList')
    AdMarkerPassthrough = Shapes::StructureShape.new(name: 'AdMarkerPassthrough')
    AdMarkupType = Shapes::StringShape.new(name: 'AdMarkupType')
    Alert = Shapes::StructureShape.new(name: 'Alert')
    AlertCategory = Shapes::StringShape.new(name: 'AlertCategory')
    AvailMatchingCriteria = Shapes::StructureShape.new(name: 'AvailMatchingCriteria')
    AvailSuppression = Shapes::StructureShape.new(name: 'AvailSuppression')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Bumper = Shapes::StructureShape.new(name: 'Bumper')
    CdnConfiguration = Shapes::StructureShape.new(name: 'CdnConfiguration')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelState = Shapes::StringShape.new(name: 'ChannelState')
    ClipRange = Shapes::StructureShape.new(name: 'ClipRange')
    ConfigurationAliasesRequest = Shapes::MapShape.new(name: 'ConfigurationAliasesRequest')
    ConfigurationAliasesResponse = Shapes::MapShape.new(name: 'ConfigurationAliasesResponse')
    ConfigureLogsForChannelRequest = Shapes::StructureShape.new(name: 'ConfigureLogsForChannelRequest')
    ConfigureLogsForChannelResponse = Shapes::StructureShape.new(name: 'ConfigureLogsForChannelResponse')
    ConfigureLogsForPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'ConfigureLogsForPlaybackConfigurationRequest')
    ConfigureLogsForPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'ConfigureLogsForPlaybackConfigurationResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateLiveSourceRequest = Shapes::StructureShape.new(name: 'CreateLiveSourceRequest')
    CreateLiveSourceResponse = Shapes::StructureShape.new(name: 'CreateLiveSourceResponse')
    CreatePrefetchScheduleRequest = Shapes::StructureShape.new(name: 'CreatePrefetchScheduleRequest')
    CreatePrefetchScheduleResponse = Shapes::StructureShape.new(name: 'CreatePrefetchScheduleResponse')
    CreateProgramRequest = Shapes::StructureShape.new(name: 'CreateProgramRequest')
    CreateProgramResponse = Shapes::StructureShape.new(name: 'CreateProgramResponse')
    CreateSourceLocationRequest = Shapes::StructureShape.new(name: 'CreateSourceLocationRequest')
    CreateSourceLocationResponse = Shapes::StructureShape.new(name: 'CreateSourceLocationResponse')
    CreateVodSourceRequest = Shapes::StructureShape.new(name: 'CreateVodSourceRequest')
    CreateVodSourceResponse = Shapes::StructureShape.new(name: 'CreateVodSourceResponse')
    DashConfiguration = Shapes::StructureShape.new(name: 'DashConfiguration')
    DashConfigurationForPut = Shapes::StructureShape.new(name: 'DashConfigurationForPut')
    DashPlaylistSettings = Shapes::StructureShape.new(name: 'DashPlaylistSettings')
    DefaultSegmentDeliveryConfiguration = Shapes::StructureShape.new(name: 'DefaultSegmentDeliveryConfiguration')
    DeleteChannelPolicyRequest = Shapes::StructureShape.new(name: 'DeleteChannelPolicyRequest')
    DeleteChannelPolicyResponse = Shapes::StructureShape.new(name: 'DeleteChannelPolicyResponse')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteLiveSourceRequest = Shapes::StructureShape.new(name: 'DeleteLiveSourceRequest')
    DeleteLiveSourceResponse = Shapes::StructureShape.new(name: 'DeleteLiveSourceResponse')
    DeletePlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'DeletePlaybackConfigurationRequest')
    DeletePlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'DeletePlaybackConfigurationResponse')
    DeletePrefetchScheduleRequest = Shapes::StructureShape.new(name: 'DeletePrefetchScheduleRequest')
    DeletePrefetchScheduleResponse = Shapes::StructureShape.new(name: 'DeletePrefetchScheduleResponse')
    DeleteProgramRequest = Shapes::StructureShape.new(name: 'DeleteProgramRequest')
    DeleteProgramResponse = Shapes::StructureShape.new(name: 'DeleteProgramResponse')
    DeleteSourceLocationRequest = Shapes::StructureShape.new(name: 'DeleteSourceLocationRequest')
    DeleteSourceLocationResponse = Shapes::StructureShape.new(name: 'DeleteSourceLocationResponse')
    DeleteVodSourceRequest = Shapes::StructureShape.new(name: 'DeleteVodSourceRequest')
    DeleteVodSourceResponse = Shapes::StructureShape.new(name: 'DeleteVodSourceResponse')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeLiveSourceRequest = Shapes::StructureShape.new(name: 'DescribeLiveSourceRequest')
    DescribeLiveSourceResponse = Shapes::StructureShape.new(name: 'DescribeLiveSourceResponse')
    DescribeProgramRequest = Shapes::StructureShape.new(name: 'DescribeProgramRequest')
    DescribeProgramResponse = Shapes::StructureShape.new(name: 'DescribeProgramResponse')
    DescribeSourceLocationRequest = Shapes::StructureShape.new(name: 'DescribeSourceLocationRequest')
    DescribeSourceLocationResponse = Shapes::StructureShape.new(name: 'DescribeSourceLocationResponse')
    DescribeVodSourceRequest = Shapes::StructureShape.new(name: 'DescribeVodSourceRequest')
    DescribeVodSourceResponse = Shapes::StructureShape.new(name: 'DescribeVodSourceResponse')
    FillPolicy = Shapes::StringShape.new(name: 'FillPolicy')
    GetChannelPolicyRequest = Shapes::StructureShape.new(name: 'GetChannelPolicyRequest')
    GetChannelPolicyResponse = Shapes::StructureShape.new(name: 'GetChannelPolicyResponse')
    GetChannelScheduleRequest = Shapes::StructureShape.new(name: 'GetChannelScheduleRequest')
    GetChannelScheduleResponse = Shapes::StructureShape.new(name: 'GetChannelScheduleResponse')
    GetPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationRequest')
    GetPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'GetPlaybackConfigurationResponse')
    GetPrefetchScheduleRequest = Shapes::StructureShape.new(name: 'GetPrefetchScheduleRequest')
    GetPrefetchScheduleResponse = Shapes::StructureShape.new(name: 'GetPrefetchScheduleResponse')
    HlsConfiguration = Shapes::StructureShape.new(name: 'HlsConfiguration')
    HlsPlaylistSettings = Shapes::StructureShape.new(name: 'HlsPlaylistSettings')
    HttpConfiguration = Shapes::StructureShape.new(name: 'HttpConfiguration')
    HttpPackageConfiguration = Shapes::StructureShape.new(name: 'HttpPackageConfiguration')
    HttpPackageConfigurations = Shapes::ListShape.new(name: 'HttpPackageConfigurations')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    ListAlertsRequest = Shapes::StructureShape.new(name: 'ListAlertsRequest')
    ListAlertsResponse = Shapes::StructureShape.new(name: 'ListAlertsResponse')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListLiveSourcesRequest = Shapes::StructureShape.new(name: 'ListLiveSourcesRequest')
    ListLiveSourcesResponse = Shapes::StructureShape.new(name: 'ListLiveSourcesResponse')
    ListPlaybackConfigurationsRequest = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsRequest')
    ListPlaybackConfigurationsResponse = Shapes::StructureShape.new(name: 'ListPlaybackConfigurationsResponse')
    ListPrefetchSchedulesRequest = Shapes::StructureShape.new(name: 'ListPrefetchSchedulesRequest')
    ListPrefetchSchedulesResponse = Shapes::StructureShape.new(name: 'ListPrefetchSchedulesResponse')
    ListSourceLocationsRequest = Shapes::StructureShape.new(name: 'ListSourceLocationsRequest')
    ListSourceLocationsResponse = Shapes::StructureShape.new(name: 'ListSourceLocationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVodSourcesRequest = Shapes::StructureShape.new(name: 'ListVodSourcesRequest')
    ListVodSourcesResponse = Shapes::StructureShape.new(name: 'ListVodSourcesResponse')
    LivePreRollConfiguration = Shapes::StructureShape.new(name: 'LivePreRollConfiguration')
    LiveSource = Shapes::StructureShape.new(name: 'LiveSource')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurationForChannel = Shapes::StructureShape.new(name: 'LogConfigurationForChannel')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManifestProcessingRules = Shapes::StructureShape.new(name: 'ManifestProcessingRules')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    Mode = Shapes::StringShape.new(name: 'Mode')
    Operator = Shapes::StringShape.new(name: 'Operator')
    OriginManifestType = Shapes::StringShape.new(name: 'OriginManifestType')
    PlaybackConfiguration = Shapes::StructureShape.new(name: 'PlaybackConfiguration')
    PlaybackMode = Shapes::StringShape.new(name: 'PlaybackMode')
    PrefetchConsumption = Shapes::StructureShape.new(name: 'PrefetchConsumption')
    PrefetchRetrieval = Shapes::StructureShape.new(name: 'PrefetchRetrieval')
    PrefetchSchedule = Shapes::StructureShape.new(name: 'PrefetchSchedule')
    PutChannelPolicyRequest = Shapes::StructureShape.new(name: 'PutChannelPolicyRequest')
    PutChannelPolicyResponse = Shapes::StructureShape.new(name: 'PutChannelPolicyResponse')
    PutPlaybackConfigurationRequest = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationRequest')
    PutPlaybackConfigurationResponse = Shapes::StructureShape.new(name: 'PutPlaybackConfigurationResponse')
    RelativePosition = Shapes::StringShape.new(name: 'RelativePosition')
    RequestOutputItem = Shapes::StructureShape.new(name: 'RequestOutputItem')
    RequestOutputs = Shapes::ListShape.new(name: 'RequestOutputs')
    ResponseOutputItem = Shapes::StructureShape.new(name: 'ResponseOutputItem')
    ResponseOutputs = Shapes::ListShape.new(name: 'ResponseOutputs')
    ScheduleAdBreak = Shapes::StructureShape.new(name: 'ScheduleAdBreak')
    ScheduleConfiguration = Shapes::StructureShape.new(name: 'ScheduleConfiguration')
    ScheduleEntry = Shapes::StructureShape.new(name: 'ScheduleEntry')
    ScheduleEntryType = Shapes::StringShape.new(name: 'ScheduleEntryType')
    SecretsManagerAccessTokenConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerAccessTokenConfiguration')
    SegmentDeliveryConfiguration = Shapes::StructureShape.new(name: 'SegmentDeliveryConfiguration')
    SegmentationDescriptor = Shapes::StructureShape.new(name: 'SegmentationDescriptor')
    SegmentationDescriptorList = Shapes::ListShape.new(name: 'SegmentationDescriptorList')
    SlateSource = Shapes::StructureShape.new(name: 'SlateSource')
    SourceLocation = Shapes::StructureShape.new(name: 'SourceLocation')
    SpliceInsertMessage = Shapes::StructureShape.new(name: 'SpliceInsertMessage')
    StartChannelRequest = Shapes::StructureShape.new(name: 'StartChannelRequest')
    StartChannelResponse = Shapes::StructureShape.new(name: 'StartChannelResponse')
    StopChannelRequest = Shapes::StructureShape.new(name: 'StopChannelRequest')
    StopChannelResponse = Shapes::StructureShape.new(name: 'StopChannelResponse')
    String = Shapes::StringShape.new(name: 'String')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tier = Shapes::StringShape.new(name: 'Tier')
    TimeSignalMessage = Shapes::StructureShape.new(name: 'TimeSignalMessage')
    Transition = Shapes::StructureShape.new(name: 'Transition')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateLiveSourceRequest = Shapes::StructureShape.new(name: 'UpdateLiveSourceRequest')
    UpdateLiveSourceResponse = Shapes::StructureShape.new(name: 'UpdateLiveSourceResponse')
    UpdateProgramRequest = Shapes::StructureShape.new(name: 'UpdateProgramRequest')
    UpdateProgramResponse = Shapes::StructureShape.new(name: 'UpdateProgramResponse')
    UpdateProgramScheduleConfiguration = Shapes::StructureShape.new(name: 'UpdateProgramScheduleConfiguration')
    UpdateProgramTransition = Shapes::StructureShape.new(name: 'UpdateProgramTransition')
    UpdateSourceLocationRequest = Shapes::StructureShape.new(name: 'UpdateSourceLocationRequest')
    UpdateSourceLocationResponse = Shapes::StructureShape.new(name: 'UpdateSourceLocationResponse')
    UpdateVodSourceRequest = Shapes::StructureShape.new(name: 'UpdateVodSourceRequest')
    UpdateVodSourceResponse = Shapes::StructureShape.new(name: 'UpdateVodSourceResponse')
    VodSource = Shapes::StructureShape.new(name: 'VodSource')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1 = Shapes::IntegerShape.new(name: '__integerMin1')
    __integerMin1Max100 = Shapes::IntegerShape.new(name: '__integerMin1Max100')
    __listOfAdBreak = Shapes::ListShape.new(name: '__listOfAdBreak')
    __listOfAlert = Shapes::ListShape.new(name: '__listOfAlert')
    __listOfAvailMatchingCriteria = Shapes::ListShape.new(name: '__listOfAvailMatchingCriteria')
    __listOfChannel = Shapes::ListShape.new(name: '__listOfChannel')
    __listOfLiveSource = Shapes::ListShape.new(name: '__listOfLiveSource')
    __listOfPlaybackConfiguration = Shapes::ListShape.new(name: '__listOfPlaybackConfiguration')
    __listOfPrefetchSchedule = Shapes::ListShape.new(name: '__listOfPrefetchSchedule')
    __listOfScheduleAdBreak = Shapes::ListShape.new(name: '__listOfScheduleAdBreak')
    __listOfScheduleEntry = Shapes::ListShape.new(name: '__listOfScheduleEntry')
    __listOfSegmentDeliveryConfiguration = Shapes::ListShape.new(name: '__listOfSegmentDeliveryConfiguration')
    __listOfSourceLocation = Shapes::ListShape.new(name: '__listOfSourceLocation')
    __listOfVodSource = Shapes::ListShape.new(name: '__listOfVodSource')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")
    adMarkupTypes = Shapes::ListShape.new(name: 'adMarkupTypes')

    AccessConfiguration.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, location_name: "AccessType"))
    AccessConfiguration.add_member(:secrets_manager_access_token_configuration, Shapes::ShapeRef.new(shape: SecretsManagerAccessTokenConfiguration, location_name: "SecretsManagerAccessTokenConfiguration"))
    AccessConfiguration.struct_class = Types::AccessConfiguration

    AdBreak.add_member(:ad_break_metadata, Shapes::ShapeRef.new(shape: AdBreakMetadataList, location_name: "AdBreakMetadata"))
    AdBreak.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    AdBreak.add_member(:offset_millis, Shapes::ShapeRef.new(shape: __long, location_name: "OffsetMillis"))
    AdBreak.add_member(:slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "Slate"))
    AdBreak.add_member(:splice_insert_message, Shapes::ShapeRef.new(shape: SpliceInsertMessage, location_name: "SpliceInsertMessage"))
    AdBreak.add_member(:time_signal_message, Shapes::ShapeRef.new(shape: TimeSignalMessage, location_name: "TimeSignalMessage"))
    AdBreak.struct_class = Types::AdBreak

    AdBreakMetadataList.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    AdMarkerPassthrough.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "Enabled"))
    AdMarkerPassthrough.struct_class = Types::AdMarkerPassthrough

    Alert.add_member(:alert_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "AlertCode"))
    Alert.add_member(:alert_message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "AlertMessage"))
    Alert.add_member(:category, Shapes::ShapeRef.new(shape: AlertCategory, location_name: "Category"))
    Alert.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "LastModifiedTime"))
    Alert.add_member(:related_resource_arns, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "RelatedResourceArns"))
    Alert.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ResourceArn"))
    Alert.struct_class = Types::Alert

    AvailMatchingCriteria.add_member(:dynamic_variable, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "DynamicVariable"))
    AvailMatchingCriteria.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "Operator"))
    AvailMatchingCriteria.struct_class = Types::AvailMatchingCriteria

    AvailSuppression.add_member(:fill_policy, Shapes::ShapeRef.new(shape: FillPolicy, location_name: "FillPolicy"))
    AvailSuppression.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    AvailSuppression.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "Value"))
    AvailSuppression.struct_class = Types::AvailSuppression

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    Bumper.add_member(:end_url, Shapes::ShapeRef.new(shape: __string, location_name: "EndUrl"))
    Bumper.add_member(:start_url, Shapes::ShapeRef.new(shape: __string, location_name: "StartUrl"))
    Bumper.struct_class = Types::Bumper

    CdnConfiguration.add_member(:ad_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "AdSegmentUrlPrefix"))
    CdnConfiguration.add_member(:content_segment_url_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ContentSegmentUrlPrefix"))
    CdnConfiguration.struct_class = Types::CdnConfiguration

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    Channel.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ChannelName"))
    Channel.add_member(:channel_state, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ChannelState"))
    Channel.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    Channel.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    Channel.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    Channel.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfigurationForChannel, required: true, location_name: "LogConfiguration"))
    Channel.add_member(:outputs, Shapes::ShapeRef.new(shape: ResponseOutputs, required: true, location_name: "Outputs"))
    Channel.add_member(:playback_mode, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "PlaybackMode"))
    Channel.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    Channel.add_member(:tier, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Tier"))
    Channel.struct_class = Types::Channel

    ClipRange.add_member(:end_offset_millis, Shapes::ShapeRef.new(shape: __long, required: true, location_name: "EndOffsetMillis"))
    ClipRange.struct_class = Types::ClipRange

    ConfigurationAliasesRequest.key = Shapes::ShapeRef.new(shape: __string)
    ConfigurationAliasesRequest.value = Shapes::ShapeRef.new(shape: __mapOf__string)

    ConfigurationAliasesResponse.key = Shapes::ShapeRef.new(shape: __string)
    ConfigurationAliasesResponse.value = Shapes::ShapeRef.new(shape: __mapOf__string)

    ConfigureLogsForChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ChannelName"))
    ConfigureLogsForChannelRequest.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, required: true, location_name: "LogTypes"))
    ConfigureLogsForChannelRequest.struct_class = Types::ConfigureLogsForChannelRequest

    ConfigureLogsForChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    ConfigureLogsForChannelResponse.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "LogTypes"))
    ConfigureLogsForChannelResponse.struct_class = Types::ConfigureLogsForChannelResponse

    ConfigureLogsForPlaybackConfigurationRequest.add_member(:percent_enabled, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "PercentEnabled"))
    ConfigureLogsForPlaybackConfigurationRequest.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "PlaybackConfigurationName"))
    ConfigureLogsForPlaybackConfigurationRequest.struct_class = Types::ConfigureLogsForPlaybackConfigurationRequest

    ConfigureLogsForPlaybackConfigurationResponse.add_member(:percent_enabled, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "PercentEnabled"))
    ConfigureLogsForPlaybackConfigurationResponse.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationName"))
    ConfigureLogsForPlaybackConfigurationResponse.struct_class = Types::ConfigureLogsForPlaybackConfigurationResponse

    CreateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    CreateChannelRequest.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    CreateChannelRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: RequestOutputs, required: true, location_name: "Outputs"))
    CreateChannelRequest.add_member(:playback_mode, Shapes::ShapeRef.new(shape: PlaybackMode, required: true, location_name: "PlaybackMode"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateChannelRequest.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    CreateChannelResponse.add_member(:channel_state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "ChannelState"))
    CreateChannelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    CreateChannelResponse.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    CreateChannelResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    CreateChannelResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: "Outputs"))
    CreateChannelResponse.add_member(:playback_mode, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackMode"))
    CreateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateChannelResponse.add_member(:tier, Shapes::ShapeRef.new(shape: __string, location_name: "Tier"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateLiveSourceRequest.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    CreateLiveSourceRequest.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LiveSourceName"))
    CreateLiveSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    CreateLiveSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateLiveSourceRequest.struct_class = Types::CreateLiveSourceRequest

    CreateLiveSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateLiveSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    CreateLiveSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    CreateLiveSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    CreateLiveSourceResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    CreateLiveSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    CreateLiveSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateLiveSourceResponse.struct_class = Types::CreateLiveSourceResponse

    CreatePrefetchScheduleRequest.add_member(:consumption, Shapes::ShapeRef.new(shape: PrefetchConsumption, required: true, location_name: "Consumption"))
    CreatePrefetchScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    CreatePrefetchScheduleRequest.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "PlaybackConfigurationName"))
    CreatePrefetchScheduleRequest.add_member(:retrieval, Shapes::ShapeRef.new(shape: PrefetchRetrieval, required: true, location_name: "Retrieval"))
    CreatePrefetchScheduleRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "StreamId"))
    CreatePrefetchScheduleRequest.struct_class = Types::CreatePrefetchScheduleRequest

    CreatePrefetchScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreatePrefetchScheduleResponse.add_member(:consumption, Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: "Consumption"))
    CreatePrefetchScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    CreatePrefetchScheduleResponse.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationName"))
    CreatePrefetchScheduleResponse.add_member(:retrieval, Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: "Retrieval"))
    CreatePrefetchScheduleResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "StreamId"))
    CreatePrefetchScheduleResponse.struct_class = Types::CreatePrefetchScheduleResponse

    CreateProgramRequest.add_member(:ad_breaks, Shapes::ShapeRef.new(shape: __listOfAdBreak, location_name: "AdBreaks"))
    CreateProgramRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    CreateProgramRequest.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    CreateProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ProgramName"))
    CreateProgramRequest.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: ScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    CreateProgramRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceLocationName"))
    CreateProgramRequest.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    CreateProgramRequest.struct_class = Types::CreateProgramRequest

    CreateProgramResponse.add_member(:ad_breaks, Shapes::ShapeRef.new(shape: __listOfAdBreak, location_name: "AdBreaks"))
    CreateProgramResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateProgramResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    CreateProgramResponse.add_member(:clip_range, Shapes::ShapeRef.new(shape: ClipRange, location_name: "ClipRange"))
    CreateProgramResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    CreateProgramResponse.add_member(:duration_millis, Shapes::ShapeRef.new(shape: __long, location_name: "DurationMillis"))
    CreateProgramResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    CreateProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "ProgramName"))
    CreateProgramResponse.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ScheduledStartTime"))
    CreateProgramResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    CreateProgramResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    CreateProgramResponse.struct_class = Types::CreateProgramResponse

    CreateSourceLocationRequest.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    CreateSourceLocationRequest.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    CreateSourceLocationRequest.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, required: true, location_name: "HttpConfiguration"))
    CreateSourceLocationRequest.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    CreateSourceLocationRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    CreateSourceLocationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateSourceLocationRequest.struct_class = Types::CreateSourceLocationRequest

    CreateSourceLocationResponse.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    CreateSourceLocationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateSourceLocationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    CreateSourceLocationResponse.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    CreateSourceLocationResponse.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: "HttpConfiguration"))
    CreateSourceLocationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    CreateSourceLocationResponse.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    CreateSourceLocationResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    CreateSourceLocationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateSourceLocationResponse.struct_class = Types::CreateSourceLocationResponse

    CreateVodSourceRequest.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    CreateVodSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    CreateVodSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateVodSourceRequest.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "VodSourceName"))
    CreateVodSourceRequest.struct_class = Types::CreateVodSourceRequest

    CreateVodSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    CreateVodSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    CreateVodSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    CreateVodSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    CreateVodSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    CreateVodSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateVodSourceResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    CreateVodSourceResponse.struct_class = Types::CreateVodSourceResponse

    DashConfiguration.add_member(:manifest_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ManifestEndpointPrefix"))
    DashConfiguration.add_member(:mpd_location, Shapes::ShapeRef.new(shape: __string, location_name: "MpdLocation"))
    DashConfiguration.add_member(:origin_manifest_type, Shapes::ShapeRef.new(shape: OriginManifestType, location_name: "OriginManifestType"))
    DashConfiguration.struct_class = Types::DashConfiguration

    DashConfigurationForPut.add_member(:mpd_location, Shapes::ShapeRef.new(shape: __string, location_name: "MpdLocation"))
    DashConfigurationForPut.add_member(:origin_manifest_type, Shapes::ShapeRef.new(shape: OriginManifestType, location_name: "OriginManifestType"))
    DashConfigurationForPut.struct_class = Types::DashConfigurationForPut

    DashPlaylistSettings.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "ManifestWindowSeconds"))
    DashPlaylistSettings.add_member(:min_buffer_time_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "MinBufferTimeSeconds"))
    DashPlaylistSettings.add_member(:min_update_period_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "MinUpdatePeriodSeconds"))
    DashPlaylistSettings.add_member(:suggested_presentation_delay_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "SuggestedPresentationDelaySeconds"))
    DashPlaylistSettings.struct_class = Types::DashPlaylistSettings

    DefaultSegmentDeliveryConfiguration.add_member(:base_url, Shapes::ShapeRef.new(shape: __string, location_name: "BaseUrl"))
    DefaultSegmentDeliveryConfiguration.struct_class = Types::DefaultSegmentDeliveryConfiguration

    DeleteChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    DeleteChannelPolicyRequest.struct_class = Types::DeleteChannelPolicyRequest

    DeleteChannelPolicyResponse.struct_class = Types::DeleteChannelPolicyResponse

    DeleteChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteLiveSourceRequest.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LiveSourceName"))
    DeleteLiveSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DeleteLiveSourceRequest.struct_class = Types::DeleteLiveSourceRequest

    DeleteLiveSourceResponse.struct_class = Types::DeleteLiveSourceResponse

    DeletePlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    DeletePlaybackConfigurationRequest.struct_class = Types::DeletePlaybackConfigurationRequest

    DeletePlaybackConfigurationResponse.struct_class = Types::DeletePlaybackConfigurationResponse

    DeletePrefetchScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    DeletePrefetchScheduleRequest.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "PlaybackConfigurationName"))
    DeletePrefetchScheduleRequest.struct_class = Types::DeletePrefetchScheduleRequest

    DeletePrefetchScheduleResponse.struct_class = Types::DeletePrefetchScheduleResponse

    DeleteProgramRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    DeleteProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ProgramName"))
    DeleteProgramRequest.struct_class = Types::DeleteProgramRequest

    DeleteProgramResponse.struct_class = Types::DeleteProgramResponse

    DeleteSourceLocationRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DeleteSourceLocationRequest.struct_class = Types::DeleteSourceLocationRequest

    DeleteSourceLocationResponse.struct_class = Types::DeleteSourceLocationResponse

    DeleteVodSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DeleteVodSourceRequest.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "VodSourceName"))
    DeleteVodSourceRequest.struct_class = Types::DeleteVodSourceRequest

    DeleteVodSourceResponse.struct_class = Types::DeleteVodSourceResponse

    DescribeChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DescribeChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    DescribeChannelResponse.add_member(:channel_state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "ChannelState"))
    DescribeChannelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    DescribeChannelResponse.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    DescribeChannelResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    DescribeChannelResponse.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfigurationForChannel, required: true, location_name: "LogConfiguration"))
    DescribeChannelResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: "Outputs"))
    DescribeChannelResponse.add_member(:playback_mode, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackMode"))
    DescribeChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    DescribeChannelResponse.add_member(:tier, Shapes::ShapeRef.new(shape: __string, location_name: "Tier"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeLiveSourceRequest.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LiveSourceName"))
    DescribeLiveSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DescribeLiveSourceRequest.struct_class = Types::DescribeLiveSourceRequest

    DescribeLiveSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DescribeLiveSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    DescribeLiveSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    DescribeLiveSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    DescribeLiveSourceResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    DescribeLiveSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    DescribeLiveSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    DescribeLiveSourceResponse.struct_class = Types::DescribeLiveSourceResponse

    DescribeProgramRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    DescribeProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ProgramName"))
    DescribeProgramRequest.struct_class = Types::DescribeProgramRequest

    DescribeProgramResponse.add_member(:ad_breaks, Shapes::ShapeRef.new(shape: __listOfAdBreak, location_name: "AdBreaks"))
    DescribeProgramResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DescribeProgramResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    DescribeProgramResponse.add_member(:clip_range, Shapes::ShapeRef.new(shape: ClipRange, location_name: "ClipRange"))
    DescribeProgramResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    DescribeProgramResponse.add_member(:duration_millis, Shapes::ShapeRef.new(shape: Long, location_name: "DurationMillis"))
    DescribeProgramResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    DescribeProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "ProgramName"))
    DescribeProgramResponse.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ScheduledStartTime"))
    DescribeProgramResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    DescribeProgramResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    DescribeProgramResponse.struct_class = Types::DescribeProgramResponse

    DescribeSourceLocationRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DescribeSourceLocationRequest.struct_class = Types::DescribeSourceLocationRequest

    DescribeSourceLocationResponse.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    DescribeSourceLocationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DescribeSourceLocationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    DescribeSourceLocationResponse.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    DescribeSourceLocationResponse.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: "HttpConfiguration"))
    DescribeSourceLocationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    DescribeSourceLocationResponse.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    DescribeSourceLocationResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    DescribeSourceLocationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    DescribeSourceLocationResponse.struct_class = Types::DescribeSourceLocationResponse

    DescribeVodSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    DescribeVodSourceRequest.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "VodSourceName"))
    DescribeVodSourceRequest.struct_class = Types::DescribeVodSourceRequest

    DescribeVodSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    DescribeVodSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    DescribeVodSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    DescribeVodSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    DescribeVodSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    DescribeVodSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    DescribeVodSourceResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    DescribeVodSourceResponse.struct_class = Types::DescribeVodSourceResponse

    GetChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelPolicyRequest.struct_class = Types::GetChannelPolicyRequest

    GetChannelPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "Policy"))
    GetChannelPolicyResponse.struct_class = Types::GetChannelPolicyResponse

    GetChannelScheduleRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    GetChannelScheduleRequest.add_member(:duration_minutes, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "durationMinutes"))
    GetChannelScheduleRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetChannelScheduleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetChannelScheduleRequest.struct_class = Types::GetChannelScheduleRequest

    GetChannelScheduleResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfScheduleEntry, location_name: "Items"))
    GetChannelScheduleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    GetChannelScheduleResponse.struct_class = Types::GetChannelScheduleResponse

    GetPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    GetPlaybackConfigurationRequest.struct_class = Types::GetPlaybackConfigurationRequest

    GetPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    GetPlaybackConfigurationResponse.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    GetPlaybackConfigurationResponse.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    GetPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:configuration_aliases, Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: "ConfigurationAliases"))
    GetPlaybackConfigurationResponse.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    GetPlaybackConfigurationResponse.add_member(:manifest_processing_rules, Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: "ManifestProcessingRules"))
    GetPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetPlaybackConfigurationResponse.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    GetPlaybackConfigurationResponse.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    GetPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    GetPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    GetPlaybackConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    GetPlaybackConfigurationResponse.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    GetPlaybackConfigurationResponse.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    GetPlaybackConfigurationResponse.struct_class = Types::GetPlaybackConfigurationResponse

    GetPrefetchScheduleRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "Name"))
    GetPrefetchScheduleRequest.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "PlaybackConfigurationName"))
    GetPrefetchScheduleRequest.struct_class = Types::GetPrefetchScheduleRequest

    GetPrefetchScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    GetPrefetchScheduleResponse.add_member(:consumption, Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: "Consumption"))
    GetPrefetchScheduleResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    GetPrefetchScheduleResponse.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationName"))
    GetPrefetchScheduleResponse.add_member(:retrieval, Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: "Retrieval"))
    GetPrefetchScheduleResponse.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "StreamId"))
    GetPrefetchScheduleResponse.struct_class = Types::GetPrefetchScheduleResponse

    HlsConfiguration.add_member(:manifest_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "ManifestEndpointPrefix"))
    HlsConfiguration.struct_class = Types::HlsConfiguration

    HlsPlaylistSettings.add_member(:ad_markup_type, Shapes::ShapeRef.new(shape: adMarkupTypes, location_name: "AdMarkupType"))
    HlsPlaylistSettings.add_member(:manifest_window_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "ManifestWindowSeconds"))
    HlsPlaylistSettings.struct_class = Types::HlsPlaylistSettings

    HttpConfiguration.add_member(:base_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "BaseUrl"))
    HttpConfiguration.struct_class = Types::HttpConfiguration

    HttpPackageConfiguration.add_member(:path, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Path"))
    HttpPackageConfiguration.add_member(:source_group, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceGroup"))
    HttpPackageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    HttpPackageConfiguration.struct_class = Types::HttpPackageConfiguration

    HttpPackageConfigurations.member = Shapes::ShapeRef.new(shape: HttpPackageConfiguration)

    KeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    ListAlertsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAlertsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListAlertsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    ListAlertsRequest.struct_class = Types::ListAlertsRequest

    ListAlertsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfAlert, location_name: "Items"))
    ListAlertsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListAlertsResponse.struct_class = Types::ListAlertsResponse

    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfChannel, location_name: "Items"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListLiveSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListLiveSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListLiveSourcesRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    ListLiveSourcesRequest.struct_class = Types::ListLiveSourcesRequest

    ListLiveSourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfLiveSource, location_name: "Items"))
    ListLiveSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListLiveSourcesResponse.struct_class = Types::ListLiveSourcesResponse

    ListPlaybackConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListPlaybackConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListPlaybackConfigurationsRequest.struct_class = Types::ListPlaybackConfigurationsRequest

    ListPlaybackConfigurationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPlaybackConfiguration, location_name: "Items"))
    ListPlaybackConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListPlaybackConfigurationsResponse.struct_class = Types::ListPlaybackConfigurationsResponse

    ListPrefetchSchedulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integerMin1Max100, location_name: "MaxResults"))
    ListPrefetchSchedulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListPrefetchSchedulesRequest.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "PlaybackConfigurationName"))
    ListPrefetchSchedulesRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "StreamId"))
    ListPrefetchSchedulesRequest.struct_class = Types::ListPrefetchSchedulesRequest

    ListPrefetchSchedulesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfPrefetchSchedule, location_name: "Items"))
    ListPrefetchSchedulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListPrefetchSchedulesResponse.struct_class = Types::ListPrefetchSchedulesResponse

    ListSourceLocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSourceLocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSourceLocationsRequest.struct_class = Types::ListSourceLocationsRequest

    ListSourceLocationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfSourceLocation, location_name: "Items"))
    ListSourceLocationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSourceLocationsResponse.struct_class = Types::ListSourceLocationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVodSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListVodSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListVodSourcesRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    ListVodSourcesRequest.struct_class = Types::ListVodSourcesRequest

    ListVodSourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfVodSource, location_name: "Items"))
    ListVodSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListVodSourcesResponse.struct_class = Types::ListVodSourcesResponse

    LivePreRollConfiguration.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    LivePreRollConfiguration.add_member(:max_duration_seconds, Shapes::ShapeRef.new(shape: __integer, location_name: "MaxDurationSeconds"))
    LivePreRollConfiguration.struct_class = Types::LivePreRollConfiguration

    LiveSource.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    LiveSource.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    LiveSource.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    LiveSource.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    LiveSource.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "LiveSourceName"))
    LiveSource.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceLocationName"))
    LiveSource.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    LiveSource.struct_class = Types::LiveSource

    LogConfiguration.add_member(:percent_enabled, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "PercentEnabled"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogConfigurationForChannel.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "LogTypes"))
    LogConfigurationForChannel.struct_class = Types::LogConfigurationForChannel

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    ManifestProcessingRules.add_member(:ad_marker_passthrough, Shapes::ShapeRef.new(shape: AdMarkerPassthrough, location_name: "AdMarkerPassthrough"))
    ManifestProcessingRules.struct_class = Types::ManifestProcessingRules

    PlaybackConfiguration.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PlaybackConfiguration.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    PlaybackConfiguration.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    PlaybackConfiguration.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PlaybackConfiguration.add_member(:configuration_aliases, Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: "ConfigurationAliases"))
    PlaybackConfiguration.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    PlaybackConfiguration.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    PlaybackConfiguration.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    PlaybackConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    PlaybackConfiguration.add_member(:manifest_processing_rules, Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: "ManifestProcessingRules"))
    PlaybackConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PlaybackConfiguration.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    PlaybackConfiguration.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    PlaybackConfiguration.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    PlaybackConfiguration.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    PlaybackConfiguration.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PlaybackConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PlaybackConfiguration.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PlaybackConfiguration.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PlaybackConfiguration.struct_class = Types::PlaybackConfiguration

    PrefetchConsumption.add_member(:avail_matching_criteria, Shapes::ShapeRef.new(shape: __listOfAvailMatchingCriteria, location_name: "AvailMatchingCriteria"))
    PrefetchConsumption.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "EndTime"))
    PrefetchConsumption.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "StartTime"))
    PrefetchConsumption.struct_class = Types::PrefetchConsumption

    PrefetchRetrieval.add_member(:dynamic_variables, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "DynamicVariables"))
    PrefetchRetrieval.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampUnix, required: true, location_name: "EndTime"))
    PrefetchRetrieval.add_member(:start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "StartTime"))
    PrefetchRetrieval.struct_class = Types::PrefetchRetrieval

    PrefetchSchedule.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    PrefetchSchedule.add_member(:consumption, Shapes::ShapeRef.new(shape: PrefetchConsumption, required: true, location_name: "Consumption"))
    PrefetchSchedule.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    PrefetchSchedule.add_member(:playback_configuration_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "PlaybackConfigurationName"))
    PrefetchSchedule.add_member(:retrieval, Shapes::ShapeRef.new(shape: PrefetchRetrieval, required: true, location_name: "Retrieval"))
    PrefetchSchedule.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "StreamId"))
    PrefetchSchedule.struct_class = Types::PrefetchSchedule

    PutChannelPolicyRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    PutChannelPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Policy"))
    PutChannelPolicyRequest.struct_class = Types::PutChannelPolicyRequest

    PutChannelPolicyResponse.struct_class = Types::PutChannelPolicyResponse

    PutPlaybackConfigurationRequest.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationRequest.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    PutPlaybackConfigurationRequest.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    PutPlaybackConfigurationRequest.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:configuration_aliases, Shapes::ShapeRef.new(shape: ConfigurationAliasesRequest, location_name: "ConfigurationAliases"))
    PutPlaybackConfigurationRequest.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfigurationForPut, location_name: "DashConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationRequest.add_member(:manifest_processing_rules, Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: "ManifestProcessingRules"))
    PutPlaybackConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Name"))
    PutPlaybackConfigurationRequest.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    PutPlaybackConfigurationRequest.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PutPlaybackConfigurationRequest.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PutPlaybackConfigurationRequest.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationRequest.struct_class = Types::PutPlaybackConfigurationRequest

    PutPlaybackConfigurationResponse.add_member(:ad_decision_server_url, Shapes::ShapeRef.new(shape: __string, location_name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationResponse.add_member(:avail_suppression, Shapes::ShapeRef.new(shape: AvailSuppression, location_name: "AvailSuppression"))
    PutPlaybackConfigurationResponse.add_member(:bumper, Shapes::ShapeRef.new(shape: Bumper, location_name: "Bumper"))
    PutPlaybackConfigurationResponse.add_member(:cdn_configuration, Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: "CdnConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:configuration_aliases, Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: "ConfigurationAliases"))
    PutPlaybackConfigurationResponse.add_member(:dash_configuration, Shapes::ShapeRef.new(shape: DashConfiguration, location_name: "DashConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:hls_configuration, Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: "HlsConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:live_pre_roll_configuration, Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "LogConfiguration"))
    PutPlaybackConfigurationResponse.add_member(:manifest_processing_rules, Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: "ManifestProcessingRules"))
    PutPlaybackConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    PutPlaybackConfigurationResponse.add_member(:personalization_threshold_seconds, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "PersonalizationThresholdSeconds"))
    PutPlaybackConfigurationResponse.add_member(:playback_configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackConfigurationArn"))
    PutPlaybackConfigurationResponse.add_member(:playback_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:session_initialization_endpoint_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "SessionInitializationEndpointPrefix"))
    PutPlaybackConfigurationResponse.add_member(:slate_ad_url, Shapes::ShapeRef.new(shape: __string, location_name: "SlateAdUrl"))
    PutPlaybackConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    PutPlaybackConfigurationResponse.add_member(:transcode_profile_name, Shapes::ShapeRef.new(shape: __string, location_name: "TranscodeProfileName"))
    PutPlaybackConfigurationResponse.add_member(:video_content_source_url, Shapes::ShapeRef.new(shape: __string, location_name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationResponse.struct_class = Types::PutPlaybackConfigurationResponse

    RequestOutputItem.add_member(:dash_playlist_settings, Shapes::ShapeRef.new(shape: DashPlaylistSettings, location_name: "DashPlaylistSettings"))
    RequestOutputItem.add_member(:hls_playlist_settings, Shapes::ShapeRef.new(shape: HlsPlaylistSettings, location_name: "HlsPlaylistSettings"))
    RequestOutputItem.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ManifestName"))
    RequestOutputItem.add_member(:source_group, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceGroup"))
    RequestOutputItem.struct_class = Types::RequestOutputItem

    RequestOutputs.member = Shapes::ShapeRef.new(shape: RequestOutputItem)

    ResponseOutputItem.add_member(:dash_playlist_settings, Shapes::ShapeRef.new(shape: DashPlaylistSettings, location_name: "DashPlaylistSettings"))
    ResponseOutputItem.add_member(:hls_playlist_settings, Shapes::ShapeRef.new(shape: HlsPlaylistSettings, location_name: "HlsPlaylistSettings"))
    ResponseOutputItem.add_member(:manifest_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ManifestName"))
    ResponseOutputItem.add_member(:playback_url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "PlaybackUrl"))
    ResponseOutputItem.add_member(:source_group, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceGroup"))
    ResponseOutputItem.struct_class = Types::ResponseOutputItem

    ResponseOutputs.member = Shapes::ShapeRef.new(shape: ResponseOutputItem)

    ScheduleAdBreak.add_member(:approximate_duration_seconds, Shapes::ShapeRef.new(shape: __long, location_name: "ApproximateDurationSeconds"))
    ScheduleAdBreak.add_member(:approximate_start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ApproximateStartTime"))
    ScheduleAdBreak.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    ScheduleAdBreak.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    ScheduleAdBreak.struct_class = Types::ScheduleAdBreak

    ScheduleConfiguration.add_member(:clip_range, Shapes::ShapeRef.new(shape: ClipRange, location_name: "ClipRange"))
    ScheduleConfiguration.add_member(:transition, Shapes::ShapeRef.new(shape: Transition, required: true, location_name: "Transition"))
    ScheduleConfiguration.struct_class = Types::ScheduleConfiguration

    ScheduleEntry.add_member(:approximate_duration_seconds, Shapes::ShapeRef.new(shape: __long, location_name: "ApproximateDurationSeconds"))
    ScheduleEntry.add_member(:approximate_start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ApproximateStartTime"))
    ScheduleEntry.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    ScheduleEntry.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ChannelName"))
    ScheduleEntry.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    ScheduleEntry.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ProgramName"))
    ScheduleEntry.add_member(:schedule_ad_breaks, Shapes::ShapeRef.new(shape: __listOfScheduleAdBreak, location_name: "ScheduleAdBreaks"))
    ScheduleEntry.add_member(:schedule_entry_type, Shapes::ShapeRef.new(shape: ScheduleEntryType, location_name: "ScheduleEntryType"))
    ScheduleEntry.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceLocationName"))
    ScheduleEntry.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    ScheduleEntry.struct_class = Types::ScheduleEntry

    SecretsManagerAccessTokenConfiguration.add_member(:header_name, Shapes::ShapeRef.new(shape: __string, location_name: "HeaderName"))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SecretArn"))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_string_key, Shapes::ShapeRef.new(shape: __string, location_name: "SecretStringKey"))
    SecretsManagerAccessTokenConfiguration.struct_class = Types::SecretsManagerAccessTokenConfiguration

    SegmentDeliveryConfiguration.add_member(:base_url, Shapes::ShapeRef.new(shape: __string, location_name: "BaseUrl"))
    SegmentDeliveryConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "Name"))
    SegmentDeliveryConfiguration.struct_class = Types::SegmentDeliveryConfiguration

    SegmentationDescriptor.add_member(:segment_num, Shapes::ShapeRef.new(shape: Integer, location_name: "SegmentNum"))
    SegmentationDescriptor.add_member(:segmentation_event_id, Shapes::ShapeRef.new(shape: Integer, location_name: "SegmentationEventId"))
    SegmentationDescriptor.add_member(:segmentation_type_id, Shapes::ShapeRef.new(shape: Integer, location_name: "SegmentationTypeId"))
    SegmentationDescriptor.add_member(:segmentation_upid, Shapes::ShapeRef.new(shape: String, location_name: "SegmentationUpid"))
    SegmentationDescriptor.add_member(:segmentation_upid_type, Shapes::ShapeRef.new(shape: Integer, location_name: "SegmentationUpidType"))
    SegmentationDescriptor.add_member(:segments_expected, Shapes::ShapeRef.new(shape: Integer, location_name: "SegmentsExpected"))
    SegmentationDescriptor.add_member(:sub_segment_num, Shapes::ShapeRef.new(shape: Integer, location_name: "SubSegmentNum"))
    SegmentationDescriptor.add_member(:sub_segments_expected, Shapes::ShapeRef.new(shape: Integer, location_name: "SubSegmentsExpected"))
    SegmentationDescriptor.struct_class = Types::SegmentationDescriptor

    SegmentationDescriptorList.member = Shapes::ShapeRef.new(shape: SegmentationDescriptor)

    SlateSource.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    SlateSource.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    SlateSource.struct_class = Types::SlateSource

    SourceLocation.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    SourceLocation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    SourceLocation.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    SourceLocation.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    SourceLocation.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, required: true, location_name: "HttpConfiguration"))
    SourceLocation.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    SourceLocation.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    SourceLocation.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceLocationName"))
    SourceLocation.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    SourceLocation.struct_class = Types::SourceLocation

    SpliceInsertMessage.add_member(:avail_num, Shapes::ShapeRef.new(shape: __integer, location_name: "AvailNum"))
    SpliceInsertMessage.add_member(:avails_expected, Shapes::ShapeRef.new(shape: __integer, location_name: "AvailsExpected"))
    SpliceInsertMessage.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __integer, location_name: "SpliceEventId"))
    SpliceInsertMessage.add_member(:unique_program_id, Shapes::ShapeRef.new(shape: __integer, location_name: "UniqueProgramId"))
    SpliceInsertMessage.struct_class = Types::SpliceInsertMessage

    StartChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    StartChannelRequest.struct_class = Types::StartChannelRequest

    StartChannelResponse.struct_class = Types::StartChannelResponse

    StopChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    StopChannelRequest.struct_class = Types::StopChannelRequest

    StopChannelResponse.struct_class = Types::StopChannelResponse

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TimeSignalMessage.add_member(:segmentation_descriptors, Shapes::ShapeRef.new(shape: SegmentationDescriptorList, location_name: "SegmentationDescriptors"))
    TimeSignalMessage.struct_class = Types::TimeSignalMessage

    Transition.add_member(:duration_millis, Shapes::ShapeRef.new(shape: __long, location_name: "DurationMillis"))
    Transition.add_member(:relative_position, Shapes::ShapeRef.new(shape: RelativePosition, required: true, location_name: "RelativePosition"))
    Transition.add_member(:relative_program, Shapes::ShapeRef.new(shape: __string, location_name: "RelativeProgram"))
    Transition.add_member(:scheduled_start_time_millis, Shapes::ShapeRef.new(shape: __long, location_name: "ScheduledStartTimeMillis"))
    Transition.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Type"))
    Transition.struct_class = Types::Transition

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateChannelRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    UpdateChannelRequest.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    UpdateChannelRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: RequestOutputs, required: true, location_name: "Outputs"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    UpdateChannelResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    UpdateChannelResponse.add_member(:channel_state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "ChannelState"))
    UpdateChannelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    UpdateChannelResponse.add_member(:filler_slate, Shapes::ShapeRef.new(shape: SlateSource, location_name: "FillerSlate"))
    UpdateChannelResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    UpdateChannelResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: "Outputs"))
    UpdateChannelResponse.add_member(:playback_mode, Shapes::ShapeRef.new(shape: __string, location_name: "PlaybackMode"))
    UpdateChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    UpdateChannelResponse.add_member(:tier, Shapes::ShapeRef.new(shape: __string, location_name: "Tier"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateLiveSourceRequest.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    UpdateLiveSourceRequest.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "LiveSourceName"))
    UpdateLiveSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    UpdateLiveSourceRequest.struct_class = Types::UpdateLiveSourceRequest

    UpdateLiveSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    UpdateLiveSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    UpdateLiveSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    UpdateLiveSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    UpdateLiveSourceResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    UpdateLiveSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    UpdateLiveSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    UpdateLiveSourceResponse.struct_class = Types::UpdateLiveSourceResponse

    UpdateProgramRequest.add_member(:ad_breaks, Shapes::ShapeRef.new(shape: __listOfAdBreak, location_name: "AdBreaks"))
    UpdateProgramRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ChannelName"))
    UpdateProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ProgramName"))
    UpdateProgramRequest.add_member(:schedule_configuration, Shapes::ShapeRef.new(shape: UpdateProgramScheduleConfiguration, required: true, location_name: "ScheduleConfiguration"))
    UpdateProgramRequest.struct_class = Types::UpdateProgramRequest

    UpdateProgramResponse.add_member(:ad_breaks, Shapes::ShapeRef.new(shape: __listOfAdBreak, location_name: "AdBreaks"))
    UpdateProgramResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    UpdateProgramResponse.add_member(:channel_name, Shapes::ShapeRef.new(shape: __string, location_name: "ChannelName"))
    UpdateProgramResponse.add_member(:clip_range, Shapes::ShapeRef.new(shape: ClipRange, location_name: "ClipRange"))
    UpdateProgramResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    UpdateProgramResponse.add_member(:duration_millis, Shapes::ShapeRef.new(shape: __long, location_name: "DurationMillis"))
    UpdateProgramResponse.add_member(:live_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "LiveSourceName"))
    UpdateProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "ProgramName"))
    UpdateProgramResponse.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "ScheduledStartTime"))
    UpdateProgramResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    UpdateProgramResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    UpdateProgramResponse.struct_class = Types::UpdateProgramResponse

    UpdateProgramScheduleConfiguration.add_member(:clip_range, Shapes::ShapeRef.new(shape: ClipRange, location_name: "ClipRange"))
    UpdateProgramScheduleConfiguration.add_member(:transition, Shapes::ShapeRef.new(shape: UpdateProgramTransition, location_name: "Transition"))
    UpdateProgramScheduleConfiguration.struct_class = Types::UpdateProgramScheduleConfiguration

    UpdateProgramTransition.add_member(:duration_millis, Shapes::ShapeRef.new(shape: __long, location_name: "DurationMillis"))
    UpdateProgramTransition.add_member(:scheduled_start_time_millis, Shapes::ShapeRef.new(shape: __long, location_name: "ScheduledStartTimeMillis"))
    UpdateProgramTransition.struct_class = Types::UpdateProgramTransition

    UpdateSourceLocationRequest.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    UpdateSourceLocationRequest.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    UpdateSourceLocationRequest.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, required: true, location_name: "HttpConfiguration"))
    UpdateSourceLocationRequest.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    UpdateSourceLocationRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    UpdateSourceLocationRequest.struct_class = Types::UpdateSourceLocationRequest

    UpdateSourceLocationResponse.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "AccessConfiguration"))
    UpdateSourceLocationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    UpdateSourceLocationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    UpdateSourceLocationResponse.add_member(:default_segment_delivery_configuration, Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: "DefaultSegmentDeliveryConfiguration"))
    UpdateSourceLocationResponse.add_member(:http_configuration, Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: "HttpConfiguration"))
    UpdateSourceLocationResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    UpdateSourceLocationResponse.add_member(:segment_delivery_configurations, Shapes::ShapeRef.new(shape: __listOfSegmentDeliveryConfiguration, location_name: "SegmentDeliveryConfigurations"))
    UpdateSourceLocationResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    UpdateSourceLocationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    UpdateSourceLocationResponse.struct_class = Types::UpdateSourceLocationResponse

    UpdateVodSourceRequest.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    UpdateVodSourceRequest.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "SourceLocationName"))
    UpdateVodSourceRequest.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "VodSourceName"))
    UpdateVodSourceRequest.struct_class = Types::UpdateVodSourceRequest

    UpdateVodSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "Arn"))
    UpdateVodSourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    UpdateVodSourceResponse.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: "HttpPackageConfigurations"))
    UpdateVodSourceResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    UpdateVodSourceResponse.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, location_name: "SourceLocationName"))
    UpdateVodSourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    UpdateVodSourceResponse.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, location_name: "VodSourceName"))
    UpdateVodSourceResponse.struct_class = Types::UpdateVodSourceResponse

    VodSource.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Arn"))
    VodSource.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "CreationTime"))
    VodSource.add_member(:http_package_configurations, Shapes::ShapeRef.new(shape: HttpPackageConfigurations, required: true, location_name: "HttpPackageConfigurations"))
    VodSource.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: __timestampUnix, location_name: "LastModifiedTime"))
    VodSource.add_member(:source_location_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "SourceLocationName"))
    VodSource.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    VodSource.add_member(:vod_source_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "VodSourceName"))
    VodSource.struct_class = Types::VodSource

    __listOfAdBreak.member = Shapes::ShapeRef.new(shape: AdBreak)

    __listOfAlert.member = Shapes::ShapeRef.new(shape: Alert)

    __listOfAvailMatchingCriteria.member = Shapes::ShapeRef.new(shape: AvailMatchingCriteria)

    __listOfChannel.member = Shapes::ShapeRef.new(shape: Channel)

    __listOfLiveSource.member = Shapes::ShapeRef.new(shape: LiveSource)

    __listOfPlaybackConfiguration.member = Shapes::ShapeRef.new(shape: PlaybackConfiguration)

    __listOfPrefetchSchedule.member = Shapes::ShapeRef.new(shape: PrefetchSchedule)

    __listOfScheduleAdBreak.member = Shapes::ShapeRef.new(shape: ScheduleAdBreak)

    __listOfScheduleEntry.member = Shapes::ShapeRef.new(shape: ScheduleEntry)

    __listOfSegmentDeliveryConfiguration.member = Shapes::ShapeRef.new(shape: SegmentDeliveryConfiguration)

    __listOfSourceLocation.member = Shapes::ShapeRef.new(shape: SourceLocation)

    __listOfVodSource.member = Shapes::ShapeRef.new(shape: VodSource)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)

    adMarkupTypes.member = Shapes::ShapeRef.new(shape: AdMarkupType)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-23"

      api.metadata = {
        "apiVersion" => "2018-04-23",
        "endpointPrefix" => "api.mediatailor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaTailor",
        "serviceFullName" => "AWS MediaTailor",
        "serviceId" => "MediaTailor",
        "signatureVersion" => "v4",
        "signingName" => "mediatailor",
        "uid" => "mediatailor-2018-04-23",
      }

      api.add_operation(:configure_logs_for_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureLogsForChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/configureLogs/channel"
        o.input = Shapes::ShapeRef.new(shape: ConfigureLogsForChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigureLogsForChannelResponse)
      end)

      api.add_operation(:configure_logs_for_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfigureLogsForPlaybackConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/configureLogs/playbackConfiguration"
        o.input = Shapes::ShapeRef.new(shape: ConfigureLogsForPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigureLogsForPlaybackConfigurationResponse)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channel/{ChannelName}"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
      end)

      api.add_operation(:create_live_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLiveSource"
        o.http_method = "POST"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
        o.input = Shapes::ShapeRef.new(shape: CreateLiveSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLiveSourceResponse)
      end)

      api.add_operation(:create_prefetch_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrefetchSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: CreatePrefetchScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePrefetchScheduleResponse)
      end)

      api.add_operation(:create_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProgram"
        o.http_method = "POST"
        o.http_request_uri = "/channel/{ChannelName}/program/{ProgramName}"
        o.input = Shapes::ShapeRef.new(shape: CreateProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProgramResponse)
      end)

      api.add_operation(:create_source_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSourceLocation"
        o.http_method = "POST"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}"
        o.input = Shapes::ShapeRef.new(shape: CreateSourceLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSourceLocationResponse)
      end)

      api.add_operation(:create_vod_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVodSource"
        o.http_method = "POST"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
        o.input = Shapes::ShapeRef.new(shape: CreateVodSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVodSourceResponse)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/channel/{ChannelName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
      end)

      api.add_operation(:delete_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelPolicyResponse)
      end)

      api.add_operation(:delete_live_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLiveSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLiveSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLiveSourceResponse)
      end)

      api.add_operation(:delete_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlaybackConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/playbackConfiguration/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationResponse)
      end)

      api.add_operation(:delete_prefetch_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrefetchSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeletePrefetchScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePrefetchScheduleResponse)
      end)

      api.add_operation(:delete_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProgram"
        o.http_method = "DELETE"
        o.http_request_uri = "/channel/{ChannelName}/program/{ProgramName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProgramResponse)
      end)

      api.add_operation(:delete_source_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSourceLocation"
        o.http_method = "DELETE"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSourceLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSourceLocationResponse)
      end)

      api.add_operation(:delete_vod_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVodSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVodSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVodSourceResponse)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/channel/{ChannelName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
      end)

      api.add_operation(:describe_live_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLiveSource"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeLiveSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLiveSourceResponse)
      end)

      api.add_operation(:describe_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProgram"
        o.http_method = "GET"
        o.http_request_uri = "/channel/{ChannelName}/program/{ProgramName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProgramResponse)
      end)

      api.add_operation(:describe_source_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSourceLocation"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSourceLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSourceLocationResponse)
      end)

      api.add_operation(:describe_vod_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVodSource"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVodSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVodSourceResponse)
      end)

      api.add_operation(:get_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelPolicyResponse)
      end)

      api.add_operation(:get_channel_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChannelSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/channel/{ChannelName}/schedule"
        o.input = Shapes::ShapeRef.new(shape: GetChannelScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChannelScheduleResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlaybackConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/playbackConfiguration/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPlaybackConfigurationResponse)
      end)

      api.add_operation(:get_prefetch_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPrefetchSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/prefetchSchedule/{PlaybackConfigurationName}/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetPrefetchScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPrefetchScheduleResponse)
      end)

      api.add_operation(:list_alerts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlerts"
        o.http_method = "GET"
        o.http_request_uri = "/alerts"
        o.input = Shapes::ShapeRef.new(shape: ListAlertsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlertsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_live_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLiveSources"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/liveSources"
        o.input = Shapes::ShapeRef.new(shape: ListLiveSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLiveSourcesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_playback_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlaybackConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/playbackConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_prefetch_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrefetchSchedules"
        o.http_method = "POST"
        o.http_request_uri = "/prefetchSchedule/{PlaybackConfigurationName}"
        o.input = Shapes::ShapeRef.new(shape: ListPrefetchSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPrefetchSchedulesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceLocations"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocations"
        o.input = Shapes::ShapeRef.new(shape: ListSourceLocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceLocationsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:list_vod_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVodSources"
        o.http_method = "GET"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/vodSources"
        o.input = Shapes::ShapeRef.new(shape: ListVodSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVodSourcesResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_channel_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutChannelPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/channel/{ChannelName}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutChannelPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutChannelPolicyResponse)
      end)

      api.add_operation(:put_playback_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPlaybackConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/playbackConfiguration"
        o.input = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPlaybackConfigurationResponse)
      end)

      api.add_operation(:start_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channel/{ChannelName}/start"
        o.input = Shapes::ShapeRef.new(shape: StartChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChannelResponse)
      end)

      api.add_operation(:stop_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channel/{ChannelName}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StopChannelResponse)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/channel/{ChannelName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
      end)

      api.add_operation(:update_live_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLiveSource"
        o.http_method = "PUT"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLiveSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLiveSourceResponse)
      end)

      api.add_operation(:update_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProgram"
        o.http_method = "PUT"
        o.http_request_uri = "/channel/{ChannelName}/program/{ProgramName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProgramResponse)
      end)

      api.add_operation(:update_source_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceLocation"
        o.http_method = "PUT"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSourceLocationResponse)
      end)

      api.add_operation(:update_vod_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVodSource"
        o.http_method = "PUT"
        o.http_request_uri = "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVodSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVodSourceResponse)
      end)
    end

  end
end
