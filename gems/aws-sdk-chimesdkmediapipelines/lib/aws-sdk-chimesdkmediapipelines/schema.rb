# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMediaPipelines
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActiveSpeakerOnlyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ActiveSpeakerOnlyConfiguration", name: "ActiveSpeakerOnlyConfiguration")
    ActiveSpeakerPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ActiveSpeakerPosition", name: "ActiveSpeakerPosition")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$"})
    AmazonTranscribeCallAnalyticsProcessorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#AmazonTranscribeCallAnalyticsProcessorConfiguration", name: "AmazonTranscribeCallAnalyticsProcessorConfiguration")
    AmazonTranscribeProcessorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#AmazonTranscribeProcessorConfiguration", name: "AmazonTranscribeProcessorConfiguration")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    ArtifactsConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ArtifactsConcatenationConfiguration", name: "ArtifactsConcatenationConfiguration")
    ArtifactsConcatenationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ArtifactsConcatenationState", name: "ArtifactsConcatenationState")
    ArtifactsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ArtifactsConfiguration", name: "ArtifactsConfiguration")
    ArtifactsState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ArtifactsState", name: "ArtifactsState")
    AttendeeIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#AttendeeIdList", name: "AttendeeIdList", traits: {"smithy.api#length" => {"min" => 1}})
    AudioArtifactsConcatenationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioArtifactsConcatenationState", name: "AudioArtifactsConcatenationState")
    AudioArtifactsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioArtifactsConfiguration", name: "AudioArtifactsConfiguration")
    AudioChannelsOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioChannelsOption", name: "AudioChannelsOption")
    AudioConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioConcatenationConfiguration", name: "AudioConcatenationConfiguration")
    AudioMuxType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioMuxType", name: "AudioMuxType")
    AudioSampleRateOption = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#AudioSampleRateOption", name: "AudioSampleRateOption", traits: {"smithy.api#pattern" => "^44100|48000$"})
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^([a-z]+-){2,}\\d+$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chimesdkmediapipelines#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BorderColor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#BorderColor", name: "BorderColor")
    BorderThickness = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#BorderThickness", name: "BorderThickness", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    CallAnalyticsLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#CallAnalyticsLanguageCode", name: "CallAnalyticsLanguageCode")
    CanvasOrientation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#CanvasOrientation", name: "CanvasOrientation")
    CategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#CategoryName", name: "CategoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    CategoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#CategoryNameList", name: "CategoryNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ChannelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChannelDefinition", name: "ChannelDefinition")
    ChannelDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChannelDefinitions", name: "ChannelDefinitions", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ChannelId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChannelId", name: "ChannelId", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1}})
    ChimeSdkMeetingConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingConcatenationConfiguration", name: "ChimeSdkMeetingConcatenationConfiguration")
    ChimeSdkMeetingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingConfiguration", name: "ChimeSdkMeetingConfiguration")
    ChimeSdkMeetingLiveConnectorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ChimeSdkMeetingLiveConnectorConfiguration", name: "ChimeSdkMeetingLiveConnectorConfiguration")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    CompositedVideoArtifactsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CompositedVideoArtifactsConfiguration", name: "CompositedVideoArtifactsConfiguration")
    CompositedVideoConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CompositedVideoConcatenationConfiguration", name: "CompositedVideoConcatenationConfiguration")
    ConcatenationSink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSink", name: "ConcatenationSink")
    ConcatenationSinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSinkList", name: "ConcatenationSinkList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConcatenationSinkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSinkType", name: "ConcatenationSinkType")
    ConcatenationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSource", name: "ConcatenationSource")
    ConcatenationSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSourceList", name: "ConcatenationSourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConcatenationSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConcatenationSourceType", name: "ConcatenationSourceType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentArtifactsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentArtifactsConfiguration", name: "ContentArtifactsConfiguration")
    ContentConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentConcatenationConfiguration", name: "ContentConcatenationConfiguration")
    ContentMuxType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentMuxType", name: "ContentMuxType")
    ContentRedactionOutput = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentRedactionOutput", name: "ContentRedactionOutput")
    ContentShareLayoutOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentShareLayoutOption", name: "ContentShareLayoutOption")
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ContentType", name: "ContentType")
    CornerRadius = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#CornerRadius", name: "CornerRadius", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    CreateMediaCapturePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipelineRequest", name: "CreateMediaCapturePipelineRequest")
    CreateMediaCapturePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipelineResponse", name: "CreateMediaCapturePipelineResponse")
    CreateMediaConcatenationPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipelineRequest", name: "CreateMediaConcatenationPipelineRequest")
    CreateMediaConcatenationPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipelineResponse", name: "CreateMediaConcatenationPipelineResponse")
    CreateMediaInsightsPipelineConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfigurationRequest", name: "CreateMediaInsightsPipelineConfigurationRequest")
    CreateMediaInsightsPipelineConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfigurationResponse", name: "CreateMediaInsightsPipelineConfigurationResponse")
    CreateMediaInsightsPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineRequest", name: "CreateMediaInsightsPipelineRequest")
    CreateMediaInsightsPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineResponse", name: "CreateMediaInsightsPipelineResponse")
    CreateMediaLiveConnectorPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipelineRequest", name: "CreateMediaLiveConnectorPipelineRequest")
    CreateMediaLiveConnectorPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipelineResponse", name: "CreateMediaLiveConnectorPipelineResponse")
    CreateMediaPipelineKinesisVideoStreamPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPoolRequest", name: "CreateMediaPipelineKinesisVideoStreamPoolRequest")
    CreateMediaPipelineKinesisVideoStreamPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPoolResponse", name: "CreateMediaPipelineKinesisVideoStreamPoolResponse")
    CreateMediaStreamPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipelineRequest", name: "CreateMediaStreamPipelineRequest")
    CreateMediaStreamPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipelineResponse", name: "CreateMediaStreamPipelineResponse")
    DataChannelConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#DataChannelConcatenationConfiguration", name: "DataChannelConcatenationConfiguration")
    DataRetentionChangeInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#DataRetentionChangeInHours", name: "DataRetentionChangeInHours", traits: {"smithy.api#range" => {"min" => 1}})
    DataRetentionInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#DataRetentionInHours", name: "DataRetentionInHours", traits: {"smithy.api#range" => {"min" => 0}})
    DeleteMediaCapturePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#DeleteMediaCapturePipelineRequest", name: "DeleteMediaCapturePipelineRequest")
    DeleteMediaInsightsPipelineConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#DeleteMediaInsightsPipelineConfigurationRequest", name: "DeleteMediaInsightsPipelineConfigurationRequest")
    DeleteMediaPipelineKinesisVideoStreamPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineKinesisVideoStreamPoolRequest", name: "DeleteMediaPipelineKinesisVideoStreamPoolRequest")
    DeleteMediaPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineRequest", name: "DeleteMediaPipelineRequest")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ErrorCode", name: "ErrorCode")
    ExternalUserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#ExternalUserIdList", name: "ExternalUserIdList", traits: {"smithy.api#length" => {"min" => 1}})
    ExternalUserIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#ExternalUserIdType", name: "ExternalUserIdType", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FragmentNumberString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#FragmentNumberString", name: "FragmentNumberString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]+$"})
    FragmentSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#FragmentSelector", name: "FragmentSelector")
    FragmentSelectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#FragmentSelectorType", name: "FragmentSelectorType")
    GetMediaCapturePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipelineRequest", name: "GetMediaCapturePipelineRequest")
    GetMediaCapturePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipelineResponse", name: "GetMediaCapturePipelineResponse")
    GetMediaInsightsPipelineConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfigurationRequest", name: "GetMediaInsightsPipelineConfigurationRequest")
    GetMediaInsightsPipelineConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfigurationResponse", name: "GetMediaInsightsPipelineConfigurationResponse")
    GetMediaPipelineKinesisVideoStreamPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPoolRequest", name: "GetMediaPipelineKinesisVideoStreamPoolRequest")
    GetMediaPipelineKinesisVideoStreamPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPoolResponse", name: "GetMediaPipelineKinesisVideoStreamPoolResponse")
    GetMediaPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineRequest", name: "GetMediaPipelineRequest")
    GetMediaPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineResponse", name: "GetMediaPipelineResponse")
    GetSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTaskRequest", name: "GetSpeakerSearchTaskRequest")
    GetSpeakerSearchTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTaskResponse", name: "GetSpeakerSearchTaskResponse")
    GetVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTaskRequest", name: "GetVoiceToneAnalysisTaskRequest")
    GetVoiceToneAnalysisTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTaskResponse", name: "GetVoiceToneAnalysisTaskResponse")
    GridViewConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#GridViewConfiguration", name: "GridViewConfiguration")
    GuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#GuidString", name: "GuidString", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    HighlightColor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#HighlightColor", name: "HighlightColor")
    HorizontalLayoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#HorizontalLayoutConfiguration", name: "HorizontalLayoutConfiguration")
    HorizontalTilePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#HorizontalTilePosition", name: "HorizontalTilePosition")
    Iso8601Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chimesdkmediapipelines#Iso8601Timestamp", name: "Iso8601Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    IssueDetectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#IssueDetectionConfiguration", name: "IssueDetectionConfiguration")
    Keyword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#Keyword", name: "Keyword", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\s0-9a-zA-Z'-]+$"})
    KeywordMatchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KeywordMatchConfiguration", name: "KeywordMatchConfiguration")
    KeywordMatchWordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#KeywordMatchWordList", name: "KeywordMatchWordList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    KinesisDataStreamSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisDataStreamSinkConfiguration", name: "KinesisDataStreamSinkConfiguration")
    KinesisVideoStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamArn", name: "KinesisVideoStreamArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\d-]+:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+$"})
    KinesisVideoStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamConfiguration", name: "KinesisVideoStreamConfiguration")
    KinesisVideoStreamConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamConfigurationUpdate", name: "KinesisVideoStreamConfigurationUpdate")
    KinesisVideoStreamPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolConfiguration", name: "KinesisVideoStreamPoolConfiguration")
    KinesisVideoStreamPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolId", name: "KinesisVideoStreamPoolId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    KinesisVideoStreamPoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolName", name: "KinesisVideoStreamPoolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    KinesisVideoStreamPoolSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSize", name: "KinesisVideoStreamPoolSize", traits: {"smithy.api#range" => {"min" => 0}})
    KinesisVideoStreamPoolStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolStatus", name: "KinesisVideoStreamPoolStatus")
    KinesisVideoStreamPoolSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSummary", name: "KinesisVideoStreamPoolSummary")
    KinesisVideoStreamPoolSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamPoolSummaryList", name: "KinesisVideoStreamPoolSummaryList")
    KinesisVideoStreamRecordingSourceRuntimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamRecordingSourceRuntimeConfiguration", name: "KinesisVideoStreamRecordingSourceRuntimeConfiguration")
    KinesisVideoStreamSourceRuntimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamSourceRuntimeConfiguration", name: "KinesisVideoStreamSourceRuntimeConfiguration")
    KinesisVideoStreamSourceTaskConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#KinesisVideoStreamSourceTaskConfiguration", name: "KinesisVideoStreamSourceTaskConfiguration")
    LambdaFunctionSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#LambdaFunctionSinkConfiguration", name: "LambdaFunctionSinkConfiguration")
    LanguageOptions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#LanguageOptions", name: "LanguageOptions", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z-,]+$"})
    LayoutOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#LayoutOption", name: "LayoutOption")
    ListMediaCapturePipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelinesRequest", name: "ListMediaCapturePipelinesRequest")
    ListMediaCapturePipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelinesResponse", name: "ListMediaCapturePipelinesResponse")
    ListMediaInsightsPipelineConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurationsRequest", name: "ListMediaInsightsPipelineConfigurationsRequest")
    ListMediaInsightsPipelineConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurationsResponse", name: "ListMediaInsightsPipelineConfigurationsResponse")
    ListMediaPipelineKinesisVideoStreamPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPoolsRequest", name: "ListMediaPipelineKinesisVideoStreamPoolsRequest")
    ListMediaPipelineKinesisVideoStreamPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPoolsResponse", name: "ListMediaPipelineKinesisVideoStreamPoolsResponse")
    ListMediaPipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaPipelinesRequest", name: "ListMediaPipelinesRequest")
    ListMediaPipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListMediaPipelinesResponse", name: "ListMediaPipelinesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LiveConnectorMuxType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorMuxType", name: "LiveConnectorMuxType")
    LiveConnectorRTMPConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorRTMPConfiguration", name: "LiveConnectorRTMPConfiguration")
    LiveConnectorSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkConfiguration", name: "LiveConnectorSinkConfiguration")
    LiveConnectorSinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkList", name: "LiveConnectorSinkList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LiveConnectorSinkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSinkType", name: "LiveConnectorSinkType")
    LiveConnectorSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceConfiguration", name: "LiveConnectorSourceConfiguration")
    LiveConnectorSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceList", name: "LiveConnectorSourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    LiveConnectorSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#LiveConnectorSourceType", name: "LiveConnectorSourceType")
    MediaCapturePipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaCapturePipeline", name: "MediaCapturePipeline")
    MediaCapturePipelineSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSourceConfiguration", name: "MediaCapturePipelineSourceConfiguration")
    MediaCapturePipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSummary", name: "MediaCapturePipelineSummary")
    MediaCapturePipelineSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaCapturePipelineSummaryList", name: "MediaCapturePipelineSummaryList")
    MediaConcatenationPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaConcatenationPipeline", name: "MediaConcatenationPipeline")
    MediaEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaEncoding", name: "MediaEncoding")
    MediaInsightsPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipeline", name: "MediaInsightsPipeline")
    MediaInsightsPipelineConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfiguration", name: "MediaInsightsPipelineConfiguration")
    MediaInsightsPipelineConfigurationElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElement", name: "MediaInsightsPipelineConfigurationElement")
    MediaInsightsPipelineConfigurationElementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElementType", name: "MediaInsightsPipelineConfigurationElementType")
    MediaInsightsPipelineConfigurationElements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationElements", name: "MediaInsightsPipelineConfigurationElements")
    MediaInsightsPipelineConfigurationNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationNameString", name: "MediaInsightsPipelineConfigurationNameString", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    MediaInsightsPipelineConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationSummary", name: "MediaInsightsPipelineConfigurationSummary")
    MediaInsightsPipelineConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineConfigurationSummaryList", name: "MediaInsightsPipelineConfigurationSummaryList")
    MediaInsightsPipelineElementStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineElementStatus", name: "MediaInsightsPipelineElementStatus")
    MediaInsightsPipelineElementStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsPipelineElementStatuses", name: "MediaInsightsPipelineElementStatuses")
    MediaInsightsRuntimeMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaInsightsRuntimeMetadata", name: "MediaInsightsRuntimeMetadata", traits: {"smithy.api#sensitive" => {}})
    MediaLiveConnectorPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaLiveConnectorPipeline", name: "MediaLiveConnectorPipeline")
    MediaPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipeline", name: "MediaPipeline")
    MediaPipelineElementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineElementStatus", name: "MediaPipelineElementStatus")
    MediaPipelineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineList", name: "MediaPipelineList")
    MediaPipelineSinkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineSinkType", name: "MediaPipelineSinkType")
    MediaPipelineSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineSourceType", name: "MediaPipelineSourceType")
    MediaPipelineStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineStatus", name: "MediaPipelineStatus")
    MediaPipelineStatusUpdate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineStatusUpdate", name: "MediaPipelineStatusUpdate")
    MediaPipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineSummary", name: "MediaPipelineSummary")
    MediaPipelineTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaPipelineTaskStatus", name: "MediaPipelineTaskStatus")
    MediaSampleRateHertz = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaSampleRateHertz", name: "MediaSampleRateHertz", traits: {"smithy.api#range" => {"min" => 8000, "max" => 48000}})
    MediaStreamPipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamPipeline", name: "MediaStreamPipeline")
    MediaStreamPipelineSinkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamPipelineSinkType", name: "MediaStreamPipelineSinkType")
    MediaStreamSink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamSink", name: "MediaStreamSink")
    MediaStreamSinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamSinkList", name: "MediaStreamSinkList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    MediaStreamSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamSource", name: "MediaStreamSource")
    MediaStreamSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamSourceList", name: "MediaStreamSourceList", traits: {"smithy.api#length" => {"min" => 1}})
    MediaStreamType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#MediaStreamType", name: "MediaStreamType")
    MeetingEventsConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#MeetingEventsConcatenationConfiguration", name: "MeetingEventsConcatenationConfiguration")
    ModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#ModelName", name: "ModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NumberOfChannels = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#NumberOfChannels", name: "NumberOfChannels", traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    PartialResultsStability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#PartialResultsStability", name: "PartialResultsStability")
    ParticipantRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ParticipantRole", name: "ParticipantRole")
    PiiEntityTypes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#PiiEntityTypes", name: "PiiEntityTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[A-Z_, ]+$"})
    PostCallAnalyticsSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#PostCallAnalyticsSettings", name: "PostCallAnalyticsSettings")
    PresenterOnlyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#PresenterOnlyConfiguration", name: "PresenterOnlyConfiguration")
    PresenterPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#PresenterPosition", name: "PresenterPosition")
    RealTimeAlertConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#RealTimeAlertConfiguration", name: "RealTimeAlertConfiguration")
    RealTimeAlertRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#RealTimeAlertRule", name: "RealTimeAlertRule")
    RealTimeAlertRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#RealTimeAlertRuleList", name: "RealTimeAlertRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RealTimeAlertRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#RealTimeAlertRuleType", name: "RealTimeAlertRuleType")
    RecordingFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#RecordingFileFormat", name: "RecordingFileFormat")
    RecordingStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#RecordingStreamConfiguration", name: "RecordingStreamConfiguration")
    RecordingStreamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#RecordingStreamList", name: "RecordingStreamList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ReservedStreamCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#ReservedStreamCapacity", name: "ReservedStreamCapacity", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    ResolutionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#ResolutionOption", name: "ResolutionOption")
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResultMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#ResultMax", name: "ResultMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    S3BucketSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#S3BucketSinkConfiguration", name: "S3BucketSinkConfiguration")
    S3RecordingSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#S3RecordingSinkConfiguration", name: "S3RecordingSinkConfiguration")
    S3RecordingSinkRuntimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#S3RecordingSinkRuntimeConfiguration", name: "S3RecordingSinkRuntimeConfiguration")
    SelectedVideoStreams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SelectedVideoStreams", name: "SelectedVideoStreams")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#SensitiveString", name: "SensitiveString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    SentimentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SentimentConfiguration", name: "SentimentConfiguration")
    SentimentTimePeriodInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#SentimentTimePeriodInSeconds", name: "SentimentTimePeriodInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 1800}})
    SentimentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#SentimentType", name: "SentimentType")
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SnsTopicSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SnsTopicSinkConfiguration", name: "SnsTopicSinkConfiguration")
    SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SourceConfiguration", name: "SourceConfiguration")
    SpeakerSearchTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SpeakerSearchTask", name: "SpeakerSearchTask")
    SqsQueueSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SqsQueueSinkConfiguration", name: "SqsQueueSinkConfiguration")
    SseAwsKeyManagementParams = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#SseAwsKeyManagementParams", name: "SseAwsKeyManagementParams")
    StartSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTaskRequest", name: "StartSpeakerSearchTaskRequest")
    StartSpeakerSearchTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTaskResponse", name: "StartSpeakerSearchTaskResponse")
    StartVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTaskRequest", name: "StartVoiceToneAnalysisTaskRequest")
    StartVoiceToneAnalysisTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTaskResponse", name: "StartVoiceToneAnalysisTaskResponse")
    StopSpeakerSearchTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StopSpeakerSearchTaskRequest", name: "StopSpeakerSearchTaskRequest")
    StopVoiceToneAnalysisTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StopVoiceToneAnalysisTaskRequest", name: "StopVoiceToneAnalysisTaskRequest")
    StreamChannelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StreamChannelDefinition", name: "StreamChannelDefinition")
    StreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#StreamConfiguration", name: "StreamConfiguration")
    Streams = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#Streams", name: "Streams", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => ".*"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottledClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#ThrottledClientException", name: "ThrottledClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TileAspectRatio = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#TileAspectRatio", name: "TileAspectRatio", traits: {"smithy.api#pattern" => "^\\d{1,2}\\/\\d{1,2}$"})
    TileCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmediapipelines#TileCount", name: "TileCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    TileOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#TileOrder", name: "TileOrder")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.chimesdkmediapipelines#Timestamp", name: "Timestamp")
    TimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#TimestampRange", name: "TimestampRange")
    TranscriptionMessagesConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#TranscriptionMessagesConcatenationConfiguration", name: "TranscriptionMessagesConcatenationConfiguration")
    UnauthorizedClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UnauthorizedClientException", name: "UnauthorizedClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateMediaInsightsPipelineConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfigurationRequest", name: "UpdateMediaInsightsPipelineConfigurationRequest")
    UpdateMediaInsightsPipelineConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfigurationResponse", name: "UpdateMediaInsightsPipelineConfigurationResponse")
    UpdateMediaInsightsPipelineStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineStatusRequest", name: "UpdateMediaInsightsPipelineStatusRequest")
    UpdateMediaPipelineKinesisVideoStreamPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPoolRequest", name: "UpdateMediaPipelineKinesisVideoStreamPoolRequest")
    UpdateMediaPipelineKinesisVideoStreamPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPoolResponse", name: "UpdateMediaPipelineKinesisVideoStreamPoolResponse")
    VerticalLayoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VerticalLayoutConfiguration", name: "VerticalLayoutConfiguration")
    VerticalTilePosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#VerticalTilePosition", name: "VerticalTilePosition")
    VideoArtifactsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VideoArtifactsConfiguration", name: "VideoArtifactsConfiguration")
    VideoAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VideoAttribute", name: "VideoAttribute")
    VideoConcatenationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VideoConcatenationConfiguration", name: "VideoConcatenationConfiguration")
    VideoMuxType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#VideoMuxType", name: "VideoMuxType")
    VocabularyFilterMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#VocabularyFilterMethod", name: "VocabularyFilterMethod")
    VocabularyFilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#VocabularyFilterName", name: "VocabularyFilterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyFilterNames = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#VocabularyFilterNames", name: "VocabularyFilterNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    VocabularyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#VocabularyName", name: "VocabularyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    VocabularyNames = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmediapipelines#VocabularyNames", name: "VocabularyNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    VoiceAnalyticsConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsConfigurationStatus", name: "VoiceAnalyticsConfigurationStatus")
    VoiceAnalyticsLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsLanguageCode", name: "VoiceAnalyticsLanguageCode")
    VoiceAnalyticsProcessorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VoiceAnalyticsProcessorConfiguration", name: "VoiceAnalyticsProcessorConfiguration")
    VoiceEnhancementSinkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VoiceEnhancementSinkConfiguration", name: "VoiceEnhancementSinkConfiguration")
    VoiceToneAnalysisTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmediapipelines#VoiceToneAnalysisTask", name: "VoiceToneAnalysisTask")

    ActiveSpeakerOnlyConfiguration.add_member(:active_speaker_position, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveSpeakerPosition, name: "ActiveSpeakerPosition"))
    ActiveSpeakerOnlyConfiguration.type = Types::ActiveSpeakerOnlyConfiguration
    ActiveSpeakerPosition.add_member(:top_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TopLeft", traits: {"smithy.api#enumValue" => "TopLeft"}))
    ActiveSpeakerPosition.add_member(:top_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TopRight", traits: {"smithy.api#enumValue" => "TopRight"}))
    ActiveSpeakerPosition.add_member(:bottom_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BottomLeft", traits: {"smithy.api#enumValue" => "BottomLeft"}))
    ActiveSpeakerPosition.add_member(:bottom_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BottomRight", traits: {"smithy.api#enumValue" => "BottomRight"}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAnalyticsLanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyName, name: "VocabularyName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyFilterName, name: "VocabularyFilterName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyFilterMethod, name: "VocabularyFilterMethod"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, name: "LanguageModelName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:enable_partial_results_stabilization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnablePartialResultsStabilization", traits: {"smithy.api#default" => false}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:partial_results_stability, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialResultsStability, name: "PartialResultsStability"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_identification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentIdentificationType"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_redaction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentRedactionType"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntityTypes, name: "PiiEntityTypes"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:filter_partial_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FilterPartialResults", traits: {"smithy.api#default" => false}))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:post_call_analytics_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: PostCallAnalyticsSettings, name: "PostCallAnalyticsSettings"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:call_analytics_stream_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryNameList, name: "CallAnalyticsStreamCategories"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.type = Types::AmazonTranscribeCallAnalyticsProcessorConfiguration
    AmazonTranscribeProcessorConfiguration.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAnalyticsLanguageCode, name: "LanguageCode"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyName, name: "VocabularyName"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyFilterName, name: "VocabularyFilterName"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyFilterMethod, name: "VocabularyFilterMethod"))
    AmazonTranscribeProcessorConfiguration.add_member(:show_speaker_label, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ShowSpeakerLabel", traits: {"smithy.api#default" => false}))
    AmazonTranscribeProcessorConfiguration.add_member(:enable_partial_results_stabilization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnablePartialResultsStabilization", traits: {"smithy.api#default" => false}))
    AmazonTranscribeProcessorConfiguration.add_member(:partial_results_stability, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialResultsStability, name: "PartialResultsStability"))
    AmazonTranscribeProcessorConfiguration.add_member(:content_identification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentIdentificationType"))
    AmazonTranscribeProcessorConfiguration.add_member(:content_redaction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentRedactionType"))
    AmazonTranscribeProcessorConfiguration.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiEntityTypes, name: "PiiEntityTypes"))
    AmazonTranscribeProcessorConfiguration.add_member(:language_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelName, name: "LanguageModelName"))
    AmazonTranscribeProcessorConfiguration.add_member(:filter_partial_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FilterPartialResults", traits: {"smithy.api#default" => false}))
    AmazonTranscribeProcessorConfiguration.add_member(:identify_language, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IdentifyLanguage", traits: {"smithy.api#default" => false}))
    AmazonTranscribeProcessorConfiguration.add_member(:identify_multiple_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IdentifyMultipleLanguages", traits: {"smithy.api#default" => false}))
    AmazonTranscribeProcessorConfiguration.add_member(:language_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageOptions, name: "LanguageOptions"))
    AmazonTranscribeProcessorConfiguration.add_member(:preferred_language, ::Smithy::Schema::Shapes::MemberShape.new(target: CallAnalyticsLanguageCode, name: "PreferredLanguage"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_names, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyNames, name: "VocabularyNames"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyFilterNames, name: "VocabularyFilterNames"))
    AmazonTranscribeProcessorConfiguration.type = Types::AmazonTranscribeProcessorConfiguration
    ArtifactsConcatenationConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioConcatenationConfiguration, name: "Audio", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoConcatenationConfiguration, name: "Video", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentConcatenationConfiguration, name: "Content", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:data_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: DataChannelConcatenationConfiguration, name: "DataChannel", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:transcription_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptionMessagesConcatenationConfiguration, name: "TranscriptionMessages", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:meeting_events, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingEventsConcatenationConfiguration, name: "MeetingEvents", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.add_member(:composited_video, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositedVideoConcatenationConfiguration, name: "CompositedVideo", traits: {"smithy.api#required" => {}}))
    ArtifactsConcatenationConfiguration.type = Types::ArtifactsConcatenationConfiguration
    ArtifactsConcatenationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ArtifactsConcatenationState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ArtifactsConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioArtifactsConfiguration, name: "Audio", traits: {"smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoArtifactsConfiguration, name: "Video", traits: {"smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentArtifactsConfiguration, name: "Content", traits: {"smithy.api#required" => {}}))
    ArtifactsConfiguration.add_member(:composited_video, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositedVideoArtifactsConfiguration, name: "CompositedVideo"))
    ArtifactsConfiguration.type = Types::ArtifactsConfiguration
    ArtifactsState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ArtifactsState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    AttendeeIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "member"))
    AudioArtifactsConcatenationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    AudioArtifactsConfiguration.add_member(:mux_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioMuxType, name: "MuxType", traits: {"smithy.api#required" => {}}))
    AudioArtifactsConfiguration.type = Types::AudioArtifactsConfiguration
    AudioChannelsOption.add_member(:stereo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stereo", traits: {"smithy.api#enumValue" => "Stereo"}))
    AudioChannelsOption.add_member(:mono, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Mono", traits: {"smithy.api#enumValue" => "Mono"}))
    AudioConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    AudioConcatenationConfiguration.type = Types::AudioConcatenationConfiguration
    AudioMuxType.add_member(:audio_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AudioOnly", traits: {"smithy.api#enumValue" => "AudioOnly"}))
    AudioMuxType.add_member(:audio_with_active_speaker_video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AudioWithActiveSpeakerVideo", traits: {"smithy.api#enumValue" => "AudioWithActiveSpeakerVideo"}))
    AudioMuxType.add_member(:audio_with_composited_video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AudioWithCompositedVideo", traits: {"smithy.api#enumValue" => "AudioWithCompositedVideo"}))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    BadRequestException.type = Types::BadRequestException
    BorderColor.add_member(:black, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Black", traits: {"smithy.api#enumValue" => "Black"}))
    BorderColor.add_member(:blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Blue", traits: {"smithy.api#enumValue" => "Blue"}))
    BorderColor.add_member(:red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Red", traits: {"smithy.api#enumValue" => "Red"}))
    BorderColor.add_member(:green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Green", traits: {"smithy.api#enumValue" => "Green"}))
    BorderColor.add_member(:white, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "White", traits: {"smithy.api#enumValue" => "White"}))
    BorderColor.add_member(:yellow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Yellow", traits: {"smithy.api#enumValue" => "Yellow"}))
    CallAnalyticsLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    CallAnalyticsLanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    CallAnalyticsLanguageCode.add_member(:es_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES_US", traits: {"smithy.api#enumValue" => "es-US"}))
    CallAnalyticsLanguageCode.add_member(:fr_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_CA", traits: {"smithy.api#enumValue" => "fr-CA"}))
    CallAnalyticsLanguageCode.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    CallAnalyticsLanguageCode.add_member(:en_au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_AU", traits: {"smithy.api#enumValue" => "en-AU"}))
    CallAnalyticsLanguageCode.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    CallAnalyticsLanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    CallAnalyticsLanguageCode.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT_BR", traits: {"smithy.api#enumValue" => "pt-BR"}))
    CanvasOrientation.add_member(:landscape, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Landscape", traits: {"smithy.api#enumValue" => "Landscape"}))
    CanvasOrientation.add_member(:portrait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Portrait", traits: {"smithy.api#enumValue" => "Portrait"}))
    CategoryNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryName, name: "member"))
    ChannelDefinition.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "ChannelId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ChannelDefinition.add_member(:participant_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRole, name: "ParticipantRole"))
    ChannelDefinition.type = Types::ChannelDefinition
    ChannelDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDefinition, name: "member"))
    ChimeSdkMeetingConcatenationConfiguration.add_member(:artifacts_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationConfiguration, name: "ArtifactsConfiguration", traits: {"smithy.api#required" => {}}))
    ChimeSdkMeetingConcatenationConfiguration.type = Types::ChimeSdkMeetingConcatenationConfiguration
    ChimeSdkMeetingConfiguration.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "SourceConfiguration"))
    ChimeSdkMeetingConfiguration.add_member(:artifacts_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConfiguration, name: "ArtifactsConfiguration"))
    ChimeSdkMeetingConfiguration.type = Types::ChimeSdkMeetingConfiguration
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:mux_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorMuxType, name: "MuxType", traits: {"smithy.api#required" => {}}))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:composited_video, ::Smithy::Schema::Shapes::MemberShape.new(target: CompositedVideoArtifactsConfiguration, name: "CompositedVideo"))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConfiguration, name: "SourceConfiguration"))
    ChimeSdkMeetingLiveConnectorConfiguration.type = Types::ChimeSdkMeetingLiveConnectorConfiguration
    CompositedVideoArtifactsConfiguration.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: LayoutOption, name: "Layout"))
    CompositedVideoArtifactsConfiguration.add_member(:resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolutionOption, name: "Resolution"))
    CompositedVideoArtifactsConfiguration.add_member(:grid_view_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GridViewConfiguration, name: "GridViewConfiguration", traits: {"smithy.api#required" => {}}))
    CompositedVideoArtifactsConfiguration.type = Types::CompositedVideoArtifactsConfiguration
    CompositedVideoConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    CompositedVideoConcatenationConfiguration.type = Types::CompositedVideoConcatenationConfiguration
    ConcatenationSink.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSinkType, name: "Type", traits: {"smithy.api#required" => {}}))
    ConcatenationSink.add_member(:s3_bucket_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSinkConfiguration, name: "S3BucketSinkConfiguration", traits: {"smithy.api#required" => {}}))
    ConcatenationSink.type = Types::ConcatenationSink
    ConcatenationSinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSink, name: "member"))
    ConcatenationSinkType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3Bucket", traits: {"smithy.api#enumValue" => "S3Bucket"}))
    ConcatenationSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSourceType, name: "Type", traits: {"smithy.api#required" => {}}))
    ConcatenationSource.add_member(:media_capture_pipeline_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipelineSourceConfiguration, name: "MediaCapturePipelineSourceConfiguration", traits: {"smithy.api#required" => {}}))
    ConcatenationSource.type = Types::ConcatenationSource
    ConcatenationSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSource, name: "member"))
    ConcatenationSourceType.add_member(:media_capture_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaCapturePipeline", traits: {"smithy.api#enumValue" => "MediaCapturePipeline"}))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ConflictException.type = Types::ConflictException
    ContentArtifactsConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsState, name: "State", traits: {"smithy.api#required" => {}}))
    ContentArtifactsConfiguration.add_member(:mux_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMuxType, name: "MuxType"))
    ContentArtifactsConfiguration.type = Types::ContentArtifactsConfiguration
    ContentConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    ContentConcatenationConfiguration.type = Types::ContentConcatenationConfiguration
    ContentMuxType.add_member(:content_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ContentOnly", traits: {"smithy.api#enumValue" => "ContentOnly"}))
    ContentRedactionOutput.add_member(:redacted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDACTED", traits: {"smithy.api#enumValue" => "redacted"}))
    ContentRedactionOutput.add_member(:redacted_and_unredacted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDACTED_AND_UNREDACTED", traits: {"smithy.api#enumValue" => "redacted_and_unredacted"}))
    ContentShareLayoutOption.add_member(:presenter_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PresenterOnly", traits: {"smithy.api#enumValue" => "PresenterOnly"}))
    ContentShareLayoutOption.add_member(:horizontal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Horizontal", traits: {"smithy.api#enumValue" => "Horizontal"}))
    ContentShareLayoutOption.add_member(:vertical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Vertical", traits: {"smithy.api#enumValue" => "Vertical"}))
    ContentShareLayoutOption.add_member(:active_speaker_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ActiveSpeakerOnly", traits: {"smithy.api#enumValue" => "ActiveSpeakerOnly"}))
    ContentType.add_member(:pii, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PII", traits: {"smithy.api#enumValue" => "PII"}))
    CreateMediaCapturePipelineRequest.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSourceType, name: "SourceType", traits: {"smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceArn", traits: {"smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:sink_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSinkType, name: "SinkType", traits: {"smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SinkArn", traits: {"smithy.api#required" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaCapturePipelineRequest.add_member(:chime_sdk_meeting_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeSdkMeetingConfiguration, name: "ChimeSdkMeetingConfiguration"))
    CreateMediaCapturePipelineRequest.add_member(:sse_aws_key_management_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SseAwsKeyManagementParams, name: "SseAwsKeyManagementParams"))
    CreateMediaCapturePipelineRequest.add_member(:sink_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SinkIamRoleArn"))
    CreateMediaCapturePipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaCapturePipelineRequest.type = Types::CreateMediaCapturePipelineRequest
    CreateMediaCapturePipelineResponse.add_member(:media_capture_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipeline, name: "MediaCapturePipeline"))
    CreateMediaCapturePipelineResponse.type = Types::CreateMediaCapturePipelineResponse
    CreateMediaConcatenationPipelineRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSourceList, name: "Sources", traits: {"smithy.api#required" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSinkList, name: "Sinks", traits: {"smithy.api#required" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaConcatenationPipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaConcatenationPipelineRequest.type = Types::CreateMediaConcatenationPipelineRequest
    CreateMediaConcatenationPipelineResponse.add_member(:media_concatenation_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConcatenationPipeline, name: "MediaConcatenationPipeline"))
    CreateMediaConcatenationPipelineResponse.type = Types::CreateMediaConcatenationPipelineResponse
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:media_insights_pipeline_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationNameString, name: "MediaInsightsPipelineConfigurationName", traits: {"smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertConfiguration, name: "RealTimeAlertConfiguration"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:elements, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElements, name: "Elements", traits: {"smithy.api#required" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaInsightsPipelineConfigurationRequest.type = Types::CreateMediaInsightsPipelineConfigurationRequest
    CreateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfiguration, name: "MediaInsightsPipelineConfiguration"))
    CreateMediaInsightsPipelineConfigurationResponse.type = Types::CreateMediaInsightsPipelineConfigurationResponse
    CreateMediaInsightsPipelineRequest.add_member(:media_insights_pipeline_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaInsightsPipelineConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_source_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamSourceRuntimeConfiguration, name: "KinesisVideoStreamSourceRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:media_insights_runtime_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsRuntimeMetadata, name: "MediaInsightsRuntimeMetadata"))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_recording_source_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamRecordingSourceRuntimeConfiguration, name: "KinesisVideoStreamRecordingSourceRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:s3_recording_sink_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RecordingSinkRuntimeConfiguration, name: "S3RecordingSinkRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaInsightsPipelineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaInsightsPipelineRequest.type = Types::CreateMediaInsightsPipelineRequest
    CreateMediaInsightsPipelineResponse.add_member(:media_insights_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipeline, name: "MediaInsightsPipeline", traits: {"smithy.api#required" => {}}))
    CreateMediaInsightsPipelineResponse.type = Types::CreateMediaInsightsPipelineResponse
    CreateMediaLiveConnectorPipelineRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSourceList, name: "Sources", traits: {"smithy.api#required" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSinkList, name: "Sinks", traits: {"smithy.api#required" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaLiveConnectorPipelineRequest.type = Types::CreateMediaLiveConnectorPipelineRequest
    CreateMediaLiveConnectorPipelineResponse.add_member(:media_live_connector_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveConnectorPipeline, name: "MediaLiveConnectorPipeline"))
    CreateMediaLiveConnectorPipelineResponse.type = Types::CreateMediaLiveConnectorPipelineResponse
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:stream_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamConfiguration, name: "StreamConfiguration", traits: {"smithy.api#required" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolName, name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaPipelineKinesisVideoStreamPoolRequest.type = Types::CreateMediaPipelineKinesisVideoStreamPoolRequest
    CreateMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolConfiguration, name: "KinesisVideoStreamPoolConfiguration"))
    CreateMediaPipelineKinesisVideoStreamPoolResponse.type = Types::CreateMediaPipelineKinesisVideoStreamPoolResponse
    CreateMediaStreamPipelineRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceList, name: "Sources", traits: {"smithy.api#required" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSinkList, name: "Sinks", traits: {"smithy.api#required" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMediaStreamPipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMediaStreamPipelineRequest.type = Types::CreateMediaStreamPipelineRequest
    CreateMediaStreamPipelineResponse.add_member(:media_stream_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamPipeline, name: "MediaStreamPipeline"))
    CreateMediaStreamPipelineResponse.type = Types::CreateMediaStreamPipelineResponse
    DataChannelConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    DataChannelConcatenationConfiguration.type = Types::DataChannelConcatenationConfiguration
    DeleteMediaCapturePipelineRequest.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaCapturePipelineRequest.type = Types::DeleteMediaCapturePipelineRequest
    DeleteMediaInsightsPipelineConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaInsightsPipelineConfigurationRequest.type = Types::DeleteMediaInsightsPipelineConfigurationRequest
    DeleteMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaPipelineKinesisVideoStreamPoolRequest.type = Types::DeleteMediaPipelineKinesisVideoStreamPoolRequest
    DeleteMediaPipelineRequest.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMediaPipelineRequest.type = Types::DeleteMediaPipelineRequest
    ErrorCode.add_member(:bad_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BadRequest", traits: {"smithy.api#enumValue" => "BadRequest"}))
    ErrorCode.add_member(:forbidden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Forbidden", traits: {"smithy.api#enumValue" => "Forbidden"}))
    ErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotFound", traits: {"smithy.api#enumValue" => "NotFound"}))
    ErrorCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceLimitExceeded", traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ErrorCode.add_member(:service_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceFailure", traits: {"smithy.api#enumValue" => "ServiceFailure"}))
    ErrorCode.add_member(:service_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceUnavailable", traits: {"smithy.api#enumValue" => "ServiceUnavailable"}))
    ErrorCode.add_member(:throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Throttling", traits: {"smithy.api#enumValue" => "Throttling"}))
    ExternalUserIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserIdType, name: "member"))
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ForbiddenException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ForbiddenException.type = Types::ForbiddenException
    FragmentSelector.add_member(:fragment_selector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentSelectorType, name: "FragmentSelectorType", traits: {"smithy.api#required" => {}}))
    FragmentSelector.add_member(:timestamp_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampRange, name: "TimestampRange", traits: {"smithy.api#required" => {}}))
    FragmentSelector.type = Types::FragmentSelector
    FragmentSelectorType.add_member(:producer_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProducerTimestamp", traits: {"smithy.api#enumValue" => "ProducerTimestamp"}))
    FragmentSelectorType.add_member(:server_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServerTimestamp", traits: {"smithy.api#enumValue" => "ServerTimestamp"}))
    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaCapturePipelineRequest.type = Types::GetMediaCapturePipelineRequest
    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipeline, name: "MediaCapturePipeline"))
    GetMediaCapturePipelineResponse.type = Types::GetMediaCapturePipelineResponse
    GetMediaInsightsPipelineConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaInsightsPipelineConfigurationRequest.type = Types::GetMediaInsightsPipelineConfigurationRequest
    GetMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfiguration, name: "MediaInsightsPipelineConfiguration"))
    GetMediaInsightsPipelineConfigurationResponse.type = Types::GetMediaInsightsPipelineConfigurationResponse
    GetMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaPipelineKinesisVideoStreamPoolRequest.type = Types::GetMediaPipelineKinesisVideoStreamPoolRequest
    GetMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolConfiguration, name: "KinesisVideoStreamPoolConfiguration"))
    GetMediaPipelineKinesisVideoStreamPoolResponse.type = Types::GetMediaPipelineKinesisVideoStreamPoolResponse
    GetMediaPipelineRequest.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaPipelineRequest.type = Types::GetMediaPipelineRequest
    GetMediaPipelineResponse.add_member(:media_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipeline, name: "MediaPipeline"))
    GetMediaPipelineResponse.type = Types::GetMediaPipelineResponse
    GetSpeakerSearchTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "SpeakerSearchTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSpeakerSearchTaskRequest.type = Types::GetSpeakerSearchTaskRequest
    GetSpeakerSearchTaskResponse.add_member(:speaker_search_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchTask, name: "SpeakerSearchTask"))
    GetSpeakerSearchTaskResponse.type = Types::GetSpeakerSearchTaskResponse
    GetVoiceToneAnalysisTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "VoiceToneAnalysisTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVoiceToneAnalysisTaskRequest.type = Types::GetVoiceToneAnalysisTaskRequest
    GetVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceToneAnalysisTask, name: "VoiceToneAnalysisTask"))
    GetVoiceToneAnalysisTaskResponse.type = Types::GetVoiceToneAnalysisTaskResponse
    GridViewConfiguration.add_member(:content_share_layout, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentShareLayoutOption, name: "ContentShareLayout", traits: {"smithy.api#required" => {}}))
    GridViewConfiguration.add_member(:presenter_only_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PresenterOnlyConfiguration, name: "PresenterOnlyConfiguration"))
    GridViewConfiguration.add_member(:active_speaker_only_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveSpeakerOnlyConfiguration, name: "ActiveSpeakerOnlyConfiguration"))
    GridViewConfiguration.add_member(:horizontal_layout_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HorizontalLayoutConfiguration, name: "HorizontalLayoutConfiguration"))
    GridViewConfiguration.add_member(:vertical_layout_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VerticalLayoutConfiguration, name: "VerticalLayoutConfiguration"))
    GridViewConfiguration.add_member(:video_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoAttribute, name: "VideoAttribute"))
    GridViewConfiguration.add_member(:canvas_orientation, ::Smithy::Schema::Shapes::MemberShape.new(target: CanvasOrientation, name: "CanvasOrientation"))
    GridViewConfiguration.type = Types::GridViewConfiguration
    HighlightColor.add_member(:black, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Black", traits: {"smithy.api#enumValue" => "Black"}))
    HighlightColor.add_member(:blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Blue", traits: {"smithy.api#enumValue" => "Blue"}))
    HighlightColor.add_member(:red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Red", traits: {"smithy.api#enumValue" => "Red"}))
    HighlightColor.add_member(:green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Green", traits: {"smithy.api#enumValue" => "Green"}))
    HighlightColor.add_member(:white, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "White", traits: {"smithy.api#enumValue" => "White"}))
    HighlightColor.add_member(:yellow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Yellow", traits: {"smithy.api#enumValue" => "Yellow"}))
    HorizontalLayoutConfiguration.add_member(:tile_order, ::Smithy::Schema::Shapes::MemberShape.new(target: TileOrder, name: "TileOrder"))
    HorizontalLayoutConfiguration.add_member(:tile_position, ::Smithy::Schema::Shapes::MemberShape.new(target: HorizontalTilePosition, name: "TilePosition"))
    HorizontalLayoutConfiguration.add_member(:tile_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TileCount, name: "TileCount"))
    HorizontalLayoutConfiguration.add_member(:tile_aspect_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: TileAspectRatio, name: "TileAspectRatio"))
    HorizontalLayoutConfiguration.type = Types::HorizontalLayoutConfiguration
    HorizontalTilePosition.add_member(:top, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Top", traits: {"smithy.api#enumValue" => "Top"}))
    HorizontalTilePosition.add_member(:bottom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bottom", traits: {"smithy.api#enumValue" => "Bottom"}))
    IssueDetectionConfiguration.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    IssueDetectionConfiguration.type = Types::IssueDetectionConfiguration
    KeywordMatchConfiguration.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    KeywordMatchConfiguration.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMatchWordList, name: "Keywords", traits: {"smithy.api#required" => {}}))
    KeywordMatchConfiguration.add_member(:negate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Negate", traits: {"smithy.api#default" => false}))
    KeywordMatchConfiguration.type = Types::KeywordMatchConfiguration
    KeywordMatchWordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Keyword, name: "member"))
    KinesisDataStreamSinkConfiguration.add_member(:insights_target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InsightsTarget"))
    KinesisDataStreamSinkConfiguration.type = Types::KinesisDataStreamSinkConfiguration
    KinesisVideoStreamConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "Region", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamConfiguration.add_member(:data_retention_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetentionInHours, name: "DataRetentionInHours"))
    KinesisVideoStreamConfiguration.type = Types::KinesisVideoStreamConfiguration
    KinesisVideoStreamConfigurationUpdate.add_member(:data_retention_in_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetentionChangeInHours, name: "DataRetentionInHours"))
    KinesisVideoStreamConfigurationUpdate.type = Types::KinesisVideoStreamConfigurationUpdate
    KinesisVideoStreamPoolConfiguration.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PoolArn"))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolName, name: "PoolName"))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolId, name: "PoolId"))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_status, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolStatus, name: "PoolStatus"))
    KinesisVideoStreamPoolConfiguration.add_member(:pool_size, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolSize, name: "PoolSize"))
    KinesisVideoStreamPoolConfiguration.add_member(:stream_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamConfiguration, name: "StreamConfiguration"))
    KinesisVideoStreamPoolConfiguration.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    KinesisVideoStreamPoolConfiguration.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    KinesisVideoStreamPoolConfiguration.type = Types::KinesisVideoStreamPoolConfiguration
    KinesisVideoStreamPoolStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    KinesisVideoStreamPoolStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    KinesisVideoStreamPoolStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    KinesisVideoStreamPoolStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    KinesisVideoStreamPoolStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    KinesisVideoStreamPoolSummary.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolName, name: "PoolName"))
    KinesisVideoStreamPoolSummary.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolId, name: "PoolId"))
    KinesisVideoStreamPoolSummary.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "PoolArn"))
    KinesisVideoStreamPoolSummary.type = Types::KinesisVideoStreamPoolSummary
    KinesisVideoStreamPoolSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolSummary, name: "member"))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingStreamList, name: "Streams", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:fragment_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentSelector, name: "FragmentSelector", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.type = Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: Streams, name: "Streams", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaEncoding, name: "MediaEncoding", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaSampleRateHertz, name: "MediaSampleRate", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamSourceRuntimeConfiguration.type = Types::KinesisVideoStreamSourceRuntimeConfiguration
    KinesisVideoStreamSourceTaskConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    KinesisVideoStreamSourceTaskConfiguration.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "ChannelId", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    KinesisVideoStreamSourceTaskConfiguration.add_member(:fragment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentNumberString, name: "FragmentNumber"))
    KinesisVideoStreamSourceTaskConfiguration.type = Types::KinesisVideoStreamSourceTaskConfiguration
    LambdaFunctionSinkConfiguration.add_member(:insights_target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InsightsTarget"))
    LambdaFunctionSinkConfiguration.type = Types::LambdaFunctionSinkConfiguration
    LayoutOption.add_member(:grid_view, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GridView", traits: {"smithy.api#enumValue" => "GridView"}))
    ListMediaCapturePipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListMediaCapturePipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListMediaCapturePipelinesRequest.type = Types::ListMediaCapturePipelinesRequest
    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipelineSummaryList, name: "MediaCapturePipelines"))
    ListMediaCapturePipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListMediaCapturePipelinesResponse.type = Types::ListMediaCapturePipelinesResponse
    ListMediaInsightsPipelineConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListMediaInsightsPipelineConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListMediaInsightsPipelineConfigurationsRequest.type = Types::ListMediaInsightsPipelineConfigurationsRequest
    ListMediaInsightsPipelineConfigurationsResponse.add_member(:media_insights_pipeline_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationSummaryList, name: "MediaInsightsPipelineConfigurations"))
    ListMediaInsightsPipelineConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListMediaInsightsPipelineConfigurationsResponse.type = Types::ListMediaInsightsPipelineConfigurationsResponse
    ListMediaPipelineKinesisVideoStreamPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListMediaPipelineKinesisVideoStreamPoolsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListMediaPipelineKinesisVideoStreamPoolsRequest.type = Types::ListMediaPipelineKinesisVideoStreamPoolsRequest
    ListMediaPipelineKinesisVideoStreamPoolsResponse.add_member(:kinesis_video_stream_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolSummaryList, name: "KinesisVideoStreamPools"))
    ListMediaPipelineKinesisVideoStreamPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListMediaPipelineKinesisVideoStreamPoolsResponse.type = Types::ListMediaPipelineKinesisVideoStreamPoolsResponse
    ListMediaPipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListMediaPipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListMediaPipelinesRequest.type = Types::ListMediaPipelinesRequest
    ListMediaPipelinesResponse.add_member(:media_pipelines, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineList, name: "MediaPipelines"))
    ListMediaPipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListMediaPipelinesResponse.type = Types::ListMediaPipelinesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LiveConnectorMuxType.add_member(:audio_with_composited_video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AudioWithCompositedVideo", traits: {"smithy.api#enumValue" => "AudioWithCompositedVideo"}))
    LiveConnectorMuxType.add_member(:audio_with_active_speaker_video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AudioWithActiveSpeakerVideo", traits: {"smithy.api#enumValue" => "AudioWithActiveSpeakerVideo"}))
    LiveConnectorRTMPConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "Url", traits: {"smithy.api#required" => {}}))
    LiveConnectorRTMPConfiguration.add_member(:audio_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChannelsOption, name: "AudioChannels"))
    LiveConnectorRTMPConfiguration.add_member(:audio_sample_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioSampleRateOption, name: "AudioSampleRate"))
    LiveConnectorRTMPConfiguration.type = Types::LiveConnectorRTMPConfiguration
    LiveConnectorSinkConfiguration.add_member(:sink_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSinkType, name: "SinkType", traits: {"smithy.api#required" => {}}))
    LiveConnectorSinkConfiguration.add_member(:rtmp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorRTMPConfiguration, name: "RTMPConfiguration", traits: {"smithy.api#required" => {}}))
    LiveConnectorSinkConfiguration.type = Types::LiveConnectorSinkConfiguration
    LiveConnectorSinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSinkConfiguration, name: "member"))
    LiveConnectorSinkType.add_member(:rtmp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTMP", traits: {"smithy.api#enumValue" => "RTMP"}))
    LiveConnectorSourceConfiguration.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSourceType, name: "SourceType", traits: {"smithy.api#required" => {}}))
    LiveConnectorSourceConfiguration.add_member(:chime_sdk_meeting_live_connector_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeSdkMeetingLiveConnectorConfiguration, name: "ChimeSdkMeetingLiveConnectorConfiguration", traits: {"smithy.api#required" => {}}))
    LiveConnectorSourceConfiguration.type = Types::LiveConnectorSourceConfiguration
    LiveConnectorSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSourceConfiguration, name: "member"))
    LiveConnectorSourceType.add_member(:chime_sdk_meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChimeSdkMeeting", traits: {"smithy.api#enumValue" => "ChimeSdkMeeting"}))
    MediaCapturePipeline.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaCapturePipeline.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaCapturePipeline.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSourceType, name: "SourceType"))
    MediaCapturePipeline.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceArn"))
    MediaCapturePipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatus, name: "Status"))
    MediaCapturePipeline.add_member(:sink_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSinkType, name: "SinkType"))
    MediaCapturePipeline.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SinkArn"))
    MediaCapturePipeline.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaCapturePipeline.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    MediaCapturePipeline.add_member(:chime_sdk_meeting_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeSdkMeetingConfiguration, name: "ChimeSdkMeetingConfiguration"))
    MediaCapturePipeline.add_member(:sse_aws_key_management_params, ::Smithy::Schema::Shapes::MemberShape.new(target: SseAwsKeyManagementParams, name: "SseAwsKeyManagementParams"))
    MediaCapturePipeline.add_member(:sink_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SinkIamRoleArn"))
    MediaCapturePipeline.type = Types::MediaCapturePipeline
    MediaCapturePipelineSourceConfiguration.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaPipelineArn", traits: {"smithy.api#required" => {}}))
    MediaCapturePipelineSourceConfiguration.add_member(:chime_sdk_meeting_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChimeSdkMeetingConcatenationConfiguration, name: "ChimeSdkMeetingConfiguration", traits: {"smithy.api#required" => {}}))
    MediaCapturePipelineSourceConfiguration.type = Types::MediaCapturePipelineSourceConfiguration
    MediaCapturePipelineSummary.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaCapturePipelineSummary.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaCapturePipelineSummary.type = Types::MediaCapturePipelineSummary
    MediaCapturePipelineSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipelineSummary, name: "member"))
    MediaConcatenationPipeline.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaConcatenationPipeline.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaConcatenationPipeline.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSourceList, name: "Sources"))
    MediaConcatenationPipeline.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: ConcatenationSinkList, name: "Sinks"))
    MediaConcatenationPipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatus, name: "Status"))
    MediaConcatenationPipeline.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaConcatenationPipeline.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    MediaConcatenationPipeline.type = Types::MediaConcatenationPipeline
    MediaEncoding.add_member(:pcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCM", traits: {"smithy.api#enumValue" => "pcm"}))
    MediaInsightsPipeline.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaInsightsPipeline.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaPipelineArn"))
    MediaInsightsPipeline.add_member(:media_insights_pipeline_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatus, name: "Status"))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_source_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamSourceRuntimeConfiguration, name: "KinesisVideoStreamSourceRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:media_insights_runtime_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsRuntimeMetadata, name: "MediaInsightsRuntimeMetadata"))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_recording_source_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamRecordingSourceRuntimeConfiguration, name: "KinesisVideoStreamRecordingSourceRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:s3_recording_sink_runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RecordingSinkRuntimeConfiguration, name: "S3RecordingSinkRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaInsightsPipeline.add_member(:element_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineElementStatuses, name: "ElementStatuses"))
    MediaInsightsPipeline.type = Types::MediaInsightsPipeline
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationNameString, name: "MediaInsightsPipelineConfigurationName"))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipelineConfiguration.add_member(:resource_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceAccessRoleArn"))
    MediaInsightsPipelineConfiguration.add_member(:real_time_alert_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertConfiguration, name: "RealTimeAlertConfiguration"))
    MediaInsightsPipelineConfiguration.add_member(:elements, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElements, name: "Elements"))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaInsightsPipelineConfigurationId"))
    MediaInsightsPipelineConfiguration.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaInsightsPipelineConfiguration.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    MediaInsightsPipelineConfiguration.type = Types::MediaInsightsPipelineConfiguration
    MediaInsightsPipelineConfigurationElement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElementType, name: "Type", traits: {"smithy.api#required" => {}}))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_call_analytics_processor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonTranscribeCallAnalyticsProcessorConfiguration, name: "AmazonTranscribeCallAnalyticsProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_processor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonTranscribeProcessorConfiguration, name: "AmazonTranscribeProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:kinesis_data_stream_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisDataStreamSinkConfiguration, name: "KinesisDataStreamSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:s3_recording_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RecordingSinkConfiguration, name: "S3RecordingSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:voice_analytics_processor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceAnalyticsProcessorConfiguration, name: "VoiceAnalyticsProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:lambda_function_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionSinkConfiguration, name: "LambdaFunctionSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:sqs_queue_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueSinkConfiguration, name: "SqsQueueSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:sns_topic_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicSinkConfiguration, name: "SnsTopicSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:voice_enhancement_sink_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceEnhancementSinkConfiguration, name: "VoiceEnhancementSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.type = Types::MediaInsightsPipelineConfigurationElement
    MediaInsightsPipelineConfigurationElementType.add_member(:amazon_transcribe_call_analytics_processor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_TRANSCRIBE_CALL_ANALYTICS_PROCESSOR", traits: {"smithy.api#enumValue" => "AmazonTranscribeCallAnalyticsProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:voice_analytics_processor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOICE_ANALYTICS_PROCESSOR", traits: {"smithy.api#enumValue" => "VoiceAnalyticsProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:amazon_transcribe_processor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_TRANSCRIBE_PROCESSOR", traits: {"smithy.api#enumValue" => "AmazonTranscribeProcessor"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:kinesis_data_stream_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_DATA_STREAM_SINK", traits: {"smithy.api#enumValue" => "KinesisDataStreamSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:lambda_function_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION_SINK", traits: {"smithy.api#enumValue" => "LambdaFunctionSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:sqs_queue_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS_QUEUE_SINK", traits: {"smithy.api#enumValue" => "SqsQueueSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:sns_topic_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS_TOPIC_SINK", traits: {"smithy.api#enumValue" => "SnsTopicSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:s3_recording_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_RECORDING_SINK", traits: {"smithy.api#enumValue" => "S3RecordingSink"}))
    MediaInsightsPipelineConfigurationElementType.add_member(:voice_enhancement_sink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOICE_ENHANCEMENT_SINK", traits: {"smithy.api#enumValue" => "VoiceEnhancementSink"}))
    MediaInsightsPipelineConfigurationElements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElement, name: "member"))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationNameString, name: "MediaInsightsPipelineConfigurationName"))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaInsightsPipelineConfigurationId"))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipelineConfigurationSummary.type = Types::MediaInsightsPipelineConfigurationSummary
    MediaInsightsPipelineConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationSummary, name: "member"))
    MediaInsightsPipelineElementStatus.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElementType, name: "Type"))
    MediaInsightsPipelineElementStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineElementStatus, name: "Status"))
    MediaInsightsPipelineElementStatus.type = Types::MediaInsightsPipelineElementStatus
    MediaInsightsPipelineElementStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineElementStatus, name: "member"))
    MediaInsightsRuntimeMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "key"))
    MediaInsightsRuntimeMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    MediaLiveConnectorPipeline.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSourceList, name: "Sources"))
    MediaLiveConnectorPipeline.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveConnectorSinkList, name: "Sinks"))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaLiveConnectorPipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatus, name: "Status"))
    MediaLiveConnectorPipeline.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaLiveConnectorPipeline.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    MediaLiveConnectorPipeline.type = Types::MediaLiveConnectorPipeline
    MediaPipeline.add_member(:media_capture_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapturePipeline, name: "MediaCapturePipeline"))
    MediaPipeline.add_member(:media_live_connector_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaLiveConnectorPipeline, name: "MediaLiveConnectorPipeline"))
    MediaPipeline.add_member(:media_concatenation_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaConcatenationPipeline, name: "MediaConcatenationPipeline"))
    MediaPipeline.add_member(:media_insights_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipeline, name: "MediaInsightsPipeline"))
    MediaPipeline.add_member(:media_stream_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamPipeline, name: "MediaStreamPipeline"))
    MediaPipeline.type = Types::MediaPipeline
    MediaPipelineElementStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineElementStatus.add_member(:not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotSupported", traits: {"smithy.api#enumValue" => "NotSupported"}))
    MediaPipelineElementStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initializing", traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineElementStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineElementStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineElementStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineElementStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaPipelineElementStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Paused", traits: {"smithy.api#enumValue" => "Paused"}))
    MediaPipelineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSummary, name: "member"))
    MediaPipelineSinkType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3Bucket", traits: {"smithy.api#enumValue" => "S3Bucket"}))
    MediaPipelineSourceType.add_member(:chime_sdk_meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChimeSdkMeeting", traits: {"smithy.api#enumValue" => "ChimeSdkMeeting"}))
    MediaPipelineStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initializing", traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaPipelineStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Paused", traits: {"smithy.api#enumValue" => "Paused"}))
    MediaPipelineStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineStatusUpdate.add_member(:pause, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pause", traits: {"smithy.api#enumValue" => "Pause"}))
    MediaPipelineStatusUpdate.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Resume", traits: {"smithy.api#enumValue" => "Resume"}))
    MediaPipelineSummary.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaPipelineSummary.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaPipelineSummary.type = Types::MediaPipelineSummary
    MediaPipelineTaskStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotStarted", traits: {"smithy.api#enumValue" => "NotStarted"}))
    MediaPipelineTaskStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Initializing", traits: {"smithy.api#enumValue" => "Initializing"}))
    MediaPipelineTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    MediaPipelineTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    MediaPipelineTaskStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    MediaPipelineTaskStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    MediaStreamPipeline.add_member(:media_pipeline_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MediaPipelineId"))
    MediaStreamPipeline.add_member(:media_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MediaPipelineArn"))
    MediaStreamPipeline.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    MediaStreamPipeline.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    MediaStreamPipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatus, name: "Status"))
    MediaStreamPipeline.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSourceList, name: "Sources"))
    MediaStreamPipeline.add_member(:sinks, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSinkList, name: "Sinks"))
    MediaStreamPipeline.type = Types::MediaStreamPipeline
    MediaStreamPipelineSinkType.add_member(:kinesis_video_stream_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisVideoStreamPool", traits: {"smithy.api#enumValue" => "KinesisVideoStreamPool"}))
    MediaStreamSink.add_member(:sink_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SinkArn", traits: {"smithy.api#required" => {}}))
    MediaStreamSink.add_member(:sink_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamPipelineSinkType, name: "SinkType", traits: {"smithy.api#required" => {}}))
    MediaStreamSink.add_member(:reserved_stream_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedStreamCapacity, name: "ReservedStreamCapacity", traits: {"smithy.api#required" => {}}))
    MediaStreamSink.add_member(:media_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamType, name: "MediaStreamType", traits: {"smithy.api#required" => {}}))
    MediaStreamSink.type = Types::MediaStreamSink
    MediaStreamSinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSink, name: "member"))
    MediaStreamSource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineSourceType, name: "SourceType", traits: {"smithy.api#required" => {}}))
    MediaStreamSource.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SourceArn", traits: {"smithy.api#required" => {}}))
    MediaStreamSource.type = Types::MediaStreamSource
    MediaStreamSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaStreamSource, name: "member"))
    MediaStreamType.add_member(:mixed_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MixedAudio", traits: {"smithy.api#enumValue" => "MixedAudio"}))
    MediaStreamType.add_member(:individual_audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IndividualAudio", traits: {"smithy.api#enumValue" => "IndividualAudio"}))
    MeetingEventsConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    MeetingEventsConcatenationConfiguration.type = Types::MeetingEventsConcatenationConfiguration
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    NotFoundException.type = Types::NotFoundException
    PartialResultsStability.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "high"}))
    PartialResultsStability.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "medium"}))
    PartialResultsStability.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "low"}))
    ParticipantRole.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    PostCallAnalyticsSettings.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutputLocation", traits: {"smithy.api#required" => {}}))
    PostCallAnalyticsSettings.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    PostCallAnalyticsSettings.add_member(:content_redaction_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentRedactionOutput, name: "ContentRedactionOutput"))
    PostCallAnalyticsSettings.add_member(:output_encryption_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutputEncryptionKMSKeyId"))
    PostCallAnalyticsSettings.type = Types::PostCallAnalyticsSettings
    PresenterOnlyConfiguration.add_member(:presenter_position, ::Smithy::Schema::Shapes::MemberShape.new(target: PresenterPosition, name: "PresenterPosition"))
    PresenterOnlyConfiguration.type = Types::PresenterOnlyConfiguration
    PresenterPosition.add_member(:top_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TopLeft", traits: {"smithy.api#enumValue" => "TopLeft"}))
    PresenterPosition.add_member(:top_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TopRight", traits: {"smithy.api#enumValue" => "TopRight"}))
    PresenterPosition.add_member(:bottom_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BottomLeft", traits: {"smithy.api#enumValue" => "BottomLeft"}))
    PresenterPosition.add_member(:bottom_right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BottomRight", traits: {"smithy.api#enumValue" => "BottomRight"}))
    RealTimeAlertConfiguration.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled", traits: {"smithy.api#default" => false}))
    RealTimeAlertConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertRuleList, name: "Rules"))
    RealTimeAlertConfiguration.type = Types::RealTimeAlertConfiguration
    RealTimeAlertRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertRuleType, name: "Type", traits: {"smithy.api#required" => {}}))
    RealTimeAlertRule.add_member(:keyword_match_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KeywordMatchConfiguration, name: "KeywordMatchConfiguration"))
    RealTimeAlertRule.add_member(:sentiment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentConfiguration, name: "SentimentConfiguration"))
    RealTimeAlertRule.add_member(:issue_detection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueDetectionConfiguration, name: "IssueDetectionConfiguration"))
    RealTimeAlertRule.type = Types::RealTimeAlertRule
    RealTimeAlertRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertRule, name: "member"))
    RealTimeAlertRuleType.add_member(:keyword_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KeywordMatch", traits: {"smithy.api#enumValue" => "KeywordMatch"}))
    RealTimeAlertRuleType.add_member(:sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sentiment", traits: {"smithy.api#enumValue" => "Sentiment"}))
    RealTimeAlertRuleType.add_member(:issue_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IssueDetection", traits: {"smithy.api#enumValue" => "IssueDetection"}))
    RecordingFileFormat.add_member(:wav, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Wav", traits: {"smithy.api#enumValue" => "Wav"}))
    RecordingFileFormat.add_member(:opus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Opus", traits: {"smithy.api#enumValue" => "Opus"}))
    RecordingStreamConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamArn, name: "StreamArn"))
    RecordingStreamConfiguration.type = Types::RecordingStreamConfiguration
    RecordingStreamList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingStreamConfiguration, name: "member"))
    ResolutionOption.add_member(:hd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HD", traits: {"smithy.api#enumValue" => "HD"}))
    ResolutionOption.add_member(:fhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FHD", traits: {"smithy.api#enumValue" => "FHD"}))
    ResourceLimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceLimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    S3BucketSinkConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Destination", traits: {"smithy.api#required" => {}}))
    S3BucketSinkConfiguration.type = Types::S3BucketSinkConfiguration
    S3RecordingSinkConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Destination"))
    S3RecordingSinkConfiguration.add_member(:recording_file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFileFormat, name: "RecordingFileFormat"))
    S3RecordingSinkConfiguration.type = Types::S3RecordingSinkConfiguration
    S3RecordingSinkRuntimeConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Destination", traits: {"smithy.api#required" => {}}))
    S3RecordingSinkRuntimeConfiguration.add_member(:recording_file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFileFormat, name: "RecordingFileFormat", traits: {"smithy.api#required" => {}}))
    S3RecordingSinkRuntimeConfiguration.type = Types::S3RecordingSinkRuntimeConfiguration
    SelectedVideoStreams.add_member(:attendee_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeIdList, name: "AttendeeIds"))
    SelectedVideoStreams.add_member(:external_user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserIdList, name: "ExternalUserIds"))
    SelectedVideoStreams.type = Types::SelectedVideoStreams
    SentimentConfiguration.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "RuleName", traits: {"smithy.api#required" => {}}))
    SentimentConfiguration.add_member(:sentiment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentType, name: "SentimentType", traits: {"smithy.api#required" => {}}))
    SentimentConfiguration.add_member(:time_period, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentTimePeriodInSeconds, name: "TimePeriod", traits: {"smithy.api#required" => {}}))
    SentimentConfiguration.type = Types::SentimentConfiguration
    SentimentType.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEGATIVE", traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceFailureException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SnsTopicSinkConfiguration.add_member(:insights_target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InsightsTarget"))
    SnsTopicSinkConfiguration.type = Types::SnsTopicSinkConfiguration
    SourceConfiguration.add_member(:selected_video_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedVideoStreams, name: "SelectedVideoStreams"))
    SourceConfiguration.type = Types::SourceConfiguration
    SpeakerSearchTask.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "SpeakerSearchTaskId"))
    SpeakerSearchTask.add_member(:speaker_search_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineTaskStatus, name: "SpeakerSearchTaskStatus"))
    SpeakerSearchTask.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    SpeakerSearchTask.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    SpeakerSearchTask.type = Types::SpeakerSearchTask
    SqsQueueSinkConfiguration.add_member(:insights_target, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "InsightsTarget"))
    SqsQueueSinkConfiguration.type = Types::SqsQueueSinkConfiguration
    SseAwsKeyManagementParams.add_member(:aws_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsKmsKeyId", traits: {"smithy.api#required" => {}}))
    SseAwsKeyManagementParams.add_member(:aws_kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AwsKmsEncryptionContext"))
    SseAwsKeyManagementParams.type = Types::SseAwsKeyManagementParams
    StartSpeakerSearchTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:voice_profile_domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "VoiceProfileDomainArn", traits: {"smithy.api#required" => {}}))
    StartSpeakerSearchTaskRequest.add_member(:kinesis_video_stream_source_task_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamSourceTaskConfiguration, name: "KinesisVideoStreamSourceTaskConfiguration"))
    StartSpeakerSearchTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartSpeakerSearchTaskRequest.type = Types::StartSpeakerSearchTaskRequest
    StartSpeakerSearchTaskResponse.add_member(:speaker_search_task, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerSearchTask, name: "SpeakerSearchTask"))
    StartSpeakerSearchTaskResponse.type = Types::StartSpeakerSearchTaskResponse
    StartVoiceToneAnalysisTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceAnalyticsLanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    StartVoiceToneAnalysisTaskRequest.add_member(:kinesis_video_stream_source_task_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamSourceTaskConfiguration, name: "KinesisVideoStreamSourceTaskConfiguration"))
    StartVoiceToneAnalysisTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartVoiceToneAnalysisTaskRequest.type = Types::StartVoiceToneAnalysisTaskRequest
    StartVoiceToneAnalysisTaskResponse.add_member(:voice_tone_analysis_task, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceToneAnalysisTask, name: "VoiceToneAnalysisTask"))
    StartVoiceToneAnalysisTaskResponse.type = Types::StartVoiceToneAnalysisTaskResponse
    StopSpeakerSearchTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.add_member(:speaker_search_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "SpeakerSearchTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSpeakerSearchTaskRequest.type = Types::StopSpeakerSearchTaskRequest
    StopVoiceToneAnalysisTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "VoiceToneAnalysisTaskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopVoiceToneAnalysisTaskRequest.type = Types::StopVoiceToneAnalysisTaskRequest
    StreamChannelDefinition.add_member(:number_of_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfChannels, name: "NumberOfChannels", traits: {"smithy.api#required" => {}}))
    StreamChannelDefinition.add_member(:channel_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDefinitions, name: "ChannelDefinitions"))
    StreamChannelDefinition.type = Types::StreamChannelDefinition
    StreamConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    StreamConfiguration.add_member(:fragment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: FragmentNumberString, name: "FragmentNumber"))
    StreamConfiguration.add_member(:stream_channel_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamChannelDefinition, name: "StreamChannelDefinition", traits: {"smithy.api#required" => {}}))
    StreamConfiguration.type = Types::StreamConfiguration
    Streams.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamConfiguration, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottledClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    ThrottledClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottledClientException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ThrottledClientException.type = Types::ThrottledClientException
    TileOrder.add_member(:join_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JoinSequence", traits: {"smithy.api#enumValue" => "JoinSequence"}))
    TileOrder.add_member(:speaker_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SpeakerSequence", traits: {"smithy.api#enumValue" => "SpeakerSequence"}))
    TimestampRange.add_member(:start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTimestamp", traits: {"smithy.api#required" => {}}))
    TimestampRange.add_member(:end_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTimestamp", traits: {"smithy.api#required" => {}}))
    TimestampRange.type = Types::TimestampRange
    TranscriptionMessagesConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    TranscriptionMessagesConcatenationConfiguration.type = Types::TranscriptionMessagesConcatenationConfiguration
    UnauthorizedClientException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    UnauthorizedClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnauthorizedClientException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    UnauthorizedClientException.type = Types::UnauthorizedClientException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceAccessRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RealTimeAlertConfiguration, name: "RealTimeAlertConfiguration"))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:elements, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfigurationElements, name: "Elements", traits: {"smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineConfigurationRequest.type = Types::UpdateMediaInsightsPipelineConfigurationRequest
    UpdateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaInsightsPipelineConfiguration, name: "MediaInsightsPipelineConfiguration"))
    UpdateMediaInsightsPipelineConfigurationResponse.type = Types::UpdateMediaInsightsPipelineConfigurationResponse
    UpdateMediaInsightsPipelineStatusRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineStatusRequest.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineStatusUpdate, name: "UpdateStatus", traits: {"smithy.api#required" => {}}))
    UpdateMediaInsightsPipelineStatusRequest.type = Types::UpdateMediaInsightsPipelineStatusRequest
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.add_member(:stream_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamConfigurationUpdate, name: "StreamConfiguration"))
    UpdateMediaPipelineKinesisVideoStreamPoolRequest.type = Types::UpdateMediaPipelineKinesisVideoStreamPoolRequest
    UpdateMediaPipelineKinesisVideoStreamPoolResponse.add_member(:kinesis_video_stream_pool_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisVideoStreamPoolConfiguration, name: "KinesisVideoStreamPoolConfiguration"))
    UpdateMediaPipelineKinesisVideoStreamPoolResponse.type = Types::UpdateMediaPipelineKinesisVideoStreamPoolResponse
    VerticalLayoutConfiguration.add_member(:tile_order, ::Smithy::Schema::Shapes::MemberShape.new(target: TileOrder, name: "TileOrder"))
    VerticalLayoutConfiguration.add_member(:tile_position, ::Smithy::Schema::Shapes::MemberShape.new(target: VerticalTilePosition, name: "TilePosition"))
    VerticalLayoutConfiguration.add_member(:tile_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TileCount, name: "TileCount"))
    VerticalLayoutConfiguration.add_member(:tile_aspect_ratio, ::Smithy::Schema::Shapes::MemberShape.new(target: TileAspectRatio, name: "TileAspectRatio"))
    VerticalLayoutConfiguration.type = Types::VerticalLayoutConfiguration
    VerticalTilePosition.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Left", traits: {"smithy.api#enumValue" => "Left"}))
    VerticalTilePosition.add_member(:right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Right", traits: {"smithy.api#enumValue" => "Right"}))
    VideoArtifactsConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsState, name: "State", traits: {"smithy.api#required" => {}}))
    VideoArtifactsConfiguration.add_member(:mux_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoMuxType, name: "MuxType"))
    VideoArtifactsConfiguration.type = Types::VideoArtifactsConfiguration
    VideoAttribute.add_member(:corner_radius, ::Smithy::Schema::Shapes::MemberShape.new(target: CornerRadius, name: "CornerRadius"))
    VideoAttribute.add_member(:border_color, ::Smithy::Schema::Shapes::MemberShape.new(target: BorderColor, name: "BorderColor"))
    VideoAttribute.add_member(:highlight_color, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightColor, name: "HighlightColor"))
    VideoAttribute.add_member(:border_thickness, ::Smithy::Schema::Shapes::MemberShape.new(target: BorderThickness, name: "BorderThickness"))
    VideoAttribute.type = Types::VideoAttribute
    VideoConcatenationConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsConcatenationState, name: "State", traits: {"smithy.api#required" => {}}))
    VideoConcatenationConfiguration.type = Types::VideoConcatenationConfiguration
    VideoMuxType.add_member(:video_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VideoOnly", traits: {"smithy.api#enumValue" => "VideoOnly"}))
    VocabularyFilterMethod.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "remove"}))
    VocabularyFilterMethod.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK", traits: {"smithy.api#enumValue" => "mask"}))
    VocabularyFilterMethod.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG", traits: {"smithy.api#enumValue" => "tag"}))
    VoiceAnalyticsConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    VoiceAnalyticsConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    VoiceAnalyticsLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    VoiceAnalyticsProcessorConfiguration.add_member(:speaker_search_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceAnalyticsConfigurationStatus, name: "SpeakerSearchStatus"))
    VoiceAnalyticsProcessorConfiguration.add_member(:voice_tone_analysis_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceAnalyticsConfigurationStatus, name: "VoiceToneAnalysisStatus"))
    VoiceAnalyticsProcessorConfiguration.type = Types::VoiceAnalyticsProcessorConfiguration
    VoiceEnhancementSinkConfiguration.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Disabled", traits: {"smithy.api#default" => false}))
    VoiceEnhancementSinkConfiguration.type = Types::VoiceEnhancementSinkConfiguration
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "VoiceToneAnalysisTaskId"))
    VoiceToneAnalysisTask.add_member(:voice_tone_analysis_task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPipelineTaskStatus, name: "VoiceToneAnalysisTaskStatus"))
    VoiceToneAnalysisTask.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "CreatedTimestamp"))
    VoiceToneAnalysisTask.add_member(:updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601Timestamp, name: "UpdatedTimestamp"))
    VoiceToneAnalysisTask.type = Types::VoiceToneAnalysisTask

    ChimeSDKMediaPipelinesService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmediapipelines#ChimeSDKMediaPipelinesService"
      service.name = "ChimeSDKMediaPipelinesService"
      service.version = "2021-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Media Pipelines", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMediaPipelines", "cloudTrailEventSource" => "chimesdkmediapipelines.amazonaws.com", "endpointPrefix" => "media-pipelines-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Media Pipelines", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://media-pipelines-chime-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://media-pipelines-chime-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://media-pipelines-chime.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://media-pipelines-chime.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_media_capture_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaCapturePipeline"
        operation.name = "CreateMediaCapturePipeline"
        operation.input = CreateMediaCapturePipelineRequest
        operation.output = CreateMediaCapturePipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-capture-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_concatenation_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaConcatenationPipeline"
        operation.name = "CreateMediaConcatenationPipeline"
        operation.input = CreateMediaConcatenationPipelineRequest
        operation.output = CreateMediaConcatenationPipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-concatenation-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_insights_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipeline"
        operation.name = "CreateMediaInsightsPipeline"
        operation.input = CreateMediaInsightsPipelineRequest
        operation.output = CreateMediaInsightsPipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaInsightsPipelineConfiguration"
        operation.name = "CreateMediaInsightsPipelineConfiguration"
        operation.input = CreateMediaInsightsPipelineConfigurationRequest
        operation.output = CreateMediaInsightsPipelineConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipeline-configurations", "code" => 201}}
      end)
      service.add_operation(:create_media_live_connector_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaLiveConnectorPipeline"
        operation.name = "CreateMediaLiveConnectorPipeline"
        operation.input = CreateMediaLiveConnectorPipelineRequest
        operation.output = CreateMediaLiveConnectorPipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-live-connector-pipelines", "code" => 201}}
      end)
      service.add_operation(:create_media_pipeline_kinesis_video_stream_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaPipelineKinesisVideoStreamPool"
        operation.name = "CreateMediaPipelineKinesisVideoStreamPool"
        operation.input = CreateMediaPipelineKinesisVideoStreamPoolRequest
        operation.output = CreateMediaPipelineKinesisVideoStreamPoolResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-pipeline-kinesis-video-stream-pools", "code" => 201}}
      end)
      service.add_operation(:create_media_stream_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#CreateMediaStreamPipeline"
        operation.name = "CreateMediaStreamPipeline"
        operation.input = CreateMediaStreamPipelineRequest
        operation.output = CreateMediaStreamPipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sdk-media-stream-pipelines", "code" => 201}}
      end)
      service.add_operation(:delete_media_capture_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaCapturePipeline"
        operation.name = "DeleteMediaCapturePipeline"
        operation.input = DeleteMediaCapturePipelineRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sdk-media-capture-pipelines/{MediaPipelineId}", "code" => 204}}
      end)
      service.add_operation(:delete_media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaInsightsPipelineConfiguration"
        operation.name = "DeleteMediaInsightsPipelineConfiguration"
        operation.input = DeleteMediaInsightsPipelineConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:delete_media_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipeline"
        operation.name = "DeleteMediaPipeline"
        operation.input = DeleteMediaPipelineRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sdk-media-pipelines/{MediaPipelineId}", "code" => 204}}
      end)
      service.add_operation(:delete_media_pipeline_kinesis_video_stream_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#DeleteMediaPipelineKinesisVideoStreamPool"
        operation.name = "DeleteMediaPipelineKinesisVideoStreamPool"
        operation.input = DeleteMediaPipelineKinesisVideoStreamPoolRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 204}}
      end)
      service.add_operation(:get_media_capture_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaCapturePipeline"
        operation.name = "GetMediaCapturePipeline"
        operation.input = GetMediaCapturePipelineRequest
        operation.output = GetMediaCapturePipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-capture-pipelines/{MediaPipelineId}", "code" => 200}}
      end)
      service.add_operation(:get_media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaInsightsPipelineConfiguration"
        operation.name = "GetMediaInsightsPipelineConfiguration"
        operation.input = GetMediaInsightsPipelineConfigurationRequest
        operation.output = GetMediaInsightsPipelineConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_media_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaPipeline"
        operation.name = "GetMediaPipeline"
        operation.input = GetMediaPipelineRequest
        operation.output = GetMediaPipelineResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-pipelines/{MediaPipelineId}", "code" => 200}}
      end)
      service.add_operation(:get_media_pipeline_kinesis_video_stream_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetMediaPipelineKinesisVideoStreamPool"
        operation.name = "GetMediaPipelineKinesisVideoStreamPool"
        operation.input = GetMediaPipelineKinesisVideoStreamPoolRequest
        operation.output = GetMediaPipelineKinesisVideoStreamPoolResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:get_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetSpeakerSearchTask"
        operation.name = "GetSpeakerSearchTask"
        operation.input = GetSpeakerSearchTaskRequest
        operation.output = GetSpeakerSearchTaskResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}", "code" => 200}}
      end)
      service.add_operation(:get_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#GetVoiceToneAnalysisTask"
        operation.name = "GetVoiceToneAnalysisTask"
        operation.input = GetVoiceToneAnalysisTaskRequest
        operation.output = GetVoiceToneAnalysisTaskResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}", "code" => 200}}
      end)
      service.add_operation(:list_media_capture_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaCapturePipelines"
        operation.name = "ListMediaCapturePipelines"
        operation.input = ListMediaCapturePipelinesRequest
        operation.output = ListMediaCapturePipelinesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-capture-pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaCapturePipelines.new
      end)
      service.add_operation(:list_media_insights_pipeline_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaInsightsPipelineConfigurations"
        operation.name = "ListMediaInsightsPipelineConfigurations"
        operation.input = ListMediaInsightsPipelineConfigurationsRequest
        operation.output = ListMediaInsightsPipelineConfigurationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-insights-pipeline-configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaInsightsPipelineConfigurations.new
      end)
      service.add_operation(:list_media_pipeline_kinesis_video_stream_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaPipelineKinesisVideoStreamPools"
        operation.name = "ListMediaPipelineKinesisVideoStreamPools"
        operation.input = ListMediaPipelineKinesisVideoStreamPoolsRequest
        operation.output = ListMediaPipelineKinesisVideoStreamPoolsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/media-pipeline-kinesis-video-stream-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaPipelineKinesisVideoStreamPools.new
      end)
      service.add_operation(:list_media_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListMediaPipelines"
        operation.name = "ListMediaPipelines"
        operation.input = ListMediaPipelinesRequest
        operation.output = ListMediaPipelinesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sdk-media-pipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListMediaPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:start_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StartSpeakerSearchTask"
        operation.name = "StartSpeakerSearchTask"
        operation.input = StartSpeakerSearchTaskRequest
        operation.output = StartSpeakerSearchTaskResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks?operation=start", "code" => 201}}
      end)
      service.add_operation(:start_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StartVoiceToneAnalysisTask"
        operation.name = "StartVoiceToneAnalysisTask"
        operation.input = StartVoiceToneAnalysisTaskRequest
        operation.output = StartVoiceToneAnalysisTaskResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks?operation=start", "code" => 201}}
      end)
      service.add_operation(:stop_speaker_search_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StopSpeakerSearchTask"
        operation.name = "StopSpeakerSearchTask"
        operation.input = StopSpeakerSearchTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:stop_voice_tone_analysis_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#StopVoiceToneAnalysisTask"
        operation.name = "StopVoiceToneAnalysisTask"
        operation.input = StopVoiceToneAnalysisTaskRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop", "code" => 204}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_media_insights_pipeline_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineConfiguration"
        operation.name = "UpdateMediaInsightsPipelineConfiguration"
        operation.input = UpdateMediaInsightsPipelineConfigurationRequest
        operation.output = UpdateMediaInsightsPipelineConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-insights-pipeline-configurations/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_media_insights_pipeline_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaInsightsPipelineStatus"
        operation.name = "UpdateMediaInsightsPipelineStatus"
        operation.input = UpdateMediaInsightsPipelineStatusRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-insights-pipeline-status/{Identifier}", "code" => 200}}
      end)
      service.add_operation(:update_media_pipeline_kinesis_video_stream_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmediapipelines#UpdateMediaPipelineKinesisVideoStreamPool"
        operation.name = "UpdateMediaPipelineKinesisVideoStreamPool"
        operation.input = UpdateMediaPipelineKinesisVideoStreamPoolRequest
        operation.output = UpdateMediaPipelineKinesisVideoStreamPoolResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottledClientException
        operation.errors << UnauthorizedClientException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/media-pipeline-kinesis-video-stream-pools/{Identifier}", "code" => 200}}
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
