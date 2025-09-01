# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMediaPipelines
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveSpeakerOnlyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ActiveSpeakerOnlyConfiguration', name: 'ActiveSpeakerOnlyConfiguration')
    ActiveSpeakerPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ActiveSpeakerPosition', name: 'ActiveSpeakerPosition')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$"})
    AmazonTranscribeCallAnalyticsProcessorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AmazonTranscribeCallAnalyticsProcessorConfiguration', name: 'AmazonTranscribeCallAnalyticsProcessorConfiguration')
    AmazonTranscribeProcessorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AmazonTranscribeProcessorConfiguration', name: 'AmazonTranscribeProcessorConfiguration')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    ArtifactsConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ArtifactsConcatenationConfiguration', name: 'ArtifactsConcatenationConfiguration')
    ArtifactsConcatenationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ArtifactsConcatenationState', name: 'ArtifactsConcatenationState')
    ArtifactsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ArtifactsConfiguration', name: 'ArtifactsConfiguration')
    ArtifactsState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ArtifactsState', name: 'ArtifactsState')
    AttendeeIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AttendeeIdList', name: 'AttendeeIdList', traits: {"smithy.api#length" => {"min" => 1}})
    AudioArtifactsConcatenationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioArtifactsConcatenationState', name: 'AudioArtifactsConcatenationState')
    AudioArtifactsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioArtifactsConfiguration', name: 'AudioArtifactsConfiguration')
    AudioChannelsOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioChannelsOption', name: 'AudioChannelsOption')
    AudioConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioConcatenationConfiguration', name: 'AudioConcatenationConfiguration')
    AudioMuxType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioMuxType', name: 'AudioMuxType')
    AudioSampleRateOption = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AudioSampleRateOption', name: 'AudioSampleRateOption', traits: {"smithy.api#pattern" => "^44100|48000$"})
    AwsRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#AwsRegion', name: 'AwsRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-z]+-){2,}\\d+$"})
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BorderColor = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#BorderColor', name: 'BorderColor')
    BorderThickness = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#BorderThickness', name: 'BorderThickness', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    CallAnalyticsLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CallAnalyticsLanguageCode', name: 'CallAnalyticsLanguageCode')
    CanvasOrientation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CanvasOrientation', name: 'CanvasOrientation')
    CategoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CategoryName', name: 'CategoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    CategoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CategoryNameList', name: 'CategoryNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ChannelDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChannelDefinition', name: 'ChannelDefinition')
    ChannelDefinitions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChannelDefinitions', name: 'ChannelDefinitions', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ChannelId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChannelId', name: 'ChannelId', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ChimeSdkMeetingConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingConcatenationConfiguration', name: 'ChimeSdkMeetingConcatenationConfiguration')
    ChimeSdkMeetingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingConfiguration', name: 'ChimeSdkMeetingConfiguration')
    ChimeSdkMeetingLiveConnectorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingLiveConnectorConfiguration', name: 'ChimeSdkMeetingLiveConnectorConfiguration')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    CompositedVideoArtifactsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CompositedVideoArtifactsConfiguration', name: 'CompositedVideoArtifactsConfiguration')
    CompositedVideoConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CompositedVideoConcatenationConfiguration', name: 'CompositedVideoConcatenationConfiguration')
    ConcatenationSink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSink', name: 'ConcatenationSink')
    ConcatenationSinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSinkList', name: 'ConcatenationSinkList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConcatenationSinkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSinkType', name: 'ConcatenationSinkType')
    ConcatenationSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSource', name: 'ConcatenationSource')
    ConcatenationSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSourceList', name: 'ConcatenationSourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConcatenationSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConcatenationSourceType', name: 'ConcatenationSourceType')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentArtifactsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentArtifactsConfiguration', name: 'ContentArtifactsConfiguration')
    ContentConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentConcatenationConfiguration', name: 'ContentConcatenationConfiguration')
    ContentMuxType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentMuxType', name: 'ContentMuxType')
    ContentRedactionOutput = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentRedactionOutput', name: 'ContentRedactionOutput')
    ContentShareLayoutOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentShareLayoutOption', name: 'ContentShareLayoutOption')
    ContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ContentType', name: 'ContentType')
    CornerRadius = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CornerRadius', name: 'CornerRadius', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    CreateMediaCapturePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipelineRequest', name: 'CreateMediaCapturePipelineRequest')
    CreateMediaCapturePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipelineResponse', name: 'CreateMediaCapturePipelineResponse')
    CreateMediaConcatenationPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipelineRequest', name: 'CreateMediaConcatenationPipelineRequest')
    CreateMediaConcatenationPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipelineResponse', name: 'CreateMediaConcatenationPipelineResponse')
    CreateMediaInsightsPipelineConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfigurationRequest', name: 'CreateMediaInsightsPipelineConfigurationRequest')
    CreateMediaInsightsPipelineConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfigurationResponse', name: 'CreateMediaInsightsPipelineConfigurationResponse')
    CreateMediaInsightsPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineRequest', name: 'CreateMediaInsightsPipelineRequest')
    CreateMediaInsightsPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineResponse', name: 'CreateMediaInsightsPipelineResponse')
    CreateMediaLiveConnectorPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipelineRequest', name: 'CreateMediaLiveConnectorPipelineRequest')
    CreateMediaLiveConnectorPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipelineResponse', name: 'CreateMediaLiveConnectorPipelineResponse')
    CreateMediaPipelineKinesisVideoStreamPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPoolRequest', name: 'CreateMediaPipelineKinesisVideoStreamPoolRequest')
    CreateMediaPipelineKinesisVideoStreamPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPoolResponse', name: 'CreateMediaPipelineKinesisVideoStreamPoolResponse')
    CreateMediaStreamPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipelineRequest', name: 'CreateMediaStreamPipelineRequest')
    CreateMediaStreamPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipelineResponse', name: 'CreateMediaStreamPipelineResponse')
    DataChannelConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DataChannelConcatenationConfiguration', name: 'DataChannelConcatenationConfiguration')
    DataRetentionChangeInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DataRetentionChangeInHours', name: 'DataRetentionChangeInHours', traits: {"smithy.api#range" => {"min" => 1}})
    DataRetentionInHours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DataRetentionInHours', name: 'DataRetentionInHours', traits: {"smithy.api#range" => {"min" => 0}})
    DeleteMediaCapturePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DeleteMediaCapturePipelineRequest', name: 'DeleteMediaCapturePipelineRequest')
    DeleteMediaInsightsPipelineConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DeleteMediaInsightsPipelineConfigurationRequest', name: 'DeleteMediaInsightsPipelineConfigurationRequest')
    DeleteMediaPipelineKinesisVideoStreamPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineKinesisVideoStreamPoolRequest', name: 'DeleteMediaPipelineKinesisVideoStreamPoolRequest')
    DeleteMediaPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineRequest', name: 'DeleteMediaPipelineRequest')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ErrorCode', name: 'ErrorCode')
    ExternalUserIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ExternalUserIdList', name: 'ExternalUserIdList', traits: {"smithy.api#length" => {"min" => 1}})
    ExternalUserIdType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ExternalUserIdType', name: 'ExternalUserIdType', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FragmentNumberString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#FragmentNumberString', name: 'FragmentNumberString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    FragmentSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#FragmentSelector', name: 'FragmentSelector')
    FragmentSelectorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#FragmentSelectorType', name: 'FragmentSelectorType')
    GetMediaCapturePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipelineRequest', name: 'GetMediaCapturePipelineRequest')
    GetMediaCapturePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipelineResponse', name: 'GetMediaCapturePipelineResponse')
    GetMediaInsightsPipelineConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfigurationRequest', name: 'GetMediaInsightsPipelineConfigurationRequest')
    GetMediaInsightsPipelineConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfigurationResponse', name: 'GetMediaInsightsPipelineConfigurationResponse')
    GetMediaPipelineKinesisVideoStreamPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPoolRequest', name: 'GetMediaPipelineKinesisVideoStreamPoolRequest')
    GetMediaPipelineKinesisVideoStreamPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPoolResponse', name: 'GetMediaPipelineKinesisVideoStreamPoolResponse')
    GetMediaPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaPipelineRequest', name: 'GetMediaPipelineRequest')
    GetMediaPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetMediaPipelineResponse', name: 'GetMediaPipelineResponse')
    GetSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTaskRequest', name: 'GetSpeakerSearchTaskRequest')
    GetSpeakerSearchTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTaskResponse', name: 'GetSpeakerSearchTaskResponse')
    GetVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTaskRequest', name: 'GetVoiceToneAnalysisTaskRequest')
    GetVoiceToneAnalysisTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTaskResponse', name: 'GetVoiceToneAnalysisTaskResponse')
    GridViewConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GridViewConfiguration', name: 'GridViewConfiguration')
    GuidString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#GuidString', name: 'GuidString', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    HighlightColor = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#HighlightColor', name: 'HighlightColor')
    HorizontalLayoutConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#HorizontalLayoutConfiguration', name: 'HorizontalLayoutConfiguration')
    HorizontalTilePosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#HorizontalTilePosition', name: 'HorizontalTilePosition')
    Iso8601Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Iso8601Timestamp', name: 'Iso8601Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    IssueDetectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#IssueDetectionConfiguration', name: 'IssueDetectionConfiguration')
    Keyword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Keyword', name: 'Keyword', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\s0-9a-zA-Z'-]+$"})
    KeywordMatchConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KeywordMatchConfiguration', name: 'KeywordMatchConfiguration')
    KeywordMatchWordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KeywordMatchWordList', name: 'KeywordMatchWordList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    KinesisDataStreamSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisDataStreamSinkConfiguration', name: 'KinesisDataStreamSinkConfiguration')
    KinesisVideoStreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamArn', name: 'KinesisVideoStreamArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    KinesisVideoStreamConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamConfiguration', name: 'KinesisVideoStreamConfiguration')
    KinesisVideoStreamConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamConfigurationUpdate', name: 'KinesisVideoStreamConfigurationUpdate')
    KinesisVideoStreamPoolConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolConfiguration', name: 'KinesisVideoStreamPoolConfiguration')
    KinesisVideoStreamPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolId', name: 'KinesisVideoStreamPoolId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    KinesisVideoStreamPoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolName', name: 'KinesisVideoStreamPoolName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    KinesisVideoStreamPoolSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSize', name: 'KinesisVideoStreamPoolSize', traits: {"smithy.api#range" => {"min" => 0}})
    KinesisVideoStreamPoolStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolStatus', name: 'KinesisVideoStreamPoolStatus')
    KinesisVideoStreamPoolSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSummary', name: 'KinesisVideoStreamPoolSummary')
    KinesisVideoStreamPoolSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSummaryList', name: 'KinesisVideoStreamPoolSummaryList')
    KinesisVideoStreamRecordingSourceRuntimeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamRecordingSourceRuntimeConfiguration', name: 'KinesisVideoStreamRecordingSourceRuntimeConfiguration')
    KinesisVideoStreamSourceRuntimeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamSourceRuntimeConfiguration', name: 'KinesisVideoStreamSourceRuntimeConfiguration')
    KinesisVideoStreamSourceTaskConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamSourceTaskConfiguration', name: 'KinesisVideoStreamSourceTaskConfiguration')
    LambdaFunctionSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LambdaFunctionSinkConfiguration', name: 'LambdaFunctionSinkConfiguration')
    LanguageOptions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LanguageOptions', name: 'LanguageOptions', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z-,]+$"})
    LayoutOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LayoutOption', name: 'LayoutOption')
    ListMediaCapturePipelinesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelinesRequest', name: 'ListMediaCapturePipelinesRequest')
    ListMediaCapturePipelinesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelinesResponse', name: 'ListMediaCapturePipelinesResponse')
    ListMediaInsightsPipelineConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurationsRequest', name: 'ListMediaInsightsPipelineConfigurationsRequest')
    ListMediaInsightsPipelineConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurationsResponse', name: 'ListMediaInsightsPipelineConfigurationsResponse')
    ListMediaPipelineKinesisVideoStreamPoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPoolsRequest', name: 'ListMediaPipelineKinesisVideoStreamPoolsRequest')
    ListMediaPipelineKinesisVideoStreamPoolsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPoolsResponse', name: 'ListMediaPipelineKinesisVideoStreamPoolsResponse')
    ListMediaPipelinesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaPipelinesRequest', name: 'ListMediaPipelinesRequest')
    ListMediaPipelinesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListMediaPipelinesResponse', name: 'ListMediaPipelinesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LiveConnectorMuxType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorMuxType', name: 'LiveConnectorMuxType')
    LiveConnectorRTMPConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorRTMPConfiguration', name: 'LiveConnectorRTMPConfiguration')
    LiveConnectorSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkConfiguration', name: 'LiveConnectorSinkConfiguration')
    LiveConnectorSinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkList', name: 'LiveConnectorSinkList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LiveConnectorSinkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkType', name: 'LiveConnectorSinkType')
    LiveConnectorSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceConfiguration', name: 'LiveConnectorSourceConfiguration')
    LiveConnectorSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceList', name: 'LiveConnectorSourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LiveConnectorSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceType', name: 'LiveConnectorSourceType')
    MediaCapturePipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaCapturePipeline', name: 'MediaCapturePipeline')
    MediaCapturePipelineSourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSourceConfiguration', name: 'MediaCapturePipelineSourceConfiguration')
    MediaCapturePipelineSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSummary', name: 'MediaCapturePipelineSummary')
    MediaCapturePipelineSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSummaryList', name: 'MediaCapturePipelineSummaryList')
    MediaConcatenationPipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaConcatenationPipeline', name: 'MediaConcatenationPipeline')
    MediaEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaEncoding', name: 'MediaEncoding')
    MediaInsightsPipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipeline', name: 'MediaInsightsPipeline')
    MediaInsightsPipelineConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfiguration', name: 'MediaInsightsPipelineConfiguration')
    MediaInsightsPipelineConfigurationElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElement', name: 'MediaInsightsPipelineConfigurationElement')
    MediaInsightsPipelineConfigurationElementType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElementType', name: 'MediaInsightsPipelineConfigurationElementType')
    MediaInsightsPipelineConfigurationElements = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElements', name: 'MediaInsightsPipelineConfigurationElements')
    MediaInsightsPipelineConfigurationNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationNameString', name: 'MediaInsightsPipelineConfigurationNameString', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    MediaInsightsPipelineConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationSummary', name: 'MediaInsightsPipelineConfigurationSummary')
    MediaInsightsPipelineConfigurationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationSummaryList', name: 'MediaInsightsPipelineConfigurationSummaryList')
    MediaInsightsPipelineElementStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineElementStatus', name: 'MediaInsightsPipelineElementStatus')
    MediaInsightsPipelineElementStatuses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineElementStatuses', name: 'MediaInsightsPipelineElementStatuses')
    MediaInsightsRuntimeMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaInsightsRuntimeMetadata', name: 'MediaInsightsRuntimeMetadata', traits: {"smithy.api#sensitive" => {}})
    MediaLiveConnectorPipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaLiveConnectorPipeline', name: 'MediaLiveConnectorPipeline')
    MediaPipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipeline', name: 'MediaPipeline')
    MediaPipelineElementStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineElementStatus', name: 'MediaPipelineElementStatus')
    MediaPipelineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineList', name: 'MediaPipelineList')
    MediaPipelineSinkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineSinkType', name: 'MediaPipelineSinkType')
    MediaPipelineSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineSourceType', name: 'MediaPipelineSourceType')
    MediaPipelineStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineStatus', name: 'MediaPipelineStatus')
    MediaPipelineStatusUpdate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineStatusUpdate', name: 'MediaPipelineStatusUpdate')
    MediaPipelineSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineSummary', name: 'MediaPipelineSummary')
    MediaPipelineTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaPipelineTaskStatus', name: 'MediaPipelineTaskStatus')
    MediaSampleRateHertz = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaSampleRateHertz', name: 'MediaSampleRateHertz', traits: {"smithy.api#range" => {"min" => 8000, "max" => 48000}})
    MediaStreamPipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamPipeline', name: 'MediaStreamPipeline')
    MediaStreamPipelineSinkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamPipelineSinkType', name: 'MediaStreamPipelineSinkType')
    MediaStreamSink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamSink', name: 'MediaStreamSink')
    MediaStreamSinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamSinkList', name: 'MediaStreamSinkList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    MediaStreamSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamSource', name: 'MediaStreamSource')
    MediaStreamSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamSourceList', name: 'MediaStreamSourceList', traits: {"smithy.api#length" => {"min" => 1}})
    MediaStreamType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MediaStreamType', name: 'MediaStreamType')
    MeetingEventsConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#MeetingEventsConcatenationConfiguration', name: 'MeetingEventsConcatenationConfiguration')
    ModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ModelName', name: 'ModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumberOfChannels = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#NumberOfChannels', name: 'NumberOfChannels', traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    PartialResultsStability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#PartialResultsStability', name: 'PartialResultsStability')
    ParticipantRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ParticipantRole', name: 'ParticipantRole')
    PiiEntityTypes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#PiiEntityTypes', name: 'PiiEntityTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[A-Z_, ]+$"})
    PostCallAnalyticsSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#PostCallAnalyticsSettings', name: 'PostCallAnalyticsSettings')
    PresenterOnlyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#PresenterOnlyConfiguration', name: 'PresenterOnlyConfiguration')
    PresenterPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#PresenterPosition', name: 'PresenterPosition')
    RealTimeAlertConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RealTimeAlertConfiguration', name: 'RealTimeAlertConfiguration')
    RealTimeAlertRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RealTimeAlertRule', name: 'RealTimeAlertRule')
    RealTimeAlertRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RealTimeAlertRuleList', name: 'RealTimeAlertRuleList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RealTimeAlertRuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RealTimeAlertRuleType', name: 'RealTimeAlertRuleType')
    RecordingFileFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RecordingFileFormat', name: 'RecordingFileFormat')
    RecordingStreamConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RecordingStreamConfiguration', name: 'RecordingStreamConfiguration')
    RecordingStreamList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RecordingStreamList', name: 'RecordingStreamList', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ReservedStreamCapacity = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ReservedStreamCapacity', name: 'ReservedStreamCapacity', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ResolutionOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ResolutionOption', name: 'ResolutionOption')
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResultMax = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ResultMax', name: 'ResultMax', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    S3BucketSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#S3BucketSinkConfiguration', name: 'S3BucketSinkConfiguration')
    S3RecordingSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#S3RecordingSinkConfiguration', name: 'S3RecordingSinkConfiguration')
    S3RecordingSinkRuntimeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#S3RecordingSinkRuntimeConfiguration', name: 'S3RecordingSinkRuntimeConfiguration')
    SelectedVideoStreams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SelectedVideoStreams', name: 'SelectedVideoStreams')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    SentimentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SentimentConfiguration', name: 'SentimentConfiguration')
    SentimentTimePeriodInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SentimentTimePeriodInSeconds', name: 'SentimentTimePeriodInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 1800}})
    SentimentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SentimentType', name: 'SentimentType')
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SnsTopicSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SnsTopicSinkConfiguration', name: 'SnsTopicSinkConfiguration')
    SourceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SourceConfiguration', name: 'SourceConfiguration')
    SpeakerSearchTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SpeakerSearchTask', name: 'SpeakerSearchTask')
    SqsQueueSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SqsQueueSinkConfiguration', name: 'SqsQueueSinkConfiguration')
    SseAwsKeyManagementParams = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#SseAwsKeyManagementParams', name: 'SseAwsKeyManagementParams')
    StartSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTaskRequest', name: 'StartSpeakerSearchTaskRequest')
    StartSpeakerSearchTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTaskResponse', name: 'StartSpeakerSearchTaskResponse')
    StartVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTaskRequest', name: 'StartVoiceToneAnalysisTaskRequest')
    StartVoiceToneAnalysisTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTaskResponse', name: 'StartVoiceToneAnalysisTaskResponse')
    StopSpeakerSearchTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StopSpeakerSearchTaskRequest', name: 'StopSpeakerSearchTaskRequest')
    StopVoiceToneAnalysisTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StopVoiceToneAnalysisTaskRequest', name: 'StopVoiceToneAnalysisTaskRequest')
    StreamChannelDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StreamChannelDefinition', name: 'StreamChannelDefinition')
    StreamConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#StreamConfiguration', name: 'StreamConfiguration')
    Streams = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Streams', name: 'Streams', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => ".*"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottledClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#ThrottledClientException', name: 'ThrottledClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TileAspectRatio = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TileAspectRatio', name: 'TileAspectRatio', traits: {"smithy.api#pattern" => "^\\d{1,2}\\/\\d{1,2}$"})
    TileCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TileCount', name: 'TileCount', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    TileOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TileOrder', name: 'TileOrder')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.chimesdkmediapipelines#Timestamp', name: 'Timestamp')
    TimestampRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TimestampRange', name: 'TimestampRange')
    TranscriptionMessagesConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#TranscriptionMessagesConcatenationConfiguration', name: 'TranscriptionMessagesConcatenationConfiguration')
    UnauthorizedClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UnauthorizedClientException', name: 'UnauthorizedClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateMediaInsightsPipelineConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfigurationRequest', name: 'UpdateMediaInsightsPipelineConfigurationRequest')
    UpdateMediaInsightsPipelineConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfigurationResponse', name: 'UpdateMediaInsightsPipelineConfigurationResponse')
    UpdateMediaInsightsPipelineStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineStatusRequest', name: 'UpdateMediaInsightsPipelineStatusRequest')
    UpdateMediaPipelineKinesisVideoStreamPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPoolRequest', name: 'UpdateMediaPipelineKinesisVideoStreamPoolRequest')
    UpdateMediaPipelineKinesisVideoStreamPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPoolResponse', name: 'UpdateMediaPipelineKinesisVideoStreamPoolResponse')
    VerticalLayoutConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VerticalLayoutConfiguration', name: 'VerticalLayoutConfiguration')
    VerticalTilePosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VerticalTilePosition', name: 'VerticalTilePosition')
    VideoArtifactsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VideoArtifactsConfiguration', name: 'VideoArtifactsConfiguration')
    VideoAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VideoAttribute', name: 'VideoAttribute')
    VideoConcatenationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VideoConcatenationConfiguration', name: 'VideoConcatenationConfiguration')
    VideoMuxType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VideoMuxType', name: 'VideoMuxType')
    VocabularyFilterMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VocabularyFilterMethod', name: 'VocabularyFilterMethod')
    VocabularyFilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VocabularyFilterName', name: 'VocabularyFilterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyFilterNames = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VocabularyFilterNames', name: 'VocabularyFilterNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    VocabularyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VocabularyName', name: 'VocabularyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyNames = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VocabularyNames', name: 'VocabularyNames', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    VoiceAnalyticsConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsConfigurationStatus', name: 'VoiceAnalyticsConfigurationStatus')
    VoiceAnalyticsLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsLanguageCode', name: 'VoiceAnalyticsLanguageCode')
    VoiceAnalyticsProcessorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsProcessorConfiguration', name: 'VoiceAnalyticsProcessorConfiguration')
    VoiceEnhancementSinkConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VoiceEnhancementSinkConfiguration', name: 'VoiceEnhancementSinkConfiguration')
    VoiceToneAnalysisTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmediapipelines#VoiceToneAnalysisTask', name: 'VoiceToneAnalysisTask')

    ActiveSpeakerOnlyConfiguration.add_member(:active_speaker_position, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSpeakerPosition, location_name: 'ActiveSpeakerPosition', traits: {"smithy.api#documentation" => "<p>The position of the <code>ActiveSpeakerOnly</code> video tile.</p>"}))
    ActiveSpeakerOnlyConfiguration.type = Types::ActiveSpeakerOnlyConfiguration
    ActiveSpeakerPosition.add_member(:top_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TopLeft', traits: {"smithy.api#enumValue" => "TopLeft"}))
    ActiveSpeakerPosition.add_member(:top_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TopRight', traits: {"smithy.api#enumValue" => "TopRight"}))
    ActiveSpeakerPosition.add_member(:bottom_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BottomLeft', traits: {"smithy.api#enumValue" => "BottomLeft"}))
    ActiveSpeakerPosition.add_member(:bottom_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BottomRight', traits: {"smithy.api#enumValue" => "BottomRight"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code in the configuration.</p>", "smithy.api#required" => {}}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the custom vocabulary to use when processing a transcription. Note\n         that vocabulary names are case sensitive.</p>\n         <p>If the language of the specified custom vocabulary doesn't match the language identified in your media, the custom vocabulary is not applied to your transcription.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html\">Custom vocabularies</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>\n         <p>Length Constraints: Minimum length of 1. Maximum length of 200. </p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the custom vocabulary filter to use when processing a\n         transcription. Note that vocabulary filter names are case sensitive.</p>\n         <p>If the language of the specified custom vocabulary filter doesn't match the language identified in your media, the vocabulary filter is not applied to your transcription.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html\">Using vocabulary filtering with unwanted words</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>\n         <p>Length Constraints: Minimum length of 1. Maximum length of 200. </p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_method, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: 'VocabularyFilterMethod', traits: {"smithy.api#documentation" => "<p>Specifies how to apply a vocabulary filter to a transcript.</p>\n         <p>To replace words with <b>***</b>, choose <code>mask</code>.</p>\n         <p>To delete words, choose <code>remove</code>.</p>\n         <p>To flag words without changing them, choose <code>tag</code>. </p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'LanguageModelName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the custom language model to use when processing a transcription.\n         Note that language model names are case sensitive.</p>\n         <p>The language of the specified language model must match the language code specified\n         in the transcription request. If the languages don't match, the custom language model isn't\n         applied. Language mismatches don't generate errors or warnings.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html\">Custom language models</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:enable_partial_results_stabilization, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnablePartialResultsStabilization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy. \n         For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization\">Partial-result stabilization</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:partial_results_stability, Smithy::Schema::Shapes::ShapeRef.new(shape: PartialResultsStability, location_name: 'PartialResultsStability', traits: {"smithy.api#documentation" => "<p>Specifies the level of stability to use when you enable partial results stabilization\n            (<code>EnablePartialResultsStabilization</code>).</p>\n         <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization\">Partial-result stabilization</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_identification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentIdentificationType', traits: {"smithy.api#documentation" => "<p>Labels all personally identifiable information (PII) identified in your transcript.</p>\n         <p>Content identification is performed at the segment level; PII specified in <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment.</p>\n         <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code> in the same request. If you do, your request returns a <code>BadRequestException</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html\">Redacting or identifying personally identifiable information</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_redaction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentRedactionType', traits: {"smithy.api#documentation" => "<p>Redacts all personally identifiable information (PII) identified in your transcript.</p>\n         <p>Content redaction is performed at the segment level; PII specified in <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment.</p>\n         <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code> in the same request. If you do, your request returns a <code>BadRequestException</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html\">Redacting or identifying personally identifiable information</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:pii_entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: 'PiiEntityTypes', traits: {"smithy.api#documentation" => "<p>Specifies the types of personally identifiable information (PII) to redact from a transcript. You can include as many types as you'd like, or you can select <code>ALL</code>.</p>\n         <p>To include <code>PiiEntityTypes</code> in your Call Analytics request, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>, but you can't include both. </p>\n         <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, \n               <code>CREDIT_DEBIT_EXPIRY</code>, <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, \n               <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, <code>SSN</code>, or <code>ALL</code>.</p>\n         <p>Length Constraints: Minimum length of 1. Maximum length of 300.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:filter_partial_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FilterPartialResults', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, <code>UtteranceEvents</code> with <code>IsPartial: true</code> are filtered out of the insights target.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:post_call_analytics_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: PostCallAnalyticsSettings, location_name: 'PostCallAnalyticsSettings', traits: {"smithy.api#documentation" => "<p>The settings for a post-call analysis task in an analytics configuration.</p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:call_analytics_stream_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryNameList, location_name: 'CallAnalyticsStreamCategories', traits: {"smithy.api#documentation" => "<p>By default, all <code>CategoryEvents</code> are sent to the insights target. If this parameter is specified, only included categories are sent to the insights target. </p>"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.type = Types::AmazonTranscribeCallAnalyticsProcessorConfiguration
    AmazonTranscribeProcessorConfiguration.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code that represents the language spoken in your audio.</p>\n         <p>If you're unsure of the language spoken in your audio, consider using\n            <code>IdentifyLanguage</code> to enable automatic language identification.</p>\n         <p>For a list of languages that real-time Call Analytics supports, see the <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html\">Supported languages table</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyName, location_name: 'VocabularyName', traits: {"smithy.api#documentation" => "<p>The name of the custom vocabulary that you specified in your Call Analytics\n         request.</p>\n         <p>Length Constraints: Minimum length of 1. Maximum length of 200.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: 'VocabularyFilterName', traits: {"smithy.api#documentation" => "<p>The name of the custom vocabulary filter that you specified in your Call Analytics\n         request.</p>\n         <p>Length Constraints: Minimum length of 1. Maximum length of 200.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_method, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: 'VocabularyFilterMethod', traits: {"smithy.api#documentation" => "<p>The vocabulary filtering method used in your Call Analytics transcription.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:show_speaker_label, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ShowSpeakerLabel', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables speaker partitioning (diarization) in your transcription output. Speaker partitioning labels the speech from individual speakers in your media file.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html\">Partitioning speakers (diarization)</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:enable_partial_results_stabilization, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnablePartialResultsStabilization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization\">Partial-result stabilization</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:partial_results_stability, Smithy::Schema::Shapes::ShapeRef.new(shape: PartialResultsStability, location_name: 'PartialResultsStability', traits: {"smithy.api#documentation" => "<p>The level of stability to use when you enable partial results stabilization\n            (<code>EnablePartialResultsStabilization</code>).</p>\n         <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization\">Partial-result stabilization</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:content_identification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentIdentificationType', traits: {"smithy.api#documentation" => "<p>Labels all personally identifiable information (PII) identified in your transcript.</p>\n         <p>Content identification is performed at the segment level; PII specified in\n            <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio\n         segment.</p>\n         <p>You can’t set <code>ContentIdentificationType</code> and\n            <code>ContentRedactionType</code> in the same request. If you set both, your request\n         returns a <code>BadRequestException</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html\">Redacting or identifying personally identifiable information</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:content_redaction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentRedactionType', traits: {"smithy.api#documentation" => "<p>Redacts all personally identifiable information (PII) identified in your transcript.</p>\n         <p>Content redaction is performed at the segment level; PII specified in PiiEntityTypes is redacted upon complete transcription of an audio segment.</p>\n         <p>You can’t set ContentRedactionType and ContentIdentificationType in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html\">Redacting or identifying personally identifiable information</a> \n         in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:pii_entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: 'PiiEntityTypes', traits: {"smithy.api#documentation" => "<p>The types of personally identifiable information (PII) to redact from a transcript. You\n         can include as many types as you'd like, or you can select <code>ALL</code>.</p>\n         <p>To include <code>PiiEntityTypes</code> in your Call Analytics request, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>, but you can't include both.</p>\n         <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, \n         <code>CREDIT_DEBIT_EXPIRY</code>, <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, \n         <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, <code>SSN</code>, or <code>ALL</code>.</p>\n         <p>If you leave this parameter empty, the default behavior is equivalent to <code>ALL</code>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:language_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: 'LanguageModelName', traits: {"smithy.api#documentation" => "<p>The name of the custom language model that you want to use when processing your\n         transcription. Note that language model names are case sensitive.</p>\n         <p>The language of the specified language model must match the language code you specify in your transcription request. If the languages don't match, the custom language model isn't applied. \n            There are no errors or warnings associated with a language mismatch.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html\">Custom language models</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:filter_partial_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FilterPartialResults', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, <code>TranscriptEvents</code> with <code>IsPartial: true</code> are filtered out of the insights target.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:identify_language, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyLanguage', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Turns language identification on or off.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:identify_multiple_languages, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyMultipleLanguages', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Turns language identification on or off for multiple languages.</p>\n         <note>\n            <p>Calls to this API must include a <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> parameter. \n         If you include more than one of those parameters, your transcription job fails.</p>\n         </note>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:language_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageOptions, location_name: 'LanguageOptions', traits: {"smithy.api#documentation" => "<p>The language options for the transcription, such as automatic language detection.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:preferred_language, Smithy::Schema::Shapes::ShapeRef.new(shape: CallAnalyticsLanguageCode, location_name: 'PreferredLanguage', traits: {"smithy.api#documentation" => "<p>The preferred language for the transcription.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_names, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyNames, location_name: 'VocabularyNames', traits: {"smithy.api#documentation" => "<p>The names of the custom vocabulary or vocabularies used during transcription.</p>"}))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_names, Smithy::Schema::Shapes::ShapeRef.new(shape: VocabularyFilterNames, location_name: 'VocabularyFilterNames', traits: {"smithy.api#documentation" => "<p>The names of the custom vocabulary filter or filters using during transcription.</p>"}))
    AmazonTranscribeProcessorConfiguration.type = Types::AmazonTranscribeProcessorConfiguration
    ArtifactsConcatenationConfiguration.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioConcatenationConfiguration, location_name: 'Audio', traits: {"smithy.api#documentation" => "<p>The configuration for the audio artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoConcatenationConfiguration, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The configuration for the video artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentConcatenationConfiguration, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The configuration for the content artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:data_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: DataChannelConcatenationConfiguration, location_name: 'DataChannel', traits: {"smithy.api#documentation" => "<p>The configuration for the data channel artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:transcription_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionMessagesConcatenationConfiguration, location_name: 'TranscriptionMessages', traits: {"smithy.api#documentation" => "<p>The configuration for the transcription messages artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:meeting_events, Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingEventsConcatenationConfiguration, location_name: 'MeetingEvents', traits: {"smithy.api#documentation" => "<p>The configuration for the meeting events artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:composited_video, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositedVideoConcatenationConfiguration, location_name: 'CompositedVideo', traits: {"smithy.api#documentation" => "<p>The configuration for the composited video artifacts concatenation.</p>", "smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.type = Types::ArtifactsConcatenationConfiguration
    ArtifactsConcatenationState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    ArtifactsConcatenationState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "Disabled"}))
    ArtifactsConfiguration.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioArtifactsConfiguration, location_name: 'Audio', traits: {"smithy.api#documentation" => "<p>The configuration for the audio artifacts.</p>", "smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoArtifactsConfiguration, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The configuration for the video artifacts.</p>", "smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentArtifactsConfiguration, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The configuration for the content artifacts.</p>", "smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:composited_video, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositedVideoArtifactsConfiguration, location_name: 'CompositedVideo', traits: {"smithy.api#documentation" => "<p>Enables video compositing.</p>"}))
    ArtifactsConfiguration.type = Types::ArtifactsConfiguration
    ArtifactsState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    ArtifactsState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disabled', traits: {"smithy.api#enumValue" => "Disabled"}))
    AttendeeIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString)
    AudioArtifactsConcatenationState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    AudioArtifactsConfiguration.add_member(:mux_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioMuxType, location_name: 'MuxType', traits: {"smithy.api#documentation" => "<p>The MUX type of the audio artifact configuration object.</p>", "smithy.api#required" => {}}))
    AudioArtifactsConfiguration.type = Types::AudioArtifactsConfiguration
    AudioChannelsOption.add_member(:stereo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stereo', traits: {"smithy.api#enumValue" => "Stereo"}))
    AudioChannelsOption.add_member(:mono, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Mono', traits: {"smithy.api#enumValue" => "Mono"}))
    AudioConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    AudioConcatenationConfiguration.type = Types::AudioConcatenationConfiguration
    AudioMuxType.add_member(:audio_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AudioOnly', traits: {"smithy.api#enumValue" => "AudioOnly"}))
    AudioMuxType.add_member(:audio_with_active_speaker_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AudioWithActiveSpeakerVideo', traits: {"smithy.api#enumValue" => "AudioWithActiveSpeakerVideo"}))
    AudioMuxType.add_member(:audio_with_composited_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AudioWithCompositedVideo', traits: {"smithy.api#enumValue" => "AudioWithCompositedVideo"}))
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    BadRequestException.type = Types::BadRequestException
    BorderColor.add_member(:black, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Black', traits: {"smithy.api#enumValue" => "Black"}))
    BorderColor.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Blue', traits: {"smithy.api#enumValue" => "Blue"}))
    BorderColor.add_member(:red, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Red', traits: {"smithy.api#enumValue" => "Red"}))
    BorderColor.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Green', traits: {"smithy.api#enumValue" => "Green"}))
    BorderColor.add_member(:white, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'White', traits: {"smithy.api#enumValue" => "White"}))
    BorderColor.add_member(:yellow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yellow', traits: {"smithy.api#enumValue" => "Yellow"}))
    CallAnalyticsLanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    CallAnalyticsLanguageCode.add_member(:en_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    CallAnalyticsLanguageCode.add_member(:es_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_US', traits: {"smithy.api#enumValue" => "es-US"}))
    CallAnalyticsLanguageCode.add_member(:fr_ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_CA', traits: {"smithy.api#enumValue" => "fr-CA"}))
    CallAnalyticsLanguageCode.add_member(:fr_fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_FR', traits: {"smithy.api#enumValue" => "fr-FR"}))
    CallAnalyticsLanguageCode.add_member(:en_au, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    CallAnalyticsLanguageCode.add_member(:it_it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_IT', traits: {"smithy.api#enumValue" => "it-IT"}))
    CallAnalyticsLanguageCode.add_member(:de_de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    CallAnalyticsLanguageCode.add_member(:pt_br, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_BR', traits: {"smithy.api#enumValue" => "pt-BR"}))
    CanvasOrientation.add_member(:landscape, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Landscape', traits: {"smithy.api#enumValue" => "Landscape"}))
    CanvasOrientation.add_member(:portrait, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Portrait', traits: {"smithy.api#enumValue" => "Portrait"}))
    CategoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName)
    ChannelDefinition.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'ChannelId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The channel ID.</p>", "smithy.api#required" => {}}))
    ChannelDefinition.add_member(:participant_role, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole', traits: {"smithy.api#documentation" => "<p>Specifies whether the audio in a channel belongs to the <code>AGENT</code> or <code>CUSTOMER</code>.</p>"}))
    ChannelDefinition.type = Types::ChannelDefinition
    ChannelDefinitions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDefinition)
    ChimeSdkMeetingConcatenationConfiguration.add_member(:artifacts_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationConfiguration, location_name: 'ArtifactsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the artifacts in an Amazon Chime SDK meeting concatenation.</p>", "smithy.api#required" => {}}))
    ChimeSdkMeetingConcatenationConfiguration.type = Types::ChimeSdkMeetingConcatenationConfiguration
    ChimeSdkMeetingConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source configuration for a specified media pipeline.</p>"}))
    ChimeSdkMeetingConfiguration.add_member(:artifacts_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConfiguration, location_name: 'ArtifactsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the artifacts in an Amazon Chime SDK meeting.</p>"}))
    ChimeSdkMeetingConfiguration.type = Types::ChimeSdkMeetingConfiguration
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The configuration object's Chime SDK meeting ARN.</p>", "smithy.api#required" => {}}))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:mux_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorMuxType, location_name: 'MuxType', traits: {"smithy.api#documentation" => "<p>The configuration object's multiplex type.</p>", "smithy.api#required" => {}}))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:composited_video, Smithy::Schema::Shapes::ShapeRef.new(shape: CompositedVideoArtifactsConfiguration, location_name: 'CompositedVideo', traits: {"smithy.api#documentation" => "<p>The media pipeline's composited video.</p>"}))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration', traits: {"smithy.api#documentation" => "<p>The source configuration settings of the media pipeline's configuration object.</p>"}))
    ChimeSdkMeetingLiveConnectorConfiguration.type = Types::ChimeSdkMeetingLiveConnectorConfiguration
    CompositedVideoArtifactsConfiguration.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: LayoutOption, location_name: 'Layout', traits: {"smithy.api#documentation" => "<p>The layout setting, such as <code>GridView</code> in the configuration object.</p>"}))
    CompositedVideoArtifactsConfiguration.add_member(:resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolutionOption, location_name: 'Resolution', traits: {"smithy.api#documentation" => "<p>The video resolution setting in the configuration object. Default: HD at 1280 x 720. FHD resolution: 1920 x 1080.</p>"}))
    CompositedVideoArtifactsConfiguration.add_member(:grid_view_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GridViewConfiguration, location_name: 'GridViewConfiguration', traits: {"smithy.api#documentation" => "<p>The <code>GridView</code> configuration setting.</p>", "smithy.api#required" => {}}))
    CompositedVideoArtifactsConfiguration.type = Types::CompositedVideoArtifactsConfiguration
    CompositedVideoConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    CompositedVideoConcatenationConfiguration.type = Types::CompositedVideoConcatenationConfiguration
    ConcatenationSink.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSinkType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of data sink in the configuration object.</p>", "smithy.api#required" => {}}))
    ConcatenationSink.add_member(:s3_bucket_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSinkConfiguration, location_name: 'S3BucketSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an Amazon S3 bucket sink.</p>", "smithy.api#required" => {}}))
    ConcatenationSink.type = Types::ConcatenationSink
    ConcatenationSinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSink)
    ConcatenationSinkType.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3Bucket', traits: {"smithy.api#enumValue" => "S3Bucket"}))
    ConcatenationSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of concatenation source in a configuration object.</p>", "smithy.api#required" => {}}))
    ConcatenationSource.add_member(:media_capture_pipeline_source_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipelineSourceConfiguration, location_name: 'MediaCapturePipelineSourceConfiguration', traits: {"smithy.api#documentation" => "<p>The concatenation settings for the media pipeline in a configuration object.</p>", "smithy.api#required" => {}}))
    ConcatenationSource.type = Types::ConcatenationSource
    ConcatenationSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSource)
    ConcatenationSourceType.add_member(:media_capture_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MediaCapturePipeline', traits: {"smithy.api#enumValue" => "MediaCapturePipeline"}))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    ConflictException.type = Types::ConflictException
    ContentArtifactsConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates whether the content artifact is enabled or disabled.</p>", "smithy.api#required" => {}}))
    ContentArtifactsConfiguration.add_member(:mux_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentMuxType, location_name: 'MuxType', traits: {"smithy.api#documentation" => "<p>The MUX type of the artifact configuration.</p>"}))
    ContentArtifactsConfiguration.type = Types::ContentArtifactsConfiguration
    ContentConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    ContentConcatenationConfiguration.type = Types::ContentConcatenationConfiguration
    ContentMuxType.add_member(:content_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ContentOnly', traits: {"smithy.api#enumValue" => "ContentOnly"}))
    ContentRedactionOutput.add_member(:redacted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDACTED', traits: {"smithy.api#enumValue" => "redacted"}))
    ContentRedactionOutput.add_member(:redacted_and_unredacted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDACTED_AND_UNREDACTED', traits: {"smithy.api#enumValue" => "redacted_and_unredacted"}))
    ContentShareLayoutOption.add_member(:presenter_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PresenterOnly', traits: {"smithy.api#enumValue" => "PresenterOnly"}))
    ContentShareLayoutOption.add_member(:horizontal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Horizontal', traits: {"smithy.api#enumValue" => "Horizontal"}))
    ContentShareLayoutOption.add_member(:vertical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Vertical', traits: {"smithy.api#enumValue" => "Vertical"}))
    ContentShareLayoutOption.add_member(:active_speaker_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActiveSpeakerOnly', traits: {"smithy.api#enumValue" => "ActiveSpeakerOnly"}))
    ContentType.add_member(:pii, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PII', traits: {"smithy.api#enumValue" => "PII"}))
    CreateMediaCapturePipelineRequest.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Source type from which the media artifacts are captured. A Chime SDK Meeting is the only\n         supported source.</p>", "smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the source from which the media artifacts are captured.</p>", "smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:sink_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSinkType, location_name: 'SinkType', traits: {"smithy.api#documentation" => "<p>Destination type to which the media artifacts are saved. You must use an S3 bucket.</p>", "smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the sink type.</p>", "smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. The token makes the API request idempotent. Use a unique token for each media pipeline request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:chime_sdk_meeting_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: 'ChimeSdkMeetingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a specified media pipeline. <code>SourceType</code> must\n         be <code>ChimeSdkMeeting</code>.</p>"}))
    CreateMediaCapturePipelineRequest.add_member(:sse_aws_key_management_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SseAwsKeyManagementParams, location_name: 'SseAwsKeyManagementParams', traits: {"smithy.api#documentation" => "<p>An object that contains server side encryption parameters to be used by media capture\n         pipeline. The parameters can also be used by media concatenation pipeline taking media\n         capture pipeline as a media source.</p>"}))
    CreateMediaCapturePipelineRequest.add_member(:sink_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SinkIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the sink role to be used with <code>AwsKmsKeyId</code>\n         in <code>SseAwsKeyManagementParams</code>. Can only interact with <code>S3Bucket</code>\n         sink type. The role must belong to the caller’s account and be able to act on behalf of the\n         caller during the API call. All minimum policy permissions requirements for the caller to\n         perform sink-related actions are the same for <code>SinkIamRoleArn</code>.</p>\n         <p>Additionally, the role must have permission to <code>kms:GenerateDataKey</code> using\n         KMS key supplied as <code>AwsKmsKeyId</code> in <code>SseAwsKeyManagementParams</code>. If\n         media concatenation will be required later, the role must also have permission to\n         <code>kms:Decrypt</code> for the same KMS key.</p>"}))
    CreateMediaCapturePipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs.</p>"}))
    CreateMediaCapturePipelineRequest.type = Types::CreateMediaCapturePipelineRequest
    CreateMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: 'MediaCapturePipeline', traits: {"smithy.api#documentation" => "<p>A media pipeline object, the ID, source type, source ARN, sink type, and sink\n         ARN of a media pipeline object.</p>"}))
    CreateMediaCapturePipelineResponse.type = Types::CreateMediaCapturePipelineResponse
    CreateMediaConcatenationPipelineRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>An object that specifies the sources for the media concatenation pipeline.</p>", "smithy.api#required" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>An object that specifies the data sinks for the media concatenation pipeline.</p>", "smithy.api#required" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. The token makes the API request\n         idempotent. Use a unique token for each media concatenation pipeline request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the media concatenation pipeline.</p>"}))
    CreateMediaConcatenationPipelineRequest.type = Types::CreateMediaConcatenationPipelineRequest
    CreateMediaConcatenationPipelineResponse.add_member(:media_concatenation_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaConcatenationPipeline, location_name: 'MediaConcatenationPipeline', traits: {"smithy.api#documentation" => "<p>A media concatenation pipeline object, the ID, source type, <code>MediaPipelineARN</code>, and sink of a\n         media concatenation pipeline object.</p>"}))
    CreateMediaConcatenationPipelineResponse.type = Types::CreateMediaConcatenationPipelineResponse
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:media_insights_pipeline_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, location_name: 'MediaInsightsPipelineConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the media insights pipeline configuration.</p>", "smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by the service to access Amazon Web Services resources,\n         including <code>Transcribe</code> and <code>Transcribe Call Analytics</code>, on the \n         caller’s behalf.</p>", "smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: 'RealTimeAlertConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the real-time alerts in a media insights pipeline configuration.</p>"}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:elements, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, location_name: 'Elements', traits: {"smithy.api#documentation" => "<p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream.</p>", "smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the media insights pipeline configuration.</p>"}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the media insights pipeline configuration request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.type = Types::CreateMediaInsightsPipelineConfigurationRequest
    CreateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: 'MediaInsightsPipelineConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the media insights pipeline.</p>"}))
    CreateMediaInsightsPipelineConfigurationResponse.type = Types::CreateMediaInsightsPipelineConfigurationResponse
    CreateMediaInsightsPipelineRequest.add_member(:media_insights_pipeline_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaInsightsPipelineConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the pipeline's configuration.</p>", "smithy.api#required" => {}}))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_source_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceRuntimeConfiguration, location_name: 'KinesisVideoStreamSourceRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration for the Kinesis video stream source of the media insights\n         pipeline.</p>"}))
    CreateMediaInsightsPipelineRequest.add_member(:media_insights_runtime_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsRuntimeMetadata, location_name: 'MediaInsightsRuntimeMetadata', traits: {"smithy.api#documentation" => "<p>The runtime metadata for the media insights pipeline. Consists of a key-value map of strings.</p>"}))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_recording_source_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamRecordingSourceRuntimeConfiguration, location_name: 'KinesisVideoStreamRecordingSourceRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration for the Kinesis video recording stream source.</p>"}))
    CreateMediaInsightsPipelineRequest.add_member(:s3_recording_sink_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3RecordingSinkRuntimeConfiguration, location_name: 'S3RecordingSinkRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration for the S3 recording sink. If specified, the settings in this structure override any settings in <code>S3RecordingSinkConfiguration</code>.</p>"}))
    CreateMediaInsightsPipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the media insights pipeline.</p>"}))
    CreateMediaInsightsPipelineRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the media insights pipeline request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaInsightsPipelineRequest.type = Types::CreateMediaInsightsPipelineRequest
    CreateMediaInsightsPipelineResponse.add_member(:media_insights_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipeline, location_name: 'MediaInsightsPipeline', traits: {"smithy.api#documentation" => "<p>The media insights pipeline object.</p>", "smithy.api#required" => {}}))
    CreateMediaInsightsPipelineResponse.type = Types::CreateMediaInsightsPipelineResponse
    CreateMediaLiveConnectorPipelineRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>The media live connector pipeline's data sources.</p>", "smithy.api#required" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>The media live connector pipeline's data sinks.</p>", "smithy.api#required" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The token assigned to the client making the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the media live connector pipeline.</p>"}))
    CreateMediaLiveConnectorPipelineRequest.type = Types::CreateMediaLiveConnectorPipelineRequest
    CreateMediaLiveConnectorPipelineResponse.add_member(:media_live_connector_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaLiveConnectorPipeline, location_name: 'MediaLiveConnectorPipeline', traits: {"smithy.api#documentation" => "<p>The new media live connector pipeline.</p>"}))
    CreateMediaLiveConnectorPipelineResponse.type = Types::CreateMediaLiveConnectorPipelineResponse
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:stream_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamConfiguration, location_name: 'StreamConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the stream.</p>", "smithy.api#required" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the pool.</p>", "smithy.api#required" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The token assigned to the client making the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the stream pool.</p>"}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.type = Types::CreateMediaPipelineKinesisVideoStreamPoolRequest
    CreateMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolConfiguration, location_name: 'KinesisVideoStreamPoolConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for applying the streams to the pool.</p>\n         <note>\n            <p></p>\n         </note>"}))
    CreateMediaPipelineKinesisVideoStreamPoolResponse.type = Types::CreateMediaPipelineKinesisVideoStreamPoolResponse
    CreateMediaStreamPipelineRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>The data sources for the media pipeline.</p>", "smithy.api#required" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>The data sink for the media pipeline.</p>", "smithy.api#required" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The token assigned to the client making the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the media pipeline.</p>"}))
    CreateMediaStreamPipelineRequest.type = Types::CreateMediaStreamPipelineRequest
    CreateMediaStreamPipelineResponse.add_member(:media_stream_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamPipeline, location_name: 'MediaStreamPipeline', traits: {"smithy.api#documentation" => "<p>The requested media pipeline.</p>"}))
    CreateMediaStreamPipelineResponse.type = Types::CreateMediaStreamPipelineResponse
    DataChannelConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    DataChannelConcatenationConfiguration.type = Types::DataChannelConcatenationConfiguration
    DeleteMediaCapturePipelineRequest.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media pipeline being deleted. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaCapturePipelineRequest.type = Types::DeleteMediaCapturePipelineRequest
    DeleteMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be deleted. Valid values include the name and ARN of the media insights pipeline configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaInsightsPipelineConfigurationRequest.type = Types::DeleteMediaInsightsPipelineConfigurationRequest
    DeleteMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaPipelineKinesisVideoStreamPoolRequest.type = Types::DeleteMediaPipelineKinesisVideoStreamPoolRequest
    DeleteMediaPipelineRequest.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media pipeline to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaPipelineRequest.type = Types::DeleteMediaPipelineRequest
    ErrorCode.add_member(:bad_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BadRequest', traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:forbidden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Forbidden', traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotFound', traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:resource_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceLimitExceeded', traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceFailure', traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:service_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceUnavailable', traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Throttling', traits: {"smithy.api#enumValue" => "Throttling"}))
    ExternalUserIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserIdType)
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    ForbiddenException.type = Types::ForbiddenException
    FragmentSelector.add_member(:fragment_selector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentSelectorType, location_name: 'FragmentSelectorType', traits: {"smithy.api#documentation" => "<p>The origin of the timestamps to use, <code>Server</code> or <code>Producer</code>. For more information, see \n         <a href=\"https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_StartSelector.html\">StartSelectorType</a> in the <i>Amazon Kinesis Video Streams Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    FragmentSelector.add_member(:timestamp_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampRange, location_name: 'TimestampRange', traits: {"smithy.api#documentation" => "<p>The range of timestamps to return.</p>", "smithy.api#required" => {}}))
    FragmentSelector.type = Types::FragmentSelector
    FragmentSelectorType.add_member(:producer_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ProducerTimestamp', traits: {"smithy.api#enumValue" => "ProducerTimestamp"}))
    FragmentSelectorType.add_member(:server_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServerTimestamp', traits: {"smithy.api#enumValue" => "ServerTimestamp"}))
    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaCapturePipelineRequest.type = Types::GetMediaCapturePipelineRequest
    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: 'MediaCapturePipeline', traits: {"smithy.api#documentation" => "<p>The media pipeline object.</p>"}))
    GetMediaCapturePipelineResponse.type = Types::GetMediaCapturePipelineResponse
    GetMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the requested resource.  Valid values include the name and ARN of the media insights pipeline configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaInsightsPipelineConfigurationRequest.type = Types::GetMediaInsightsPipelineConfigurationRequest
    GetMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: 'MediaInsightsPipelineConfiguration', traits: {"smithy.api#documentation" => "<p>The requested media insights pipeline configuration.</p>"}))
    GetMediaInsightsPipelineConfigurationResponse.type = Types::GetMediaInsightsPipelineConfigurationResponse
    GetMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaPipelineKinesisVideoStreamPoolRequest.type = Types::GetMediaPipelineKinesisVideoStreamPoolRequest
    GetMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolConfiguration, location_name: 'KinesisVideoStreamPoolConfiguration', traits: {"smithy.api#documentation" => "<p>The video stream pool configuration object.</p>"}))
    GetMediaPipelineKinesisVideoStreamPoolResponse.type = Types::GetMediaPipelineKinesisVideoStreamPoolResponse
    GetMediaPipelineRequest.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline that you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaPipelineRequest.type = Types::GetMediaPipelineRequest
    GetMediaPipelineResponse.add_member(:media_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipeline, location_name: 'MediaPipeline', traits: {"smithy.api#documentation" => "<p>The media pipeline object.</p>"}))
    GetMediaPipelineResponse.type = Types::GetMediaPipelineResponse
    GetSpeakerSearchTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the speaker search task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.type = Types::GetSpeakerSearchTaskRequest
    GetSpeakerSearchTaskResponse.add_member(:speaker_search_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: 'SpeakerSearchTask', traits: {"smithy.api#documentation" => "<p>The details of the speaker search task.</p>"}))
    GetSpeakerSearchTaskResponse.type = Types::GetSpeakerSearchTaskResponse
    GetVoiceToneAnalysisTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.type = Types::GetVoiceToneAnalysisTaskRequest
    GetVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: 'VoiceToneAnalysisTask', traits: {"smithy.api#documentation" => "<p>The details of the voice tone analysis task.</p>"}))
    GetVoiceToneAnalysisTaskResponse.type = Types::GetVoiceToneAnalysisTaskResponse
    GridViewConfiguration.add_member(:content_share_layout, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentShareLayoutOption, location_name: 'ContentShareLayout', traits: {"smithy.api#documentation" => "<p>Defines the layout of the video tiles when content sharing is enabled.</p>", "smithy.api#required" => {}}))
    GridViewConfiguration.add_member(:presenter_only_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PresenterOnlyConfiguration, location_name: 'PresenterOnlyConfiguration', traits: {"smithy.api#documentation" => "<p>Defines the configuration options for a presenter only video tile.</p>"}))
    GridViewConfiguration.add_member(:active_speaker_only_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveSpeakerOnlyConfiguration, location_name: 'ActiveSpeakerOnlyConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an <code>ActiveSpeakerOnly</code> video tile.</p>"}))
    GridViewConfiguration.add_member(:horizontal_layout_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HorizontalLayoutConfiguration, location_name: 'HorizontalLayoutConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for a horizontal layout.</p>"}))
    GridViewConfiguration.add_member(:vertical_layout_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VerticalLayoutConfiguration, location_name: 'VerticalLayoutConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for a vertical layout.</p>"}))
    GridViewConfiguration.add_member(:video_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoAttribute, location_name: 'VideoAttribute', traits: {"smithy.api#documentation" => "<p>The attribute settings for the video tiles.</p>"}))
    GridViewConfiguration.add_member(:canvas_orientation, Smithy::Schema::Shapes::ShapeRef.new(shape: CanvasOrientation, location_name: 'CanvasOrientation', traits: {"smithy.api#documentation" => "<p>The orientation setting, horizontal or vertical.</p>"}))
    GridViewConfiguration.type = Types::GridViewConfiguration
    HighlightColor.add_member(:black, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Black', traits: {"smithy.api#enumValue" => "Black"}))
    HighlightColor.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Blue', traits: {"smithy.api#enumValue" => "Blue"}))
    HighlightColor.add_member(:red, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Red', traits: {"smithy.api#enumValue" => "Red"}))
    HighlightColor.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Green', traits: {"smithy.api#enumValue" => "Green"}))
    HighlightColor.add_member(:white, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'White', traits: {"smithy.api#enumValue" => "White"}))
    HighlightColor.add_member(:yellow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yellow', traits: {"smithy.api#enumValue" => "Yellow"}))
    HorizontalLayoutConfiguration.add_member(:tile_order, Smithy::Schema::Shapes::ShapeRef.new(shape: TileOrder, location_name: 'TileOrder', traits: {"smithy.api#documentation" => "<p>Sets the automatic ordering of the video tiles.</p>"}))
    HorizontalLayoutConfiguration.add_member(:tile_position, Smithy::Schema::Shapes::ShapeRef.new(shape: HorizontalTilePosition, location_name: 'TilePosition', traits: {"smithy.api#documentation" => "<p>Sets the position of horizontal tiles.</p>"}))
    HorizontalLayoutConfiguration.add_member(:tile_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TileCount, location_name: 'TileCount', traits: {"smithy.api#documentation" => "<p>The maximum number of video tiles to display.</p>"}))
    HorizontalLayoutConfiguration.add_member(:tile_aspect_ratio, Smithy::Schema::Shapes::ShapeRef.new(shape: TileAspectRatio, location_name: 'TileAspectRatio', traits: {"smithy.api#documentation" => "<p>Specifies the aspect ratio of all video tiles.</p>"}))
    HorizontalLayoutConfiguration.type = Types::HorizontalLayoutConfiguration
    HorizontalTilePosition.add_member(:top, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Top', traits: {"smithy.api#enumValue" => "Top"}))
    HorizontalTilePosition.add_member(:bottom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Bottom', traits: {"smithy.api#enumValue" => "Bottom"}))
    IssueDetectionConfiguration.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the issue detection rule.</p>", "smithy.api#required" => {}}))
    IssueDetectionConfiguration.type = Types::IssueDetectionConfiguration
    KeywordMatchConfiguration.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the keyword match rule.</p>", "smithy.api#required" => {}}))
    KeywordMatchConfiguration.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMatchWordList, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>The keywords or phrases that you want to match.</p>", "smithy.api#required" => {}}))
    KeywordMatchConfiguration.add_member(:negate, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Negate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Matches keywords or phrases on their presence or absence. If set to <code>TRUE</code>, the rule matches when all\n         the specified keywords or phrases are absent. Default: <code>FALSE</code>.</p>"}))
    KeywordMatchConfiguration.type = Types::KeywordMatchConfiguration
    KeywordMatchWordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Keyword)
    KinesisDataStreamSinkConfiguration.add_member(:insights_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InsightsTarget', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    KinesisDataStreamSinkConfiguration.type = Types::KinesisDataStreamSinkConfiguration
    KinesisVideoStreamConfiguration.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsRegion, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region of the video stream.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamConfiguration.add_member(:data_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionInHours, location_name: 'DataRetentionInHours', traits: {"smithy.api#documentation" => "<p>The amount of time that data is retained.</p>"}))
    KinesisVideoStreamConfiguration.type = Types::KinesisVideoStreamConfiguration
    KinesisVideoStreamConfigurationUpdate.add_member(:data_retention_in_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetentionChangeInHours, location_name: 'DataRetentionInHours', traits: {"smithy.api#documentation" => "<p>The updated time that data is retained.</p>"}))
    KinesisVideoStreamConfigurationUpdate.type = Types::KinesisVideoStreamConfigurationUpdate
    KinesisVideoStreamPoolConfiguration.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The ARN of the video stream pool configuration.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the video stream pool configuration.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the video stream pool in the configuration.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_status, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolStatus, location_name: 'PoolStatus', traits: {"smithy.api#documentation" => "<p>The status of the video stream pool in the configuration. </p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_size, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolSize, location_name: 'PoolSize', traits: {"smithy.api#documentation" => "<p>The size of the video stream pool in the configuration.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:stream_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamConfiguration, location_name: 'StreamConfiguration', traits: {"smithy.api#documentation" => "<p>The Kinesis video stream pool configuration object.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the configuration was created.</p>"}))
    KinesisVideoStreamPoolConfiguration.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the configuration was updated.</p>"}))
    KinesisVideoStreamPoolConfiguration.type = Types::KinesisVideoStreamPoolConfiguration
    KinesisVideoStreamPoolStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    KinesisVideoStreamPoolStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    KinesisVideoStreamPoolStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    KinesisVideoStreamPoolStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    KinesisVideoStreamPoolStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    KinesisVideoStreamPoolSummary.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the video stream pool.</p>"}))
    KinesisVideoStreamPoolSummary.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The ID of the video stream pool.</p>"}))
    KinesisVideoStreamPoolSummary.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The ARN of the video stream pool.</p>"}))
    KinesisVideoStreamPoolSummary.type = Types::KinesisVideoStreamPoolSummary
    KinesisVideoStreamPoolSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolSummary)
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingStreamList, location_name: 'Streams', traits: {"smithy.api#documentation" => "<p>The stream or streams to be recorded.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:fragment_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentSelector, location_name: 'FragmentSelector', traits: {"smithy.api#documentation" => "<p>Describes the timestamp range and timestamp origin of a range of fragments in the Kinesis video stream.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.type = Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: Streams, location_name: 'Streams', traits: {"smithy.api#documentation" => "<p>The streams in the source runtime configuration of a Kinesis video stream.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaEncoding, location_name: 'MediaEncoding', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of your input audio. Supported format: PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio\">Media formats</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: 'MediaSampleRate', traits: {"smithy.api#documentation" => "<p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone \n         audio, is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to \n         48,000 Hz. Note that the sample rate you specify must match that of your audio.</p>\n         <p>Valid Range: Minimum value of 8000. Maximum value of 48000.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.type = Types::KinesisVideoStreamSourceRuntimeConfiguration
    KinesisVideoStreamSourceTaskConfiguration.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the stream.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamSourceTaskConfiguration.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'ChannelId', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The channel ID.</p>", "smithy.api#required" => {}}))
    KinesisVideoStreamSourceTaskConfiguration.add_member(:fragment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: 'FragmentNumber', traits: {"smithy.api#documentation" => "<p>The unique identifier of the fragment to begin processing.</p>"}))
    KinesisVideoStreamSourceTaskConfiguration.type = Types::KinesisVideoStreamSourceTaskConfiguration
    LambdaFunctionSinkConfiguration.add_member(:insights_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InsightsTarget', traits: {"smithy.api#documentation" => "<p>The ARN of the sink.</p>"}))
    LambdaFunctionSinkConfiguration.type = Types::LambdaFunctionSinkConfiguration
    LayoutOption.add_member(:grid_view, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GridView', traits: {"smithy.api#enumValue" => "GridView"}))
    ListMediaCapturePipelinesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListMediaCapturePipelinesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListMediaCapturePipelinesRequest.type = Types::ListMediaCapturePipelinesRequest
    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipelineSummaryList, location_name: 'MediaCapturePipelines', traits: {"smithy.api#documentation" => "<p>The media pipeline objects in the list.</p>"}))
    ListMediaCapturePipelinesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. </p>"}))
    ListMediaCapturePipelinesResponse.type = Types::ListMediaCapturePipelinesResponse
    ListMediaInsightsPipelineConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListMediaInsightsPipelineConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListMediaInsightsPipelineConfigurationsRequest.type = Types::ListMediaInsightsPipelineConfigurationsRequest
    ListMediaInsightsPipelineConfigurationsResponse.add_member(:media_insights_pipeline_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationSummaryList, location_name: 'MediaInsightsPipelineConfigurations', traits: {"smithy.api#documentation" => "<p>The requested list of media insights pipeline configurations.</p>"}))
    ListMediaInsightsPipelineConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results. </p>"}))
    ListMediaInsightsPipelineConfigurationsResponse.type = Types::ListMediaInsightsPipelineConfigurationsResponse
    ListMediaPipelineKinesisVideoStreamPoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results. </p>", "smithy.api#httpQuery" => "next-token"}))
    ListMediaPipelineKinesisVideoStreamPoolsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListMediaPipelineKinesisVideoStreamPoolsRequest.type = Types::ListMediaPipelineKinesisVideoStreamPoolsRequest
    ListMediaPipelineKinesisVideoStreamPoolsResponse.add_member(:kinesis_video_stream_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolSummaryList, location_name: 'KinesisVideoStreamPools', traits: {"smithy.api#documentation" => "<p>The list of video stream pools.</p>"}))
    ListMediaPipelineKinesisVideoStreamPoolsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to return the next page of results.</p>"}))
    ListMediaPipelineKinesisVideoStreamPoolsResponse.type = Types::ListMediaPipelineKinesisVideoStreamPoolsResponse
    ListMediaPipelinesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListMediaPipelinesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListMediaPipelinesRequest.type = Types::ListMediaPipelinesRequest
    ListMediaPipelinesResponse.add_member(:media_pipelines, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineList, location_name: 'MediaPipelines', traits: {"smithy.api#documentation" => "<p>The media pipeline objects in the list.</p>"}))
    ListMediaPipelinesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token used to retrieve the next page of results. </p>"}))
    ListMediaPipelinesResponse.type = Types::ListMediaPipelinesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's region, resource ID, and pipeline ID.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the specified media pipeline.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LiveConnectorMuxType.add_member(:audio_with_composited_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AudioWithCompositedVideo', traits: {"smithy.api#enumValue" => "AudioWithCompositedVideo"}))
    LiveConnectorMuxType.add_member(:audio_with_active_speaker_video, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AudioWithActiveSpeakerVideo', traits: {"smithy.api#enumValue" => "AudioWithActiveSpeakerVideo"}))
    LiveConnectorRTMPConfiguration.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL of the RTMP configuration.</p>", "smithy.api#required" => {}}))
    LiveConnectorRTMPConfiguration.add_member(:audio_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioChannelsOption, location_name: 'AudioChannels', traits: {"smithy.api#documentation" => "<p>The audio channels set for the RTMP configuration</p>"}))
    LiveConnectorRTMPConfiguration.add_member(:audio_sample_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioSampleRateOption, location_name: 'AudioSampleRate', traits: {"smithy.api#documentation" => "<p>The audio sample rate set for the RTMP configuration. Default: 48000.</p>"}))
    LiveConnectorRTMPConfiguration.type = Types::LiveConnectorRTMPConfiguration
    LiveConnectorSinkConfiguration.add_member(:sink_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSinkType, location_name: 'SinkType', traits: {"smithy.api#documentation" => "<p>The sink configuration's sink type.</p>", "smithy.api#required" => {}}))
    LiveConnectorSinkConfiguration.add_member(:rtmp_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorRTMPConfiguration, location_name: 'RTMPConfiguration', traits: {"smithy.api#documentation" => "<p>The sink configuration's RTMP configuration settings.</p>", "smithy.api#required" => {}}))
    LiveConnectorSinkConfiguration.type = Types::LiveConnectorSinkConfiguration
    LiveConnectorSinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSinkConfiguration)
    LiveConnectorSinkType.add_member(:rtmp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTMP', traits: {"smithy.api#enumValue" => "RTMP"}))
    LiveConnectorSourceConfiguration.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source configuration's media source type.</p>", "smithy.api#required" => {}}))
    LiveConnectorSourceConfiguration.add_member(:chime_sdk_meeting_live_connector_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeSdkMeetingLiveConnectorConfiguration, location_name: 'ChimeSdkMeetingLiveConnectorConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the connector pipeline.</p>", "smithy.api#required" => {}}))
    LiveConnectorSourceConfiguration.type = Types::LiveConnectorSourceConfiguration
    LiveConnectorSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSourceConfiguration)
    LiveConnectorSourceType.add_member(:chime_sdk_meeting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChimeSdkMeeting', traits: {"smithy.api#enumValue" => "ChimeSdkMeeting"}))
    MediaCapturePipeline.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of a media pipeline.</p>"}))
    MediaCapturePipeline.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media capture pipeline</p>"}))
    MediaCapturePipeline.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>Source type from which media artifacts are saved. You must use\n         <code>ChimeMeeting</code>.</p>"}))
    MediaCapturePipeline.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>ARN of the source from which the media artifacts are saved.</p>"}))
    MediaCapturePipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the media pipeline.</p>"}))
    MediaCapturePipeline.add_member(:sink_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSinkType, location_name: 'SinkType', traits: {"smithy.api#documentation" => "<p>Destination type to which the media artifacts are saved. You must use an S3\n         Bucket.</p>"}))
    MediaCapturePipeline.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>ARN of the destination to which the media artifacts are saved.</p>"}))
    MediaCapturePipeline.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the pipeline was created, in ISO 8601 format.</p>"}))
    MediaCapturePipeline.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the pipeline was updated, in ISO 8601 format.</p>"}))
    MediaCapturePipeline.add_member(:chime_sdk_meeting_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: 'ChimeSdkMeetingConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a specified media pipeline. <code>SourceType</code> must\n         be <code>ChimeSdkMeeting</code>.</p>"}))
    MediaCapturePipeline.add_member(:sse_aws_key_management_params, Smithy::Schema::Shapes::ShapeRef.new(shape: SseAwsKeyManagementParams, location_name: 'SseAwsKeyManagementParams', traits: {"smithy.api#documentation" => "<p>An object that contains server side encryption parameters to be used by media capture\n         pipeline. The parameters can also be used by media concatenation pipeline taking media\n         capture pipeline as a media source.</p>"}))
    MediaCapturePipeline.add_member(:sink_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SinkIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the sink role to be used with <code>AwsKmsKeyId</code>\n         in <code>SseAwsKeyManagementParams</code>.</p>"}))
    MediaCapturePipeline.type = Types::MediaCapturePipeline
    MediaCapturePipelineSourceConfiguration.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The media pipeline ARN in the configuration object of a media capture pipeline.</p>", "smithy.api#required" => {}}))
    MediaCapturePipelineSourceConfiguration.add_member(:chime_sdk_meeting_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChimeSdkMeetingConcatenationConfiguration, location_name: 'ChimeSdkMeetingConfiguration', traits: {"smithy.api#documentation" => "<p>The meeting configuration settings in a media capture pipeline configuration object. </p>", "smithy.api#required" => {}}))
    MediaCapturePipelineSourceConfiguration.type = Types::MediaCapturePipelineSourceConfiguration
    MediaCapturePipelineSummary.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media pipeline in the summary.</p>"}))
    MediaCapturePipelineSummary.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media pipeline in the summary.</p>"}))
    MediaCapturePipelineSummary.type = Types::MediaCapturePipelineSummary
    MediaCapturePipelineSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipelineSummary)
    MediaConcatenationPipeline.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media pipeline being concatenated.</p>"}))
    MediaConcatenationPipeline.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media pipeline that you specify in the <code>SourceConfiguration</code> object.</p>"}))
    MediaConcatenationPipeline.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>The data sources being concatenated.</p>"}))
    MediaConcatenationPipeline.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: ConcatenationSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>The data sinks of the concatenation pipeline.</p>"}))
    MediaConcatenationPipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the concatenation pipeline.</p>"}))
    MediaConcatenationPipeline.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the concatenation pipeline was created.</p>"}))
    MediaConcatenationPipeline.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the concatenation pipeline was last updated.</p>"}))
    MediaConcatenationPipeline.type = Types::MediaConcatenationPipeline
    MediaEncoding.add_member(:pcm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCM', traits: {"smithy.api#enumValue" => "pcm"}))
    MediaInsightsPipeline.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:media_insights_pipeline_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaInsightsPipelineConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of a media insight pipeline's configuration settings.</p>"}))
    MediaInsightsPipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_source_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceRuntimeConfiguration, location_name: 'KinesisVideoStreamSourceRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for a Kinesis runtime video stream in a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:media_insights_runtime_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsRuntimeMetadata, location_name: 'MediaInsightsRuntimeMetadata', traits: {"smithy.api#documentation" => "<p>The runtime metadata of a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_recording_source_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamRecordingSourceRuntimeConfiguration, location_name: 'KinesisVideoStreamRecordingSourceRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration settings for a Kinesis recording video stream in a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:s3_recording_sink_runtime_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3RecordingSinkRuntimeConfiguration, location_name: 'S3RecordingSinkRuntimeConfiguration', traits: {"smithy.api#documentation" => "<p>The runtime configuration of the Amazon S3 bucket that stores recordings in a media insights pipeline.</p>"}))
    MediaInsightsPipeline.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the media insights pipeline was created.</p>"}))
    MediaInsightsPipeline.add_member(:element_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineElementStatuses, location_name: 'ElementStatuses', traits: {"smithy.api#documentation" => "<p>The statuses that the elements in a media insights pipeline can have during data processing.</p>"}))
    MediaInsightsPipeline.type = Types::MediaInsightsPipeline
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, location_name: 'MediaInsightsPipelineConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaInsightsPipelineConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the configuration.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:resource_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by the service to access Amazon Web Services resources.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:real_time_alert_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: 'RealTimeAlertConfiguration', traits: {"smithy.api#documentation" => "<p>Lists the rules that trigger a real-time alert.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:elements, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, location_name: 'Elements', traits: {"smithy.api#documentation" => "<p>The elements in the configuration.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaInsightsPipelineConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the configuration was created.</p>"}))
    MediaInsightsPipelineConfiguration.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the configuration was last updated.</p>"}))
    MediaInsightsPipelineConfiguration.type = Types::MediaInsightsPipelineConfiguration
    MediaInsightsPipelineConfigurationElement.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElementType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The element type.</p>", "smithy.api#required" => {}}))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_call_analytics_processor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonTranscribeCallAnalyticsProcessorConfiguration, location_name: 'AmazonTranscribeCallAnalyticsProcessorConfiguration', traits: {"smithy.api#documentation" => "<p>The analytics configuration settings for transcribing audio in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_processor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonTranscribeProcessorConfiguration, location_name: 'AmazonTranscribeProcessorConfiguration', traits: {"smithy.api#documentation" => "<p>The transcription processor configuration settings in a media insights pipeline\n         configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:kinesis_data_stream_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataStreamSinkConfiguration, location_name: 'KinesisDataStreamSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the Kinesis Data Stream Sink in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:s3_recording_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3RecordingSinkConfiguration, location_name: 'S3RecordingSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the Amazon S3 recording bucket in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:voice_analytics_processor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceAnalyticsProcessorConfiguration, location_name: 'VoiceAnalyticsProcessorConfiguration', traits: {"smithy.api#documentation" => "<p>The voice analytics configuration settings in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:lambda_function_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionSinkConfiguration, location_name: 'LambdaFunctionSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the Amazon Web Services Lambda sink in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:sqs_queue_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsQueueSinkConfiguration, location_name: 'SqsQueueSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an SQS queue sink in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:sns_topic_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicSinkConfiguration, location_name: 'SnsTopicSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an SNS topic sink in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.add_member(:voice_enhancement_sink_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceEnhancementSinkConfiguration, location_name: 'VoiceEnhancementSinkConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for voice enhancement sink in a media insights pipeline configuration element.</p>"}))
    MediaInsightsPipelineConfigurationElement.type = Types::MediaInsightsPipelineConfigurationElement
    MediaInsightsPipelineConfigurationElementType.add_member(:amazon_transcribe_call_analytics_processor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_TRANSCRIBE_CALL_ANALYTICS_PROCESSOR', traits: {"smithy.api#enumValue" => "AmazonTranscribeCallAnalyticsProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:voice_analytics_processor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE_ANALYTICS_PROCESSOR', traits: {"smithy.api#enumValue" => "VoiceAnalyticsProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:amazon_transcribe_processor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_TRANSCRIBE_PROCESSOR', traits: {"smithy.api#enumValue" => "AmazonTranscribeProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:kinesis_data_stream_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KINESIS_DATA_STREAM_SINK', traits: {"smithy.api#enumValue" => "KinesisDataStreamSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:lambda_function_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_FUNCTION_SINK', traits: {"smithy.api#enumValue" => "LambdaFunctionSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:sqs_queue_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS_QUEUE_SINK', traits: {"smithy.api#enumValue" => "SqsQueueSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:sns_topic_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS_TOPIC_SINK', traits: {"smithy.api#enumValue" => "SnsTopicSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:s3_recording_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_RECORDING_SINK', traits: {"smithy.api#enumValue" => "S3RecordingSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:voice_enhancement_sink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOICE_ENHANCEMENT_SINK', traits: {"smithy.api#enumValue" => "VoiceEnhancementSink"}))
    MediaInsightsPipelineConfigurationElements.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElement)
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, location_name: 'MediaInsightsPipelineConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the media insights pipeline configuration.</p>"}))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaInsightsPipelineConfigurationId', traits: {"smithy.api#documentation" => "<p>The ID of the media insights pipeline configuration.</p>"}))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'MediaInsightsPipelineConfigurationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media insights pipeline configuration.</p>"}))
    MediaInsightsPipelineConfigurationSummary.type = Types::MediaInsightsPipelineConfigurationSummary
    MediaInsightsPipelineConfigurationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationSummary)
    MediaInsightsPipelineElementStatus.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElementType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of status.</p>"}))
    MediaInsightsPipelineElementStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineElementStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The element's status.</p>"}))
    MediaInsightsPipelineElementStatus.type = Types::MediaInsightsPipelineElementStatus
    MediaInsightsPipelineElementStatuses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineElementStatus)
    MediaInsightsRuntimeMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    MediaInsightsRuntimeMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MediaLiveConnectorPipeline.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>The connector pipeline's data sources.</p>"}))
    MediaLiveConnectorPipeline.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: LiveConnectorSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>The connector pipeline's data sinks.</p>"}))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The connector pipeline's ID.</p>"}))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The connector pipeline's ARN.</p>"}))
    MediaLiveConnectorPipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The connector pipeline's status.</p>"}))
    MediaLiveConnectorPipeline.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the connector pipeline was created.</p>"}))
    MediaLiveConnectorPipeline.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the connector pipeline was last updated.</p>"}))
    MediaLiveConnectorPipeline.type = Types::MediaLiveConnectorPipeline
    MediaPipeline.add_member(:media_capture_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: 'MediaCapturePipeline', traits: {"smithy.api#documentation" => "<p>A pipeline that enables users to capture audio and video.</p>"}))
    MediaPipeline.add_member(:media_live_connector_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaLiveConnectorPipeline, location_name: 'MediaLiveConnectorPipeline', traits: {"smithy.api#documentation" => "<p>The connector pipeline of the media pipeline.</p>"}))
    MediaPipeline.add_member(:media_concatenation_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaConcatenationPipeline, location_name: 'MediaConcatenationPipeline', traits: {"smithy.api#documentation" => "<p>The media concatenation pipeline in a media pipeline.</p>"}))
    MediaPipeline.add_member(:media_insights_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipeline, location_name: 'MediaInsightsPipeline', traits: {"smithy.api#documentation" => "<p>The media insights pipeline of a media pipeline.</p>"}))
    MediaPipeline.add_member(:media_stream_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamPipeline, location_name: 'MediaStreamPipeline', traits: {"smithy.api#documentation" => "<p>Designates a media pipeline as a media stream pipeline.</p>"}))
    MediaPipeline.type = Types::MediaPipeline
    MediaPipelineElementStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotStarted', traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineElementStatus.add_member(:not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotSupported', traits: {"smithy.api#enumValue" => "NotSupported"}))
    MediaPipelineElementStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Initializing', traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineElementStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineElementStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineElementStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineElementStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaPipelineElementStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Paused', traits: {"smithy.api#enumValue" => "Paused"}))
    MediaPipelineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSummary)
    MediaPipelineSinkType.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3Bucket', traits: {"smithy.api#enumValue" => "S3Bucket"}))
    MediaPipelineSourceType.add_member(:chime_sdk_meeting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ChimeSdkMeeting', traits: {"smithy.api#enumValue" => "ChimeSdkMeeting"}))
    MediaPipelineStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Initializing', traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaPipelineStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Paused', traits: {"smithy.api#enumValue" => "Paused"}))
    MediaPipelineStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotStarted', traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineStatusUpdate.add_member(:pause, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pause', traits: {"smithy.api#enumValue" => "Pause"}))
    MediaPipelineStatusUpdate.add_member(:resume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Resume', traits: {"smithy.api#enumValue" => "Resume"}))
    MediaPipelineSummary.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media pipeline in the summary.</p>"}))
    MediaPipelineSummary.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media pipeline in the summary.</p>"}))
    MediaPipelineSummary.type = Types::MediaPipelineSummary
    MediaPipelineTaskStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotStarted', traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineTaskStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Initializing', traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineTaskStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineTaskStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineTaskStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaStreamPipeline.add_member(:media_pipeline_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MediaPipelineId', traits: {"smithy.api#documentation" => "<p>The ID of the media stream pipeline</p>"}))
    MediaStreamPipeline.add_member(:media_pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MediaPipelineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the media stream pipeline.</p>"}))
    MediaStreamPipeline.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the media stream pipeline was created.</p>"}))
    MediaStreamPipeline.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which the media stream pipeline was updated.</p>"}))
    MediaStreamPipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the media stream pipeline.</p>"}))
    MediaStreamPipeline.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSourceList, location_name: 'Sources', traits: {"smithy.api#documentation" => "<p>The media stream pipeline's data sources.</p>"}))
    MediaStreamPipeline.add_member(:sinks, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSinkList, location_name: 'Sinks', traits: {"smithy.api#documentation" => "<p>The media stream pipeline's data sinks.</p>"}))
    MediaStreamPipeline.type = Types::MediaStreamPipeline
    MediaStreamPipelineSinkType.add_member(:kinesis_video_stream_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KinesisVideoStreamPool', traits: {"smithy.api#enumValue" => "KinesisVideoStreamPool"}))
    MediaStreamSink.add_member(:sink_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SinkArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Kinesis Video Stream pool returned by the <a>CreateMediaPipelineKinesisVideoStreamPool</a> API.</p>", "smithy.api#required" => {}}))
    MediaStreamSink.add_member(:sink_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamPipelineSinkType, location_name: 'SinkType', traits: {"smithy.api#documentation" => "<p>The media stream sink's type.</p>", "smithy.api#required" => {}}))
    MediaStreamSink.add_member(:reserved_stream_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedStreamCapacity, location_name: 'ReservedStreamCapacity', traits: {"smithy.api#documentation" => "<p>Specifies the number of streams that the sink can accept.</p>", "smithy.api#required" => {}}))
    MediaStreamSink.add_member(:media_stream_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamType, location_name: 'MediaStreamType', traits: {"smithy.api#documentation" => "<p>The media stream sink's media stream type.</p>", "smithy.api#required" => {}}))
    MediaStreamSink.type = Types::MediaStreamSink
    MediaStreamSinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSink)
    MediaStreamSource.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The type of media stream source.</p>", "smithy.api#required" => {}}))
    MediaStreamSource.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the meeting.</p>", "smithy.api#required" => {}}))
    MediaStreamSource.type = Types::MediaStreamSource
    MediaStreamSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MediaStreamSource)
    MediaStreamType.add_member(:mixed_audio, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MixedAudio', traits: {"smithy.api#enumValue" => "MixedAudio"}))
    MediaStreamType.add_member(:individual_audio, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IndividualAudio', traits: {"smithy.api#enumValue" => "IndividualAudio"}))
    MeetingEventsConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    MeetingEventsConcatenationConfiguration.type = Types::MeetingEventsConcatenationConfiguration
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    NotFoundException.type = Types::NotFoundException
    PartialResultsStability.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "high"}))
    PartialResultsStability.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "medium"}))
    PartialResultsStability.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "low"}))
    ParticipantRole.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT', traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    PostCallAnalyticsSettings.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>The URL of the Amazon S3 bucket that contains the post-call data.</p>", "smithy.api#required" => {}}))
    PostCallAnalyticsSettings.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by Amazon Web Services Transcribe to upload your post call analysis. For more information, see \n         <a href=\"https://docs.aws.amazon.com/transcribe/latest/dg/tca-post-call.html\">Post-call analytics with real-time transcriptions</a> in the <i>Amazon Transcribe Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    PostCallAnalyticsSettings.add_member(:content_redaction_output, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRedactionOutput, location_name: 'ContentRedactionOutput', traits: {"smithy.api#documentation" => "<p>The content redaction output settings for a post-call analysis task.</p>"}))
    PostCallAnalyticsSettings.add_member(:output_encryption_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OutputEncryptionKMSKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS (Key Management Service) key used to encrypt the output.</p>"}))
    PostCallAnalyticsSettings.type = Types::PostCallAnalyticsSettings
    PresenterOnlyConfiguration.add_member(:presenter_position, Smithy::Schema::Shapes::ShapeRef.new(shape: PresenterPosition, location_name: 'PresenterPosition', traits: {"smithy.api#documentation" => "<p>Defines the position of the presenter video tile. Default: <code>TopRight</code>.</p>"}))
    PresenterOnlyConfiguration.type = Types::PresenterOnlyConfiguration
    PresenterPosition.add_member(:top_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TopLeft', traits: {"smithy.api#enumValue" => "TopLeft"}))
    PresenterPosition.add_member(:top_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TopRight', traits: {"smithy.api#enumValue" => "TopRight"}))
    PresenterPosition.add_member(:bottom_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BottomLeft', traits: {"smithy.api#enumValue" => "BottomLeft"}))
    PresenterPosition.add_member(:bottom_right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BottomRight', traits: {"smithy.api#enumValue" => "BottomRight"}))
    RealTimeAlertConfiguration.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Turns off real-time alerts.</p>"}))
    RealTimeAlertConfiguration.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertRuleList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The rules in the alert. Rules specify the words or phrases that you want to be notified about.</p>"}))
    RealTimeAlertConfiguration.type = Types::RealTimeAlertConfiguration
    RealTimeAlertRule.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertRuleType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of alert rule.</p>", "smithy.api#required" => {}}))
    RealTimeAlertRule.add_member(:keyword_match_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KeywordMatchConfiguration, location_name: 'KeywordMatchConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the settings for matching the keywords in a real-time alert rule.</p>"}))
    RealTimeAlertRule.add_member(:sentiment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentConfiguration, location_name: 'SentimentConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the settings for predicting sentiment in a real-time alert rule.</p>"}))
    RealTimeAlertRule.add_member(:issue_detection_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueDetectionConfiguration, location_name: 'IssueDetectionConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the issue detection settings for a real-time alert rule.</p>"}))
    RealTimeAlertRule.type = Types::RealTimeAlertRule
    RealTimeAlertRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertRule)
    RealTimeAlertRuleType.add_member(:keyword_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KeywordMatch', traits: {"smithy.api#enumValue" => "KeywordMatch"}))
    RealTimeAlertRuleType.add_member(:sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sentiment', traits: {"smithy.api#enumValue" => "Sentiment"}))
    RealTimeAlertRuleType.add_member(:issue_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IssueDetection', traits: {"smithy.api#enumValue" => "IssueDetection"}))
    RecordingFileFormat.add_member(:wav, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Wav', traits: {"smithy.api#enumValue" => "Wav"}))
    RecordingFileFormat.add_member(:opus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Opus', traits: {"smithy.api#enumValue" => "Opus"}))
    RecordingStreamConfiguration.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the recording stream.</p>"}))
    RecordingStreamConfiguration.type = Types::RecordingStreamConfiguration
    RecordingStreamList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingStreamConfiguration)
    ResolutionOption.add_member(:hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HD', traits: {"smithy.api#enumValue" => "HD"}))
    ResolutionOption.add_member(:fhd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FHD', traits: {"smithy.api#enumValue" => "FHD"}))
    ResourceLimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceLimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    S3BucketSinkConfiguration.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The destination URL of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3BucketSinkConfiguration.type = Types::S3BucketSinkConfiguration
    S3RecordingSinkConfiguration.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The default URI of the Amazon S3 bucket used as the recording sink.</p>"}))
    S3RecordingSinkConfiguration.add_member(:recording_file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingFileFormat, location_name: 'RecordingFileFormat', traits: {"smithy.api#documentation" => "<p>The default file format for the media files sent to the Amazon S3 bucket.</p>"}))
    S3RecordingSinkConfiguration.type = Types::S3RecordingSinkConfiguration
    S3RecordingSinkRuntimeConfiguration.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The URI of the S3 bucket used as the sink.</p>", "smithy.api#required" => {}}))
    S3RecordingSinkRuntimeConfiguration.add_member(:recording_file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingFileFormat, location_name: 'RecordingFileFormat', traits: {"smithy.api#documentation" => "<p>The file format for the media files sent to the Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    S3RecordingSinkRuntimeConfiguration.type = Types::S3RecordingSinkRuntimeConfiguration
    SelectedVideoStreams.add_member(:attendee_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeIdList, location_name: 'AttendeeIds', traits: {"smithy.api#documentation" => "<p>The attendee IDs of the streams selected for a media pipeline. </p>"}))
    SelectedVideoStreams.add_member(:external_user_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserIdList, location_name: 'ExternalUserIds', traits: {"smithy.api#documentation" => "<p>The external user IDs of the streams selected for a media pipeline.</p>"}))
    SelectedVideoStreams.type = Types::SelectedVideoStreams
    SentimentConfiguration.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'RuleName', traits: {"smithy.api#documentation" => "<p>The name of the rule in the sentiment configuration.</p>", "smithy.api#required" => {}}))
    SentimentConfiguration.add_member(:sentiment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentType, location_name: 'SentimentType', traits: {"smithy.api#documentation" => "<p>The type of sentiment, <code>POSITIVE</code>, <code>NEGATIVE</code>, or <code>NEUTRAL</code>.</p>", "smithy.api#required" => {}}))
    SentimentConfiguration.add_member(:time_period, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentTimePeriodInSeconds, location_name: 'TimePeriod', traits: {"smithy.api#documentation" => "<p>Specifies the analysis interval.</p>", "smithy.api#required" => {}}))
    SentimentConfiguration.type = Types::SentimentConfiguration
    SentimentType.add_member(:negative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SnsTopicSinkConfiguration.add_member(:insights_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InsightsTarget', traits: {"smithy.api#documentation" => "<p>The ARN of the SNS sink.</p>"}))
    SnsTopicSinkConfiguration.type = Types::SnsTopicSinkConfiguration
    SourceConfiguration.add_member(:selected_video_streams, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedVideoStreams, location_name: 'SelectedVideoStreams', traits: {"smithy.api#documentation" => "<p>The selected video streams for a specified media pipeline. The number\n         of video streams can't exceed 25.</p>"}))
    SourceConfiguration.type = Types::SourceConfiguration
    SpeakerSearchTask.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The speaker search task ID.</p>"}))
    SpeakerSearchTask.add_member(:speaker_search_task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineTaskStatus, location_name: 'SpeakerSearchTaskStatus', traits: {"smithy.api#documentation" => "<p>The status of the speaker search task.</p>"}))
    SpeakerSearchTask.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a speaker search task was created.</p>"}))
    SpeakerSearchTask.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a speaker search task was updated.</p>"}))
    SpeakerSearchTask.type = Types::SpeakerSearchTask
    SqsQueueSinkConfiguration.add_member(:insights_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'InsightsTarget', traits: {"smithy.api#documentation" => "<p>The ARN of the SQS sink.</p>"}))
    SqsQueueSinkConfiguration.type = Types::SqsQueueSinkConfiguration
    SseAwsKeyManagementParams.add_member(:aws_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsKmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key you want to use to encrypt your media pipeline output.\n         Decryption is required for concatenation pipeline. If using a key located in the current\n         Amazon Web Services account, you can specify your KMS key in one of four\n         ways:</p>\n         <ul>\n            <li>\n               <p>Use the KMS key ID itself. For example,\n               <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>Use an alias for the KMS key ID. For example,\n               <code>alias/ExampleAlias</code>.</p>\n            </li>\n            <li>\n               <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For example,\n               <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>Use the ARN for the KMS key alias. For example,\n               <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>\n            </li>\n         </ul>\n         <p>If using a key located in a different Amazon Web Services account than the current\n         Amazon Web Services account, you can specify your KMS key in one of two\n         ways:</p>\n         <ul>\n            <li>\n               <p>Use the ARN for the KMS key ID. For example,\n               <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>Use the ARN for the KMS key alias. For example,\n               <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>\n            </li>\n         </ul>\n         <p>If you don't specify an encryption key, your output is encrypted with the default\n         Amazon S3 key (SSE-S3).</p>\n         <p>Note that the role specified in the <code>SinkIamRoleArn</code> request parameter must\n         have permission to use the specified KMS key.</p>", "smithy.api#required" => {}}))
    SseAwsKeyManagementParams.add_member(:aws_kms_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AwsKmsEncryptionContext', traits: {"smithy.api#documentation" => "<p>Base64-encoded string of a UTF-8 encoded JSON, which contains the encryption context as\n         non-secret key-value pair known as encryption context pairs, that provides an added layer\n         of security for your data. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/encrypt_context.html\">KMS encryption\n            context</a> and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Asymmetric keys in KMS</a> in the <i>Key Management Service Developer\n                     Guide</i>.</p>"}))
    SseAwsKeyManagementParams.type = Types::SseAwsKeyManagementParams
    StartSpeakerSearchTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:voice_profile_domain_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'VoiceProfileDomainArn', traits: {"smithy.api#documentation" => "<p>The ARN of the voice profile domain that will store the voice profile.</p>", "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:kinesis_video_stream_source_task_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceTaskConfiguration, location_name: 'KinesisVideoStreamSourceTaskConfiguration', traits: {"smithy.api#documentation" => "<p>The task configuration for the Kinesis video stream source of the media insights\n         pipeline.</p>"}))
    StartSpeakerSearchTaskRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>", "smithy.api#idempotencyToken" => {}}))
    StartSpeakerSearchTaskRequest.type = Types::StartSpeakerSearchTaskRequest
    StartSpeakerSearchTaskResponse.add_member(:speaker_search_task, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSearchTask, location_name: 'SpeakerSearchTask', traits: {"smithy.api#documentation" => "<p>The details of the speaker search task.</p>"}))
    StartSpeakerSearchTaskResponse.type = Types::StartSpeakerSearchTaskResponse
    StartVoiceToneAnalysisTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceAnalyticsLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code.</p>", "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:kinesis_video_stream_source_task_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceTaskConfiguration, location_name: 'KinesisVideoStreamSourceTaskConfiguration', traits: {"smithy.api#documentation" => "<p>The task configuration for the Kinesis video stream source of the media insights\n         pipeline.</p>"}))
    StartVoiceToneAnalysisTaskRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different voice tone analysis tasks.</p>", "smithy.api#idempotencyToken" => {}}))
    StartVoiceToneAnalysisTaskRequest.type = Types::StartVoiceToneAnalysisTaskRequest
    StartVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceToneAnalysisTask, location_name: 'VoiceToneAnalysisTask', traits: {"smithy.api#documentation" => "<p>The details of the voice tone analysis task.</p>"}))
    StartVoiceToneAnalysisTaskResponse.type = Types::StartVoiceToneAnalysisTaskResponse
    StopSpeakerSearchTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'SpeakerSearchTaskId', traits: {"smithy.api#documentation" => "<p>The speaker search task ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.type = Types::StopSpeakerSearchTaskRequest
    StopVoiceToneAnalysisTaskRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.type = Types::StopVoiceToneAnalysisTaskRequest
    StreamChannelDefinition.add_member(:number_of_channels, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfChannels, location_name: 'NumberOfChannels', traits: {"smithy.api#documentation" => "<p>The number of channels in a streaming channel.</p>", "smithy.api#required" => {}}))
    StreamChannelDefinition.add_member(:channel_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: 'ChannelDefinitions', traits: {"smithy.api#documentation" => "<p>The definitions of the channels in a streaming channel.</p>"}))
    StreamChannelDefinition.type = Types::StreamChannelDefinition
    StreamConfiguration.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The ARN of the stream.</p>", "smithy.api#required" => {}}))
    StreamConfiguration.add_member(:fragment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: 'FragmentNumber', traits: {"smithy.api#documentation" => "<p>The unique identifier of the fragment to begin processing.</p>"}))
    StreamConfiguration.add_member(:stream_channel_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamChannelDefinition, location_name: 'StreamChannelDefinition', traits: {"smithy.api#documentation" => "<p>The streaming channel definition in the stream configuration.</p>", "smithy.api#required" => {}}))
    StreamConfiguration.type = Types::StreamConfiguration
    Streams.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamConfiguration)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key half of a tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value half of a tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's endpoint region, resource ID, and pipeline ID.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the specified media pipeline.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottledClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ThrottledClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottledClientException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    ThrottledClientException.type = Types::ThrottledClientException
    TileOrder.add_member(:join_sequence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JoinSequence', traits: {"smithy.api#enumValue" => "JoinSequence"}))
    TileOrder.add_member(:speaker_sequence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SpeakerSequence', traits: {"smithy.api#enumValue" => "SpeakerSequence"}))
    TimestampRange.add_member(:start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTimestamp', traits: {"smithy.api#documentation" => "<p>The starting timestamp for the specified range.</p>", "smithy.api#required" => {}}))
    TimestampRange.add_member(:end_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndTimestamp', traits: {"smithy.api#documentation" => "<p>The ending timestamp for the specified range.</p>", "smithy.api#required" => {}}))
    TimestampRange.type = Types::TimestampRange
    TranscriptionMessagesConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    TranscriptionMessagesConcatenationConfiguration.type = Types::TranscriptionMessagesConcatenationConfiguration
    UnauthorizedClientException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    UnauthorizedClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedClientException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the pipeline that you want to untag.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The key/value pairs in the tag that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource to be updated. Valid values include the name and ARN of the media insights pipeline configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the role used by the service to access Amazon Web Services resources.</p>", "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: 'RealTimeAlertConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for real-time alerts for the media insights pipeline.</p>"}))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:elements, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, location_name: 'Elements', traits: {"smithy.api#documentation" => "<p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream..</p>", "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.type = Types::UpdateMediaInsightsPipelineConfigurationRequest
    UpdateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: 'MediaInsightsPipelineConfiguration', traits: {"smithy.api#documentation" => "<p>The updated configuration settings.</p>"}))
    UpdateMediaInsightsPipelineConfigurationResponse.type = Types::UpdateMediaInsightsPipelineConfigurationResponse
    UpdateMediaInsightsPipelineStatusRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineStatusRequest.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineStatusUpdate, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>The requested status of the media insights pipeline.</p>", "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineStatusRequest.type = Types::UpdateMediaInsightsPipelineStatusRequest
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Identifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:stream_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamConfigurationUpdate, location_name: 'StreamConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for the video stream.</p>"}))
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.type = Types::UpdateMediaPipelineKinesisVideoStreamPoolRequest
    UpdateMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisVideoStreamPoolConfiguration, location_name: 'KinesisVideoStreamPoolConfiguration', traits: {"smithy.api#documentation" => "<p>The video stream pool configuration object.</p>"}))
    UpdateMediaPipelineKinesisVideoStreamPoolResponse.type = Types::UpdateMediaPipelineKinesisVideoStreamPoolResponse
    VerticalLayoutConfiguration.add_member(:tile_order, Smithy::Schema::Shapes::ShapeRef.new(shape: TileOrder, location_name: 'TileOrder', traits: {"smithy.api#documentation" => "<p>Sets the automatic ordering of the video tiles.</p>"}))
    VerticalLayoutConfiguration.add_member(:tile_position, Smithy::Schema::Shapes::ShapeRef.new(shape: VerticalTilePosition, location_name: 'TilePosition', traits: {"smithy.api#documentation" => "<p>Sets the position of vertical tiles.</p>"}))
    VerticalLayoutConfiguration.add_member(:tile_count, Smithy::Schema::Shapes::ShapeRef.new(shape: TileCount, location_name: 'TileCount', traits: {"smithy.api#documentation" => "<p>The maximum number of tiles to display.</p>"}))
    VerticalLayoutConfiguration.add_member(:tile_aspect_ratio, Smithy::Schema::Shapes::ShapeRef.new(shape: TileAspectRatio, location_name: 'TileAspectRatio', traits: {"smithy.api#documentation" => "<p>Sets the aspect ratio of the video tiles, such as 16:9.</p>"}))
    VerticalLayoutConfiguration.type = Types::VerticalLayoutConfiguration
    VerticalTilePosition.add_member(:left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Left', traits: {"smithy.api#enumValue" => "Left"}))
    VerticalTilePosition.add_member(:right, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Right', traits: {"smithy.api#enumValue" => "Right"}))
    VideoArtifactsConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates whether the video artifact is enabled or disabled.</p>", "smithy.api#required" => {}}))
    VideoArtifactsConfiguration.add_member(:mux_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoMuxType, location_name: 'MuxType', traits: {"smithy.api#documentation" => "<p>The MUX type of the video artifact configuration object.</p>"}))
    VideoArtifactsConfiguration.type = Types::VideoArtifactsConfiguration
    VideoAttribute.add_member(:corner_radius, Smithy::Schema::Shapes::ShapeRef.new(shape: CornerRadius, location_name: 'CornerRadius', traits: {"smithy.api#documentation" => "<p>Sets the corner radius of all video tiles.</p>"}))
    VideoAttribute.add_member(:border_color, Smithy::Schema::Shapes::ShapeRef.new(shape: BorderColor, location_name: 'BorderColor', traits: {"smithy.api#documentation" => "<p>Defines the border color of all video tiles.</p>"}))
    VideoAttribute.add_member(:highlight_color, Smithy::Schema::Shapes::ShapeRef.new(shape: HighlightColor, location_name: 'HighlightColor', traits: {"smithy.api#documentation" => "<p>Defines the highlight color for the active video tile.</p>"}))
    VideoAttribute.add_member(:border_thickness, Smithy::Schema::Shapes::ShapeRef.new(shape: BorderThickness, location_name: 'BorderThickness', traits: {"smithy.api#documentation" => "<p>Defines the border thickness for all video tiles.</p>"}))
    VideoAttribute.type = Types::VideoAttribute
    VideoConcatenationConfiguration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Enables or disables the configuration object.</p>", "smithy.api#required" => {}}))
    VideoConcatenationConfiguration.type = Types::VideoConcatenationConfiguration
    VideoMuxType.add_member(:video_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VideoOnly', traits: {"smithy.api#enumValue" => "VideoOnly"}))
    VocabularyFilterMethod.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "remove"}))
    VocabularyFilterMethod.add_member(:mask, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASK', traits: {"smithy.api#enumValue" => "mask"}))
    VocabularyFilterMethod.add_member(:tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "tag"}))
    VoiceAnalyticsConfigurationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    VoiceAnalyticsConfigurationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    VoiceAnalyticsLanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    VoiceAnalyticsProcessorConfiguration.add_member(:speaker_search_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceAnalyticsConfigurationStatus, location_name: 'SpeakerSearchStatus', traits: {"smithy.api#documentation" => "<p>The status of the speaker search task.</p>"}))
    VoiceAnalyticsProcessorConfiguration.add_member(:voice_tone_analysis_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceAnalyticsConfigurationStatus, location_name: 'VoiceToneAnalysisStatus', traits: {"smithy.api#documentation" => "<p>The status of the voice tone analysis task.</p>"}))
    VoiceAnalyticsProcessorConfiguration.type = Types::VoiceAnalyticsProcessorConfiguration
    VoiceEnhancementSinkConfiguration.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Disabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Disables the <code>VoiceEnhancementSinkConfiguration</code> element.</p>"}))
    VoiceEnhancementSinkConfiguration.type = Types::VoiceEnhancementSinkConfiguration
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'VoiceToneAnalysisTaskId', traits: {"smithy.api#documentation" => "<p>The ID of the voice tone analysis task.</p>"}))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPipelineTaskStatus, location_name: 'VoiceToneAnalysisTaskStatus', traits: {"smithy.api#documentation" => "<p>The status of a voice tone analysis task.</p>"}))
    VoiceToneAnalysisTask.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice tone analysis task was created.</p>"}))
    VoiceToneAnalysisTask.add_member(:updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: 'UpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time at which a voice tone analysis task was updated.</p>"}))
    VoiceToneAnalysisTask.type = Types::VoiceToneAnalysisTask

    ChimeSDKMediaPipelinesService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmediapipelines#ChimeSDKMediaPipelinesService"
      service.name = "ChimeSDKMediaPipelinesService"
      service.version = "2021-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Media Pipelines", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMediaPipelines", "cloudTrailEventSource" => "chimesdkmediapipelines.amazonaws.com", "endpointPrefix" => "media-pipelines-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Media Pipelines"}
      service.add_operation(:create_media_capture_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipeline"
        operation.name = "CreateMediaCapturePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-capture-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_concatenation_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipeline"
        operation.name = "CreateMediaConcatenationPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaConcatenationPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaConcatenationPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-concatenation-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_insights_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipeline"
        operation.name = "CreateMediaInsightsPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_insights_pipeline_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfiguration"
        operation.name = "CreateMediaInsightsPipelineConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipeline-configurations", "code" => 201}}
      end)
      service.add_operation(:create_media_live_connector_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipeline"
        operation.name = "CreateMediaLiveConnectorPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaLiveConnectorPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaLiveConnectorPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-live-connector-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_pipeline_kinesis_video_stream_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPool"
        operation.name = "CreateMediaPipelineKinesisVideoStreamPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaPipelineKinesisVideoStreamPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaPipelineKinesisVideoStreamPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-pipeline-kinesis-video-stream-pools", "code" => 201}}
      end)
      service.add_operation(:create_media_stream_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipeline"
        operation.name = "CreateMediaStreamPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaStreamPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMediaStreamPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-stream-pipelines", "code" => 201}}
      end)
      service.add_operation(:delete_media_capture_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaCapturePipeline"
        operation.name = "DeleteMediaCapturePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaCapturePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sdk-media-capture-pipelines/{MediaPipelineId}", "code" => 204}}
      end)
      service.add_operation(:delete_media_insights_pipeline_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaInsightsPipelineConfiguration"
        operation.name = "DeleteMediaInsightsPipelineConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaInsightsPipelineConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:delete_media_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipeline"
        operation.name = "DeleteMediaPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sdk-media-pipelines/{MediaPipelineId}", "code" => 204}}
      end)
      service.add_operation(:delete_media_pipeline_kinesis_video_stream_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineKinesisVideoStreamPool"
        operation.name = "DeleteMediaPipelineKinesisVideoStreamPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMediaPipelineKinesisVideoStreamPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:get_media_capture_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipeline"
        operation.name = "GetMediaCapturePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaCapturePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaCapturePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-capture-pipelines/{MediaPipelineId}", "code" => 200}}
      end)
      service.add_operation(:get_media_insights_pipeline_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfiguration"
        operation.name = "GetMediaInsightsPipelineConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaInsightsPipelineConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaInsightsPipelineConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_media_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaPipeline"
        operation.name = "GetMediaPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-pipelines/{MediaPipelineId}", "code" => 200}}
      end)
      service.add_operation(:get_media_pipeline_kinesis_video_stream_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPool"
        operation.name = "GetMediaPipelineKinesisVideoStreamPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaPipelineKinesisVideoStreamPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaPipelineKinesisVideoStreamPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTask"
        operation.name = "GetSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpeakerSearchTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTask"
        operation.name = "GetVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVoiceToneAnalysisTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}", "code" => 200}}
      end)
      service.add_operation(:list_media_capture_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelines"
        operation.name = "ListMediaCapturePipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-capture-pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaCapturePipelines.new
      end)
      service.add_operation(:list_media_insights_pipeline_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurations"
        operation.name = "ListMediaInsightsPipelineConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaInsightsPipelineConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaInsightsPipelineConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipeline-configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaInsightsPipelineConfigurations.new
      end)
      service.add_operation(:list_media_pipeline_kinesis_video_stream_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPools"
        operation.name = "ListMediaPipelineKinesisVideoStreamPools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaPipelineKinesisVideoStreamPoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaPipelineKinesisVideoStreamPoolsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-pipeline-kinesis-video-stream-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaPipelineKinesisVideoStreamPools.new
      end)
      service.add_operation(:list_media_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaPipelines"
        operation.name = "ListMediaPipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaPipelinesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMediaPipelinesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:start_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTask"
        operation.name = "StartSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerSearchTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks?operation=start", "code" => 201}}
      end)
      service.add_operation(:start_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTask"
        operation.name = "StartVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVoiceToneAnalysisTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks?operation=start", "code" => 201}}
      end)
      service.add_operation(:stop_speaker_search_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StopSpeakerSearchTask"
        operation.name = "StopSpeakerSearchTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSpeakerSearchTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:stop_voice_tone_analysis_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StopVoiceToneAnalysisTask"
        operation.name = "StopVoiceToneAnalysisTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopVoiceToneAnalysisTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_media_insights_pipeline_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfiguration"
        operation.name = "UpdateMediaInsightsPipelineConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_media_insights_pipeline_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineStatus"
        operation.name = "UpdateMediaInsightsPipelineStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-insights-pipeline-status/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_media_pipeline_kinesis_video_stream_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPool"
        operation.name = "UpdateMediaPipelineKinesisVideoStreamPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaPipelineKinesisVideoStreamPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMediaPipelineKinesisVideoStreamPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
