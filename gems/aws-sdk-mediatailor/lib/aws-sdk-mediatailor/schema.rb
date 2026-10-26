# frozen_string_literal: true

# This is generated code!

module Aws::MediaTailor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AccessConfiguration", name: "AccessConfiguration")
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AccessType", name: "AccessType")
    AdBreak = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdBreak", name: "AdBreak")
    AdBreakMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#AdBreakMetadataList", name: "AdBreakMetadataList")
    AdBreakOpportunities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#AdBreakOpportunities", name: "AdBreakOpportunities")
    AdBreakOpportunity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdBreakOpportunity", name: "AdBreakOpportunity")
    AdConditioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdConditioningConfiguration", name: "AdConditioningConfiguration")
    AdDecisionServerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdDecisionServerConfiguration", name: "AdDecisionServerConfiguration")
    AdMarkerPassthrough = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdMarkerPassthrough", name: "AdMarkerPassthrough")
    AdMarkupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AdMarkupType", name: "AdMarkupType")
    AdSequencingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AdSequencingMode", name: "AdSequencingMode")
    AdsInteractionExcludeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AdsInteractionExcludeEventType", name: "AdsInteractionExcludeEventType")
    AdsInteractionLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdsInteractionLog", name: "AdsInteractionLog")
    AdsInteractionPublishOptInEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AdsInteractionPublishOptInEventType", name: "AdsInteractionPublishOptInEventType")
    AdsPersonalizationConcurrency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdsPersonalizationConcurrency", name: "AdsPersonalizationConcurrency")
    AdsPersonalizationTimeouts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AdsPersonalizationTimeouts", name: "AdsPersonalizationTimeouts")
    Alert = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#Alert", name: "Alert")
    AlertCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#AlertCategory", name: "AlertCategory")
    AlternateMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AlternateMedia", name: "AlternateMedia")
    ApsPublisherId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediatailor#ApsPublisherId", name: "ApsPublisherId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    ApsRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ApsRegion", name: "ApsRegion")
    AudienceMedia = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AudienceMedia", name: "AudienceMedia")
    Audiences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#Audiences", name: "Audiences")
    AvailMatchingCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AvailMatchingCriteria", name: "AvailMatchingCriteria")
    AvailSuppression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AvailSuppression", name: "AvailSuppression")
    AwsServiceRequestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#AwsServiceRequestConfiguration", name: "AwsServiceRequestConfiguration")
    AwsTargetService = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediatailor#AwsTargetService", name: "AwsTargetService", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BeaconEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#BeaconEventType", name: "BeaconEventType")
    BeaconEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#BeaconEventTypeList", name: "BeaconEventTypeList")
    BeaconingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#BeaconingConfiguration", name: "BeaconingConfiguration")
    Bumper = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#Bumper", name: "Bumper")
    CdnConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CdnConfiguration", name: "CdnConfiguration")
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#Channel", name: "Channel", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#ChannelResource"}]})
    ChannelState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ChannelState", name: "ChannelState")
    ClientSideBeaconingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ClientSideBeaconingConfiguration", name: "ClientSideBeaconingConfiguration")
    ClientSideBeaconingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ClientSideBeaconingMode", name: "ClientSideBeaconingMode")
    ClipRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ClipRange", name: "ClipRange")
    CompressionMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#CompressionMethod", name: "CompressionMethod")
    ConcurrentExecutorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ConcurrentExecutorConfiguration", name: "ConcurrentExecutorConfiguration")
    ConfigurationAliasesRequest = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediatailor#ConfigurationAliasesRequest", name: "ConfigurationAliasesRequest")
    ConfigurationAliasesResponse = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediatailor#ConfigurationAliasesResponse", name: "ConfigurationAliasesResponse")
    ConfigureLogsForChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ConfigureLogsForChannelInput", name: "ConfigureLogsForChannelInput")
    ConfigureLogsForChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ConfigureLogsForChannelOutput", name: "ConfigureLogsForChannelOutput")
    ConfigureLogsForPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfigurationInput", name: "ConfigureLogsForPlaybackConfigurationInput")
    ConfigureLogsForPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfigurationOutput", name: "ConfigureLogsForPlaybackConfigurationOutput")
    CreateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateChannelInput", name: "CreateChannelInput")
    CreateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateChannelOutput", name: "CreateChannelOutput")
    CreateLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateLiveSourceInput", name: "CreateLiveSourceInput")
    CreateLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateLiveSourceOutput", name: "CreateLiveSourceOutput")
    CreatePrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreatePrefetchScheduleInput", name: "CreatePrefetchScheduleInput")
    CreatePrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreatePrefetchScheduleOutput", name: "CreatePrefetchScheduleOutput")
    CreateProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateProgramInput", name: "CreateProgramInput")
    CreateProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateProgramOutput", name: "CreateProgramOutput")
    CreateSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateSourceLocationInput", name: "CreateSourceLocationInput")
    CreateSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateSourceLocationOutput", name: "CreateSourceLocationOutput")
    CreateVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateVodSourceInput", name: "CreateVodSourceInput")
    CreateVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CreateVodSourceOutput", name: "CreateVodSourceOutput")
    CustomOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#CustomOutputConfiguration", name: "CustomOutputConfiguration")
    DashConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DashConfiguration", name: "DashConfiguration")
    DashConfigurationForPut = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DashConfigurationForPut", name: "DashConfigurationForPut")
    DashPlaylistSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DashPlaylistSettings", name: "DashPlaylistSettings")
    DefaultSegmentDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DefaultSegmentDeliveryConfiguration", name: "DefaultSegmentDeliveryConfiguration")
    DeleteChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteChannelInput", name: "DeleteChannelInput")
    DeleteChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteChannelOutput", name: "DeleteChannelOutput")
    DeleteChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteChannelPolicyInput", name: "DeleteChannelPolicyInput", traits: {"aws.api#data" => "permissions"})
    DeleteChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteChannelPolicyOutput", name: "DeleteChannelPolicyOutput")
    DeleteFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteFunctionRequest", name: "DeleteFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#FunctionResource"}]})
    DeleteFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteFunctionResponse", name: "DeleteFunctionResponse")
    DeleteLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteLiveSourceInput", name: "DeleteLiveSourceInput")
    DeleteLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteLiveSourceOutput", name: "DeleteLiveSourceOutput")
    DeletePlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeletePlaybackConfigurationInput", name: "DeletePlaybackConfigurationInput")
    DeletePlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeletePlaybackConfigurationOutput", name: "DeletePlaybackConfigurationOutput")
    DeletePrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeletePrefetchScheduleInput", name: "DeletePrefetchScheduleInput")
    DeletePrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeletePrefetchScheduleOutput", name: "DeletePrefetchScheduleOutput")
    DeleteProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteProgramInput", name: "DeleteProgramInput")
    DeleteProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteProgramOutput", name: "DeleteProgramOutput")
    DeleteSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteSourceLocationInput", name: "DeleteSourceLocationInput")
    DeleteSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteSourceLocationOutput", name: "DeleteSourceLocationOutput")
    DeleteVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteVodSourceInput", name: "DeleteVodSourceInput")
    DeleteVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DeleteVodSourceOutput", name: "DeleteVodSourceOutput")
    DescribeChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeChannelInput", name: "DescribeChannelInput")
    DescribeChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeChannelOutput", name: "DescribeChannelOutput")
    DescribeLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeLiveSourceInput", name: "DescribeLiveSourceInput")
    DescribeLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeLiveSourceOutput", name: "DescribeLiveSourceOutput")
    DescribeProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeProgramInput", name: "DescribeProgramInput")
    DescribeProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeProgramOutput", name: "DescribeProgramOutput")
    DescribeSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeSourceLocationInput", name: "DescribeSourceLocationInput")
    DescribeSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeSourceLocationOutput", name: "DescribeSourceLocationOutput")
    DescribeVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeVodSourceInput", name: "DescribeVodSourceInput")
    DescribeVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#DescribeVodSourceOutput", name: "DescribeVodSourceOutput")
    EventName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#EventName", name: "EventName")
    FillPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#FillPolicy", name: "FillPolicy")
    Function = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#Function", name: "Function")
    FunctionMapping = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediatailor#FunctionMapping", name: "FunctionMapping")
    FunctionRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#FunctionRef", name: "FunctionRef")
    FunctionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#FunctionType", name: "FunctionType")
    GetChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetChannelPolicyInput", name: "GetChannelPolicyInput")
    GetChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetChannelPolicyOutput", name: "GetChannelPolicyOutput")
    GetChannelScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetChannelScheduleInput", name: "GetChannelScheduleInput")
    GetChannelScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetChannelScheduleOutput", name: "GetChannelScheduleOutput")
    GetFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetFunctionRequest", name: "GetFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#FunctionResource"}]})
    GetFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetFunctionResponse", name: "GetFunctionResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#FunctionResource"}]})
    GetPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetPlaybackConfigurationInput", name: "GetPlaybackConfigurationInput")
    GetPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetPlaybackConfigurationOutput", name: "GetPlaybackConfigurationOutput")
    GetPrefetchScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetPrefetchScheduleInput", name: "GetPrefetchScheduleInput")
    GetPrefetchScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#GetPrefetchScheduleOutput", name: "GetPrefetchScheduleOutput")
    HlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HlsConfiguration", name: "HlsConfiguration")
    HlsPlaylistSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HlsPlaylistSettings", name: "HlsPlaylistSettings")
    HttpConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HttpConfiguration", name: "HttpConfiguration")
    HttpPackageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HttpPackageConfiguration", name: "HttpPackageConfiguration")
    HttpPackageConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#HttpPackageConfigurations", name: "HttpPackageConfigurations")
    HttpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HttpRequest", name: "HttpRequest")
    HttpRequestCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HttpRequestCacheConfiguration", name: "HttpRequestCacheConfiguration")
    HttpRequestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#HttpRequestConfiguration", name: "HttpRequestConfiguration")
    InsertionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#InsertionMode", name: "InsertionMode")
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#KeyValuePair", name: "KeyValuePair")
    ListAlertsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListAlertsInput", name: "ListAlertsInput")
    ListAlertsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListAlertsOutput", name: "ListAlertsOutput")
    ListChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListChannelsInput", name: "ListChannelsInput")
    ListChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListChannelsOutput", name: "ListChannelsOutput")
    ListFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListFunctionsRequest", name: "ListFunctionsRequest")
    ListFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListFunctionsResponse", name: "ListFunctionsResponse")
    ListLiveSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListLiveSourcesInput", name: "ListLiveSourcesInput")
    ListLiveSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListLiveSourcesOutput", name: "ListLiveSourcesOutput")
    ListPlaybackConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListPlaybackConfigurationsInput", name: "ListPlaybackConfigurationsInput")
    ListPlaybackConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListPlaybackConfigurationsOutput", name: "ListPlaybackConfigurationsOutput")
    ListPrefetchScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ListPrefetchScheduleType", name: "ListPrefetchScheduleType")
    ListPrefetchSchedulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListPrefetchSchedulesInput", name: "ListPrefetchSchedulesInput")
    ListPrefetchSchedulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListPrefetchSchedulesOutput", name: "ListPrefetchSchedulesOutput")
    ListSourceLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListSourceLocationsInput", name: "ListSourceLocationsInput")
    ListSourceLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListSourceLocationsOutput", name: "ListSourceLocationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListVodSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListVodSourcesInput", name: "ListVodSourcesInput")
    ListVodSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ListVodSourcesOutput", name: "ListVodSourcesOutput")
    LivePreRollConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#LivePreRollConfiguration", name: "LivePreRollConfiguration")
    LiveSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#LiveSource", name: "LiveSource", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#LiveSourceResource"}]})
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#LogConfiguration", name: "LogConfiguration")
    LogConfigurationForChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#LogConfigurationForChannel", name: "LogConfigurationForChannel")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#LogType", name: "LogType")
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#LogTypes", name: "LogTypes")
    LoggingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#LoggingStrategy", name: "LoggingStrategy")
    ManifestProcessingRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ManifestProcessingRules", name: "ManifestProcessingRules")
    ManifestServiceExcludeEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ManifestServiceExcludeEventType", name: "ManifestServiceExcludeEventType")
    ManifestServiceInteractionLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ManifestServiceInteractionLog", name: "ManifestServiceInteractionLog")
    ManifestServicePublishOptInEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ManifestServicePublishOptInEventType", name: "ManifestServicePublishOptInEventType")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#MessageType", name: "MessageType")
    Method = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#Method", name: "Method")
    MethodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#MethodType", name: "MethodType")
    MinimumUnfilledDurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#MinimumUnfilledDurationSeconds", name: "MinimumUnfilledDurationSeconds", traits: {"smithy.api#range" => {"min" => 6, "max" => 3600}})
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#Mode", name: "Mode")
    OpenRtbTemplateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediatailor#OpenRtbTemplateString", name: "OpenRtbTemplateString", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}})
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#Operator", name: "Operator")
    OriginManifestType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#OriginManifestType", name: "OriginManifestType")
    PlaybackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PlaybackConfiguration", name: "PlaybackConfiguration", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#PlaybackConfigurationResource"}]})
    PlaybackMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#PlaybackMode", name: "PlaybackMode")
    PreRollAdDecisionServerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PreRollAdDecisionServerConfiguration", name: "PreRollAdDecisionServerConfiguration")
    PreRollAdSequencingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#PreRollAdSequencingMode", name: "PreRollAdSequencingMode")
    PreRollVastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PreRollVastResponse", name: "PreRollVastResponse")
    PrefetchConsumption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PrefetchConsumption", name: "PrefetchConsumption")
    PrefetchRetrieval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PrefetchRetrieval", name: "PrefetchRetrieval")
    PrefetchSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PrefetchSchedule", name: "PrefetchSchedule", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#PrefetchScheduleResource"}]})
    PrefetchScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#PrefetchScheduleType", name: "PrefetchScheduleType")
    PutChannelPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutChannelPolicyInput", name: "PutChannelPolicyInput")
    PutChannelPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutChannelPolicyOutput", name: "PutChannelPolicyOutput")
    PutFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutFunctionRequest", name: "PutFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#FunctionResource"}]})
    PutFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutFunctionResponse", name: "PutFunctionResponse")
    PutPlaybackConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutPlaybackConfigurationInput", name: "PutPlaybackConfigurationInput")
    PutPlaybackConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#PutPlaybackConfigurationOutput", name: "PutPlaybackConfigurationOutput")
    RecurringConsumption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#RecurringConsumption", name: "RecurringConsumption")
    RecurringPrefetchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#RecurringPrefetchConfiguration", name: "RecurringPrefetchConfiguration")
    RecurringRetrieval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#RecurringRetrieval", name: "RecurringRetrieval")
    RelativePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#RelativePosition", name: "RelativePosition")
    RequestOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#RequestOutputItem", name: "RequestOutputItem")
    RequestOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#RequestOutputs", name: "RequestOutputs")
    ResponseOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ResponseOutputItem", name: "ResponseOutputItem")
    ResponseOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#ResponseOutputs", name: "ResponseOutputs")
    RuntimeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#RuntimeType", name: "RuntimeType")
    ScheduleAdBreak = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ScheduleAdBreak", name: "ScheduleAdBreak")
    ScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ScheduleConfiguration", name: "ScheduleConfiguration")
    ScheduleEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#ScheduleEntry", name: "ScheduleEntry")
    ScheduleEntryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#ScheduleEntryType", name: "ScheduleEntryType")
    SecretsManagerAccessTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SecretsManagerAccessTokenConfiguration", name: "SecretsManagerAccessTokenConfiguration")
    SegmentDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SegmentDeliveryConfiguration", name: "SegmentDeliveryConfiguration")
    SegmentationDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SegmentationDescriptor", name: "SegmentationDescriptor")
    SegmentationDescriptorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#SegmentationDescriptorList", name: "SegmentationDescriptorList")
    SequentialExecutorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SequentialExecutorConfiguration", name: "SequentialExecutorConfiguration")
    SlateSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SlateSource", name: "SlateSource")
    SourceLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SourceLocation", name: "SourceLocation", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#SourceLocationResource"}]})
    SpliceInsertMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#SpliceInsertMessage", name: "SpliceInsertMessage")
    StartChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#StartChannelInput", name: "StartChannelInput")
    StartChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#StartChannelOutput", name: "StartChannelOutput")
    StopChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#StopChannelInput", name: "StopChannelInput")
    StopChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#StopChannelOutput", name: "StopChannelOutput")
    StreamingMediaFileConditioning = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#StreamingMediaFileConditioning", name: "StreamingMediaFileConditioning")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediatailor#StringMap", name: "StringMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#TagResourceInput", name: "TagResourceInput")
    Tier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#Tier", name: "Tier")
    TimeShiftConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#TimeShiftConfiguration", name: "TimeShiftConfiguration")
    TimeSignalMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#TimeSignalMessage", name: "TimeSignalMessage")
    TrafficShapingRetrievalWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#TrafficShapingRetrievalWindow", name: "TrafficShapingRetrievalWindow")
    TrafficShapingTpsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#TrafficShapingTpsConfiguration", name: "TrafficShapingTpsConfiguration")
    TrafficShapingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#TrafficShapingType", name: "TrafficShapingType")
    Transition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#Transition", name: "Transition")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediatailor#Type", name: "Type")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UntagResourceInput", name: "UntagResourceInput")
    UpdateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateChannelInput", name: "UpdateChannelInput")
    UpdateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateChannelOutput", name: "UpdateChannelOutput")
    UpdateLiveSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateLiveSourceInput", name: "UpdateLiveSourceInput")
    UpdateLiveSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateLiveSourceOutput", name: "UpdateLiveSourceOutput")
    UpdateProgramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateProgramInput", name: "UpdateProgramInput")
    UpdateProgramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateProgramOutput", name: "UpdateProgramOutput")
    UpdateProgramScheduleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateProgramScheduleConfiguration", name: "UpdateProgramScheduleConfiguration")
    UpdateProgramTransition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateProgramTransition", name: "UpdateProgramTransition")
    UpdateSourceLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateSourceLocationInput", name: "UpdateSourceLocationInput")
    UpdateSourceLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateSourceLocationOutput", name: "UpdateSourceLocationOutput")
    UpdateVodSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateVodSourceInput", name: "UpdateVodSourceInput")
    UpdateVodSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#UpdateVodSourceOutput", name: "UpdateVodSourceOutput")
    VastRequestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#VastRequestConfiguration", name: "VastRequestConfiguration")
    VastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#VastResponse", name: "VastResponse")
    VodSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#VodSource", name: "VodSource", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mediatailor#VodSourceResource"}]})
    YieldOptimizationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediatailor#YieldOptimizationConfiguration", name: "YieldOptimizationConfiguration")
    Adsinteractionexcludeeventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__adsInteractionExcludeEventTypesList", name: "Adsinteractionexcludeeventtypeslist")
    Adsinteractionpublishoptineventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__adsInteractionPublishOptInEventTypesList", name: "Adsinteractionpublishoptineventtypeslist")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.mediatailor#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#__integer", name: "Integer")
    Integermin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#__integerMin1", name: "Integermin1", traits: {"smithy.api#range" => {"min" => 1}})
    Integermin1max100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#__integerMin1Max100", name: "Integermin1max100", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Listofadbreak = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfAdBreak", name: "Listofadbreak")
    Listofalert = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfAlert", name: "Listofalert")
    Listofalternatemedia = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfAlternateMedia", name: "Listofalternatemedia")
    Listofaudiencemedia = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfAudienceMedia", name: "Listofaudiencemedia")
    Listofavailmatchingcriteria = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfAvailMatchingCriteria", name: "Listofavailmatchingcriteria")
    Listofchannel = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfChannel", name: "Listofchannel")
    Listoffunctionsref = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfFunctionsRef", name: "Listoffunctionsref")
    Listoffunctionsresponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfFunctionsResponse", name: "Listoffunctionsresponse")
    Listoflivesource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfLiveSource", name: "Listoflivesource")
    Listofloggingstrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfLoggingStrategies", name: "Listofloggingstrategies")
    Listofplaybackconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfPlaybackConfiguration", name: "Listofplaybackconfiguration")
    Listofprefetchschedule = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfPrefetchSchedule", name: "Listofprefetchschedule")
    Listofscheduleadbreak = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfScheduleAdBreak", name: "Listofscheduleadbreak")
    Listofscheduleentry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfScheduleEntry", name: "Listofscheduleentry")
    Listofsegmentdeliveryconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfSegmentDeliveryConfiguration", name: "Listofsegmentdeliveryconfiguration")
    Listofsourcelocation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfSourceLocation", name: "Listofsourcelocation")
    Listofvodsource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOfVodSource", name: "Listofvodsource")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__listOf__string", name: "ListofString")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediatailor#__long", name: "Long")
    Manifestserviceexcludeeventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__manifestServiceExcludeEventTypesList", name: "Manifestserviceexcludeeventtypeslist")
    Manifestservicepublishoptineventtypeslist = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#__manifestServicePublishOptInEventTypesList", name: "Manifestservicepublishoptineventtypeslist")
    MapofString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.mediatailor#__mapOf__string", name: "MapofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediatailor#__string", name: "String")
    Timestampunix = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.mediatailor#__timestampUnix", name: "Timestampunix", traits: {"smithy.api#timestampFormat" => "epoch-seconds"})
    AdMarkupTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediatailor#adMarkupTypes", name: "AdMarkupTypes")

    AccessConfiguration.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "AccessType"))
    AccessConfiguration.add_member(:secrets_manager_access_token_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerAccessTokenConfiguration, name: "SecretsManagerAccessTokenConfiguration"))
    AccessConfiguration.type = Types::AccessConfiguration
    AccessType.add_member(:s3_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_SIGV4", traits: {"smithy.api#enumValue" => "S3_SIGV4"}))
    AccessType.add_member(:secrets_manager_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER_ACCESS_TOKEN", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER_ACCESS_TOKEN"}))
    AccessType.add_member(:autodetect_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTODETECT_SIGV4", traits: {"smithy.api#enumValue" => "AUTODETECT_SIGV4"}))
    AdBreak.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    AdBreak.add_member(:offset_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OffsetMillis", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AdBreak.add_member(:slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "Slate"))
    AdBreak.add_member(:splice_insert_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SpliceInsertMessage, name: "SpliceInsertMessage"))
    AdBreak.add_member(:time_signal_message, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSignalMessage, name: "TimeSignalMessage"))
    AdBreak.add_member(:ad_break_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AdBreakMetadataList, name: "AdBreakMetadata"))
    AdBreak.type = Types::AdBreak
    AdBreakMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    AdBreakOpportunities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdBreakOpportunity, name: "member"))
    AdBreakOpportunity.add_member(:offset_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "OffsetMillis", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AdBreakOpportunity.type = Types::AdBreakOpportunity
    AdConditioningConfiguration.add_member(:streaming_media_file_conditioning, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingMediaFileConditioning, name: "StreamingMediaFileConditioning", traits: {"smithy.api#required" => {}}))
    AdConditioningConfiguration.type = Types::AdConditioningConfiguration
    AdDecisionServerConfiguration.add_member(:http_request, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequest, name: "HttpRequest"))
    AdDecisionServerConfiguration.add_member(:vast_response, ::Smithy::Schema::Shapes::MemberShape.new(target: VastResponse, name: "VastResponse"))
    AdDecisionServerConfiguration.type = Types::AdDecisionServerConfiguration
    AdMarkerPassthrough.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false}))
    AdMarkerPassthrough.type = Types::AdMarkerPassthrough
    AdMarkupType.add_member(:daterange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATERANGE", traits: {"smithy.api#enumValue" => "DATERANGE"}))
    AdMarkupType.add_member(:scte35_enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCTE35_ENHANCED", traits: {"smithy.api#enumValue" => "SCTE35_ENHANCED"}))
    AdSequencingMode.add_member(:follow_ad_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLLOW_AD_SEQUENCE", traits: {"smithy.api#enumValue" => "FOLLOW_AD_SEQUENCE"}))
    AdSequencingMode.add_member(:ignore_ad_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGNORE_AD_SEQUENCE", traits: {"smithy.api#enumValue" => "IGNORE_AD_SEQUENCE"}))
    AdSequencingMode.add_member(:follow_ad_sequence_only_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLLOW_AD_SEQUENCE_ONLY_LIVE", traits: {"smithy.api#enumValue" => "FOLLOW_AD_SEQUENCE_ONLY_LIVE"}))
    AdSequencingMode.add_member(:follow_ad_sequence_only_vod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLLOW_AD_SEQUENCE_ONLY_VOD", traits: {"smithy.api#enumValue" => "FOLLOW_AD_SEQUENCE_ONLY_VOD"}))
    AdsInteractionExcludeEventType.add_member(:ad_marker_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AD_MARKER_FOUND", traits: {"smithy.api#enumValue" => "AD_MARKER_FOUND"}))
    AdsInteractionExcludeEventType.add_member(:non_ad_marker_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_AD_MARKER_FOUND", traits: {"smithy.api#enumValue" => "NON_AD_MARKER_FOUND"}))
    AdsInteractionExcludeEventType.add_member(:making_ads_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAKING_ADS_REQUEST", traits: {"smithy.api#enumValue" => "MAKING_ADS_REQUEST"}))
    AdsInteractionExcludeEventType.add_member(:modified_target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED_TARGET_URL", traits: {"smithy.api#enumValue" => "MODIFIED_TARGET_URL"}))
    AdsInteractionExcludeEventType.add_member(:vast_redirect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VAST_REDIRECT", traits: {"smithy.api#enumValue" => "VAST_REDIRECT"}))
    AdsInteractionExcludeEventType.add_member(:empty_vast_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMPTY_VAST_RESPONSE", traits: {"smithy.api#enumValue" => "EMPTY_VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:empty_vmap_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMPTY_VMAP_RESPONSE", traits: {"smithy.api#enumValue" => "EMPTY_VMAP_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:vast_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VAST_RESPONSE", traits: {"smithy.api#enumValue" => "VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:redirected_vast_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDIRECTED_VAST_RESPONSE", traits: {"smithy.api#enumValue" => "REDIRECTED_VAST_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:filled_avail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILLED_AVAIL", traits: {"smithy.api#enumValue" => "FILLED_AVAIL"}))
    AdsInteractionExcludeEventType.add_member(:filled_overlay_avail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILLED_OVERLAY_AVAIL", traits: {"smithy.api#enumValue" => "FILLED_OVERLAY_AVAIL"}))
    AdsInteractionExcludeEventType.add_member(:beacon_fired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEACON_FIRED", traits: {"smithy.api#enumValue" => "BEACON_FIRED"}))
    AdsInteractionExcludeEventType.add_member(:warning_no_advertisements, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING_NO_ADVERTISEMENTS", traits: {"smithy.api#enumValue" => "WARNING_NO_ADVERTISEMENTS"}))
    AdsInteractionExcludeEventType.add_member(:warning_vpaid_ad_dropped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING_VPAID_AD_DROPPED", traits: {"smithy.api#enumValue" => "WARNING_VPAID_AD_DROPPED"}))
    AdsInteractionExcludeEventType.add_member(:warning_url_variable_substitution_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", traits: {"smithy.api#enumValue" => "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_UNKNOWN", traits: {"smithy.api#enumValue" => "ERROR_UNKNOWN"}))
    AdsInteractionExcludeEventType.add_member(:error_unknown_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_UNKNOWN_HOST", traits: {"smithy.api#enumValue" => "ERROR_UNKNOWN_HOST"}))
    AdsInteractionExcludeEventType.add_member(:error_disallowed_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_DISALLOWED_HOST", traits: {"smithy.api#enumValue" => "ERROR_DISALLOWED_HOST"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_IO", traits: {"smithy.api#enumValue" => "ERROR_ADS_IO"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_TIMEOUT", traits: {"smithy.api#enumValue" => "ERROR_ADS_TIMEOUT"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_response_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_RESPONSE_PARSE", traits: {"smithy.api#enumValue" => "ERROR_ADS_RESPONSE_PARSE"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_response_unknown_root_element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", traits: {"smithy.api#enumValue" => "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT"}))
    AdsInteractionExcludeEventType.add_member(:error_ads_invalid_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_INVALID_RESPONSE", traits: {"smithy.api#enumValue" => "ERROR_ADS_INVALID_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_empty_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_EMPTY_RESPONSE"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_multiple_vast, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_REDIRECT_MULTIPLE_VAST", traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_MULTIPLE_VAST"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_redirect_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_REDIRECT_FAILED", traits: {"smithy.api#enumValue" => "ERROR_VAST_REDIRECT_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_mediafiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MISSING_MEDIAFILES", traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_MEDIAFILES"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_creatives, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MISSING_CREATIVES", traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_CREATIVES"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_overlays, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MISSING_OVERLAYS", traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_OVERLAYS"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_missing_impression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MISSING_IMPRESSION", traits: {"smithy.api#enumValue" => "ERROR_VAST_MISSING_IMPRESSION"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_invalid_vast_ad_tag_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_INVALID_VAST_AD_TAG_URI", traits: {"smithy.api#enumValue" => "ERROR_VAST_INVALID_VAST_AD_TAG_URI"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_multiple_tracking_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", traits: {"smithy.api#enumValue" => "ERROR_VAST_MULTIPLE_TRACKING_EVENTS"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_multiple_linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_MULTIPLE_LINEAR", traits: {"smithy.api#enumValue" => "ERROR_VAST_MULTIPLE_LINEAR"}))
    AdsInteractionExcludeEventType.add_member(:error_vast_invalid_media_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_VAST_INVALID_MEDIA_FILE", traits: {"smithy.api#enumValue" => "ERROR_VAST_INVALID_MEDIA_FILE"}))
    AdsInteractionExcludeEventType.add_member(:error_firing_beacon_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_FIRING_BEACON_FAILED", traits: {"smithy.api#enumValue" => "ERROR_FIRING_BEACON_FAILED"}))
    AdsInteractionExcludeEventType.add_member(:error_personalization_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_PERSONALIZATION_DISABLED", traits: {"smithy.api#enumValue" => "ERROR_PERSONALIZATION_DISABLED"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_vast_response_for_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS"}))
    AdsInteractionExcludeEventType.add_member(:vod_time_based_avail_plan_warning_no_advertisements, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", traits: {"smithy.api#enumValue" => "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS"}))
    AdsInteractionExcludeEventType.add_member(:interstitial_vod_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERSTITIAL_VOD_SUCCESS", traits: {"smithy.api#enumValue" => "INTERSTITIAL_VOD_SUCCESS"}))
    AdsInteractionExcludeEventType.add_member(:interstitial_vod_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERSTITIAL_VOD_FAILURE", traits: {"smithy.api#enumValue" => "INTERSTITIAL_VOD_FAILURE"}))
    AdsInteractionExcludeEventType.add_member(:pre_ads_request_hook_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_ADS_REQUEST_HOOK_ERROR", traits: {"smithy.api#enumValue" => "PRE_ADS_REQUEST_HOOK_ERROR"}))
    AdsInteractionExcludeEventType.add_member(:pre_ads_request_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_ADS_REQUEST_FUNCTION_ERROR", traits: {"smithy.api#enumValue" => "PRE_ADS_REQUEST_FUNCTION_ERROR"}))
    AdsInteractionExcludeEventType.add_member(:beacon_received, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEACON_RECEIVED", traits: {"smithy.api#enumValue" => "BEACON_RECEIVED"}))
    AdsInteractionExcludeEventType.add_member(:post_ads_response_hook_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_ADS_RESPONSE_HOOK_ERROR", traits: {"smithy.api#enumValue" => "POST_ADS_RESPONSE_HOOK_ERROR"}))
    AdsInteractionExcludeEventType.add_member(:post_ads_response_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_ADS_RESPONSE_FUNCTION_ERROR", traits: {"smithy.api#enumValue" => "POST_ADS_RESPONSE_FUNCTION_ERROR"}))
    AdsInteractionExcludeEventType.add_member(:pre_manifest_insertion_hook_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_MANIFEST_INSERTION_HOOK_ERROR", traits: {"smithy.api#enumValue" => "PRE_MANIFEST_INSERTION_HOOK_ERROR"}))
    AdsInteractionExcludeEventType.add_member(:pre_manifest_insertion_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_MANIFEST_INSERTION_FUNCTION_ERROR", traits: {"smithy.api#enumValue" => "PRE_MANIFEST_INSERTION_FUNCTION_ERROR"}))
    AdsInteractionLog.add_member(:publish_opt_in_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: Adsinteractionpublishoptineventtypeslist, name: "PublishOptInEventTypes"))
    AdsInteractionLog.add_member(:exclude_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: Adsinteractionexcludeeventtypeslist, name: "ExcludeEventTypes"))
    AdsInteractionLog.type = Types::AdsInteractionLog
    AdsInteractionPublishOptInEventType.add_member(:raw_ads_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW_ADS_RESPONSE", traits: {"smithy.api#enumValue" => "RAW_ADS_RESPONSE"}))
    AdsInteractionPublishOptInEventType.add_member(:raw_ads_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW_ADS_REQUEST", traits: {"smithy.api#enumValue" => "RAW_ADS_REQUEST"}))
    AdsInteractionPublishOptInEventType.add_member(:raw_bid_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW_BID_REQUEST", traits: {"smithy.api#enumValue" => "RAW_BID_REQUEST"}))
    AdsInteractionPublishOptInEventType.add_member(:raw_bid_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW_BID_RESPONSE", traits: {"smithy.api#enumValue" => "RAW_BID_RESPONSE"}))
    AdsInteractionPublishOptInEventType.add_member(:pre_ads_request_hook_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_ADS_REQUEST_HOOK_SUMMARY", traits: {"smithy.api#enumValue" => "PRE_ADS_REQUEST_HOOK_SUMMARY"}))
    AdsInteractionPublishOptInEventType.add_member(:pre_ads_request_function_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_ADS_REQUEST_FUNCTION_COMPLETED", traits: {"smithy.api#enumValue" => "PRE_ADS_REQUEST_FUNCTION_COMPLETED"}))
    AdsInteractionPublishOptInEventType.add_member(:post_ads_response_hook_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_ADS_RESPONSE_HOOK_SUMMARY", traits: {"smithy.api#enumValue" => "POST_ADS_RESPONSE_HOOK_SUMMARY"}))
    AdsInteractionPublishOptInEventType.add_member(:post_ads_response_function_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_ADS_RESPONSE_FUNCTION_COMPLETED", traits: {"smithy.api#enumValue" => "POST_ADS_RESPONSE_FUNCTION_COMPLETED"}))
    AdsInteractionPublishOptInEventType.add_member(:pre_manifest_insertion_hook_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_MANIFEST_INSERTION_HOOK_SUMMARY", traits: {"smithy.api#enumValue" => "PRE_MANIFEST_INSERTION_HOOK_SUMMARY"}))
    AdsInteractionPublishOptInEventType.add_member(:pre_manifest_insertion_function_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_MANIFEST_INSERTION_FUNCTION_COMPLETED", traits: {"smithy.api#enumValue" => "PRE_MANIFEST_INSERTION_FUNCTION_COMPLETED"}))
    AdsPersonalizationConcurrency.add_member(:max_concurrent_ads_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConcurrentAdsRequests"))
    AdsPersonalizationConcurrency.add_member(:enable_vod_vast_parallelization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableVodVastParallelization"))
    AdsPersonalizationConcurrency.type = Types::AdsPersonalizationConcurrency
    AdsPersonalizationTimeouts.add_member(:ads_request_timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AdsRequestTimeoutMilliseconds"))
    AdsPersonalizationTimeouts.add_member(:live_maximum_ads_personalization_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "LiveMaximumAdsPersonalizationTimeMilliseconds"))
    AdsPersonalizationTimeouts.add_member(:vod_maximum_ads_personalization_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VodMaximumAdsPersonalizationTimeMilliseconds"))
    AdsPersonalizationTimeouts.add_member(:prefetch_ads_request_timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PrefetchAdsRequestTimeoutMilliseconds"))
    AdsPersonalizationTimeouts.add_member(:prefetch_maximum_ads_personalization_time_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PrefetchMaximumAdsPersonalizationTimeMilliseconds"))
    AdsPersonalizationTimeouts.type = Types::AdsPersonalizationTimeouts
    Alert.add_member(:alert_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AlertCode", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:alert_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AlertMessage", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:related_resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "RelatedResourceArns", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertCategory, name: "Category"))
    Alert.type = Types::Alert
    AlertCategory.add_member(:scheduling_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULING_ERROR", traits: {"smithy.api#enumValue" => "SCHEDULING_ERROR"}))
    AlertCategory.add_member(:playback_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAYBACK_WARNING", traits: {"smithy.api#enumValue" => "PLAYBACK_WARNING"}))
    AlertCategory.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    AlternateMedia.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    AlternateMedia.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    AlternateMedia.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    AlternateMedia.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    AlternateMedia.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ScheduledStartTimeMillis"))
    AlternateMedia.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    AlternateMedia.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DurationMillis"))
    AlternateMedia.type = Types::AlternateMedia
    ApsRegion.add_member(:americas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMERICAS", traits: {"smithy.api#enumValue" => "AMERICAS"}))
    ApsRegion.add_member(:europe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EUROPE", traits: {"smithy.api#enumValue" => "EUROPE"}))
    ApsRegion.add_member(:asia_pacific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASIA_PACIFIC", traits: {"smithy.api#enumValue" => "ASIA_PACIFIC"}))
    AudienceMedia.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Audience"))
    AudienceMedia.add_member(:alternate_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofalternatemedia, name: "AlternateMedia"))
    AudienceMedia.type = Types::AudienceMedia
    Audiences.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    AvailMatchingCriteria.add_member(:dynamic_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DynamicVariable", traits: {"smithy.api#required" => {}}))
    AvailMatchingCriteria.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator", traits: {"smithy.api#required" => {}}))
    AvailMatchingCriteria.type = Types::AvailMatchingCriteria
    AvailSuppression.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, name: "Mode"))
    AvailSuppression.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    AvailSuppression.add_member(:fill_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: FillPolicy, name: "FillPolicy"))
    AvailSuppression.type = Types::AvailSuppression
    AwsServiceRequestConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output"))
    AwsServiceRequestConfiguration.add_member(:method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodType, name: "MethodType", traits: {"smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.add_member(:request_timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RequestTimeoutMilliseconds", traits: {"smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body"))
    AwsServiceRequestConfiguration.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Headers"))
    AwsServiceRequestConfiguration.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestCacheConfiguration, name: "Cache"))
    AwsServiceRequestConfiguration.add_member(:target_service, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsTargetService, name: "TargetService", traits: {"smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.add_member(:target_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    AwsServiceRequestConfiguration.type = Types::AwsServiceRequestConfiguration
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BeaconEventType.add_member(:mute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTE", traits: {"smithy.api#enumValue" => "MUTE"}))
    BeaconEventType.add_member(:unmute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNMUTE", traits: {"smithy.api#enumValue" => "UNMUTE"}))
    BeaconEventType.add_member(:pause, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSE", traits: {"smithy.api#enumValue" => "PAUSE"}))
    BeaconEventType.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    BeaconEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconEventType, name: "member"))
    BeaconingConfiguration.add_member(:client_side, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideBeaconingConfiguration, name: "ClientSide"))
    BeaconingConfiguration.type = Types::BeaconingConfiguration
    Bumper.add_member(:end_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndUrl"))
    Bumper.add_member(:start_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartUrl"))
    Bumper.type = Types::Bumper
    CdnConfiguration.add_member(:ad_segment_url_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdSegmentUrlPrefix"))
    CdnConfiguration.add_member(:content_segment_url_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContentSegmentUrlPrefix"))
    CdnConfiguration.type = Types::CdnConfiguration
    Channel.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:channel_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelState", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    Channel.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    Channel.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    Channel.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseOutputs, name: "Outputs", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:playback_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackMode", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    Channel.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationForChannel, name: "LogConfiguration", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    Channel.type = Types::Channel
    ChannelState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ChannelState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ClientSideBeaconingConfiguration.add_member(:reporting_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideBeaconingMode, name: "ReportingMode", traits: {"smithy.api#required" => {}}))
    ClientSideBeaconingConfiguration.add_member(:additional_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconEventTypeList, name: "AdditionalEventTypes"))
    ClientSideBeaconingConfiguration.type = Types::ClientSideBeaconingConfiguration
    ClientSideBeaconingMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ClientSideBeaconingMode.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSIGHTS", traits: {"smithy.api#enumValue" => "INSIGHTS"}))
    ClipRange.add_member(:end_offset_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EndOffsetMillis", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => 0}))
    ClipRange.add_member(:start_offset_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "StartOffsetMillis"))
    ClipRange.type = Types::ClipRange
    CompressionMethod.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    CompressionMethod.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    ConcurrentExecutorConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    ConcurrentExecutorConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output", traits: {"smithy.api#required" => {}}))
    ConcurrentExecutorConfiguration.add_member(:function_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoffunctionsref, name: "FunctionList", traits: {"smithy.api#required" => {}}))
    ConcurrentExecutorConfiguration.add_member(:timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TimeoutMilliseconds", traits: {"smithy.api#required" => {}}))
    ConcurrentExecutorConfiguration.add_member(:max_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConcurrency", traits: {"smithy.api#required" => {}}))
    ConcurrentExecutorConfiguration.type = Types::ConcurrentExecutorConfiguration
    ConfigurationAliasesRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ConfigurationAliasesRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "value"))
    ConfigurationAliasesResponse.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ConfigurationAliasesResponse.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "value"))
    ConfigureLogsForChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ConfigureLogsForChannelInput.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, name: "LogTypes", traits: {"smithy.api#required" => {}}))
    ConfigureLogsForChannelInput.type = Types::ConfigureLogsForChannelInput
    ConfigureLogsForChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    ConfigureLogsForChannelOutput.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, name: "LogTypes"))
    ConfigureLogsForChannelOutput.type = Types::ConfigureLogsForChannelOutput
    ConfigureLogsForPlaybackConfigurationInput.add_member(:percent_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentEnabled", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofloggingstrategies, name: "EnabledLoggingStrategies"))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsInteractionLog, name: "AdsInteractionLog"))
    ConfigureLogsForPlaybackConfigurationInput.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestServiceInteractionLog, name: "ManifestServiceInteractionLog"))
    ConfigureLogsForPlaybackConfigurationInput.type = Types::ConfigureLogsForPlaybackConfigurationInput
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:percent_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentEnabled", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName"))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofloggingstrategies, name: "EnabledLoggingStrategies"))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsInteractionLog, name: "AdsInteractionLog"))
    ConfigureLogsForPlaybackConfigurationOutput.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestServiceInteractionLog, name: "ManifestServiceInteractionLog"))
    ConfigureLogsForPlaybackConfigurationOutput.type = Types::ConfigureLogsForPlaybackConfigurationOutput
    CreateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelInput.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    CreateChannelInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestOutputs, name: "Outputs", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:playback_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaybackMode, name: "PlaybackMode", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelInput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: Tier, name: "Tier"))
    CreateChannelInput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeShiftConfiguration, name: "TimeShiftConfiguration"))
    CreateChannelInput.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    CreateChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelState, name: "ChannelState"))
    CreateChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    CreateChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    CreateChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    CreateChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseOutputs, name: "Outputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackMode", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    CreateChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeShiftConfiguration, name: "TimeShiftConfiguration"))
    CreateChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreateLiveSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateLiveSourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateLiveSourceInput.type = Types::CreateLiveSourceInput
    CreateLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    CreateLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    CreateLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    CreateLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    CreateLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    CreateLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateLiveSourceOutput.type = Types::CreateLiveSourceOutput
    CreatePrefetchScheduleInput.add_member(:consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchConsumption, name: "Consumption"))
    CreatePrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePrefetchScheduleInput.add_member(:retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchRetrieval, name: "Retrieval"))
    CreatePrefetchScheduleInput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPrefetchConfiguration, name: "RecurringPrefetchConfiguration"))
    CreatePrefetchScheduleInput.add_member(:schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchScheduleType, name: "ScheduleType"))
    CreatePrefetchScheduleInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamId"))
    CreatePrefetchScheduleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePrefetchScheduleInput.type = Types::CreatePrefetchScheduleInput
    CreatePrefetchScheduleOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreatePrefetchScheduleOutput.add_member(:consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchConsumption, name: "Consumption"))
    CreatePrefetchScheduleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    CreatePrefetchScheduleOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName"))
    CreatePrefetchScheduleOutput.add_member(:retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchRetrieval, name: "Retrieval"))
    CreatePrefetchScheduleOutput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPrefetchConfiguration, name: "RecurringPrefetchConfiguration"))
    CreatePrefetchScheduleOutput.add_member(:schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchScheduleType, name: "ScheduleType"))
    CreatePrefetchScheduleOutput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamId"))
    CreatePrefetchScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreatePrefetchScheduleOutput.type = Types::CreatePrefetchScheduleOutput
    CreateProgramInput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    CreateProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProgramInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    CreateProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProgramInput.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    CreateProgramInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#required" => {}}))
    CreateProgramInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    CreateProgramInput.add_member(:audience_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiencemedia, name: "AudienceMedia"))
    CreateProgramInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateProgramInput.type = Types::CreateProgramInput
    CreateProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    CreateProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    CreateProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    CreateProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    CreateProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName"))
    CreateProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "ScheduledStartTime"))
    CreateProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    CreateProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    CreateProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    CreateProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DurationMillis"))
    CreateProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiencemedia, name: "AudienceMedia"))
    CreateProgramOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateProgramOutput.type = Types::CreateProgramOutput
    CreateSourceLocationInput.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    CreateSourceLocationInput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    CreateSourceLocationInput.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSourceLocationInput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    CreateSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceLocationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateSourceLocationInput.type = Types::CreateSourceLocationInput
    CreateSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    CreateSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    CreateSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    CreateSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration"))
    CreateSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    CreateSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    CreateSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    CreateSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateSourceLocationOutput.type = Types::CreateSourceLocationOutput
    CreateVodSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    CreateVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVodSourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVodSourceInput.type = Types::CreateVodSourceInput
    CreateVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    CreateVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    CreateVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    CreateVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    CreateVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    CreateVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    CreateVodSourceOutput.type = Types::CreateVodSourceOutput
    CustomOutputConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    CustomOutputConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output"))
    CustomOutputConfiguration.type = Types::CustomOutputConfiguration
    DashConfiguration.add_member(:manifest_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestEndpointPrefix"))
    DashConfiguration.add_member(:dual_stack_manifest_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackManifestEndpointPrefix"))
    DashConfiguration.add_member(:mpd_location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MpdLocation"))
    DashConfiguration.add_member(:origin_manifest_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginManifestType, name: "OriginManifestType"))
    DashConfiguration.type = Types::DashConfiguration
    DashConfigurationForPut.add_member(:mpd_location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MpdLocation"))
    DashConfigurationForPut.add_member(:origin_manifest_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginManifestType, name: "OriginManifestType"))
    DashConfigurationForPut.type = Types::DashConfigurationForPut
    DashPlaylistSettings.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ManifestWindowSeconds"))
    DashPlaylistSettings.add_member(:min_buffer_time_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinBufferTimeSeconds"))
    DashPlaylistSettings.add_member(:min_update_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinUpdatePeriodSeconds"))
    DashPlaylistSettings.add_member(:suggested_presentation_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SuggestedPresentationDelaySeconds"))
    DashPlaylistSettings.type = Types::DashPlaylistSettings
    DefaultSegmentDeliveryConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BaseUrl"))
    DefaultSegmentDeliveryConfiguration.type = Types::DefaultSegmentDeliveryConfiguration
    DeleteChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelInput.type = Types::DeleteChannelInput
    DeleteChannelOutput.type = Types::DeleteChannelOutput
    DeleteChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelPolicyInput.type = Types::DeleteChannelPolicyInput
    DeleteChannelPolicyOutput.type = Types::DeleteChannelPolicyOutput
    DeleteFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFunctionRequest.type = Types::DeleteFunctionRequest
    DeleteFunctionResponse.type = Types::DeleteFunctionResponse
    DeleteLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLiveSourceInput.type = Types::DeleteLiveSourceInput
    DeleteLiveSourceOutput.type = Types::DeleteLiveSourceOutput
    DeletePlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePlaybackConfigurationInput.type = Types::DeletePlaybackConfigurationInput
    DeletePlaybackConfigurationOutput.type = Types::DeletePlaybackConfigurationOutput
    DeletePrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePrefetchScheduleInput.type = Types::DeletePrefetchScheduleInput
    DeletePrefetchScheduleOutput.type = Types::DeletePrefetchScheduleOutput
    DeleteProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProgramInput.type = Types::DeleteProgramInput
    DeleteProgramOutput.type = Types::DeleteProgramOutput
    DeleteSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSourceLocationInput.type = Types::DeleteSourceLocationInput
    DeleteSourceLocationOutput.type = Types::DeleteSourceLocationOutput
    DeleteVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVodSourceInput.type = Types::DeleteVodSourceInput
    DeleteVodSourceOutput.type = Types::DeleteVodSourceOutput
    DescribeChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelInput.type = Types::DescribeChannelInput
    DescribeChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    DescribeChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelState, name: "ChannelState"))
    DescribeChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    DescribeChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    DescribeChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    DescribeChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseOutputs, name: "Outputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackMode", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    DescribeChannelOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfigurationForChannel, name: "LogConfiguration", traits: {"smithy.api#required" => {}}))
    DescribeChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeShiftConfiguration, name: "TimeShiftConfiguration"))
    DescribeChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    DescribeChannelOutput.type = Types::DescribeChannelOutput
    DescribeLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLiveSourceInput.type = Types::DescribeLiveSourceInput
    DescribeLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    DescribeLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    DescribeLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    DescribeLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    DescribeLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    DescribeLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeLiveSourceOutput.type = Types::DescribeLiveSourceOutput
    DescribeProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProgramInput.type = Types::DescribeProgramInput
    DescribeProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    DescribeProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    DescribeProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    DescribeProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    DescribeProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName"))
    DescribeProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "ScheduledStartTime"))
    DescribeProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    DescribeProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    DescribeProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    DescribeProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "DurationMillis"))
    DescribeProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiencemedia, name: "AudienceMedia"))
    DescribeProgramOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeProgramOutput.type = Types::DescribeProgramOutput
    DescribeSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSourceLocationInput.type = Types::DescribeSourceLocationInput
    DescribeSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    DescribeSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    DescribeSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    DescribeSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration"))
    DescribeSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    DescribeSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    DescribeSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    DescribeSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeSourceLocationOutput.type = Types::DescribeSourceLocationOutput
    DescribeVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVodSourceInput.type = Types::DescribeVodSourceInput
    DescribeVodSourceOutput.add_member(:ad_break_opportunities, ::Smithy::Schema::Shapes::MemberShape.new(target: AdBreakOpportunities, name: "AdBreakOpportunities"))
    DescribeVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    DescribeVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    DescribeVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    DescribeVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    DescribeVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    DescribeVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    DescribeVodSourceOutput.type = Types::DescribeVodSourceOutput
    EventName.add_member(:pre_session_initialization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SESSION_INITIALIZATION", traits: {"smithy.api#enumValue" => "PRE_SESSION_INITIALIZATION"}))
    EventName.add_member(:pre_ads_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_ADS_REQUEST", traits: {"smithy.api#enumValue" => "PRE_ADS_REQUEST"}))
    EventName.add_member(:post_ads_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_ADS_RESPONSE", traits: {"smithy.api#enumValue" => "POST_ADS_RESPONSE"}))
    EventName.add_member(:pre_manifest_insertion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_MANIFEST_INSERTION", traits: {"smithy.api#enumValue" => "PRE_MANIFEST_INSERTION"}))
    FillPolicy.add_member(:full_avail_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_AVAIL_ONLY", traits: {"smithy.api#enumValue" => "FULL_AVAIL_ONLY"}))
    FillPolicy.add_member(:partial_avail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_AVAIL", traits: {"smithy.api#enumValue" => "PARTIAL_AVAIL"}))
    Function.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#required" => {}}))
    Function.add_member(:function_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionType, name: "FunctionType", traits: {"smithy.api#required" => {}}))
    Function.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Function.add_member(:http_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestConfiguration, name: "HttpRequestConfiguration"))
    Function.add_member(:aws_service_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceRequestConfiguration, name: "AwsServiceRequestConfiguration"))
    Function.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "CustomOutputConfiguration"))
    Function.add_member(:concurrent_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrentExecutorConfiguration, name: "ConcurrentExecutorConfiguration"))
    Function.add_member(:sequential_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SequentialExecutorConfiguration, name: "SequentialExecutorConfiguration"))
    Function.add_member(:vast_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VastRequestConfiguration, name: "VastRequestConfiguration"))
    Function.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    Function.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    Function.type = Types::Function
    FunctionMapping.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, name: "key"))
    FunctionMapping.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FunctionRef.add_member(:run_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RunCondition"))
    FunctionRef.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId"))
    FunctionRef.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Alias"))
    FunctionRef.type = Types::FunctionRef
    FunctionType.add_member(:http_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_REQUEST", traits: {"smithy.api#enumValue" => "HTTP_REQUEST"}))
    FunctionType.add_member(:aws_service_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICE_REQUEST", traits: {"smithy.api#enumValue" => "AWS_SERVICE_REQUEST"}))
    FunctionType.add_member(:custom_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_OUTPUT", traits: {"smithy.api#enumValue" => "CUSTOM_OUTPUT"}))
    FunctionType.add_member(:concurrent_executor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_EXECUTOR", traits: {"smithy.api#enumValue" => "CONCURRENT_EXECUTOR"}))
    FunctionType.add_member(:sequential_executor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEQUENTIAL_EXECUTOR", traits: {"smithy.api#enumValue" => "SEQUENTIAL_EXECUTOR"}))
    FunctionType.add_member(:vast_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VAST_REQUEST", traits: {"smithy.api#enumValue" => "VAST_REQUEST"}))
    GetChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelPolicyInput.type = Types::GetChannelPolicyInput
    GetChannelPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    GetChannelPolicyOutput.type = Types::GetChannelPolicyOutput
    GetChannelScheduleInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChannelScheduleInput.add_member(:duration_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DurationMinutes", traits: {"smithy.api#httpQuery" => "durationMinutes"}))
    GetChannelScheduleInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetChannelScheduleInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetChannelScheduleInput.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Audience", traits: {"smithy.api#httpQuery" => "audience"}))
    GetChannelScheduleInput.type = Types::GetChannelScheduleInput
    GetChannelScheduleOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofscheduleentry, name: "Items"))
    GetChannelScheduleOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetChannelScheduleOutput.type = Types::GetChannelScheduleOutput
    GetFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFunctionRequest.type = Types::GetFunctionRequest
    GetFunctionResponse.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#required" => {}}))
    GetFunctionResponse.add_member(:function_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionType, name: "FunctionType", traits: {"smithy.api#required" => {}}))
    GetFunctionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    GetFunctionResponse.add_member(:http_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestConfiguration, name: "HttpRequestConfiguration"))
    GetFunctionResponse.add_member(:aws_service_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceRequestConfiguration, name: "AwsServiceRequestConfiguration"))
    GetFunctionResponse.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "CustomOutputConfiguration"))
    GetFunctionResponse.add_member(:concurrent_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrentExecutorConfiguration, name: "ConcurrentExecutorConfiguration"))
    GetFunctionResponse.add_member(:sequential_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SequentialExecutorConfiguration, name: "SequentialExecutorConfiguration"))
    GetFunctionResponse.add_member(:vast_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VastRequestConfiguration, name: "VastRequestConfiguration"))
    GetFunctionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetFunctionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetFunctionResponse.type = Types::GetFunctionResponse
    GetPlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPlaybackConfigurationInput.type = Types::GetPlaybackConfigurationInput
    GetPlaybackConfigurationOutput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdDecisionServerUrl"))
    GetPlaybackConfigurationOutput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailSuppression, name: "AvailSuppression"))
    GetPlaybackConfigurationOutput.add_member(:bumper, ::Smithy::Schema::Shapes::MemberShape.new(target: Bumper, name: "Bumper"))
    GetPlaybackConfigurationOutput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnConfiguration, name: "CdnConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAliasesResponse, name: "ConfigurationAliases"))
    GetPlaybackConfigurationOutput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashConfiguration, name: "DashConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:hls_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsConfiguration, name: "HlsConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertionMode, name: "InsertionMode", traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    GetPlaybackConfigurationOutput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LivePreRollConfiguration, name: "LivePreRollConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestProcessingRules, name: "ManifestProcessingRules"))
    GetPlaybackConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetPlaybackConfigurationOutput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "PersonalizationThresholdSeconds"))
    GetPlaybackConfigurationOutput.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationArn"))
    GetPlaybackConfigurationOutput.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackEndpointPrefix"))
    GetPlaybackConfigurationOutput.add_member(:dual_stack_playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackPlaybackEndpointPrefix"))
    GetPlaybackConfigurationOutput.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionInitializationEndpointPrefix"))
    GetPlaybackConfigurationOutput.add_member(:dual_stack_session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackSessionInitializationEndpointPrefix"))
    GetPlaybackConfigurationOutput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlateAdUrl"))
    GetPlaybackConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetPlaybackConfigurationOutput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TranscodeProfileName"))
    GetPlaybackConfigurationOutput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VideoContentSourceUrl"))
    GetPlaybackConfigurationOutput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdConditioningConfiguration, name: "AdConditioningConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:ad_decision_server_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdDecisionServerConfiguration, name: "AdDecisionServerConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:yield_optimization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: YieldOptimizationConfiguration, name: "YieldOptimizationConfiguration"))
    GetPlaybackConfigurationOutput.add_member(:function_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionMapping, name: "FunctionMapping"))
    GetPlaybackConfigurationOutput.add_member(:ads_personalization_timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationTimeouts, name: "AdsPersonalizationTimeouts"))
    GetPlaybackConfigurationOutput.add_member(:ads_personalization_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationConcurrency, name: "AdsPersonalizationConcurrency"))
    GetPlaybackConfigurationOutput.add_member(:beaconing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingConfiguration, name: "BeaconingConfiguration"))
    GetPlaybackConfigurationOutput.type = Types::GetPlaybackConfigurationOutput
    GetPrefetchScheduleInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrefetchScheduleInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPrefetchScheduleInput.type = Types::GetPrefetchScheduleInput
    GetPrefetchScheduleOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    GetPrefetchScheduleOutput.add_member(:consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchConsumption, name: "Consumption"))
    GetPrefetchScheduleOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    GetPrefetchScheduleOutput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName"))
    GetPrefetchScheduleOutput.add_member(:retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchRetrieval, name: "Retrieval"))
    GetPrefetchScheduleOutput.add_member(:schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchScheduleType, name: "ScheduleType"))
    GetPrefetchScheduleOutput.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPrefetchConfiguration, name: "RecurringPrefetchConfiguration"))
    GetPrefetchScheduleOutput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamId"))
    GetPrefetchScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetPrefetchScheduleOutput.type = Types::GetPrefetchScheduleOutput
    HlsConfiguration.add_member(:manifest_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestEndpointPrefix"))
    HlsConfiguration.add_member(:dual_stack_manifest_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackManifestEndpointPrefix"))
    HlsConfiguration.type = Types::HlsConfiguration
    HlsPlaylistSettings.add_member(:manifest_window_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ManifestWindowSeconds"))
    HlsPlaylistSettings.add_member(:ad_markup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkupTypes, name: "AdMarkupType"))
    HlsPlaylistSettings.type = Types::HlsPlaylistSettings
    HttpConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BaseUrl", traits: {"smithy.api#required" => {}}))
    HttpConfiguration.type = Types::HttpConfiguration
    HttpPackageConfiguration.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Path", traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.add_member(:source_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceGroup", traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    HttpPackageConfiguration.type = Types::HttpPackageConfiguration
    HttpPackageConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfiguration, name: "member"))
    HttpRequest.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: Method, name: "Method"))
    HttpRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body"))
    HttpRequest.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "Headers"))
    HttpRequest.add_member(:compress_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionMethod, name: "CompressRequest"))
    HttpRequest.type = Types::HttpRequest
    HttpRequestCacheConfiguration.add_member(:ttl_minimum_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "TtlMinimumSeconds", traits: {"smithy.api#required" => {}}))
    HttpRequestCacheConfiguration.add_member(:ttl_maximum_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "TtlMaximumSeconds", traits: {"smithy.api#required" => {}}))
    HttpRequestCacheConfiguration.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    HttpRequestCacheConfiguration.type = Types::HttpRequestCacheConfiguration
    HttpRequestConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    HttpRequestConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output"))
    HttpRequestConfiguration.add_member(:method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodType, name: "MethodType", traits: {"smithy.api#required" => {}}))
    HttpRequestConfiguration.add_member(:request_timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RequestTimeoutMilliseconds", traits: {"smithy.api#required" => {}}))
    HttpRequestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#required" => {}}))
    HttpRequestConfiguration.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body"))
    HttpRequestConfiguration.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Headers"))
    HttpRequestConfiguration.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestCacheConfiguration, name: "Cache"))
    HttpRequestConfiguration.type = Types::HttpRequestConfiguration
    InsertionMode.add_member(:stitched_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STITCHED_ONLY", traits: {"smithy.api#enumValue" => "STITCHED_ONLY"}))
    InsertionMode.add_member(:player_select, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAYER_SELECT", traits: {"smithy.api#enumValue" => "PLAYER_SELECT"}))
    KeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Key", traits: {"smithy.api#required" => {}}))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    KeyValuePair.type = Types::KeyValuePair
    ListAlertsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAlertsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAlertsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListAlertsInput.type = Types::ListAlertsInput
    ListAlertsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofalert, name: "Items"))
    ListAlertsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAlertsOutput.type = Types::ListAlertsOutput
    ListChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofchannel, name: "Items"))
    ListChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListFunctionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListFunctionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListFunctionsRequest.type = Types::ListFunctionsRequest
    ListFunctionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoffunctionsresponse, name: "Items"))
    ListFunctionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListFunctionsResponse.type = Types::ListFunctionsResponse
    ListLiveSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListLiveSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListLiveSourcesInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListLiveSourcesInput.type = Types::ListLiveSourcesInput
    ListLiveSourcesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflivesource, name: "Items"))
    ListLiveSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListLiveSourcesOutput.type = Types::ListLiveSourcesOutput
    ListPlaybackConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListPlaybackConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPlaybackConfigurationsInput.type = Types::ListPlaybackConfigurationsInput
    ListPlaybackConfigurationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofplaybackconfiguration, name: "Items"))
    ListPlaybackConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPlaybackConfigurationsOutput.type = Types::ListPlaybackConfigurationsOutput
    ListPrefetchScheduleType.add_member(:single, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE", traits: {"smithy.api#enumValue" => "SINGLE"}))
    ListPrefetchScheduleType.add_member(:recurring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECURRING", traits: {"smithy.api#enumValue" => "RECURRING"}))
    ListPrefetchScheduleType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ListPrefetchSchedulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max100, name: "MaxResults"))
    ListPrefetchSchedulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPrefetchSchedulesInput.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPrefetchSchedulesInput.add_member(:schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPrefetchScheduleType, name: "ScheduleType"))
    ListPrefetchSchedulesInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamId"))
    ListPrefetchSchedulesInput.type = Types::ListPrefetchSchedulesInput
    ListPrefetchSchedulesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofprefetchschedule, name: "Items"))
    ListPrefetchSchedulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPrefetchSchedulesOutput.type = Types::ListPrefetchSchedulesOutput
    ListSourceLocationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSourceLocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSourceLocationsInput.type = Types::ListSourceLocationsInput
    ListSourceLocationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsourcelocation, name: "Items"))
    ListSourceLocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSourceLocationsOutput.type = Types::ListSourceLocationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVodSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListVodSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVodSourcesInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVodSourcesInput.type = Types::ListVodSourcesInput
    ListVodSourcesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvodsource, name: "Items"))
    ListVodSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListVodSourcesOutput.type = Types::ListVodSourcesOutput
    LivePreRollConfiguration.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdDecisionServerUrl"))
    LivePreRollConfiguration.add_member(:max_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxDurationSeconds"))
    LivePreRollConfiguration.add_member(:ad_decision_server_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PreRollAdDecisionServerConfiguration, name: "AdDecisionServerConfiguration"))
    LivePreRollConfiguration.type = Types::LivePreRollConfiguration
    LiveSource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    LiveSource.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    LiveSource.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName", traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#required" => {}}))
    LiveSource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    LiveSource.type = Types::LiveSource
    LogConfiguration.add_member(:percent_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PercentEnabled", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:enabled_logging_strategies, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofloggingstrategies, name: "EnabledLoggingStrategies", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LogConfiguration.add_member(:ads_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsInteractionLog, name: "AdsInteractionLog"))
    LogConfiguration.add_member(:manifest_service_interaction_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestServiceInteractionLog, name: "ManifestServiceInteractionLog"))
    LogConfiguration.type = Types::LogConfiguration
    LogConfigurationForChannel.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, name: "LogTypes"))
    LogConfigurationForChannel.type = Types::LogConfigurationForChannel
    LogType.add_member(:as_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS_RUN", traits: {"smithy.api#enumValue" => "AS_RUN"}))
    LogTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "member"))
    LoggingStrategy.add_member(:vended_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VENDED_LOGS", traits: {"smithy.api#enumValue" => "VENDED_LOGS"}))
    LoggingStrategy.add_member(:legacy_cloudwatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY_CLOUDWATCH", traits: {"smithy.api#enumValue" => "LEGACY_CLOUDWATCH"}))
    ManifestProcessingRules.add_member(:ad_marker_passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkerPassthrough, name: "AdMarkerPassthrough"))
    ManifestProcessingRules.type = Types::ManifestProcessingRules
    ManifestServiceExcludeEventType.add_member(:generated_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERATED_MANIFEST", traits: {"smithy.api#enumValue" => "GENERATED_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:origin_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORIGIN_MANIFEST", traits: {"smithy.api#enumValue" => "ORIGIN_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:session_initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_INITIALIZED", traits: {"smithy.api#enumValue" => "SESSION_INITIALIZED"}))
    ManifestServiceExcludeEventType.add_member(:tracking_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACKING_RESPONSE", traits: {"smithy.api#enumValue" => "TRACKING_RESPONSE"}))
    ManifestServiceExcludeEventType.add_member(:config_syntax_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG_SYNTAX_ERROR", traits: {"smithy.api#enumValue" => "CONFIG_SYNTAX_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:config_security_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG_SECURITY_ERROR", traits: {"smithy.api#enumValue" => "CONFIG_SECURITY_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:unknown_host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_HOST", traits: {"smithy.api#enumValue" => "UNKNOWN_HOST"}))
    ManifestServiceExcludeEventType.add_member(:timeout_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT_ERROR", traits: {"smithy.api#enumValue" => "TIMEOUT_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:connection_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_ERROR", traits: {"smithy.api#enumValue" => "CONNECTION_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:io_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO_ERROR", traits: {"smithy.api#enumValue" => "IO_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:host_disallowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST_DISALLOWED", traits: {"smithy.api#enumValue" => "HOST_DISALLOWED"}))
    ManifestServiceExcludeEventType.add_member(:parsing_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARSING_ERROR", traits: {"smithy.api#enumValue" => "PARSING_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:manifest_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANIFEST_ERROR", traits: {"smithy.api#enumValue" => "MANIFEST_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:no_master_or_media_playlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MASTER_OR_MEDIA_PLAYLIST", traits: {"smithy.api#enumValue" => "NO_MASTER_OR_MEDIA_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:no_master_playlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MASTER_PLAYLIST", traits: {"smithy.api#enumValue" => "NO_MASTER_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:no_media_playlist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_MEDIA_PLAYLIST", traits: {"smithy.api#enumValue" => "NO_MEDIA_PLAYLIST"}))
    ManifestServiceExcludeEventType.add_member(:incompatible_hls_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_HLS_VERSION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_HLS_VERSION"}))
    ManifestServiceExcludeEventType.add_member(:scte35_parsing_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCTE35_PARSING_ERROR", traits: {"smithy.api#enumValue" => "SCTE35_PARSING_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:invalid_single_period_dash_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SINGLE_PERIOD_DASH_MANIFEST", traits: {"smithy.api#enumValue" => "INVALID_SINGLE_PERIOD_DASH_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:unsupported_single_period_dash_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", traits: {"smithy.api#enumValue" => "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST"}))
    ManifestServiceExcludeEventType.add_member(:last_period_missing_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_PERIOD_MISSING_AUDIO", traits: {"smithy.api#enumValue" => "LAST_PERIOD_MISSING_AUDIO"}))
    ManifestServiceExcludeEventType.add_member(:last_period_missing_audio_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_PERIOD_MISSING_AUDIO_WARNING", traits: {"smithy.api#enumValue" => "LAST_PERIOD_MISSING_AUDIO_WARNING"}))
    ManifestServiceExcludeEventType.add_member(:error_origin_prefix_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ORIGIN_PREFIX_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_ORIGIN_PREFIX_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_ads_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_ADS_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_ADS_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_live_pre_roll_ads_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_cdn_ad_segment_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_CDN_AD_SEGMENT_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_CDN_AD_SEGMENT_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_cdn_content_segment_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_slate_ad_url_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_SLATE_AD_URL_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_SLATE_AD_URL_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_profile_name_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_PROFILE_NAME_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_PROFILE_NAME_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_bumper_start_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_BUMPER_START_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_BUMPER_START_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:error_bumper_end_interpolation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_BUMPER_END_INTERPOLATION", traits: {"smithy.api#enumValue" => "ERROR_BUMPER_END_INTERPOLATION"}))
    ManifestServiceExcludeEventType.add_member(:pre_session_init_hook_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SESSION_INIT_HOOK_ERROR", traits: {"smithy.api#enumValue" => "PRE_SESSION_INIT_HOOK_ERROR"}))
    ManifestServiceExcludeEventType.add_member(:pre_session_init_function_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SESSION_INIT_FUNCTION_ERROR", traits: {"smithy.api#enumValue" => "PRE_SESSION_INIT_FUNCTION_ERROR"}))
    ManifestServiceInteractionLog.add_member(:publish_opt_in_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: Manifestservicepublishoptineventtypeslist, name: "PublishOptInEventTypes"))
    ManifestServiceInteractionLog.add_member(:exclude_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: Manifestserviceexcludeeventtypeslist, name: "ExcludeEventTypes"))
    ManifestServiceInteractionLog.type = Types::ManifestServiceInteractionLog
    ManifestServicePublishOptInEventType.add_member(:pre_session_init_hook_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SESSION_INIT_HOOK_SUMMARY", traits: {"smithy.api#enumValue" => "PRE_SESSION_INIT_HOOK_SUMMARY"}))
    ManifestServicePublishOptInEventType.add_member(:pre_session_init_function_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SESSION_INIT_FUNCTION_COMPLETED", traits: {"smithy.api#enumValue" => "PRE_SESSION_INIT_FUNCTION_COMPLETED"}))
    MessageType.add_member(:splice_insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPLICE_INSERT", traits: {"smithy.api#enumValue" => "SPLICE_INSERT"}))
    MessageType.add_member(:time_signal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_SIGNAL", traits: {"smithy.api#enumValue" => "TIME_SIGNAL"}))
    Method.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    Method.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    MethodType.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    MethodType.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    Mode.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    Mode.add_member(:behind_live_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEHIND_LIVE_EDGE", traits: {"smithy.api#enumValue" => "BEHIND_LIVE_EDGE"}))
    Mode.add_member(:after_live_edge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_LIVE_EDGE", traits: {"smithy.api#enumValue" => "AFTER_LIVE_EDGE"}))
    Operator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    OriginManifestType.add_member(:single_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_PERIOD", traits: {"smithy.api#enumValue" => "SINGLE_PERIOD"}))
    OriginManifestType.add_member(:multi_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_PERIOD", traits: {"smithy.api#enumValue" => "MULTI_PERIOD"}))
    PlaybackConfiguration.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdDecisionServerUrl"))
    PlaybackConfiguration.add_member(:avail_suppression, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailSuppression, name: "AvailSuppression"))
    PlaybackConfiguration.add_member(:bumper, ::Smithy::Schema::Shapes::MemberShape.new(target: Bumper, name: "Bumper"))
    PlaybackConfiguration.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnConfiguration, name: "CdnConfiguration"))
    PlaybackConfiguration.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAliasesResponse, name: "ConfigurationAliases"))
    PlaybackConfiguration.add_member(:dash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashConfiguration, name: "DashConfiguration"))
    PlaybackConfiguration.add_member(:hls_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsConfiguration, name: "HlsConfiguration"))
    PlaybackConfiguration.add_member(:insertion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertionMode, name: "InsertionMode", traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PlaybackConfiguration.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LivePreRollConfiguration, name: "LivePreRollConfiguration"))
    PlaybackConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    PlaybackConfiguration.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestProcessingRules, name: "ManifestProcessingRules"))
    PlaybackConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    PlaybackConfiguration.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "PersonalizationThresholdSeconds"))
    PlaybackConfiguration.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationArn"))
    PlaybackConfiguration.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackEndpointPrefix"))
    PlaybackConfiguration.add_member(:dual_stack_playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackPlaybackEndpointPrefix"))
    PlaybackConfiguration.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionInitializationEndpointPrefix"))
    PlaybackConfiguration.add_member(:dual_stack_session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackSessionInitializationEndpointPrefix"))
    PlaybackConfiguration.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlateAdUrl"))
    PlaybackConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PlaybackConfiguration.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TranscodeProfileName"))
    PlaybackConfiguration.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VideoContentSourceUrl"))
    PlaybackConfiguration.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdConditioningConfiguration, name: "AdConditioningConfiguration"))
    PlaybackConfiguration.add_member(:ad_decision_server_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdDecisionServerConfiguration, name: "AdDecisionServerConfiguration"))
    PlaybackConfiguration.add_member(:yield_optimization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: YieldOptimizationConfiguration, name: "YieldOptimizationConfiguration"))
    PlaybackConfiguration.add_member(:function_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionMapping, name: "FunctionMapping"))
    PlaybackConfiguration.add_member(:ads_personalization_timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationTimeouts, name: "AdsPersonalizationTimeouts"))
    PlaybackConfiguration.add_member(:ads_personalization_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationConcurrency, name: "AdsPersonalizationConcurrency"))
    PlaybackConfiguration.add_member(:beaconing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingConfiguration, name: "BeaconingConfiguration"))
    PlaybackConfiguration.type = Types::PlaybackConfiguration
    PlaybackMode.add_member(:loop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOP", traits: {"smithy.api#enumValue" => "LOOP"}))
    PlaybackMode.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    PreRollAdDecisionServerConfiguration.add_member(:vast_response, ::Smithy::Schema::Shapes::MemberShape.new(target: PreRollVastResponse, name: "VastResponse"))
    PreRollAdDecisionServerConfiguration.type = Types::PreRollAdDecisionServerConfiguration
    PreRollAdSequencingMode.add_member(:follow_ad_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOLLOW_AD_SEQUENCE", traits: {"smithy.api#enumValue" => "FOLLOW_AD_SEQUENCE"}))
    PreRollAdSequencingMode.add_member(:ignore_ad_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGNORE_AD_SEQUENCE", traits: {"smithy.api#enumValue" => "IGNORE_AD_SEQUENCE"}))
    PreRollVastResponse.add_member(:ad_sequencing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PreRollAdSequencingMode, name: "AdSequencingMode"))
    PreRollVastResponse.type = Types::PreRollVastResponse
    PrefetchConsumption.add_member(:avail_matching_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofavailmatchingcriteria, name: "AvailMatchingCriteria"))
    PrefetchConsumption.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "EndTime", traits: {"smithy.api#required" => {}}))
    PrefetchConsumption.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "StartTime"))
    PrefetchConsumption.type = Types::PrefetchConsumption
    PrefetchRetrieval.add_member(:dynamic_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "DynamicVariables"))
    PrefetchRetrieval.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "EndTime", traits: {"smithy.api#required" => {}}))
    PrefetchRetrieval.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "StartTime"))
    PrefetchRetrieval.add_member(:traffic_shaping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingType, name: "TrafficShapingType"))
    PrefetchRetrieval.add_member(:traffic_shaping_retrieval_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingRetrievalWindow, name: "TrafficShapingRetrievalWindow"))
    PrefetchRetrieval.add_member(:traffic_shaping_tps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingTpsConfiguration, name: "TrafficShapingTpsConfiguration"))
    PrefetchRetrieval.type = Types::PrefetchRetrieval
    PrefetchSchedule.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchConsumption, name: "Consumption"))
    PrefetchSchedule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:playback_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationName", traits: {"smithy.api#required" => {}}))
    PrefetchSchedule.add_member(:retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchRetrieval, name: "Retrieval"))
    PrefetchSchedule.add_member(:schedule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchScheduleType, name: "ScheduleType"))
    PrefetchSchedule.add_member(:recurring_prefetch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringPrefetchConfiguration, name: "RecurringPrefetchConfiguration"))
    PrefetchSchedule.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamId"))
    PrefetchSchedule.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PrefetchSchedule.type = Types::PrefetchSchedule
    PrefetchScheduleType.add_member(:single, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE", traits: {"smithy.api#enumValue" => "SINGLE"}))
    PrefetchScheduleType.add_member(:recurring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECURRING", traits: {"smithy.api#enumValue" => "RECURRING"}))
    PutChannelPolicyInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutChannelPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"aws.api#data" => "permissions", "smithy.api#required" => {}}))
    PutChannelPolicyInput.type = Types::PutChannelPolicyInput
    PutChannelPolicyOutput.type = Types::PutChannelPolicyOutput
    PutFunctionRequest.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFunctionRequest.add_member(:function_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionType, name: "FunctionType", traits: {"smithy.api#required" => {}}))
    PutFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PutFunctionRequest.add_member(:http_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestConfiguration, name: "HttpRequestConfiguration"))
    PutFunctionRequest.add_member(:aws_service_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceRequestConfiguration, name: "AwsServiceRequestConfiguration"))
    PutFunctionRequest.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "CustomOutputConfiguration"))
    PutFunctionRequest.add_member(:concurrent_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrentExecutorConfiguration, name: "ConcurrentExecutorConfiguration"))
    PutFunctionRequest.add_member(:sequential_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SequentialExecutorConfiguration, name: "SequentialExecutorConfiguration"))
    PutFunctionRequest.add_member(:vast_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VastRequestConfiguration, name: "VastRequestConfiguration"))
    PutFunctionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PutFunctionRequest.type = Types::PutFunctionRequest
    PutFunctionResponse.add_member(:function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FunctionId", traits: {"smithy.api#required" => {}}))
    PutFunctionResponse.add_member(:function_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionType, name: "FunctionType", traits: {"smithy.api#required" => {}}))
    PutFunctionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PutFunctionResponse.add_member(:http_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestConfiguration, name: "HttpRequestConfiguration"))
    PutFunctionResponse.add_member(:aws_service_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsServiceRequestConfiguration, name: "AwsServiceRequestConfiguration"))
    PutFunctionResponse.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "CustomOutputConfiguration"))
    PutFunctionResponse.add_member(:concurrent_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcurrentExecutorConfiguration, name: "ConcurrentExecutorConfiguration"))
    PutFunctionResponse.add_member(:sequential_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SequentialExecutorConfiguration, name: "SequentialExecutorConfiguration"))
    PutFunctionResponse.add_member(:vast_request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VastRequestConfiguration, name: "VastRequestConfiguration"))
    PutFunctionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PutFunctionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    PutFunctionResponse.type = Types::PutFunctionResponse
    PutPlaybackConfigurationInput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationInput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailSuppression, name: "AvailSuppression"))
    PutPlaybackConfigurationInput.add_member(:bumper, ::Smithy::Schema::Shapes::MemberShape.new(target: Bumper, name: "Bumper"))
    PutPlaybackConfigurationInput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnConfiguration, name: "CdnConfiguration"))
    PutPlaybackConfigurationInput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAliasesRequest, name: "ConfigurationAliases"))
    PutPlaybackConfigurationInput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashConfigurationForPut, name: "DashConfiguration"))
    PutPlaybackConfigurationInput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertionMode, name: "InsertionMode", traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PutPlaybackConfigurationInput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LivePreRollConfiguration, name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationInput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestProcessingRules, name: "ManifestProcessingRules"))
    PutPlaybackConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    PutPlaybackConfigurationInput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "PersonalizationThresholdSeconds"))
    PutPlaybackConfigurationInput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlateAdUrl"))
    PutPlaybackConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PutPlaybackConfigurationInput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TranscodeProfileName"))
    PutPlaybackConfigurationInput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationInput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdConditioningConfiguration, name: "AdConditioningConfiguration"))
    PutPlaybackConfigurationInput.add_member(:ad_decision_server_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdDecisionServerConfiguration, name: "AdDecisionServerConfiguration"))
    PutPlaybackConfigurationInput.add_member(:yield_optimization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: YieldOptimizationConfiguration, name: "YieldOptimizationConfiguration"))
    PutPlaybackConfigurationInput.add_member(:function_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionMapping, name: "FunctionMapping"))
    PutPlaybackConfigurationInput.add_member(:ads_personalization_timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationTimeouts, name: "AdsPersonalizationTimeouts"))
    PutPlaybackConfigurationInput.add_member(:ads_personalization_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationConcurrency, name: "AdsPersonalizationConcurrency"))
    PutPlaybackConfigurationInput.add_member(:beaconing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingConfiguration, name: "BeaconingConfiguration"))
    PutPlaybackConfigurationInput.type = Types::PutPlaybackConfigurationInput
    PutPlaybackConfigurationOutput.add_member(:ad_decision_server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdDecisionServerUrl"))
    PutPlaybackConfigurationOutput.add_member(:avail_suppression, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailSuppression, name: "AvailSuppression"))
    PutPlaybackConfigurationOutput.add_member(:bumper, ::Smithy::Schema::Shapes::MemberShape.new(target: Bumper, name: "Bumper"))
    PutPlaybackConfigurationOutput.add_member(:cdn_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CdnConfiguration, name: "CdnConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:configuration_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAliasesResponse, name: "ConfigurationAliases"))
    PutPlaybackConfigurationOutput.add_member(:dash_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DashConfiguration, name: "DashConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:hls_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsConfiguration, name: "HlsConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:insertion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InsertionMode, name: "InsertionMode", traits: {"smithy.api#default" => "STITCHED_ONLY"}))
    PutPlaybackConfigurationOutput.add_member(:live_pre_roll_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LivePreRollConfiguration, name: "LivePreRollConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "LogConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:manifest_processing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestProcessingRules, name: "ManifestProcessingRules"))
    PutPlaybackConfigurationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    PutPlaybackConfigurationOutput.add_member(:personalization_threshold_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "PersonalizationThresholdSeconds"))
    PutPlaybackConfigurationOutput.add_member(:playback_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackConfigurationArn"))
    PutPlaybackConfigurationOutput.add_member(:playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackEndpointPrefix"))
    PutPlaybackConfigurationOutput.add_member(:dual_stack_playback_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackPlaybackEndpointPrefix"))
    PutPlaybackConfigurationOutput.add_member(:session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionInitializationEndpointPrefix"))
    PutPlaybackConfigurationOutput.add_member(:dual_stack_session_initialization_endpoint_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackSessionInitializationEndpointPrefix"))
    PutPlaybackConfigurationOutput.add_member(:slate_ad_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SlateAdUrl"))
    PutPlaybackConfigurationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    PutPlaybackConfigurationOutput.add_member(:transcode_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TranscodeProfileName"))
    PutPlaybackConfigurationOutput.add_member(:video_content_source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VideoContentSourceUrl"))
    PutPlaybackConfigurationOutput.add_member(:ad_conditioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdConditioningConfiguration, name: "AdConditioningConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:ad_decision_server_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdDecisionServerConfiguration, name: "AdDecisionServerConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:yield_optimization_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: YieldOptimizationConfiguration, name: "YieldOptimizationConfiguration"))
    PutPlaybackConfigurationOutput.add_member(:function_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionMapping, name: "FunctionMapping"))
    PutPlaybackConfigurationOutput.add_member(:ads_personalization_timeouts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationTimeouts, name: "AdsPersonalizationTimeouts"))
    PutPlaybackConfigurationOutput.add_member(:ads_personalization_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsPersonalizationConcurrency, name: "AdsPersonalizationConcurrency"))
    PutPlaybackConfigurationOutput.add_member(:beaconing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BeaconingConfiguration, name: "BeaconingConfiguration"))
    PutPlaybackConfigurationOutput.type = Types::PutPlaybackConfigurationOutput
    RecurringConsumption.add_member(:retrieved_ad_expiration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RetrievedAdExpirationSeconds"))
    RecurringConsumption.add_member(:avail_matching_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofavailmatchingcriteria, name: "AvailMatchingCriteria"))
    RecurringConsumption.type = Types::RecurringConsumption
    RecurringPrefetchConfiguration.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "StartTime"))
    RecurringPrefetchConfiguration.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "EndTime", traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.add_member(:recurring_consumption, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringConsumption, name: "RecurringConsumption", traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.add_member(:recurring_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringRetrieval, name: "RecurringRetrieval", traits: {"smithy.api#required" => {}}))
    RecurringPrefetchConfiguration.type = Types::RecurringPrefetchConfiguration
    RecurringRetrieval.add_member(:dynamic_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "DynamicVariables"))
    RecurringRetrieval.add_member(:delay_after_avail_end_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DelayAfterAvailEndSeconds"))
    RecurringRetrieval.add_member(:traffic_shaping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingType, name: "TrafficShapingType"))
    RecurringRetrieval.add_member(:traffic_shaping_retrieval_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingRetrievalWindow, name: "TrafficShapingRetrievalWindow"))
    RecurringRetrieval.add_member(:traffic_shaping_tps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficShapingTpsConfiguration, name: "TrafficShapingTpsConfiguration"))
    RecurringRetrieval.type = Types::RecurringRetrieval
    RelativePosition.add_member(:before_program, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_PROGRAM", traits: {"smithy.api#enumValue" => "BEFORE_PROGRAM"}))
    RelativePosition.add_member(:after_program, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_PROGRAM", traits: {"smithy.api#enumValue" => "AFTER_PROGRAM"}))
    RequestOutputItem.add_member(:dash_playlist_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPlaylistSettings, name: "DashPlaylistSettings"))
    RequestOutputItem.add_member(:hls_playlist_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPlaylistSettings, name: "HlsPlaylistSettings"))
    RequestOutputItem.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    RequestOutputItem.add_member(:source_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceGroup", traits: {"smithy.api#required" => {}}))
    RequestOutputItem.type = Types::RequestOutputItem
    RequestOutputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestOutputItem, name: "member"))
    ResponseOutputItem.add_member(:dash_playlist_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DashPlaylistSettings, name: "DashPlaylistSettings"))
    ResponseOutputItem.add_member(:hls_playlist_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: HlsPlaylistSettings, name: "HlsPlaylistSettings"))
    ResponseOutputItem.add_member(:manifest_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManifestName", traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.add_member(:playback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackUrl", traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.add_member(:dual_stack_playback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DualStackPlaybackUrl"))
    ResponseOutputItem.add_member(:source_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceGroup", traits: {"smithy.api#required" => {}}))
    ResponseOutputItem.type = Types::ResponseOutputItem
    ResponseOutputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseOutputItem, name: "member"))
    RuntimeType.add_member(:jsonata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONATA", traits: {"smithy.api#enumValue" => "JSONATA"}))
    ScheduleAdBreak.add_member(:approximate_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ApproximateDurationSeconds"))
    ScheduleAdBreak.add_member(:approximate_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "ApproximateStartTime"))
    ScheduleAdBreak.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    ScheduleAdBreak.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    ScheduleAdBreak.type = Types::ScheduleAdBreak
    ScheduleConfiguration.add_member(:transition, ::Smithy::Schema::Shapes::MemberShape.new(target: Transition, name: "Transition", traits: {"smithy.api#required" => {}}))
    ScheduleConfiguration.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    ScheduleConfiguration.type = Types::ScheduleConfiguration
    ScheduleEntry.add_member(:approximate_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ApproximateDurationSeconds"))
    ScheduleEntry.add_member(:approximate_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "ApproximateStartTime"))
    ScheduleEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    ScheduleEntry.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName", traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:schedule_ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofscheduleadbreak, name: "ScheduleAdBreaks"))
    ScheduleEntry.add_member(:schedule_entry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleEntryType, name: "ScheduleEntryType"))
    ScheduleEntry.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#required" => {}}))
    ScheduleEntry.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    ScheduleEntry.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    ScheduleEntry.type = Types::ScheduleEntry
    ScheduleEntryType.add_member(:program, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROGRAM", traits: {"smithy.api#enumValue" => "PROGRAM"}))
    ScheduleEntryType.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILLER_SLATE", traits: {"smithy.api#enumValue" => "FILLER_SLATE"}))
    ScheduleEntryType.add_member(:alternate_media, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALTERNATE_MEDIA", traits: {"smithy.api#enumValue" => "ALTERNATE_MEDIA"}))
    SecretsManagerAccessTokenConfiguration.add_member(:header_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HeaderName"))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn"))
    SecretsManagerAccessTokenConfiguration.add_member(:secret_string_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretStringKey"))
    SecretsManagerAccessTokenConfiguration.type = Types::SecretsManagerAccessTokenConfiguration
    SegmentDeliveryConfiguration.add_member(:base_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BaseUrl"))
    SegmentDeliveryConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    SegmentDeliveryConfiguration.type = Types::SegmentDeliveryConfiguration
    SegmentationDescriptor.add_member(:segmentation_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentationEventId"))
    SegmentationDescriptor.add_member(:segmentation_upid_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentationUpidType"))
    SegmentationDescriptor.add_member(:segmentation_upid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SegmentationUpid"))
    SegmentationDescriptor.add_member(:segmentation_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentationTypeId"))
    SegmentationDescriptor.add_member(:segment_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentNum"))
    SegmentationDescriptor.add_member(:segments_expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SegmentsExpected"))
    SegmentationDescriptor.add_member(:sub_segment_num, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SubSegmentNum"))
    SegmentationDescriptor.add_member(:sub_segments_expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "SubSegmentsExpected"))
    SegmentationDescriptor.type = Types::SegmentationDescriptor
    SegmentationDescriptorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentationDescriptor, name: "member"))
    SequentialExecutorConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    SequentialExecutorConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output"))
    SequentialExecutorConfiguration.add_member(:function_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoffunctionsref, name: "FunctionList", traits: {"smithy.api#required" => {}}))
    SequentialExecutorConfiguration.add_member(:timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TimeoutMilliseconds", traits: {"smithy.api#required" => {}}))
    SequentialExecutorConfiguration.type = Types::SequentialExecutorConfiguration
    SlateSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    SlateSource.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    SlateSource.type = Types::SlateSource
    SourceLocation.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    SourceLocation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    SourceLocation.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    SourceLocation.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration", traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    SourceLocation.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    SourceLocation.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#required" => {}}))
    SourceLocation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    SourceLocation.type = Types::SourceLocation
    SpliceInsertMessage.add_member(:avail_num, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AvailNum"))
    SpliceInsertMessage.add_member(:avails_expected, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AvailsExpected"))
    SpliceInsertMessage.add_member(:splice_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SpliceEventId"))
    SpliceInsertMessage.add_member(:unique_program_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "UniqueProgramId"))
    SpliceInsertMessage.type = Types::SpliceInsertMessage
    StartChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartChannelInput.type = Types::StartChannelInput
    StartChannelOutput.type = Types::StartChannelOutput
    StopChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopChannelInput.type = Types::StopChannelInput
    StopChannelOutput.type = Types::StopChannelOutput
    StreamingMediaFileConditioning.add_member(:transcode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSCODE", traits: {"smithy.api#enumValue" => "TRANSCODE"}))
    StreamingMediaFileConditioning.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tier.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    Tier.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    TimeShiftConfiguration.add_member(:max_time_delay_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxTimeDelaySeconds", traits: {"smithy.api#required" => {}}))
    TimeShiftConfiguration.type = Types::TimeShiftConfiguration
    TimeSignalMessage.add_member(:segmentation_descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentationDescriptorList, name: "SegmentationDescriptors"))
    TimeSignalMessage.type = Types::TimeSignalMessage
    TrafficShapingRetrievalWindow.add_member(:retrieval_window_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RetrievalWindowDurationSeconds"))
    TrafficShapingRetrievalWindow.type = Types::TrafficShapingRetrievalWindow
    TrafficShapingTpsConfiguration.add_member(:peak_tps, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PeakTps"))
    TrafficShapingTpsConfiguration.add_member(:peak_concurrent_users, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PeakConcurrentUsers"))
    TrafficShapingTpsConfiguration.type = Types::TrafficShapingTpsConfiguration
    TrafficShapingType.add_member(:retrieval_window, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRIEVAL_WINDOW", traits: {"smithy.api#enumValue" => "RETRIEVAL_WINDOW"}))
    TrafficShapingType.add_member(:tps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TPS", traits: {"smithy.api#enumValue" => "TPS"}))
    Transition.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DurationMillis"))
    Transition.add_member(:relative_position, ::Smithy::Schema::Shapes::MemberShape.new(target: RelativePosition, name: "RelativePosition", traits: {"smithy.api#required" => {}}))
    Transition.add_member(:relative_program, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RelativeProgram"))
    Transition.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ScheduledStartTimeMillis"))
    Transition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#required" => {}}))
    Transition.type = Types::Transition
    Type.add_member(:dash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DASH", traits: {"smithy.api#enumValue" => "DASH"}))
    Type.add_member(:hls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HLS", traits: {"smithy.api#enumValue" => "HLS"}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    UpdateChannelInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestOutputs, name: "Outputs", traits: {"smithy.api#required" => {}}))
    UpdateChannelInput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeShiftConfiguration, name: "TimeShiftConfiguration"))
    UpdateChannelInput.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    UpdateChannelOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    UpdateChannelOutput.add_member(:channel_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelState, name: "ChannelState"))
    UpdateChannelOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    UpdateChannelOutput.add_member(:filler_slate, ::Smithy::Schema::Shapes::MemberShape.new(target: SlateSource, name: "FillerSlate"))
    UpdateChannelOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    UpdateChannelOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseOutputs, name: "Outputs", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:playback_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PlaybackMode", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateChannelOutput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#unstable" => {}}))
    UpdateChannelOutput.add_member(:time_shift_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeShiftConfiguration, name: "TimeShiftConfiguration"))
    UpdateChannelOutput.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "Audiences"))
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdateLiveSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    UpdateLiveSourceInput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLiveSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLiveSourceInput.type = Types::UpdateLiveSourceInput
    UpdateLiveSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    UpdateLiveSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    UpdateLiveSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    UpdateLiveSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    UpdateLiveSourceOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    UpdateLiveSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    UpdateLiveSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateLiveSourceOutput.type = Types::UpdateLiveSourceOutput
    UpdateProgramInput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    UpdateProgramInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:schedule_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProgramScheduleConfiguration, name: "ScheduleConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateProgramInput.add_member(:audience_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiencemedia, name: "AudienceMedia"))
    UpdateProgramInput.type = Types::UpdateProgramInput
    UpdateProgramOutput.add_member(:ad_breaks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofadbreak, name: "AdBreaks"))
    UpdateProgramOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    UpdateProgramOutput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName"))
    UpdateProgramOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    UpdateProgramOutput.add_member(:program_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProgramName"))
    UpdateProgramOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    UpdateProgramOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    UpdateProgramOutput.add_member(:live_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LiveSourceName"))
    UpdateProgramOutput.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    UpdateProgramOutput.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DurationMillis"))
    UpdateProgramOutput.add_member(:scheduled_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "ScheduledStartTime"))
    UpdateProgramOutput.add_member(:audience_media, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofaudiencemedia, name: "AudienceMedia"))
    UpdateProgramOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateProgramOutput.type = Types::UpdateProgramOutput
    UpdateProgramScheduleConfiguration.add_member(:transition, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProgramTransition, name: "Transition"))
    UpdateProgramScheduleConfiguration.add_member(:clip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ClipRange, name: "ClipRange"))
    UpdateProgramScheduleConfiguration.type = Types::UpdateProgramScheduleConfiguration
    UpdateProgramTransition.add_member(:scheduled_start_time_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ScheduledStartTimeMillis"))
    UpdateProgramTransition.add_member(:duration_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DurationMillis"))
    UpdateProgramTransition.type = Types::UpdateProgramTransition
    UpdateSourceLocationInput.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    UpdateSourceLocationInput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    UpdateSourceLocationInput.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateSourceLocationInput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    UpdateSourceLocationInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSourceLocationInput.type = Types::UpdateSourceLocationInput
    UpdateSourceLocationOutput.add_member(:access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfiguration, name: "AccessConfiguration"))
    UpdateSourceLocationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    UpdateSourceLocationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    UpdateSourceLocationOutput.add_member(:default_segment_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSegmentDeliveryConfiguration, name: "DefaultSegmentDeliveryConfiguration"))
    UpdateSourceLocationOutput.add_member(:http_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpConfiguration, name: "HttpConfiguration"))
    UpdateSourceLocationOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    UpdateSourceLocationOutput.add_member(:segment_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsegmentdeliveryconfiguration, name: "SegmentDeliveryConfigurations"))
    UpdateSourceLocationOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    UpdateSourceLocationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateSourceLocationOutput.type = Types::UpdateSourceLocationOutput
    UpdateVodSourceInput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    UpdateVodSourceInput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVodSourceInput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVodSourceInput.type = Types::UpdateVodSourceInput
    UpdateVodSourceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn"))
    UpdateVodSourceOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    UpdateVodSourceOutput.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations"))
    UpdateVodSourceOutput.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    UpdateVodSourceOutput.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName"))
    UpdateVodSourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateVodSourceOutput.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName"))
    UpdateVodSourceOutput.type = Types::UpdateVodSourceOutput
    VastRequestConfiguration.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeType, name: "Runtime", traits: {"smithy.api#required" => {}}))
    VastRequestConfiguration.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Output"))
    VastRequestConfiguration.add_member(:method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodType, name: "MethodType", traits: {"smithy.api#required" => {}}))
    VastRequestConfiguration.add_member(:request_timeout_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RequestTimeoutMilliseconds", traits: {"smithy.api#required" => {}}))
    VastRequestConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url", traits: {"smithy.api#required" => {}}))
    VastRequestConfiguration.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body"))
    VastRequestConfiguration.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Headers"))
    VastRequestConfiguration.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRequestCacheConfiguration, name: "Cache"))
    VastRequestConfiguration.type = Types::VastRequestConfiguration
    VastResponse.add_member(:ad_sequencing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AdSequencingMode, name: "AdSequencingMode"))
    VastResponse.type = Types::VastResponse
    VodSource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "CreationTime"))
    VodSource.add_member(:http_package_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPackageConfigurations, name: "HttpPackageConfigurations", traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampunix, name: "LastModifiedTime"))
    VodSource.add_member(:source_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceLocationName", traits: {"smithy.api#required" => {}}))
    VodSource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    VodSource.add_member(:vod_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VodSourceName", traits: {"smithy.api#required" => {}}))
    VodSource.type = Types::VodSource
    YieldOptimizationConfiguration.add_member(:minimum_unfilled_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumUnfilledDurationSeconds, name: "MinimumUnfilledDuration", traits: {"smithy.api#required" => {}}))
    YieldOptimizationConfiguration.add_member(:publisher_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApsPublisherId, name: "PublisherId", traits: {"smithy.api#required" => {}}))
    YieldOptimizationConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ApsRegion, name: "Region", traits: {"smithy.api#required" => {}}))
    YieldOptimizationConfiguration.add_member(:open_rtb_template, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenRtbTemplateString, name: "OpenRtbTemplate", traits: {"smithy.api#required" => {}}))
    YieldOptimizationConfiguration.type = Types::YieldOptimizationConfiguration
    Adsinteractionexcludeeventtypeslist.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsInteractionExcludeEventType, name: "member"))
    Adsinteractionpublishoptineventtypeslist.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdsInteractionPublishOptInEventType, name: "member"))
    Listofadbreak.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdBreak, name: "member"))
    Listofalert.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Alert, name: "member"))
    Listofalternatemedia.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateMedia, name: "member"))
    Listofaudiencemedia.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AudienceMedia, name: "member"))
    Listofavailmatchingcriteria.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailMatchingCriteria, name: "member"))
    Listofchannel.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "member"))
    Listoffunctionsref.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionRef, name: "member"))
    Listoffunctionsresponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Function, name: "member"))
    Listoflivesource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveSource, name: "member"))
    Listofloggingstrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingStrategy, name: "member"))
    Listofplaybackconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaybackConfiguration, name: "member"))
    Listofprefetchschedule.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefetchSchedule, name: "member"))
    Listofscheduleadbreak.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleAdBreak, name: "member"))
    Listofscheduleentry.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleEntry, name: "member"))
    Listofsegmentdeliveryconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SegmentDeliveryConfiguration, name: "member"))
    Listofsourcelocation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLocation, name: "member"))
    Listofvodsource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VodSource, name: "member"))
    ListofString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Manifestserviceexcludeeventtypeslist.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestServiceExcludeEventType, name: "member"))
    Manifestservicepublishoptineventtypeslist.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestServicePublishOptInEventType, name: "member"))
    MapofString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapofString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    AdMarkupTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdMarkupType, name: "member"))

    MediaTailor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediatailor#MediaTailor"
      service.name = "MediaTailor"
      service.version = "2018-04-23"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaTailor", "arnNamespace" => "mediatailor", "cloudFormationName" => "MediaTailor", "cloudTrailEventSource" => "mediatailor.amazonaws.com", "endpointPrefix" => "api.mediatailor"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "mediatailor"}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://mediatailor.{region}.{dualStackDnsSuffix}", "dualStack" => true}]}}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id", "date"], "maxAge" => 86400}, "smithy.api#title" => "AWS MediaTailor", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://mediatailor.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://api.mediatailor-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.mediatailor-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.mediatailor.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://api.mediatailor.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAkAAAAGAAAABQAAAAcF9eELAAAABgX14QQAAAAIAAAABwX14QkF9eEKAAAABAAAAAsAAAAKAAAABQX14QYF9eEIAAAABQAAAAwF9eEHAAAABwX14QUF9eEGAAAAAwX14QEAAAAOAAAABQX14QIF9eED"}}
      service.add_operation(:configure_logs_for_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ConfigureLogsForChannel"
        operation.name = "ConfigureLogsForChannel"
        operation.input = ConfigureLogsForChannelInput
        operation.output = ConfigureLogsForChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure logs on the channel with the specified channel name", "relativeDocumentation" => "configurelogs-channel.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/configureLogs/channel", "code" => 200}}
      end)
      service.add_operation(:configure_logs_for_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ConfigureLogsForPlaybackConfiguration"
        operation.name = "ConfigureLogsForPlaybackConfiguration"
        operation.input = ConfigureLogsForPlaybackConfigurationInput
        operation.output = ConfigureLogsForPlaybackConfigurationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to configure logs for a playback configuration", "relativeDocumentation" => "configurelogs-playbackconfiguration.html", "requiredActions" => ["iam:CreateServiceLinkedRole"], "resources" => {"required" => {"playbackConfiguration" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/configureLogs/playbackConfiguration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelInput
        operation.output = CreateChannelOutput
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new channel", "relativeDocumentation" => "channel-channelname.html", "createsResources" => ["channel"], "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateLiveSource"
        operation.name = "CreateLiveSource"
        operation.input = CreateLiveSourceInput
        operation.output = CreateLiveSourceOutput
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new live source on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-livesource-livesourcename.html", "createsResources" => ["liveSource"], "resources" => {"required" => {"liveSource" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreatePrefetchSchedule"
        operation.name = "CreatePrefetchSchedule"
        operation.input = CreatePrefetchScheduleInput
        operation.output = CreatePrefetchScheduleOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a prefetch schedule for the playback configuration with the specified playback configuration name", "relativeDocumentation" => "prefetchschedule-playbackconfigurationname-name.html", "createsResources" => ["prefetchSchedule"], "resources" => {"required" => {"playbackConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateProgram"
        operation.name = "CreateProgram"
        operation.input = CreateProgramInput
        operation.output = CreateProgramOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new program on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-program-programname.html"}, "smithy.api#http" => {"method" => "POST", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateSourceLocation"
        operation.name = "CreateSourceLocation"
        operation.input = CreateSourceLocationInput
        operation.output = CreateSourceLocationOutput
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new source location", "relativeDocumentation" => "sourcelocation-sourcelocationname.html", "createsResources" => ["sourceLocation"], "resources" => {"required" => {"sourceLocation" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#CreateVodSource"
        operation.name = "CreateVodSource"
        operation.input = CreateVodSourceInput
        operation.output = CreateVodSourceOutput
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new VOD source on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-vodsource-vodsourcename.html", "createsResources" => ["vodSource"], "resources" => {"required" => {"vodSource" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelInput
        operation.output = DeleteChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the channel with the specified channel name", "relativeDocumentation" => "channel-channelname.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteChannelPolicy"
        operation.name = "DeleteChannelPolicy"
        operation.input = DeleteChannelPolicyInput
        operation.output = DeleteChannelPolicyOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the IAM policy on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-policy.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteFunction"
        operation.name = "DeleteFunction"
        operation.input = DeleteFunctionRequest
        operation.output = DeleteFunctionResponse
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/function/{FunctionId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteLiveSource"
        operation.name = "DeleteLiveSource"
        operation.input = DeleteLiveSourceInput
        operation.output = DeleteLiveSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the live source with the specified live source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-livesource-livesourcename.html", "resources" => {"required" => {"liveSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeletePlaybackConfiguration"
        operation.name = "DeletePlaybackConfiguration"
        operation.input = DeletePlaybackConfigurationInput
        operation.output = DeletePlaybackConfigurationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified playback configuration", "relativeDocumentation" => "playbackconfiguration-name.html", "resources" => {"required" => {"playbackConfiguration" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/playbackConfiguration/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeletePrefetchSchedule"
        operation.name = "DeletePrefetchSchedule"
        operation.input = DeletePrefetchScheduleInput
        operation.output = DeletePrefetchScheduleOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a prefetch schedule for a playback configuration with the specified prefetch schedule name", "relativeDocumentation" => "prefetchschedule-playbackconfigurationname-name.html", "resources" => {"required" => {"playbackConfiguration" => {}, "prefetchSchedule" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteProgram"
        operation.name = "DeleteProgram"
        operation.input = DeleteProgramInput
        operation.output = DeleteProgramOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the program with the specified program name on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-program-programname.html", "resources" => {"required" => {"program" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteSourceLocation"
        operation.name = "DeleteSourceLocation"
        operation.input = DeleteSourceLocationInput
        operation.output = DeleteSourceLocationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname.html", "resources" => {"required" => {"sourceLocation" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DeleteVodSource"
        operation.name = "DeleteVodSource"
        operation.input = DeleteVodSourceInput
        operation.output = DeleteVodSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the VOD source with the specified VOD source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-vodsource-vodsourcename.html", "resources" => {"required" => {"vodSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = DescribeChannelInput
        operation.output = DescribeChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the channel with the specified channel name", "relativeDocumentation" => "channel-channelname.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeLiveSource"
        operation.name = "DescribeLiveSource"
        operation.input = DescribeLiveSourceInput
        operation.output = DescribeLiveSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the live source with the specified live source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-livesource-livesourcename.html", "resources" => {"required" => {"liveSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeProgram"
        operation.name = "DescribeProgram"
        operation.input = DescribeProgramInput
        operation.output = DescribeProgramOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the program with the specified program name on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-program-programname.html", "resources" => {"required" => {"program" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeSourceLocation"
        operation.name = "DescribeSourceLocation"
        operation.input = DescribeSourceLocationInput
        operation.output = DescribeSourceLocationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname.html", "resources" => {"required" => {"sourceLocation" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#DescribeVodSource"
        operation.name = "DescribeVodSource"
        operation.input = DescribeVodSourceInput
        operation.output = DescribeVodSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the VOD source with the specified VOD source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-vodsource-vodsourcename.html", "resources" => {"required" => {"vodSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetChannelPolicy"
        operation.name = "GetChannelPolicy"
        operation.input = GetChannelPolicyInput
        operation.output = GetChannelPolicyOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to read the IAM policy on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-policy.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_channel_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetChannelSchedule"
        operation.name = "GetChannelSchedule"
        operation.input = GetChannelScheduleInput
        operation.output = GetChannelScheduleOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the schedule of programs on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-schedule.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/channel/{ChannelName}/schedule", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetChannelSchedule.new
      end)
      service.add_operation(:get_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetFunction"
        operation.name = "GetFunction"
        operation.input = GetFunctionRequest
        operation.output = GetFunctionResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/function/{FunctionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetPlaybackConfiguration"
        operation.name = "GetPlaybackConfiguration"
        operation.input = GetPlaybackConfigurationInput
        operation.output = GetPlaybackConfigurationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the configuration for the specified name", "relativeDocumentation" => "playbackconfiguration-name.html", "resources" => {"required" => {"playbackConfiguration" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/playbackConfiguration/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_prefetch_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#GetPrefetchSchedule"
        operation.name = "GetPrefetchSchedule"
        operation.input = GetPrefetchScheduleInput
        operation.output = GetPrefetchScheduleOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve prefetch schedule for a playback configuration with the specified prefetch schedule name", "relativeDocumentation" => "prefetchschedule-playbackconfigurationname-name.html", "resources" => {"required" => {"playbackConfiguration" => {}, "prefetchSchedule" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}/{Name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_alerts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListAlerts"
        operation.name = "ListAlerts"
        operation.input = ListAlertsInput
        operation.output = ListAlertsOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of alerts on a resource", "relativeDocumentation" => "alerts.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/alerts", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAlerts.new
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsInput
        operation.output = ListChannelsOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of existing channels", "relativeDocumentation" => "channels.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/channels", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChannels.new
      end)
      service.add_operation(:list_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListFunctions"
        operation.name = "ListFunctions"
        operation.input = ListFunctionsRequest
        operation.output = ListFunctionsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/functions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFunctions.new
      end)
      service.add_operation(:list_live_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListLiveSources"
        operation.name = "ListLiveSources"
        operation.input = ListLiveSourcesInput
        operation.output = ListLiveSourcesOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of existing live sources on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-livesources.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/liveSources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLiveSources.new
      end)
      service.add_operation(:list_playback_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListPlaybackConfigurations"
        operation.name = "ListPlaybackConfigurations"
        operation.input = ListPlaybackConfigurationsInput
        operation.output = ListPlaybackConfigurationsOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of available configurations", "relativeDocumentation" => "playbackconfigurations.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/playbackConfigurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlaybackConfigurations.new
      end)
      service.add_operation(:list_prefetch_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListPrefetchSchedules"
        operation.name = "ListPrefetchSchedules"
        operation.input = ListPrefetchSchedulesInput
        operation.output = ListPrefetchSchedulesOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of prefetch schedules for a playback configuration", "relativeDocumentation" => "prefetchschedule-playbackconfigurationname.html", "resources" => {"required" => {"playbackConfiguration" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/prefetchSchedule/{PlaybackConfigurationName}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListPrefetchSchedules.new
      end)
      service.add_operation(:list_source_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListSourceLocations"
        operation.name = "ListSourceLocations"
        operation.input = ListSourceLocationsInput
        operation.output = ListSourceLocationsOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of existing source locations", "relativeDocumentation" => "sourcelocations.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceLocations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << BadRequestException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the tags assigned to the specified playback configuration resource", "relativeDocumentation" => "tags-resourcearn.html", "resources" => {"optional" => {"playbackConfiguration" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "sourceLocation" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "vodSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "liveSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "function" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_vod_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#ListVodSources"
        operation.name = "ListVodSources"
        operation.input = ListVodSourcesInput
        operation.output = ListVodSourcesOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the list of existing VOD sources on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-vodsources.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sourceLocation/{SourceLocationName}/vodSources", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVodSources.new
      end)
      service.add_operation(:put_channel_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#PutChannelPolicy"
        operation.name = "PutChannelPolicy"
        operation.input = PutChannelPolicyInput
        operation.output = PutChannelPolicyOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to set the IAM policy on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-policy.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/policy", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#PutFunction"
        operation.name = "PutFunction"
        operation.input = PutFunctionRequest
        operation.output = PutFunctionResponse
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "PUT", "uri" => "/function/{FunctionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_playback_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#PutPlaybackConfiguration"
        operation.name = "PutPlaybackConfiguration"
        operation.input = PutPlaybackConfigurationInput
        operation.output = PutPlaybackConfigurationOutput
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add a new configuration", "relativeDocumentation" => "playbackconfiguration.html", "createsResources" => ["playbackConfiguration"], "resources" => {"required" => {"playbackConfiguration" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/playbackConfiguration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#StartChannel"
        operation.name = "StartChannel"
        operation.input = StartChannelInput
        operation.output = StartChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-start.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#StopChannel"
        operation.name = "StopChannel"
        operation.input = StopChannelInput
        operation.output = StopChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to stop the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-stop.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to the specified playback configuration resource", "relativeDocumentation" => "tags-resourcearn.html", "resources" => {"optional" => {"playbackConfiguration" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "channel" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "sourceLocation" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "vodSource" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "liveSource" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "function" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from the specified playback configuration resource", "relativeDocumentation" => "tags-resourcearn.html", "resources" => {"optional" => {"playbackConfiguration" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "channel" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "sourceLocation" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "vodSource" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "liveSource" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "function" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelInput
        operation.output = UpdateChannelOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the channel with the specified channel name", "relativeDocumentation" => "channel-channelname.html", "resources" => {"required" => {"channel" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_live_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateLiveSource"
        operation.name = "UpdateLiveSource"
        operation.input = UpdateLiveSourceInput
        operation.output = UpdateLiveSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the live source with the specified live source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-livesource-livesourcename.html", "resources" => {"required" => {"liveSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}/liveSource/{LiveSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_program, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateProgram"
        operation.name = "UpdateProgram"
        operation.input = UpdateProgramInput
        operation.output = UpdateProgramOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the program with the specified program name on the channel with the specified channel name", "relativeDocumentation" => "channel-channelname-program-programname.html", "resources" => {"required" => {"program" => {}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/channel/{ChannelName}/program/{ProgramName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_source_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateSourceLocation"
        operation.name = "UpdateSourceLocation"
        operation.input = UpdateSourceLocationInput
        operation.output = UpdateSourceLocationOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname.html", "resources" => {"required" => {"sourceLocation" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_vod_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediatailor#UpdateVodSource"
        operation.name = "UpdateVodSource"
        operation.input = UpdateVodSourceInput
        operation.output = UpdateVodSourceOutput
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the VOD source with the specified VOD source name on the source location with the specified source location name", "relativeDocumentation" => "sourcelocation-sourcelocationname-vodsource-vodsourcename.html", "resources" => {"required" => {"vodSource" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sourceLocation/{SourceLocationName}/vodSource/{VodSourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
