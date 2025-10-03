# frozen_string_literal: true

# This is generated code!

module Aws::MediaTailor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AccessConfiguration', name: 'AccessConfiguration')
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#AccessType', name: 'AccessType')
    AdBreak = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AdBreak', name: 'AdBreak')
    AdBreakMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#AdBreakMetadataList', name: 'AdBreakMetadataList')
    AdBreakOpportunities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#AdBreakOpportunities', name: 'AdBreakOpportunities')
    AdBreakOpportunity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AdBreakOpportunity', name: 'AdBreakOpportunity')
    AdConditioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AdConditioningConfiguration', name: 'AdConditioningConfiguration')
    AdMarkerPassthrough = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AdMarkerPassthrough', name: 'AdMarkerPassthrough')
    AdMarkupType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#AdMarkupType', name: 'AdMarkupType')
    AdsInteractionExcludeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#AdsInteractionExcludeEventType', name: 'AdsInteractionExcludeEventType')
    AdsInteractionLog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AdsInteractionLog', name: 'AdsInteractionLog')
    AdsInteractionPublishOptInEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#AdsInteractionPublishOptInEventType', name: 'AdsInteractionPublishOptInEventType')
    Alert = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#Alert', name: 'Alert')
    AlertCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#AlertCategory', name: 'AlertCategory')
    AlternateMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AlternateMedia', name: 'AlternateMedia')
    AudienceMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AudienceMedia', name: 'AudienceMedia')
    Audiences = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#Audiences', name: 'Audiences')
    AvailMatchingCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AvailMatchingCriteria', name: 'AvailMatchingCriteria')
    AvailSuppression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#AvailSuppression', name: 'AvailSuppression')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Bumper = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#Bumper', name: 'Bumper')
    CdnConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CdnConfiguration', name: 'CdnConfiguration')
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#Channel', name: 'Channel', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#ChannelResource"}]})
    ChannelState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#ChannelState', name: 'ChannelState')
    ClipRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ClipRange', name: 'ClipRange')
    ConfigurationAliasesRequest = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mediatailor#ConfigurationAliasesRequest', name: 'ConfigurationAliasesRequest')
    ConfigurationAliasesResponse = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mediatailor#ConfigurationAliasesResponse', name: 'ConfigurationAliasesResponse')
    ConfigureLogsForChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ConfigureLogsForChannelInput', name: 'ConfigureLogsForChannelInput')
    ConfigureLogsForChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ConfigureLogsForChannelOutput', name: 'ConfigureLogsForChannelOutput')
    ConfigureLogsForPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfigurationInput', name: 'ConfigureLogsForPlaybackConfigurationInput')
    ConfigureLogsForPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfigurationOutput', name: 'ConfigureLogsForPlaybackConfigurationOutput')
    CreateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateChannelInput', name: 'CreateChannelInput')
    CreateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateChannelOutput', name: 'CreateChannelOutput')
    CreateLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateLiveSourceInput', name: 'CreateLiveSourceInput')
    CreateLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateLiveSourceOutput', name: 'CreateLiveSourceOutput')
    CreatePrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreatePrefetchScheduleInput', name: 'CreatePrefetchScheduleInput')
    CreatePrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreatePrefetchScheduleOutput', name: 'CreatePrefetchScheduleOutput')
    CreateProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateProgramInput', name: 'CreateProgramInput')
    CreateProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateProgramOutput', name: 'CreateProgramOutput')
    CreateSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateSourceLocationInput', name: 'CreateSourceLocationInput')
    CreateSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateSourceLocationOutput', name: 'CreateSourceLocationOutput')
    CreateVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateVodSourceInput', name: 'CreateVodSourceInput')
    CreateVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#CreateVodSourceOutput', name: 'CreateVodSourceOutput')
    DashConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DashConfiguration', name: 'DashConfiguration')
    DashConfigurationForPut = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DashConfigurationForPut', name: 'DashConfigurationForPut')
    DashPlaylistSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DashPlaylistSettings', name: 'DashPlaylistSettings')
    DefaultSegmentDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DefaultSegmentDeliveryConfiguration', name: 'DefaultSegmentDeliveryConfiguration')
    DeleteChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteChannelInput', name: 'DeleteChannelInput')
    DeleteChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteChannelOutput', name: 'DeleteChannelOutput')
    DeleteChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteChannelPolicyInput', name: 'DeleteChannelPolicyInput')
    DeleteChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteChannelPolicyOutput', name: 'DeleteChannelPolicyOutput')
    DeleteLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteLiveSourceInput', name: 'DeleteLiveSourceInput')
    DeleteLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteLiveSourceOutput', name: 'DeleteLiveSourceOutput')
    DeletePlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeletePlaybackConfigurationInput', name: 'DeletePlaybackConfigurationInput')
    DeletePlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeletePlaybackConfigurationOutput', name: 'DeletePlaybackConfigurationOutput')
    DeletePrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeletePrefetchScheduleInput', name: 'DeletePrefetchScheduleInput')
    DeletePrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeletePrefetchScheduleOutput', name: 'DeletePrefetchScheduleOutput')
    DeleteProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteProgramInput', name: 'DeleteProgramInput')
    DeleteProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteProgramOutput', name: 'DeleteProgramOutput')
    DeleteSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteSourceLocationInput', name: 'DeleteSourceLocationInput')
    DeleteSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteSourceLocationOutput', name: 'DeleteSourceLocationOutput')
    DeleteVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteVodSourceInput', name: 'DeleteVodSourceInput')
    DeleteVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DeleteVodSourceOutput', name: 'DeleteVodSourceOutput')
    DescribeChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeChannelInput', name: 'DescribeChannelInput')
    DescribeChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeChannelOutput', name: 'DescribeChannelOutput')
    DescribeLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeLiveSourceInput', name: 'DescribeLiveSourceInput')
    DescribeLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeLiveSourceOutput', name: 'DescribeLiveSourceOutput')
    DescribeProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeProgramInput', name: 'DescribeProgramInput')
    DescribeProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeProgramOutput', name: 'DescribeProgramOutput')
    DescribeSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeSourceLocationInput', name: 'DescribeSourceLocationInput')
    DescribeSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeSourceLocationOutput', name: 'DescribeSourceLocationOutput')
    DescribeVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeVodSourceInput', name: 'DescribeVodSourceInput')
    DescribeVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#DescribeVodSourceOutput', name: 'DescribeVodSourceOutput')
    FillPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#FillPolicy', name: 'FillPolicy')
    GetChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetChannelPolicyInput', name: 'GetChannelPolicyInput')
    GetChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetChannelPolicyOutput', name: 'GetChannelPolicyOutput')
    GetChannelScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetChannelScheduleInput', name: 'GetChannelScheduleInput')
    GetChannelScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetChannelScheduleOutput', name: 'GetChannelScheduleOutput')
    GetPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetPlaybackConfigurationInput', name: 'GetPlaybackConfigurationInput')
    GetPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetPlaybackConfigurationOutput', name: 'GetPlaybackConfigurationOutput')
    GetPrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetPrefetchScheduleInput', name: 'GetPrefetchScheduleInput')
    GetPrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#GetPrefetchScheduleOutput', name: 'GetPrefetchScheduleOutput')
    HlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#HlsConfiguration', name: 'HlsConfiguration')
    HlsPlaylistSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#HlsPlaylistSettings', name: 'HlsPlaylistSettings')
    HttpConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#HttpConfiguration', name: 'HttpConfiguration')
    HttpPackageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#HttpPackageConfiguration', name: 'HttpPackageConfiguration')
    HttpPackageConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#HttpPackageConfigurations', name: 'HttpPackageConfigurations')
    InsertionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#InsertionMode', name: 'InsertionMode')
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#KeyValuePair', name: 'KeyValuePair')
    ListAlertsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListAlertsInput', name: 'ListAlertsInput')
    ListAlertsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListAlertsOutput', name: 'ListAlertsOutput')
    ListChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListChannelsInput', name: 'ListChannelsInput')
    ListChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListChannelsOutput', name: 'ListChannelsOutput')
    ListLiveSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListLiveSourcesInput', name: 'ListLiveSourcesInput')
    ListLiveSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListLiveSourcesOutput', name: 'ListLiveSourcesOutput')
    ListPlaybackConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListPlaybackConfigurationsInput', name: 'ListPlaybackConfigurationsInput')
    ListPlaybackConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListPlaybackConfigurationsOutput', name: 'ListPlaybackConfigurationsOutput')
    ListPrefetchScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#ListPrefetchScheduleType', name: 'ListPrefetchScheduleType')
    ListPrefetchSchedulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListPrefetchSchedulesInput', name: 'ListPrefetchSchedulesInput')
    ListPrefetchSchedulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListPrefetchSchedulesOutput', name: 'ListPrefetchSchedulesOutput')
    ListSourceLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListSourceLocationsInput', name: 'ListSourceLocationsInput')
    ListSourceLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListSourceLocationsOutput', name: 'ListSourceLocationsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVodSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListVodSourcesInput', name: 'ListVodSourcesInput')
    ListVodSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ListVodSourcesOutput', name: 'ListVodSourcesOutput')
    LivePreRollConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#LivePreRollConfiguration', name: 'LivePreRollConfiguration')
    LiveSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#LiveSource', name: 'LiveSource', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#LiveSourceResource"}]})
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#LogConfiguration', name: 'LogConfiguration')
    LogConfigurationForChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#LogConfigurationForChannel', name: 'LogConfigurationForChannel')
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#LogType', name: 'LogType')
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#LogTypes', name: 'LogTypes')
    LoggingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#LoggingStrategy', name: 'LoggingStrategy')
    ManifestProcessingRules = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ManifestProcessingRules', name: 'ManifestProcessingRules')
    ManifestServiceExcludeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#ManifestServiceExcludeEventType', name: 'ManifestServiceExcludeEventType')
    ManifestServiceInteractionLog = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ManifestServiceInteractionLog', name: 'ManifestServiceInteractionLog')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediatailor#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#MessageType', name: 'MessageType')
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#Mode', name: 'Mode')
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#Operator', name: 'Operator')
    OriginManifestType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#OriginManifestType', name: 'OriginManifestType')
    PlaybackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PlaybackConfiguration', name: 'PlaybackConfiguration', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#PlaybackConfigurationResource"}]})
    PlaybackMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#PlaybackMode', name: 'PlaybackMode')
    PrefetchConsumption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PrefetchConsumption', name: 'PrefetchConsumption')
    PrefetchRetrieval = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PrefetchRetrieval', name: 'PrefetchRetrieval')
    PrefetchSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PrefetchSchedule', name: 'PrefetchSchedule', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#PrefetchScheduleResource"}]})
    PrefetchScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#PrefetchScheduleType', name: 'PrefetchScheduleType')
    PutChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PutChannelPolicyInput', name: 'PutChannelPolicyInput')
    PutChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PutChannelPolicyOutput', name: 'PutChannelPolicyOutput')
    PutPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PutPlaybackConfigurationInput', name: 'PutPlaybackConfigurationInput')
    PutPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#PutPlaybackConfigurationOutput', name: 'PutPlaybackConfigurationOutput')
    RecurringConsumption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#RecurringConsumption', name: 'RecurringConsumption')
    RecurringPrefetchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#RecurringPrefetchConfiguration', name: 'RecurringPrefetchConfiguration')
    RecurringRetrieval = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#RecurringRetrieval', name: 'RecurringRetrieval')
    RelativePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#RelativePosition', name: 'RelativePosition')
    RequestOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#RequestOutputItem', name: 'RequestOutputItem')
    RequestOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#RequestOutputs', name: 'RequestOutputs')
    ResponseOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ResponseOutputItem', name: 'ResponseOutputItem')
    ResponseOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#ResponseOutputs', name: 'ResponseOutputs')
    ScheduleAdBreak = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ScheduleAdBreak', name: 'ScheduleAdBreak')
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ScheduleConfiguration', name: 'ScheduleConfiguration')
    ScheduleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#ScheduleEntry', name: 'ScheduleEntry')
    ScheduleEntryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#ScheduleEntryType', name: 'ScheduleEntryType')
    SecretsManagerAccessTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SecretsManagerAccessTokenConfiguration', name: 'SecretsManagerAccessTokenConfiguration')
    SegmentDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SegmentDeliveryConfiguration', name: 'SegmentDeliveryConfiguration')
    SegmentationDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SegmentationDescriptor', name: 'SegmentationDescriptor')
    SegmentationDescriptorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#SegmentationDescriptorList', name: 'SegmentationDescriptorList')
    SlateSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SlateSource', name: 'SlateSource')
    SourceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SourceLocation', name: 'SourceLocation', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#SourceLocationResource"}]})
    SpliceInsertMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#SpliceInsertMessage', name: 'SpliceInsertMessage')
    StartChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#StartChannelInput', name: 'StartChannelInput')
    StartChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#StartChannelOutput', name: 'StartChannelOutput')
    StopChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#StopChannelInput', name: 'StopChannelInput')
    StopChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#StopChannelOutput', name: 'StopChannelOutput')
    StreamingMediaFileConditioning = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#StreamingMediaFileConditioning', name: 'StreamingMediaFileConditioning')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#TagResourceInput', name: 'TagResourceInput')
    Tier = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#Tier', name: 'Tier')
    TimeShiftConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#TimeShiftConfiguration', name: 'TimeShiftConfiguration')
    TimeSignalMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#TimeSignalMessage', name: 'TimeSignalMessage')
    TrafficShapingRetrievalWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#TrafficShapingRetrievalWindow', name: 'TrafficShapingRetrievalWindow')
    TrafficShapingTpsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#TrafficShapingTpsConfiguration', name: 'TrafficShapingTpsConfiguration')
    TrafficShapingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#TrafficShapingType', name: 'TrafficShapingType')
    Transition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#Transition', name: 'Transition')
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediatailor#Type', name: 'Type')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UntagResourceInput', name: 'UntagResourceInput')
    UpdateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateChannelInput', name: 'UpdateChannelInput')
    UpdateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateChannelOutput', name: 'UpdateChannelOutput')
    UpdateLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateLiveSourceInput', name: 'UpdateLiveSourceInput')
    UpdateLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateLiveSourceOutput', name: 'UpdateLiveSourceOutput')
    UpdateProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateProgramInput', name: 'UpdateProgramInput')
    UpdateProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateProgramOutput', name: 'UpdateProgramOutput')
    UpdateProgramScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateProgramScheduleConfiguration', name: 'UpdateProgramScheduleConfiguration')
    UpdateProgramTransition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateProgramTransition', name: 'UpdateProgramTransition')
    UpdateSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateSourceLocationInput', name: 'UpdateSourceLocationInput')
    UpdateSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateSourceLocationOutput', name: 'UpdateSourceLocationOutput')
    UpdateVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateVodSourceInput', name: 'UpdateVodSourceInput')
    UpdateVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#UpdateVodSourceOutput', name: 'UpdateVodSourceOutput')
    VodSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediatailor#VodSource', name: 'VodSource', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#VodSourceResource"}]})
    Adsinteractionexcludeeventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__adsInteractionExcludeEventTypesList', name: 'Adsinteractionexcludeeventtypeslist')
    Adsinteractionpublishoptineventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__adsInteractionPublishOptInEventTypesList', name: 'Adsinteractionpublishoptineventtypeslist')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mediatailor#__boolean', name: 'Boolean')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediatailor#__integer', name: 'Integer')
    Integermin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediatailor#__integerMin1', name: 'Integermin1', traits: {"smithy.api#range" => {"min" => 1}})
    Integermin1max100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediatailor#__integerMin1Max100', name: 'Integermin1max100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Listofadbreak = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfAdBreak', name: 'Listofadbreak')
    Listofalert = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfAlert', name: 'Listofalert')
    Listofalternatemedia = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfAlternateMedia', name: 'Listofalternatemedia')
    Listofaudiencemedia = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfAudienceMedia', name: 'Listofaudiencemedia')
    Listofavailmatchingcriteria = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfAvailMatchingCriteria', name: 'Listofavailmatchingcriteria')
    Listofchannel = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfChannel', name: 'Listofchannel')
    Listoflivesource = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfLiveSource', name: 'Listoflivesource')
    Listofloggingstrategies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfLoggingStrategies', name: 'Listofloggingstrategies')
    Listofplaybackconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfPlaybackConfiguration', name: 'Listofplaybackconfiguration')
    Listofprefetchschedule = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfPrefetchSchedule', name: 'Listofprefetchschedule')
    Listofscheduleadbreak = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfScheduleAdBreak', name: 'Listofscheduleadbreak')
    Listofscheduleentry = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfScheduleEntry', name: 'Listofscheduleentry')
    Listofsegmentdeliveryconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfSegmentDeliveryConfiguration', name: 'Listofsegmentdeliveryconfiguration')
    Listofsourcelocation = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfSourceLocation', name: 'Listofsourcelocation')
    Listofvodsource = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOfVodSource', name: 'Listofvodsource')
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__listOf__string', name: 'ListofString')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediatailor#__long', name: 'Long')
    Manifestserviceexcludeeventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#__manifestServiceExcludeEventTypesList', name: 'Manifestserviceexcludeeventtypeslist')
    MapofString = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mediatailor#__mapOf__string', name: 'MapofString')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediatailor#__string', name: 'String')
    Timestampunix = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mediatailor#__timestampUnix', name: 'Timestampunix', traits: {"smithy.api#timestampFormat" => "epoch-seconds"})
    AdMarkupTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediatailor#adMarkupTypes', name: 'AdMarkupTypes')

    AccessConfiguration.add_member(:access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessType, location_name: 'AccessType'))
    AccessConfiguration.add_member(:secrets_manager_access_token_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerAccessTokenConfiguration, location_name: 'SecretsManagerAccessTokenConfiguration'))
    AccessConfiguration.type = Types::AccessConfiguration
    AccessType.add_member(:s3_sigv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_SIGV4', traits: {"smithy.api#enumValue" => "S3_SIGV4"}))
    AccessType.add_member(:secrets_manager_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECRETS_MANAGER_ACCESS_TOKEN', traits: {"smithy.api#enumValue" => "SECRETS_MANAGER_ACCESS_TOKEN"}))
    AccessType.add_member(:autodetect_sigv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTODETECT_SIGV4', traits: {"smithy.api#enumValue" => "AUTODETECT_SIGV4"}))
    AdBreak.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'MessageType'))
    AdBreak.add_member(:offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OffsetMillis', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AdBreak.add_member(:slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'Slate'))
    AdBreak.add_member(:splice_insert_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpliceInsertMessage, location_name: 'SpliceInsertMessage'))
    AdBreak.add_member(:time_signal_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSignalMessage, location_name: 'TimeSignalMessage'))
    AdBreak.add_member(:ad_break_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdBreakMetadataList, location_name: 'AdBreakMetadata'))
    AdBreak.type = Types::AdBreak
    AdBreakMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    AdBreakOpportunities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdBreakOpportunity)
    AdBreakOpportunity.add_member(:offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'OffsetMillis', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AdBreakOpportunity.type = Types::AdBreakOpportunity
    AdConditioningConfiguration.add_member(:streaming_media_file_conditioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingMediaFileConditioning, location_name: 'StreamingMediaFileConditioning', traits: {"smithy.api#required" => {}}))
    AdConditioningConfiguration.type = Types::AdConditioningConfiguration
    AdMarkerPassthrough.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => false}))
    AdMarkerPassthrough.type = Types::AdMarkerPassthrough
    AdMarkupType.add_member(:daterange, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATERANGE', traits: {"smithy.api#enumValue" => "DATERANGE"}))
    AdMarkupType.add_member(:scte35_enhanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCTE35_ENHANCED', traits: {"smithy.api#enumValue" => "SCTE35_ENHANCED"}))
    AdsInteractionExcludeEventType.add_member(:ad_marker_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AD_MARKER_FOUND', traits: {"smithy.api#enumValue" => "AD_MARKER_FOUND"}))
    AdsInteractionExcludeEventType.add_member(:non_ad_marker_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_AD_MARKER_FOUND', traits: {"smithy.api#enumValue" => "NON_AD_MARKER_FOUND"}))
    AdsInteractionExcludeEventType.add_member(:making_ads_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAKING_ADS_REQUEST', traits: {"smithy.api#enumValue" => "MAKING_ADS_REQUEST"}))
    AdsInteractionExcludeEventType.add_member(:modified_target_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFIED_TARGET_URL', traits: {"smithy.api#enumValue" => "MODIFIED_TARGET_URL"}))
    AdsInteractionExcludeEventType.add_member(:vast_redirect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAST_REDIRECT', traits: {"smithy.api#enumValue" => "VAST_REDIRECT"}))
    AdsInteractionExcludeEventType.add_member(:empty_vast_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMPTY_VAST_RESPONSE', traits: {"smithy.api#enumValue" => "EMPTY_VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:empty_vmap_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMPTY_VMAP_RESPONSE', traits: {"smithy.api#enumValue" => "EMPTY_VMAP_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:vast_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VAST_RESPONSE', traits: {"smithy.api#enumValue" => "VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:redirected_vast_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDIRECTED_VAST_RESPONSE', traits: {"smithy.api#enumValue" => "REDIRECTED_VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:filled_avail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILLED_AVAIL', traits: {"smithy.api#enumValue" => "FILLED_AVAIL"}))
    AdsInteractionExcludeEventType.add_member(:filled_overlay_avail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILLED_OVERLAY_AVAIL', traits: {"smithy.api#enumValue" => "FILLED_OVERLAY_AVAIL"}))
    AdsInteractionExcludeEventType.add_member(:beacon_fired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEACON_FIRED', traits: {"smithy.api#enumValue" => "BEACON_FIRED"}))
    AdsInteractionExcludeEventType.add_member(:warning_no_advertisements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING_NO_ADVERTISEMENTS', traits: {"smithy.api#enumValue" => "WARNING_NO_ADVERTISEMENTS"}))
    AdsInteractionExcludeEventType.add_member(:warning_vpaid_ad_dropped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING_VPAID_AD_DROPPED', traits: {"smithy.api#enumValue" => "WARNING_VPAID_AD_DROPPED"}))
    AdsInteractionExcludeEventType.add_member(:warning_url_variable_substitution_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING_URL_VARIABLE_SUBSTITUTION_FAILED', traits: {"smithy.api#enumValue" => "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_UNKNOWN', traits: {"smithy.api#enumValue" => "ERROR_UNKNOWN"}))
    AdsInteractionExcludeEventType.add_member(:error_unknown_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_UNKNOWN_HOST', traits: {"smithy.api#enumValue" => "ERROR_UNKNOWN_HOST"}))
    AdsInteractionExcludeEventType.add_member(:error_disallowed_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_DISALLOWED_HOST', traits: {"smithy.api#enumValue" => "ERROR_DISALLOWED_HOST"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_io, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_IO', traits: {"smithy.api#enumValue" => "ERROR_ADS_IO"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_TIMEOUT', traits: {"smithy.api#enumValue" => "ERROR_ADS_TIMEOUT"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_response_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_RESPONSE_PARSE', traits: {"smithy.api#enumValue" => "ERROR_ADS_RESPONSE_PARSE"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_response_unknown_root_element, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT', traits: {"smithy.api#enumValue" => "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_invalid_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_INVALID_RESPONSE', traits: {"smithy.api#enumValue" => "ERROR_ADS_INVALID_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_empty_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_REDIRECT_EMPTY_RESPONSE', traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_EMPTY_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_multiple_vast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_REDIRECT_MULTIPLE_VAST', traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_MULTIPLE_VAST"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_REDIRECT_FAILED', traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_mediafiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MISSING_MEDIAFILES', traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_MEDIAFILES"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_creatives, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MISSING_CREATIVES', traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_CREATIVES"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_overlays, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MISSING_OVERLAYS', traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_OVERLAYS"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_impression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MISSING_IMPRESSION', traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_IMPRESSION"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_invalid_vast_ad_tag_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_INVALID_VAST_AD_TAG_URI', traits: {"smithy.api#enumValue" => "ERROR_VAST_INVALID_VAST_AD_TAG_URI"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_multiple_tracking_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MULTIPLE_TRACKING_EVENTS', traits: {"smithy.api#enumValue" => "ERROR_VAST_MULTIPLE_TRACKING_EVENTS"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_multiple_linear, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_MULTIPLE_LINEAR', traits: {"smithy.api#enumValue" => "ERROR_VAST_MULTIPLE_LINEAR"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_invalid_media_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_VAST_INVALID_MEDIA_FILE', traits: {"smithy.api#enumValue" => "ERROR_VAST_INVALID_MEDIA_FILE"}))
    AdsInteractionExcludeEventType.add_member(:error_firing_beacon_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_FIRING_BEACON_FAILED', traits: {"smithy.api#enumValue" => "ERROR_FIRING_BEACON_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_personalization_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_PERSONALIZATION_DISABLED', traits: {"smithy.api#enumValue" => "ERROR_PERSONALIZATION_DISABLED"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_vast_response_for_offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET', traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOD_TIME_BASED_AVAIL_PLAN_SUCCESS', traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_warning_no_advertisements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS', traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS"}))
    AdsInteractionExcludeEventType.add_member(:interstitial_vod_success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERSTITIAL_VOD_SUCCESS', traits: {"smithy.api#enumValue" => "INTERSTITIAL_VOD_SUCCESS"}))
    AdsInteractionExcludeEventType.add_member(:interstitial_vod_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERSTITIAL_VOD_FAILURE', traits: {"smithy.api#enumValue" => "INTERSTITIAL_VOD_FAILURE"}))
    AdsInteractionLog.add_member(:publish_opt_in_event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Adsinteractionpublishoptineventtypeslist, location_name: 'PublishOptInEventTypes'))
    AdsInteractionLog.add_member(:exclude_event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Adsinteractionexcludeeventtypeslist, location_name: 'ExcludeEventTypes'))
    AdsInteractionLog.type = Types::AdsInteractionLog
    AdsInteractionPublishOptInEventType.add_member(:raw_ads_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RAW_ADS_RESPONSE', traits: {"smithy.api#enumValue" => "RAW_ADS_RESPONSE"}))
    Alert.add_member(:alert_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AlertCode', traits: {"smithy.api#required" => {}}))
    Alert.add_member(:alert_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AlertMessage', traits: {"smithy.api#required" => {}}))
    Alert.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime', traits: {"smithy.api#required" => {}}))
    Alert.add_member(:related_resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'RelatedResourceArns', traits: {"smithy.api#required" => {}}))
    Alert.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    Alert.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlertCategory, location_name: 'Category'))
    Alert.type = Types::Alert
    AlertCategory.add_member(:scheduling_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING_ERROR', traits: {"smithy.api#enumValue" => "SCHEDULING_ERROR"}))
    AlertCategory.add_member(:playback_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAYBACK_WARNING', traits: {"smithy.api#enumValue" => "PLAYBACK_WARNING"}))
    AlertCategory.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    AlternateMedia.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    AlternateMedia.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    AlternateMedia.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    AlternateMedia.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    AlternateMedia.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ScheduledStartTimeMillis'))
    AlternateMedia.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    AlternateMedia.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DurationMillis'))
    AlternateMedia.type = Types::AlternateMedia
    AudienceMedia.add_member(:audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Audience'))
    AudienceMedia.add_member(:alternate_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofalternatemedia, location_name: 'AlternateMedia'))
    AudienceMedia.type = Types::AudienceMedia
    Audiences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    AvailMatchingCriteria.add_member(:dynamic_variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DynamicVariable', traits: {"smithy.api#required" => {}}))
    AvailMatchingCriteria.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator', traits: {"smithy.api#required" => {}}))
    AvailMatchingCriteria.type = Types::AvailMatchingCriteria
    AvailSuppression.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode'))
    AvailSuppression.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    AvailSuppression.add_member(:fill_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FillPolicy, location_name: 'FillPolicy'))
    AvailSuppression.type = Types::AvailSuppression
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    Bumper.add_member(:end_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndUrl'))
    Bumper.add_member(:start_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartUrl'))
    Bumper.type = Types::Bumper
    CdnConfiguration.add_member(:ad_segment_url_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdSegmentUrlPrefix'))
    CdnConfiguration.add_member(:content_segment_url_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContentSegmentUrlPrefix'))
    CdnConfiguration.type = Types::CdnConfiguration
    Channel.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:channel_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelState', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    Channel.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    Channel.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    Channel.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: 'Outputs', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackMode', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    Channel.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationForChannel, location_name: 'LogConfiguration', traits: {"smithy.api#required" => {}}))
    Channel.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    Channel.type = Types::Channel
    ChannelState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ChannelState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ClipRange.add_member(:end_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EndOffsetMillis', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    ClipRange.add_member(:start_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'StartOffsetMillis'))
    ClipRange.type = Types::ClipRange
    ConfigurationAliasesRequest.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConfigurationAliasesRequest.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString)
    ConfigurationAliasesResponse.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConfigurationAliasesResponse.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString)
    ConfigureLogsForChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#required" => {}}))
    ConfigureLogsForChannelInput.add_member(:log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypes, location_name: 'LogTypes', traits: {"smithy.api#required" => {}}))
    ConfigureLogsForChannelInput.type = Types::ConfigureLogsForChannelInput
    ConfigureLogsForChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    ConfigureLogsForChannelOutput.add_member(:log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypes, location_name: 'LogTypes'))
    ConfigureLogsForChannelOutput.type = Types::ConfigureLogsForChannelOutput
    ConfigureLogsForPlaybackConfigurationInput.add_member(:percent_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentEnabled', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofloggingstrategies, location_name: 'EnabledLoggingStrategies'))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdsInteractionLog, location_name: 'AdsInteractionLog'))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestServiceInteractionLog, location_name: 'ManifestServiceInteractionLog'))
    ConfigureLogsForPlaybackConfigurationInput.type = Types::ConfigureLogsForPlaybackConfigurationInput
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:percent_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentEnabled', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName'))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofloggingstrategies, location_name: 'EnabledLoggingStrategies'))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdsInteractionLog, location_name: 'AdsInteractionLog'))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestServiceInteractionLog, location_name: 'ManifestServiceInteractionLog'))
    ConfigureLogsForPlaybackConfigurationOutput.type = Types::ConfigureLogsForPlaybackConfigurationOutput
    CreateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelInput.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    CreateChannelInput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestOutputs, location_name: 'Outputs', traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackMode, location_name: 'PlaybackMode', traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelInput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tier, location_name: 'Tier'))
    CreateChannelInput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeShiftConfiguration, location_name: 'TimeShiftConfiguration'))
    CreateChannelInput.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    CreateChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelState, location_name: 'ChannelState'))
    CreateChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    CreateChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    CreateChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    CreateChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: 'Outputs', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackMode', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeShiftConfiguration, location_name: 'TimeShiftConfiguration'))
    CreateChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreateLiveSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateLiveSourceInput.type = Types::CreateLiveSourceInput
    CreateLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    CreateLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    CreateLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    CreateLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    CreateLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    CreateLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateLiveSourceOutput.type = Types::CreateLiveSourceOutput
    CreatePrefetchScheduleInput.add_member(:consumption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: 'Consumption'))
    CreatePrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrefetchScheduleInput.add_member(:retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: 'Retrieval'))
    CreatePrefetchScheduleInput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringPrefetchConfiguration, location_name: 'RecurringPrefetchConfiguration'))
    CreatePrefetchScheduleInput.add_member(:schedule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchScheduleType, location_name: 'ScheduleType'))
    CreatePrefetchScheduleInput.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamId'))
    CreatePrefetchScheduleInput.type = Types::CreatePrefetchScheduleInput
    CreatePrefetchScheduleOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreatePrefetchScheduleOutput.add_member(:consumption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: 'Consumption'))
    CreatePrefetchScheduleOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    CreatePrefetchScheduleOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName'))
    CreatePrefetchScheduleOutput.add_member(:retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: 'Retrieval'))
    CreatePrefetchScheduleOutput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringPrefetchConfiguration, location_name: 'RecurringPrefetchConfiguration'))
    CreatePrefetchScheduleOutput.add_member(:schedule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchScheduleType, location_name: 'ScheduleType'))
    CreatePrefetchScheduleOutput.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamId'))
    CreatePrefetchScheduleOutput.type = Types::CreatePrefetchScheduleOutput
    CreateProgramInput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    CreateProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProgramInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    CreateProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProgramInput.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#required" => {}}))
    CreateProgramInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#required" => {}}))
    CreateProgramInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    CreateProgramInput.add_member(:audience_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofaudiencemedia, location_name: 'AudienceMedia'))
    CreateProgramInput.type = Types::CreateProgramInput
    CreateProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    CreateProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    CreateProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    CreateProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    CreateProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName'))
    CreateProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'ScheduledStartTime'))
    CreateProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    CreateProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    CreateProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    CreateProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DurationMillis'))
    CreateProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofaudiencemedia, location_name: 'AudienceMedia'))
    CreateProgramOutput.type = Types::CreateProgramOutput
    CreateSourceLocationInput.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    CreateSourceLocationInput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    CreateSourceLocationInput.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration', traits: {"smithy.api#required" => {}}))
    CreateSourceLocationInput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    CreateSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceLocationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateSourceLocationInput.type = Types::CreateSourceLocationInput
    CreateSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    CreateSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    CreateSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    CreateSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration'))
    CreateSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    CreateSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    CreateSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    CreateSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateSourceLocationOutput.type = Types::CreateSourceLocationOutput
    CreateVodSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    CreateVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVodSourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVodSourceInput.type = Types::CreateVodSourceInput
    CreateVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    CreateVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    CreateVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    CreateVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    CreateVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    CreateVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    CreateVodSourceOutput.type = Types::CreateVodSourceOutput
    DashConfiguration.add_member(:manifest_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestEndpointPrefix'))
    DashConfiguration.add_member(:mpd_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MpdLocation'))
    DashConfiguration.add_member(:origin_manifest_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginManifestType, location_name: 'OriginManifestType'))
    DashConfiguration.type = Types::DashConfiguration
    DashConfigurationForPut.add_member(:mpd_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MpdLocation'))
    DashConfigurationForPut.add_member(:origin_manifest_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginManifestType, location_name: 'OriginManifestType'))
    DashConfigurationForPut.type = Types::DashConfigurationForPut
    DashPlaylistSettings.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManifestWindowSeconds'))
    DashPlaylistSettings.add_member(:min_buffer_time_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinBufferTimeSeconds'))
    DashPlaylistSettings.add_member(:min_update_period_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinUpdatePeriodSeconds'))
    DashPlaylistSettings.add_member(:suggested_presentation_delay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SuggestedPresentationDelaySeconds'))
    DashPlaylistSettings.type = Types::DashPlaylistSettings
    DefaultSegmentDeliveryConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseUrl'))
    DefaultSegmentDeliveryConfiguration.type = Types::DefaultSegmentDeliveryConfiguration
    DeleteChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelInput.type = Types::DeleteChannelInput
    DeleteChannelOutput.type = Types::DeleteChannelOutput
    DeleteChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelPolicyInput.type = Types::DeleteChannelPolicyInput
    DeleteChannelPolicyOutput.type = Types::DeleteChannelPolicyOutput
    DeleteLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLiveSourceInput.type = Types::DeleteLiveSourceInput
    DeleteLiveSourceOutput.type = Types::DeleteLiveSourceOutput
    DeletePlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePlaybackConfigurationInput.type = Types::DeletePlaybackConfigurationInput
    DeletePlaybackConfigurationOutput.type = Types::DeletePlaybackConfigurationOutput
    DeletePrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrefetchScheduleInput.type = Types::DeletePrefetchScheduleInput
    DeletePrefetchScheduleOutput.type = Types::DeletePrefetchScheduleOutput
    DeleteProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProgramInput.type = Types::DeleteProgramInput
    DeleteProgramOutput.type = Types::DeleteProgramOutput
    DeleteSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSourceLocationInput.type = Types::DeleteSourceLocationInput
    DeleteSourceLocationOutput.type = Types::DeleteSourceLocationOutput
    DeleteVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVodSourceInput.type = Types::DeleteVodSourceInput
    DeleteVodSourceOutput.type = Types::DeleteVodSourceOutput
    DescribeChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelInput.type = Types::DescribeChannelInput
    DescribeChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DescribeChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    DescribeChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelState, location_name: 'ChannelState'))
    DescribeChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    DescribeChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    DescribeChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    DescribeChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: 'Outputs', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackMode', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfigurationForChannel, location_name: 'LogConfiguration', traits: {"smithy.api#required" => {}}))
    DescribeChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeShiftConfiguration, location_name: 'TimeShiftConfiguration'))
    DescribeChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    DescribeChannelOutput.type = Types::DescribeChannelOutput
    DescribeLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLiveSourceInput.type = Types::DescribeLiveSourceInput
    DescribeLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DescribeLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    DescribeLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    DescribeLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    DescribeLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    DescribeLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    DescribeLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeLiveSourceOutput.type = Types::DescribeLiveSourceOutput
    DescribeProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProgramInput.type = Types::DescribeProgramInput
    DescribeProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    DescribeProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DescribeProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    DescribeProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    DescribeProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    DescribeProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName'))
    DescribeProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'ScheduledStartTime'))
    DescribeProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    DescribeProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    DescribeProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    DescribeProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'DurationMillis'))
    DescribeProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofaudiencemedia, location_name: 'AudienceMedia'))
    DescribeProgramOutput.type = Types::DescribeProgramOutput
    DescribeSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSourceLocationInput.type = Types::DescribeSourceLocationInput
    DescribeSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    DescribeSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DescribeSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    DescribeSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    DescribeSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration'))
    DescribeSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    DescribeSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    DescribeSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    DescribeSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeSourceLocationOutput.type = Types::DescribeSourceLocationOutput
    DescribeVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVodSourceInput.type = Types::DescribeVodSourceInput
    DescribeVodSourceOutput.add_member(:ad_break_opportunities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdBreakOpportunities, location_name: 'AdBreakOpportunities'))
    DescribeVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DescribeVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    DescribeVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    DescribeVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    DescribeVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    DescribeVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    DescribeVodSourceOutput.type = Types::DescribeVodSourceOutput
    FillPolicy.add_member(:full_avail_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_AVAIL_ONLY', traits: {"smithy.api#enumValue" => "FULL_AVAIL_ONLY"}))
    FillPolicy.add_member(:partial_avail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_AVAIL', traits: {"smithy.api#enumValue" => "PARTIAL_AVAIL"}))
    GetChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelPolicyInput.type = Types::GetChannelPolicyInput
    GetChannelPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy'))
    GetChannelPolicyOutput.type = Types::GetChannelPolicyOutput
    GetChannelScheduleInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelScheduleInput.add_member(:duration_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DurationMinutes', traits: {"smithy.api#httpQuery" => "durationMinutes"}))
    GetChannelScheduleInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetChannelScheduleInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetChannelScheduleInput.add_member(:audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Audience', traits: {"smithy.api#httpQuery" => "audience"}))
    GetChannelScheduleInput.type = Types::GetChannelScheduleInput
    GetChannelScheduleOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofscheduleentry, location_name: 'Items'))
    GetChannelScheduleOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    GetChannelScheduleOutput.type = Types::GetChannelScheduleOutput
    GetPlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPlaybackConfigurationInput.type = Types::GetPlaybackConfigurationInput
    GetPlaybackConfigurationOutput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdDecisionServerUrl'))
    GetPlaybackConfigurationOutput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailSuppression, location_name: 'AvailSuppression'))
    GetPlaybackConfigurationOutput.add_member(:bumper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bumper, location_name: 'Bumper'))
    GetPlaybackConfigurationOutput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: 'CdnConfiguration'))
    GetPlaybackConfigurationOutput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: 'ConfigurationAliases'))
    GetPlaybackConfigurationOutput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashConfiguration, location_name: 'DashConfiguration'))
    GetPlaybackConfigurationOutput.add_member(:hls_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: 'HlsConfiguration'))
    GetPlaybackConfigurationOutput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsertionMode, location_name: 'InsertionMode', traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    GetPlaybackConfigurationOutput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: 'LivePreRollConfiguration'))
    GetPlaybackConfigurationOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'LogConfiguration'))
    GetPlaybackConfigurationOutput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: 'ManifestProcessingRules'))
    GetPlaybackConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    GetPlaybackConfigurationOutput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1, location_name: 'PersonalizationThresholdSeconds'))
    GetPlaybackConfigurationOutput.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationArn'))
    GetPlaybackConfigurationOutput.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackEndpointPrefix'))
    GetPlaybackConfigurationOutput.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionInitializationEndpointPrefix'))
    GetPlaybackConfigurationOutput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SlateAdUrl'))
    GetPlaybackConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    GetPlaybackConfigurationOutput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TranscodeProfileName'))
    GetPlaybackConfigurationOutput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VideoContentSourceUrl'))
    GetPlaybackConfigurationOutput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdConditioningConfiguration, location_name: 'AdConditioningConfiguration'))
    GetPlaybackConfigurationOutput.type = Types::GetPlaybackConfigurationOutput
    GetPrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrefetchScheduleInput.type = Types::GetPrefetchScheduleInput
    GetPrefetchScheduleOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    GetPrefetchScheduleOutput.add_member(:consumption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: 'Consumption'))
    GetPrefetchScheduleOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    GetPrefetchScheduleOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName'))
    GetPrefetchScheduleOutput.add_member(:retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: 'Retrieval'))
    GetPrefetchScheduleOutput.add_member(:schedule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchScheduleType, location_name: 'ScheduleType'))
    GetPrefetchScheduleOutput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringPrefetchConfiguration, location_name: 'RecurringPrefetchConfiguration'))
    GetPrefetchScheduleOutput.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamId'))
    GetPrefetchScheduleOutput.type = Types::GetPrefetchScheduleOutput
    HlsConfiguration.add_member(:manifest_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestEndpointPrefix'))
    HlsConfiguration.type = Types::HlsConfiguration
    HlsPlaylistSettings.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManifestWindowSeconds'))
    HlsPlaylistSettings.add_member(:ad_markup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkupTypes, location_name: 'AdMarkupType'))
    HlsPlaylistSettings.type = Types::HlsPlaylistSettings
    HttpConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseUrl', traits: {"smithy.api#required" => {}}))
    HttpConfiguration.type = Types::HttpConfiguration
    HttpPackageConfiguration.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Path', traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.add_member(:source_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceGroup', traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.type = Types::HttpPackageConfiguration
    HttpPackageConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfiguration)
    InsertionMode.add_member(:stitched_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STITCHED_ONLY', traits: {"smithy.api#enumValue" => "STITCHED_ONLY"}))
    InsertionMode.add_member(:player_select, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAYER_SELECT', traits: {"smithy.api#enumValue" => "PLAYER_SELECT"}))
    KeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    KeyValuePair.type = Types::KeyValuePair
    ListAlertsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAlertsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAlertsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListAlertsInput.type = Types::ListAlertsInput
    ListAlertsOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofalert, location_name: 'Items'))
    ListAlertsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListAlertsOutput.type = Types::ListAlertsOutput
    ListChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofchannel, location_name: 'Items'))
    ListChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListLiveSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLiveSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLiveSourcesInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLiveSourcesInput.type = Types::ListLiveSourcesInput
    ListLiveSourcesOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflivesource, location_name: 'Items'))
    ListLiveSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListLiveSourcesOutput.type = Types::ListLiveSourcesOutput
    ListPlaybackConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListPlaybackConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPlaybackConfigurationsInput.type = Types::ListPlaybackConfigurationsInput
    ListPlaybackConfigurationsOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofplaybackconfiguration, location_name: 'Items'))
    ListPlaybackConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListPlaybackConfigurationsOutput.type = Types::ListPlaybackConfigurationsOutput
    ListPrefetchScheduleType.add_member(:single, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE', traits: {"smithy.api#enumValue" => "SINGLE"}))
    ListPrefetchScheduleType.add_member(:recurring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    ListPrefetchScheduleType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListPrefetchSchedulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max100, location_name: 'MaxResults'))
    ListPrefetchSchedulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListPrefetchSchedulesInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrefetchSchedulesInput.add_member(:schedule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrefetchScheduleType, location_name: 'ScheduleType'))
    ListPrefetchSchedulesInput.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamId'))
    ListPrefetchSchedulesInput.type = Types::ListPrefetchSchedulesInput
    ListPrefetchSchedulesOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofprefetchschedule, location_name: 'Items'))
    ListPrefetchSchedulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListPrefetchSchedulesOutput.type = Types::ListPrefetchSchedulesOutput
    ListSourceLocationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSourceLocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSourceLocationsInput.type = Types::ListSourceLocationsInput
    ListSourceLocationsOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsourcelocation, location_name: 'Items'))
    ListSourceLocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListSourceLocationsOutput.type = Types::ListSourceLocationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVodSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListVodSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVodSourcesInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVodSourcesInput.type = Types::ListVodSourcesInput
    ListVodSourcesOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofvodsource, location_name: 'Items'))
    ListVodSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListVodSourcesOutput.type = Types::ListVodSourcesOutput
    LivePreRollConfiguration.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdDecisionServerUrl'))
    LivePreRollConfiguration.add_member(:max_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxDurationSeconds'))
    LivePreRollConfiguration.type = Types::LivePreRollConfiguration
    LiveSource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    LiveSource.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    LiveSource.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName', traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    LiveSource.type = Types::LiveSource
    LogConfiguration.add_member(:percent_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentEnabled', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofloggingstrategies, location_name: 'EnabledLoggingStrategies', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdsInteractionLog, location_name: 'AdsInteractionLog'))
    LogConfiguration.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestServiceInteractionLog, location_name: 'ManifestServiceInteractionLog'))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurationForChannel.add_member(:log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypes, location_name: 'LogTypes'))
    LogConfigurationForChannel.type = Types::LogConfigurationForChannel
    LogType.add_member(:as_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AS_RUN', traits: {"smithy.api#enumValue" => "AS_RUN"}))
    LogTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    LoggingStrategy.add_member(:vended_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VENDED_LOGS', traits: {"smithy.api#enumValue" => "VENDED_LOGS"}))
    LoggingStrategy.add_member(:legacy_cloudwatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGACY_CLOUDWATCH', traits: {"smithy.api#enumValue" => "LEGACY_CLOUDWATCH"}))
    ManifestProcessingRules.add_member(:ad_marker_passthrough, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkerPassthrough, location_name: 'AdMarkerPassthrough'))
    ManifestProcessingRules.type = Types::ManifestProcessingRules
    ManifestServiceExcludeEventType.add_member(:generated_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERATED_MANIFEST', traits: {"smithy.api#enumValue" => "GENERATED_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:origin_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORIGIN_MANIFEST', traits: {"smithy.api#enumValue" => "ORIGIN_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:session_initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_INITIALIZED', traits: {"smithy.api#enumValue" => "SESSION_INITIALIZED"}))
    ManifestServiceExcludeEventType.add_member(:tracking_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACKING_RESPONSE', traits: {"smithy.api#enumValue" => "TRACKING_RESPONSE"}))
    ManifestServiceExcludeEventType.add_member(:config_syntax_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIG_SYNTAX_ERROR', traits: {"smithy.api#enumValue" => "CONFIG_SYNTAX_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:config_security_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIG_SECURITY_ERROR', traits: {"smithy.api#enumValue" => "CONFIG_SECURITY_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:unknown_host, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_HOST', traits: {"smithy.api#enumValue" => "UNKNOWN_HOST"}))
    ManifestServiceExcludeEventType.add_member(:timeout_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT_ERROR', traits: {"smithy.api#enumValue" => "TIMEOUT_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:connection_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_ERROR', traits: {"smithy.api#enumValue" => "CONNECTION_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:io_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IO_ERROR', traits: {"smithy.api#enumValue" => "IO_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:unknown_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:host_disallowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_DISALLOWED', traits: {"smithy.api#enumValue" => "HOST_DISALLOWED"}))
    ManifestServiceExcludeEventType.add_member(:parsing_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARSING_ERROR', traits: {"smithy.api#enumValue" => "PARSING_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:manifest_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANIFEST_ERROR', traits: {"smithy.api#enumValue" => "MANIFEST_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:no_master_or_media_playlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_MASTER_OR_MEDIA_PLAYLIST', traits: {"smithy.api#enumValue" => "NO_MASTER_OR_MEDIA_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:no_master_playlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_MASTER_PLAYLIST', traits: {"smithy.api#enumValue" => "NO_MASTER_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:no_media_playlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_MEDIA_PLAYLIST', traits: {"smithy.api#enumValue" => "NO_MEDIA_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:incompatible_hls_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_HLS_VERSION', traits: {"smithy.api#enumValue" => "INCOMPATIBLE_HLS_VERSION"}))
    ManifestServiceExcludeEventType.add_member(:scte35_parsing_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCTE35_PARSING_ERROR', traits: {"smithy.api#enumValue" => "SCTE35_PARSING_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:invalid_single_period_dash_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SINGLE_PERIOD_DASH_MANIFEST', traits: {"smithy.api#enumValue" => "INVALID_SINGLE_PERIOD_DASH_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:unsupported_single_period_dash_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST', traits: {"smithy.api#enumValue" => "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:last_period_missing_audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_PERIOD_MISSING_AUDIO', traits: {"smithy.api#enumValue" => "LAST_PERIOD_MISSING_AUDIO"}))
    ManifestServiceExcludeEventType.add_member(:last_period_missing_audio_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAST_PERIOD_MISSING_AUDIO_WARNING', traits: {"smithy.api#enumValue" => "LAST_PERIOD_MISSING_AUDIO_WARNING"}))
    ManifestServiceExcludeEventType.add_member(:error_origin_prefix_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ORIGIN_PREFIX_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_ORIGIN_PREFIX_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_ads_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_ADS_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_ADS_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_live_pre_roll_ads_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_cdn_ad_segment_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_CDN_AD_SEGMENT_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_CDN_AD_SEGMENT_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_cdn_content_segment_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_slate_ad_url_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_SLATE_AD_URL_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_SLATE_AD_URL_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_profile_name_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_PROFILE_NAME_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_PROFILE_NAME_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_bumper_start_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_BUMPER_START_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_BUMPER_START_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_bumper_end_interpolation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR_BUMPER_END_INTERPOLATION', traits: {"smithy.api#enumValue" => "ERROR_BUMPER_END_INTERPOLATION"}))
    ManifestServiceInteractionLog.add_member(:exclude_event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Manifestserviceexcludeeventtypeslist, location_name: 'ExcludeEventTypes'))
    ManifestServiceInteractionLog.type = Types::ManifestServiceInteractionLog
    MessageType.add_member(:splice_insert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPLICE_INSERT', traits: {"smithy.api#enumValue" => "SPLICE_INSERT"}))
    MessageType.add_member(:time_signal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_SIGNAL', traits: {"smithy.api#enumValue" => "TIME_SIGNAL"}))
    Mode.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    Mode.add_member(:behind_live_edge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEHIND_LIVE_EDGE', traits: {"smithy.api#enumValue" => "BEHIND_LIVE_EDGE"}))
    Mode.add_member(:after_live_edge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_LIVE_EDGE', traits: {"smithy.api#enumValue" => "AFTER_LIVE_EDGE"}))
    Operator.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    OriginManifestType.add_member(:single_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_PERIOD', traits: {"smithy.api#enumValue" => "SINGLE_PERIOD"}))
    OriginManifestType.add_member(:multi_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTI_PERIOD', traits: {"smithy.api#enumValue" => "MULTI_PERIOD"}))
    PlaybackConfiguration.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdDecisionServerUrl'))
    PlaybackConfiguration.add_member(:avail_suppression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailSuppression, location_name: 'AvailSuppression'))
    PlaybackConfiguration.add_member(:bumper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bumper, location_name: 'Bumper'))
    PlaybackConfiguration.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: 'CdnConfiguration'))
    PlaybackConfiguration.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: 'ConfigurationAliases'))
    PlaybackConfiguration.add_member(:dash_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashConfiguration, location_name: 'DashConfiguration'))
    PlaybackConfiguration.add_member(:hls_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: 'HlsConfiguration'))
    PlaybackConfiguration.add_member(:insertion_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsertionMode, location_name: 'InsertionMode', traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PlaybackConfiguration.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: 'LivePreRollConfiguration'))
    PlaybackConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'LogConfiguration'))
    PlaybackConfiguration.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: 'ManifestProcessingRules'))
    PlaybackConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    PlaybackConfiguration.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1, location_name: 'PersonalizationThresholdSeconds'))
    PlaybackConfiguration.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationArn'))
    PlaybackConfiguration.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackEndpointPrefix'))
    PlaybackConfiguration.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionInitializationEndpointPrefix'))
    PlaybackConfiguration.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SlateAdUrl'))
    PlaybackConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    PlaybackConfiguration.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TranscodeProfileName'))
    PlaybackConfiguration.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VideoContentSourceUrl'))
    PlaybackConfiguration.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdConditioningConfiguration, location_name: 'AdConditioningConfiguration'))
    PlaybackConfiguration.type = Types::PlaybackConfiguration
    PlaybackMode.add_member(:loop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOOP', traits: {"smithy.api#enumValue" => "LOOP"}))
    PlaybackMode.add_member(:linear, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINEAR', traits: {"smithy.api#enumValue" => "LINEAR"}))
    PrefetchConsumption.add_member(:avail_matching_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofavailmatchingcriteria, location_name: 'AvailMatchingCriteria'))
    PrefetchConsumption.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    PrefetchConsumption.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'StartTime'))
    PrefetchConsumption.type = Types::PrefetchConsumption
    PrefetchRetrieval.add_member(:dynamic_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'DynamicVariables'))
    PrefetchRetrieval.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    PrefetchRetrieval.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'StartTime'))
    PrefetchRetrieval.add_member(:traffic_shaping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingType, location_name: 'TrafficShapingType'))
    PrefetchRetrieval.add_member(:traffic_shaping_retrieval_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingRetrievalWindow, location_name: 'TrafficShapingRetrievalWindow'))
    PrefetchRetrieval.add_member(:traffic_shaping_tps_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingTpsConfiguration, location_name: 'TrafficShapingTpsConfiguration'))
    PrefetchRetrieval.type = Types::PrefetchRetrieval
    PrefetchSchedule.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:consumption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchConsumption, location_name: 'Consumption'))
    PrefetchSchedule.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationName', traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchRetrieval, location_name: 'Retrieval'))
    PrefetchSchedule.add_member(:schedule_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchScheduleType, location_name: 'ScheduleType'))
    PrefetchSchedule.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringPrefetchConfiguration, location_name: 'RecurringPrefetchConfiguration'))
    PrefetchSchedule.add_member(:stream_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamId'))
    PrefetchSchedule.type = Types::PrefetchSchedule
    PrefetchScheduleType.add_member(:single, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE', traits: {"smithy.api#enumValue" => "SINGLE"}))
    PrefetchScheduleType.add_member(:recurring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECURRING', traits: {"smithy.api#enumValue" => "RECURRING"}))
    PutChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutChannelPolicyInput.type = Types::PutChannelPolicyInput
    PutChannelPolicyOutput.type = Types::PutChannelPolicyOutput
    PutPlaybackConfigurationInput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdDecisionServerUrl'))
    PutPlaybackConfigurationInput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailSuppression, location_name: 'AvailSuppression'))
    PutPlaybackConfigurationInput.add_member(:bumper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bumper, location_name: 'Bumper'))
    PutPlaybackConfigurationInput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: 'CdnConfiguration'))
    PutPlaybackConfigurationInput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationAliasesRequest, location_name: 'ConfigurationAliases'))
    PutPlaybackConfigurationInput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashConfigurationForPut, location_name: 'DashConfiguration'))
    PutPlaybackConfigurationInput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsertionMode, location_name: 'InsertionMode', traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PutPlaybackConfigurationInput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: 'LivePreRollConfiguration'))
    PutPlaybackConfigurationInput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: 'ManifestProcessingRules'))
    PutPlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    PutPlaybackConfigurationInput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1, location_name: 'PersonalizationThresholdSeconds'))
    PutPlaybackConfigurationInput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SlateAdUrl'))
    PutPlaybackConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    PutPlaybackConfigurationInput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TranscodeProfileName'))
    PutPlaybackConfigurationInput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VideoContentSourceUrl'))
    PutPlaybackConfigurationInput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdConditioningConfiguration, location_name: 'AdConditioningConfiguration'))
    PutPlaybackConfigurationInput.type = Types::PutPlaybackConfigurationInput
    PutPlaybackConfigurationOutput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdDecisionServerUrl'))
    PutPlaybackConfigurationOutput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailSuppression, location_name: 'AvailSuppression'))
    PutPlaybackConfigurationOutput.add_member(:bumper, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bumper, location_name: 'Bumper'))
    PutPlaybackConfigurationOutput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CdnConfiguration, location_name: 'CdnConfiguration'))
    PutPlaybackConfigurationOutput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationAliasesResponse, location_name: 'ConfigurationAliases'))
    PutPlaybackConfigurationOutput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashConfiguration, location_name: 'DashConfiguration'))
    PutPlaybackConfigurationOutput.add_member(:hls_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsConfiguration, location_name: 'HlsConfiguration'))
    PutPlaybackConfigurationOutput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsertionMode, location_name: 'InsertionMode', traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PutPlaybackConfigurationOutput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LivePreRollConfiguration, location_name: 'LivePreRollConfiguration'))
    PutPlaybackConfigurationOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogConfiguration, location_name: 'LogConfiguration'))
    PutPlaybackConfigurationOutput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestProcessingRules, location_name: 'ManifestProcessingRules'))
    PutPlaybackConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    PutPlaybackConfigurationOutput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1, location_name: 'PersonalizationThresholdSeconds'))
    PutPlaybackConfigurationOutput.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackConfigurationArn'))
    PutPlaybackConfigurationOutput.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackEndpointPrefix'))
    PutPlaybackConfigurationOutput.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionInitializationEndpointPrefix'))
    PutPlaybackConfigurationOutput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SlateAdUrl'))
    PutPlaybackConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    PutPlaybackConfigurationOutput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TranscodeProfileName'))
    PutPlaybackConfigurationOutput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VideoContentSourceUrl'))
    PutPlaybackConfigurationOutput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdConditioningConfiguration, location_name: 'AdConditioningConfiguration'))
    PutPlaybackConfigurationOutput.type = Types::PutPlaybackConfigurationOutput
    RecurringConsumption.add_member(:retrieved_ad_expiration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetrievedAdExpirationSeconds'))
    RecurringConsumption.add_member(:avail_matching_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofavailmatchingcriteria, location_name: 'AvailMatchingCriteria'))
    RecurringConsumption.type = Types::RecurringConsumption
    RecurringPrefetchConfiguration.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'StartTime'))
    RecurringPrefetchConfiguration.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.add_member(:recurring_consumption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringConsumption, location_name: 'RecurringConsumption', traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.add_member(:recurring_retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringRetrieval, location_name: 'RecurringRetrieval', traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.type = Types::RecurringPrefetchConfiguration
    RecurringRetrieval.add_member(:dynamic_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'DynamicVariables'))
    RecurringRetrieval.add_member(:delay_after_avail_end_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DelayAfterAvailEndSeconds'))
    RecurringRetrieval.add_member(:traffic_shaping_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingType, location_name: 'TrafficShapingType'))
    RecurringRetrieval.add_member(:traffic_shaping_retrieval_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingRetrievalWindow, location_name: 'TrafficShapingRetrievalWindow'))
    RecurringRetrieval.add_member(:traffic_shaping_tps_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficShapingTpsConfiguration, location_name: 'TrafficShapingTpsConfiguration'))
    RecurringRetrieval.type = Types::RecurringRetrieval
    RelativePosition.add_member(:before_program, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEFORE_PROGRAM', traits: {"smithy.api#enumValue" => "BEFORE_PROGRAM"}))
    RelativePosition.add_member(:after_program, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_PROGRAM', traits: {"smithy.api#enumValue" => "AFTER_PROGRAM"}))
    RequestOutputItem.add_member(:dash_playlist_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashPlaylistSettings, location_name: 'DashPlaylistSettings'))
    RequestOutputItem.add_member(:hls_playlist_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPlaylistSettings, location_name: 'HlsPlaylistSettings'))
    RequestOutputItem.add_member(:manifest_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#required" => {}}))
    RequestOutputItem.add_member(:source_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceGroup', traits: {"smithy.api#required" => {}}))
    RequestOutputItem.type = Types::RequestOutputItem
    RequestOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestOutputItem)
    ResponseOutputItem.add_member(:dash_playlist_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DashPlaylistSettings, location_name: 'DashPlaylistSettings'))
    ResponseOutputItem.add_member(:hls_playlist_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HlsPlaylistSettings, location_name: 'HlsPlaylistSettings'))
    ResponseOutputItem.add_member(:manifest_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManifestName', traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.add_member(:playback_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackUrl', traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.add_member(:source_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceGroup', traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.type = Types::ResponseOutputItem
    ResponseOutputs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseOutputItem)
    ScheduleAdBreak.add_member(:approximate_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ApproximateDurationSeconds'))
    ScheduleAdBreak.add_member(:approximate_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'ApproximateStartTime'))
    ScheduleAdBreak.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    ScheduleAdBreak.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    ScheduleAdBreak.type = Types::ScheduleAdBreak
    ScheduleConfiguration.add_member(:transition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transition, location_name: 'Transition', traits: {"smithy.api#required" => {}}))
    ScheduleConfiguration.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    ScheduleEntry.add_member(:approximate_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ApproximateDurationSeconds'))
    ScheduleEntry.add_member(:approximate_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'ApproximateStartTime'))
    ScheduleEntry.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    ScheduleEntry.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName', traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:schedule_ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofscheduleadbreak, location_name: 'ScheduleAdBreaks'))
    ScheduleEntry.add_member(:schedule_entry_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleEntryType, location_name: 'ScheduleEntryType'))
    ScheduleEntry.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    ScheduleEntry.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    ScheduleEntry.type = Types::ScheduleEntry
    ScheduleEntryType.add_member(:program, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROGRAM', traits: {"smithy.api#enumValue" => "PROGRAM"}))
    ScheduleEntryType.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILLER_SLATE', traits: {"smithy.api#enumValue" => "FILLER_SLATE"}))
    ScheduleEntryType.add_member(:alternate_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALTERNATE_MEDIA', traits: {"smithy.api#enumValue" => "ALTERNATE_MEDIA"}))
    SecretsManagerAccessTokenConfiguration.add_member(:header_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HeaderName'))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretArn'))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_string_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretStringKey'))
    SecretsManagerAccessTokenConfiguration.type = Types::SecretsManagerAccessTokenConfiguration
    SegmentDeliveryConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseUrl'))
    SegmentDeliveryConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    SegmentDeliveryConfiguration.type = Types::SegmentDeliveryConfiguration
    SegmentationDescriptor.add_member(:segmentation_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SegmentationEventId'))
    SegmentationDescriptor.add_member(:segmentation_upid_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SegmentationUpidType'))
    SegmentationDescriptor.add_member(:segmentation_upid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'SegmentationUpid'))
    SegmentationDescriptor.add_member(:segmentation_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SegmentationTypeId'))
    SegmentationDescriptor.add_member(:segment_num, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SegmentNum'))
    SegmentationDescriptor.add_member(:segments_expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SegmentsExpected'))
    SegmentationDescriptor.add_member(:sub_segment_num, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SubSegmentNum'))
    SegmentationDescriptor.add_member(:sub_segments_expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'SubSegmentsExpected'))
    SegmentationDescriptor.type = Types::SegmentationDescriptor
    SegmentationDescriptorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentationDescriptor)
    SlateSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    SlateSource.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    SlateSource.type = Types::SlateSource
    SourceLocation.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    SourceLocation.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    SourceLocation.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    SourceLocation.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration', traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    SourceLocation.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    SourceLocation.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    SourceLocation.type = Types::SourceLocation
    SpliceInsertMessage.add_member(:avail_num, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AvailNum'))
    SpliceInsertMessage.add_member(:avails_expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AvailsExpected'))
    SpliceInsertMessage.add_member(:splice_event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SpliceEventId'))
    SpliceInsertMessage.add_member(:unique_program_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'UniqueProgramId'))
    SpliceInsertMessage.type = Types::SpliceInsertMessage
    StartChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartChannelInput.type = Types::StartChannelInput
    StartChannelOutput.type = Types::StartChannelOutput
    StopChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopChannelInput.type = Types::StopChannelInput
    StopChannelOutput.type = Types::StopChannelOutput
    StreamingMediaFileConditioning.add_member(:transcode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSCODE', traits: {"smithy.api#enumValue" => "TRANSCODE"}))
    StreamingMediaFileConditioning.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tier.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASIC', traits: {"smithy.api#enumValue" => "BASIC"}))
    Tier.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    TimeShiftConfiguration.add_member(:max_time_delay_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxTimeDelaySeconds', traits: {"smithy.api#required" => {}}))
    TimeShiftConfiguration.type = Types::TimeShiftConfiguration
    TimeSignalMessage.add_member(:segmentation_descriptors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentationDescriptorList, location_name: 'SegmentationDescriptors'))
    TimeSignalMessage.type = Types::TimeSignalMessage
    TrafficShapingRetrievalWindow.add_member(:retrieval_window_duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetrievalWindowDurationSeconds'))
    TrafficShapingRetrievalWindow.type = Types::TrafficShapingRetrievalWindow
    TrafficShapingTpsConfiguration.add_member(:peak_tps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PeakTps'))
    TrafficShapingTpsConfiguration.add_member(:peak_concurrent_users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PeakConcurrentUsers'))
    TrafficShapingTpsConfiguration.type = Types::TrafficShapingTpsConfiguration
    TrafficShapingType.add_member(:retrieval_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRIEVAL_WINDOW', traits: {"smithy.api#enumValue" => "RETRIEVAL_WINDOW"}))
    TrafficShapingType.add_member(:tps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TPS', traits: {"smithy.api#enumValue" => "TPS"}))
    Transition.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DurationMillis'))
    Transition.add_member(:relative_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelativePosition, location_name: 'RelativePosition', traits: {"smithy.api#required" => {}}))
    Transition.add_member(:relative_program, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RelativeProgram'))
    Transition.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ScheduledStartTimeMillis'))
    Transition.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Transition.type = Types::Transition
    Type.add_member(:dash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DASH', traits: {"smithy.api#enumValue" => "DASH"}))
    Type.add_member(:hls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HLS', traits: {"smithy.api#enumValue" => "HLS"}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    UpdateChannelInput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestOutputs, location_name: 'Outputs', traits: {"smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeShiftConfiguration, location_name: 'TimeShiftConfiguration'))
    UpdateChannelInput.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    UpdateChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    UpdateChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelState, location_name: 'ChannelState'))
    UpdateChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    UpdateChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlateSource, location_name: 'FillerSlate'))
    UpdateChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    UpdateChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseOutputs, location_name: 'Outputs', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PlaybackMode', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeShiftConfiguration, location_name: 'TimeShiftConfiguration'))
    UpdateChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Audiences, location_name: 'Audiences'))
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdateLiveSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    UpdateLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLiveSourceInput.type = Types::UpdateLiveSourceInput
    UpdateLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    UpdateLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    UpdateLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    UpdateLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    UpdateLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    UpdateLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    UpdateLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateLiveSourceOutput.type = Types::UpdateLiveSourceOutput
    UpdateProgramInput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    UpdateProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgramScheduleConfiguration, location_name: 'ScheduleConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:audience_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofaudiencemedia, location_name: 'AudienceMedia'))
    UpdateProgramInput.type = Types::UpdateProgramInput
    UpdateProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadbreak, location_name: 'AdBreaks'))
    UpdateProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    UpdateProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ChannelName'))
    UpdateProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    UpdateProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProgramName'))
    UpdateProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    UpdateProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    UpdateProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LiveSourceName'))
    UpdateProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    UpdateProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DurationMillis'))
    UpdateProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'ScheduledStartTime'))
    UpdateProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofaudiencemedia, location_name: 'AudienceMedia'))
    UpdateProgramOutput.type = Types::UpdateProgramOutput
    UpdateProgramScheduleConfiguration.add_member(:transition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgramTransition, location_name: 'Transition'))
    UpdateProgramScheduleConfiguration.add_member(:clip_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClipRange, location_name: 'ClipRange'))
    UpdateProgramScheduleConfiguration.type = Types::UpdateProgramScheduleConfiguration
    UpdateProgramTransition.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ScheduledStartTimeMillis'))
    UpdateProgramTransition.add_member(:duration_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DurationMillis'))
    UpdateProgramTransition.type = Types::UpdateProgramTransition
    UpdateSourceLocationInput.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    UpdateSourceLocationInput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    UpdateSourceLocationInput.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateSourceLocationInput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    UpdateSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceLocationInput.type = Types::UpdateSourceLocationInput
    UpdateSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'AccessConfiguration'))
    UpdateSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    UpdateSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    UpdateSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultSegmentDeliveryConfiguration, location_name: 'DefaultSegmentDeliveryConfiguration'))
    UpdateSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpConfiguration, location_name: 'HttpConfiguration'))
    UpdateSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    UpdateSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsegmentdeliveryconfiguration, location_name: 'SegmentDeliveryConfigurations'))
    UpdateSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    UpdateSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateSourceLocationOutput.type = Types::UpdateSourceLocationOutput
    UpdateVodSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    UpdateVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVodSourceInput.type = Types::UpdateVodSourceInput
    UpdateVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    UpdateVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    UpdateVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations'))
    UpdateVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    UpdateVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName'))
    UpdateVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    UpdateVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName'))
    UpdateVodSourceOutput.type = Types::UpdateVodSourceOutput
    VodSource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'CreationTime'))
    VodSource.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpPackageConfigurations, location_name: 'HttpPackageConfigurations', traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampunix, location_name: 'LastModifiedTime'))
    VodSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationName', traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#jsonName" => "tags"}))
    VodSource.add_member(:vod_source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VodSourceName', traits: {"smithy.api#required" => {}}))
    VodSource.type = Types::VodSource
    Adsinteractionexcludeeventtypeslist.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdsInteractionExcludeEventType)
    Adsinteractionpublishoptineventtypeslist.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdsInteractionPublishOptInEventType)
    Listofadbreak.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdBreak)
    Listofalert.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alert)
    Listofalternatemedia.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateMedia)
    Listofaudiencemedia.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudienceMedia)
    Listofavailmatchingcriteria.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailMatchingCriteria)
    Listofchannel.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Channel)
    Listoflivesource.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LiveSource)
    Listofloggingstrategies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingStrategy)
    Listofplaybackconfiguration.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlaybackConfiguration)
    Listofprefetchschedule.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefetchSchedule)
    Listofscheduleadbreak.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleAdBreak)
    Listofscheduleentry.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleEntry)
    Listofsegmentdeliveryconfiguration.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SegmentDeliveryConfiguration)
    Listofsourcelocation.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceLocation)
    Listofvodsource.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VodSource)
    ListofString.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Manifestserviceexcludeeventtypeslist.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestServiceExcludeEventType)
    MapofString.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdMarkupTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdMarkupType)

    MediaTailor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediatailor#MediaTailor"
      service.name = "MediaTailor"
      service.version = "2018-04-23"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaTailor", "arnNamespace" => "mediatailor", "cloudFormationName" => "MediaTailor", "cloudTrailEventSource" => "mediatailor.amazonaws.com", "endpointPrefix" => "api.mediatailor"}, "aws.auth#sigv4" => {"name" => "mediatailor"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "AWS MediaTailor"}
      service.add_operation(:configure_logs_for_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ConfigureLogsForChannel"
        operation.name = "ConfigureLogsForChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsForChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsForChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/configureLogs/channel", "code" => 200}}
      end)
      service.add_operation(:configure_logs_for_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfiguration"
        operation.name = "ConfigureLogsForPlaybackConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsForPlaybackConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureLogsForPlaybackConfigurationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/configureLogs/playbackConfiguration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateLiveSource"
        operation.name = "CreateLiveSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLiveSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLiveSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreatePrefetchSchedule"
        operation.name = "CreatePrefetchSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrefetchScheduleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePrefetchScheduleOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateProgram"
        operation.name = "CreateProgram"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProgramInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProgramOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateSourceLocation"
        operation.name = "CreateSourceLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceLocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceLocationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateVodSource"
        operation.name = "CreateVodSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVodSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVodSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteChannelPolicy"
        operation.name = "DeleteChannelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChannelPolicyOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteLiveSource"
        operation.name = "DeleteLiveSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLiveSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLiveSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeletePlaybackConfiguration"
        operation.name = "DeletePlaybackConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlaybackConfigurationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/playbackConfiguration/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeletePrefetchSchedule"
        operation.name = "DeletePrefetchSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrefetchScheduleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePrefetchScheduleOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteProgram"
        operation.name = "DeleteProgram"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProgramInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProgramOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteSourceLocation"
        operation.name = "DeleteSourceLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceLocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceLocationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteVodSource"
        operation.name = "DeleteVodSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVodSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVodSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeLiveSource"
        operation.name = "DescribeLiveSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLiveSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLiveSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeProgram"
        operation.name = "DescribeProgram"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProgramInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeProgramOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeSourceLocation"
        operation.name = "DescribeSourceLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceLocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSourceLocationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeVodSource"
        operation.name = "DescribeVodSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVodSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVodSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetChannelPolicy"
        operation.name = "GetChannelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelPolicyOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetChannelSchedule"
        operation.name = "GetChannelSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelScheduleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChannelScheduleOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/schedule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetChannelSchedule.new
      end)
      service.add_operation(:get_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetPlaybackConfiguration"
        operation.name = "GetPlaybackConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPlaybackConfigurationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/playbackConfiguration/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetPrefetchSchedule"
        operation.name = "GetPrefetchSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrefetchScheduleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPrefetchScheduleOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_alerts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListAlerts"
        operation.name = "ListAlerts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlertsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAlertsOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/alerts", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAlerts.new
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListChannels"
        operation.name = "ListChannels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChannelsOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_live_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListLiveSources"
        operation.name = "ListLiveSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLiveSourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLiveSourcesOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/liveSources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLiveSources.new
      end)
      service.add_operation(:list_playback_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListPlaybackConfigurations"
        operation.name = "ListPlaybackConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlaybackConfigurationsOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/playbackConfigurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackConfigurations.new
      end)
      service.add_operation(:list_prefetch_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListPrefetchSchedules"
        operation.name = "ListPrefetchSchedules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrefetchSchedulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrefetchSchedulesOutput)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListPrefetchSchedules.new
      end)
      service.add_operation(:list_source_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListSourceLocations"
        operation.name = "ListSourceLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceLocationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceLocationsOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceLocations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_vod_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListVodSources"
        operation.name = "ListVodSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVodSourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVodSourcesOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/vodSources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVodSources.new
      end)
      service.add_operation(:put_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#PutChannelPolicy"
        operation.name = "PutChannelPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutChannelPolicyOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#PutPlaybackConfiguration"
        operation.name = "PutPlaybackConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPlaybackConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPlaybackConfigurationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/playbackConfiguration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#StartChannel"
        operation.name = "StartChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#StopChannel"
        operation.name = "StopChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChannelOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateLiveSource"
        operation.name = "UpdateLiveSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLiveSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLiveSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateProgram"
        operation.name = "UpdateProgram"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgramInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProgramOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateSourceLocation"
        operation.name = "UpdateSourceLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceLocationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSourceLocationOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateVodSource"
        operation.name = "UpdateVodSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVodSourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVodSourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
