# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMediaPipelines
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AmazonTranscribeCallAnalyticsProcessorConfiguration = Shapes::StructureShape.new(name: 'AmazonTranscribeCallAnalyticsProcessorConfiguration')
    AmazonTranscribeProcessorConfiguration = Shapes::StructureShape.new(name: 'AmazonTranscribeProcessorConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArtifactsConcatenationConfiguration = Shapes::StructureShape.new(name: 'ArtifactsConcatenationConfiguration')
    ArtifactsConcatenationState = Shapes::StringShape.new(name: 'ArtifactsConcatenationState')
    ArtifactsConfiguration = Shapes::StructureShape.new(name: 'ArtifactsConfiguration')
    ArtifactsState = Shapes::StringShape.new(name: 'ArtifactsState')
    AttendeeIdList = Shapes::ListShape.new(name: 'AttendeeIdList')
    AudioArtifactsConcatenationState = Shapes::StringShape.new(name: 'AudioArtifactsConcatenationState')
    AudioArtifactsConfiguration = Shapes::StructureShape.new(name: 'AudioArtifactsConfiguration')
    AudioChannelsOption = Shapes::StringShape.new(name: 'AudioChannelsOption')
    AudioConcatenationConfiguration = Shapes::StructureShape.new(name: 'AudioConcatenationConfiguration')
    AudioMuxType = Shapes::StringShape.new(name: 'AudioMuxType')
    AudioSampleRateOption = Shapes::StringShape.new(name: 'AudioSampleRateOption')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CallAnalyticsLanguageCode = Shapes::StringShape.new(name: 'CallAnalyticsLanguageCode')
    CategoryName = Shapes::StringShape.new(name: 'CategoryName')
    CategoryNameList = Shapes::ListShape.new(name: 'CategoryNameList')
    ChannelDefinition = Shapes::StructureShape.new(name: 'ChannelDefinition')
    ChannelDefinitions = Shapes::ListShape.new(name: 'ChannelDefinitions')
    ChannelId = Shapes::IntegerShape.new(name: 'ChannelId')
    ChimeSdkMeetingConcatenationConfiguration = Shapes::StructureShape.new(name: 'ChimeSdkMeetingConcatenationConfiguration')
    ChimeSdkMeetingConfiguration = Shapes::StructureShape.new(name: 'ChimeSdkMeetingConfiguration')
    ChimeSdkMeetingLiveConnectorConfiguration = Shapes::StructureShape.new(name: 'ChimeSdkMeetingLiveConnectorConfiguration')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CompositedVideoArtifactsConfiguration = Shapes::StructureShape.new(name: 'CompositedVideoArtifactsConfiguration')
    CompositedVideoConcatenationConfiguration = Shapes::StructureShape.new(name: 'CompositedVideoConcatenationConfiguration')
    ConcatenationSink = Shapes::StructureShape.new(name: 'ConcatenationSink')
    ConcatenationSinkList = Shapes::ListShape.new(name: 'ConcatenationSinkList')
    ConcatenationSinkType = Shapes::StringShape.new(name: 'ConcatenationSinkType')
    ConcatenationSource = Shapes::StructureShape.new(name: 'ConcatenationSource')
    ConcatenationSourceList = Shapes::ListShape.new(name: 'ConcatenationSourceList')
    ConcatenationSourceType = Shapes::StringShape.new(name: 'ConcatenationSourceType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentArtifactsConfiguration = Shapes::StructureShape.new(name: 'ContentArtifactsConfiguration')
    ContentConcatenationConfiguration = Shapes::StructureShape.new(name: 'ContentConcatenationConfiguration')
    ContentMuxType = Shapes::StringShape.new(name: 'ContentMuxType')
    ContentRedactionOutput = Shapes::StringShape.new(name: 'ContentRedactionOutput')
    ContentShareLayoutOption = Shapes::StringShape.new(name: 'ContentShareLayoutOption')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineRequest')
    CreateMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineResponse')
    CreateMediaConcatenationPipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaConcatenationPipelineRequest')
    CreateMediaConcatenationPipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaConcatenationPipelineResponse')
    CreateMediaInsightsPipelineConfigurationRequest = Shapes::StructureShape.new(name: 'CreateMediaInsightsPipelineConfigurationRequest')
    CreateMediaInsightsPipelineConfigurationResponse = Shapes::StructureShape.new(name: 'CreateMediaInsightsPipelineConfigurationResponse')
    CreateMediaInsightsPipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaInsightsPipelineRequest')
    CreateMediaInsightsPipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaInsightsPipelineResponse')
    CreateMediaLiveConnectorPipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaLiveConnectorPipelineRequest')
    CreateMediaLiveConnectorPipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaLiveConnectorPipelineResponse')
    DataChannelConcatenationConfiguration = Shapes::StructureShape.new(name: 'DataChannelConcatenationConfiguration')
    DeleteMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaCapturePipelineRequest')
    DeleteMediaInsightsPipelineConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteMediaInsightsPipelineConfigurationRequest')
    DeleteMediaPipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaPipelineRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExternalUserIdList = Shapes::ListShape.new(name: 'ExternalUserIdList')
    ExternalUserIdType = Shapes::StringShape.new(name: 'ExternalUserIdType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    FragmentNumberString = Shapes::StringShape.new(name: 'FragmentNumberString')
    FragmentSelector = Shapes::StructureShape.new(name: 'FragmentSelector')
    FragmentSelectorType = Shapes::StringShape.new(name: 'FragmentSelectorType')
    GetMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineRequest')
    GetMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineResponse')
    GetMediaInsightsPipelineConfigurationRequest = Shapes::StructureShape.new(name: 'GetMediaInsightsPipelineConfigurationRequest')
    GetMediaInsightsPipelineConfigurationResponse = Shapes::StructureShape.new(name: 'GetMediaInsightsPipelineConfigurationResponse')
    GetMediaPipelineRequest = Shapes::StructureShape.new(name: 'GetMediaPipelineRequest')
    GetMediaPipelineResponse = Shapes::StructureShape.new(name: 'GetMediaPipelineResponse')
    GridViewConfiguration = Shapes::StructureShape.new(name: 'GridViewConfiguration')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    IssueDetectionConfiguration = Shapes::StructureShape.new(name: 'IssueDetectionConfiguration')
    Keyword = Shapes::StringShape.new(name: 'Keyword')
    KeywordMatchConfiguration = Shapes::StructureShape.new(name: 'KeywordMatchConfiguration')
    KeywordMatchWordList = Shapes::ListShape.new(name: 'KeywordMatchWordList')
    KinesisDataStreamSinkConfiguration = Shapes::StructureShape.new(name: 'KinesisDataStreamSinkConfiguration')
    KinesisVideoStreamArn = Shapes::StringShape.new(name: 'KinesisVideoStreamArn')
    KinesisVideoStreamRecordingSourceRuntimeConfiguration = Shapes::StructureShape.new(name: 'KinesisVideoStreamRecordingSourceRuntimeConfiguration')
    KinesisVideoStreamSourceRuntimeConfiguration = Shapes::StructureShape.new(name: 'KinesisVideoStreamSourceRuntimeConfiguration')
    LambdaFunctionSinkConfiguration = Shapes::StructureShape.new(name: 'LambdaFunctionSinkConfiguration')
    LayoutOption = Shapes::StringShape.new(name: 'LayoutOption')
    ListMediaCapturePipelinesRequest = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesRequest')
    ListMediaCapturePipelinesResponse = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesResponse')
    ListMediaInsightsPipelineConfigurationsRequest = Shapes::StructureShape.new(name: 'ListMediaInsightsPipelineConfigurationsRequest')
    ListMediaInsightsPipelineConfigurationsResponse = Shapes::StructureShape.new(name: 'ListMediaInsightsPipelineConfigurationsResponse')
    ListMediaPipelinesRequest = Shapes::StructureShape.new(name: 'ListMediaPipelinesRequest')
    ListMediaPipelinesResponse = Shapes::StructureShape.new(name: 'ListMediaPipelinesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LiveConnectorMuxType = Shapes::StringShape.new(name: 'LiveConnectorMuxType')
    LiveConnectorRTMPConfiguration = Shapes::StructureShape.new(name: 'LiveConnectorRTMPConfiguration')
    LiveConnectorSinkConfiguration = Shapes::StructureShape.new(name: 'LiveConnectorSinkConfiguration')
    LiveConnectorSinkList = Shapes::ListShape.new(name: 'LiveConnectorSinkList')
    LiveConnectorSinkType = Shapes::StringShape.new(name: 'LiveConnectorSinkType')
    LiveConnectorSourceConfiguration = Shapes::StructureShape.new(name: 'LiveConnectorSourceConfiguration')
    LiveConnectorSourceList = Shapes::ListShape.new(name: 'LiveConnectorSourceList')
    LiveConnectorSourceType = Shapes::StringShape.new(name: 'LiveConnectorSourceType')
    MediaCapturePipeline = Shapes::StructureShape.new(name: 'MediaCapturePipeline')
    MediaCapturePipelineSourceConfiguration = Shapes::StructureShape.new(name: 'MediaCapturePipelineSourceConfiguration')
    MediaCapturePipelineSummary = Shapes::StructureShape.new(name: 'MediaCapturePipelineSummary')
    MediaCapturePipelineSummaryList = Shapes::ListShape.new(name: 'MediaCapturePipelineSummaryList')
    MediaConcatenationPipeline = Shapes::StructureShape.new(name: 'MediaConcatenationPipeline')
    MediaEncoding = Shapes::StringShape.new(name: 'MediaEncoding')
    MediaInsightsPipeline = Shapes::StructureShape.new(name: 'MediaInsightsPipeline')
    MediaInsightsPipelineConfiguration = Shapes::StructureShape.new(name: 'MediaInsightsPipelineConfiguration')
    MediaInsightsPipelineConfigurationElement = Shapes::StructureShape.new(name: 'MediaInsightsPipelineConfigurationElement')
    MediaInsightsPipelineConfigurationElementType = Shapes::StringShape.new(name: 'MediaInsightsPipelineConfigurationElementType')
    MediaInsightsPipelineConfigurationElements = Shapes::ListShape.new(name: 'MediaInsightsPipelineConfigurationElements')
    MediaInsightsPipelineConfigurationNameString = Shapes::StringShape.new(name: 'MediaInsightsPipelineConfigurationNameString')
    MediaInsightsPipelineConfigurationSummary = Shapes::StructureShape.new(name: 'MediaInsightsPipelineConfigurationSummary')
    MediaInsightsPipelineConfigurationSummaryList = Shapes::ListShape.new(name: 'MediaInsightsPipelineConfigurationSummaryList')
    MediaInsightsRuntimeMetadata = Shapes::MapShape.new(name: 'MediaInsightsRuntimeMetadata')
    MediaLiveConnectorPipeline = Shapes::StructureShape.new(name: 'MediaLiveConnectorPipeline')
    MediaPipeline = Shapes::StructureShape.new(name: 'MediaPipeline')
    MediaPipelineList = Shapes::ListShape.new(name: 'MediaPipelineList')
    MediaPipelineSinkType = Shapes::StringShape.new(name: 'MediaPipelineSinkType')
    MediaPipelineSourceType = Shapes::StringShape.new(name: 'MediaPipelineSourceType')
    MediaPipelineStatus = Shapes::StringShape.new(name: 'MediaPipelineStatus')
    MediaPipelineStatusUpdate = Shapes::StringShape.new(name: 'MediaPipelineStatusUpdate')
    MediaPipelineSummary = Shapes::StructureShape.new(name: 'MediaPipelineSummary')
    MediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MediaSampleRateHertz')
    MeetingEventsConcatenationConfiguration = Shapes::StructureShape.new(name: 'MeetingEventsConcatenationConfiguration')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NumberOfChannels = Shapes::IntegerShape.new(name: 'NumberOfChannels')
    PartialResultsStability = Shapes::StringShape.new(name: 'PartialResultsStability')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    PiiEntityTypes = Shapes::StringShape.new(name: 'PiiEntityTypes')
    PostCallAnalyticsSettings = Shapes::StructureShape.new(name: 'PostCallAnalyticsSettings')
    PresenterOnlyConfiguration = Shapes::StructureShape.new(name: 'PresenterOnlyConfiguration')
    PresenterPosition = Shapes::StringShape.new(name: 'PresenterPosition')
    RealTimeAlertConfiguration = Shapes::StructureShape.new(name: 'RealTimeAlertConfiguration')
    RealTimeAlertRule = Shapes::StructureShape.new(name: 'RealTimeAlertRule')
    RealTimeAlertRuleList = Shapes::ListShape.new(name: 'RealTimeAlertRuleList')
    RealTimeAlertRuleType = Shapes::StringShape.new(name: 'RealTimeAlertRuleType')
    RecordingFileFormat = Shapes::StringShape.new(name: 'RecordingFileFormat')
    RecordingStreamConfiguration = Shapes::StructureShape.new(name: 'RecordingStreamConfiguration')
    RecordingStreamList = Shapes::ListShape.new(name: 'RecordingStreamList')
    ResolutionOption = Shapes::StringShape.new(name: 'ResolutionOption')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    S3BucketSinkConfiguration = Shapes::StructureShape.new(name: 'S3BucketSinkConfiguration')
    S3RecordingSinkConfiguration = Shapes::StructureShape.new(name: 'S3RecordingSinkConfiguration')
    S3RecordingSinkRuntimeConfiguration = Shapes::StructureShape.new(name: 'S3RecordingSinkRuntimeConfiguration')
    SelectedVideoStreams = Shapes::StructureShape.new(name: 'SelectedVideoStreams')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SentimentConfiguration = Shapes::StructureShape.new(name: 'SentimentConfiguration')
    SentimentTimePeriodInSeconds = Shapes::IntegerShape.new(name: 'SentimentTimePeriodInSeconds')
    SentimentType = Shapes::StringShape.new(name: 'SentimentType')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SnsTopicSinkConfiguration = Shapes::StructureShape.new(name: 'SnsTopicSinkConfiguration')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    SqsQueueSinkConfiguration = Shapes::StructureShape.new(name: 'SqsQueueSinkConfiguration')
    StreamChannelDefinition = Shapes::StructureShape.new(name: 'StreamChannelDefinition')
    StreamConfiguration = Shapes::StructureShape.new(name: 'StreamConfiguration')
    Streams = Shapes::ListShape.new(name: 'Streams')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampRange = Shapes::StructureShape.new(name: 'TimestampRange')
    TranscriptionMessagesConcatenationConfiguration = Shapes::StructureShape.new(name: 'TranscriptionMessagesConcatenationConfiguration')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateMediaInsightsPipelineConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateMediaInsightsPipelineConfigurationRequest')
    UpdateMediaInsightsPipelineConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateMediaInsightsPipelineConfigurationResponse')
    UpdateMediaInsightsPipelineStatusRequest = Shapes::StructureShape.new(name: 'UpdateMediaInsightsPipelineStatusRequest')
    VideoArtifactsConfiguration = Shapes::StructureShape.new(name: 'VideoArtifactsConfiguration')
    VideoConcatenationConfiguration = Shapes::StructureShape.new(name: 'VideoConcatenationConfiguration')
    VideoMuxType = Shapes::StringShape.new(name: 'VideoMuxType')
    VocabularyFilterMethod = Shapes::StringShape.new(name: 'VocabularyFilterMethod')
    VocabularyFilterName = Shapes::StringShape.new(name: 'VocabularyFilterName')
    VocabularyName = Shapes::StringShape.new(name: 'VocabularyName')
    VoiceAnalyticsConfigurationStatus = Shapes::StringShape.new(name: 'VoiceAnalyticsConfigurationStatus')
    VoiceAnalyticsProcessorConfiguration = Shapes::StructureShape.new(name: 'VoiceAnalyticsProcessorConfiguration')

    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_code, Shapes::ShapeRef.new(shape: CallAnalyticsLanguageCode, required: true, location_name: "LanguageCode"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "LanguageModelName"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnablePartialResultsStabilization"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: PartialResultsStability, location_name: "PartialResultsStability"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentIdentificationType"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentRedactionType"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: "PiiEntityTypes"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:filter_partial_results, Shapes::ShapeRef.new(shape: Boolean, location_name: "FilterPartialResults"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:post_call_analytics_settings, Shapes::ShapeRef.new(shape: PostCallAnalyticsSettings, location_name: "PostCallAnalyticsSettings"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.add_member(:call_analytics_stream_categories, Shapes::ShapeRef.new(shape: CategoryNameList, location_name: "CallAnalyticsStreamCategories"))
    AmazonTranscribeCallAnalyticsProcessorConfiguration.struct_class = Types::AmazonTranscribeCallAnalyticsProcessorConfiguration

    AmazonTranscribeProcessorConfiguration.add_member(:language_code, Shapes::ShapeRef.new(shape: CallAnalyticsLanguageCode, required: true, location_name: "LanguageCode"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: VocabularyName, location_name: "VocabularyName"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: VocabularyFilterName, location_name: "VocabularyFilterName"))
    AmazonTranscribeProcessorConfiguration.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: VocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    AmazonTranscribeProcessorConfiguration.add_member(:show_speaker_label, Shapes::ShapeRef.new(shape: Boolean, location_name: "ShowSpeakerLabel"))
    AmazonTranscribeProcessorConfiguration.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnablePartialResultsStabilization"))
    AmazonTranscribeProcessorConfiguration.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: PartialResultsStability, location_name: "PartialResultsStability"))
    AmazonTranscribeProcessorConfiguration.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentIdentificationType"))
    AmazonTranscribeProcessorConfiguration.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentRedactionType"))
    AmazonTranscribeProcessorConfiguration.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: PiiEntityTypes, location_name: "PiiEntityTypes"))
    AmazonTranscribeProcessorConfiguration.add_member(:language_model_name, Shapes::ShapeRef.new(shape: ModelName, location_name: "LanguageModelName"))
    AmazonTranscribeProcessorConfiguration.add_member(:filter_partial_results, Shapes::ShapeRef.new(shape: Boolean, location_name: "FilterPartialResults"))
    AmazonTranscribeProcessorConfiguration.struct_class = Types::AmazonTranscribeProcessorConfiguration

    ArtifactsConcatenationConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioConcatenationConfiguration, required: true, location_name: "Audio"))
    ArtifactsConcatenationConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoConcatenationConfiguration, required: true, location_name: "Video"))
    ArtifactsConcatenationConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: ContentConcatenationConfiguration, required: true, location_name: "Content"))
    ArtifactsConcatenationConfiguration.add_member(:data_channel, Shapes::ShapeRef.new(shape: DataChannelConcatenationConfiguration, required: true, location_name: "DataChannel"))
    ArtifactsConcatenationConfiguration.add_member(:transcription_messages, Shapes::ShapeRef.new(shape: TranscriptionMessagesConcatenationConfiguration, required: true, location_name: "TranscriptionMessages"))
    ArtifactsConcatenationConfiguration.add_member(:meeting_events, Shapes::ShapeRef.new(shape: MeetingEventsConcatenationConfiguration, required: true, location_name: "MeetingEvents"))
    ArtifactsConcatenationConfiguration.add_member(:composited_video, Shapes::ShapeRef.new(shape: CompositedVideoConcatenationConfiguration, required: true, location_name: "CompositedVideo"))
    ArtifactsConcatenationConfiguration.struct_class = Types::ArtifactsConcatenationConfiguration

    ArtifactsConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioArtifactsConfiguration, required: true, location_name: "Audio"))
    ArtifactsConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoArtifactsConfiguration, required: true, location_name: "Video"))
    ArtifactsConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: ContentArtifactsConfiguration, required: true, location_name: "Content"))
    ArtifactsConfiguration.add_member(:composited_video, Shapes::ShapeRef.new(shape: CompositedVideoArtifactsConfiguration, location_name: "CompositedVideo"))
    ArtifactsConfiguration.struct_class = Types::ArtifactsConfiguration

    AttendeeIdList.member = Shapes::ShapeRef.new(shape: GuidString)

    AudioArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: AudioMuxType, required: true, location_name: "MuxType"))
    AudioArtifactsConfiguration.struct_class = Types::AudioArtifactsConfiguration

    AudioConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: AudioArtifactsConcatenationState, required: true, location_name: "State"))
    AudioConcatenationConfiguration.struct_class = Types::AudioConcatenationConfiguration

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    BadRequestException.struct_class = Types::BadRequestException

    CategoryNameList.member = Shapes::ShapeRef.new(shape: CategoryName)

    ChannelDefinition.add_member(:channel_id, Shapes::ShapeRef.new(shape: ChannelId, required: true, location_name: "ChannelId"))
    ChannelDefinition.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    ChannelDefinition.struct_class = Types::ChannelDefinition

    ChannelDefinitions.member = Shapes::ShapeRef.new(shape: ChannelDefinition)

    ChimeSdkMeetingConcatenationConfiguration.add_member(:artifacts_configuration, Shapes::ShapeRef.new(shape: ArtifactsConcatenationConfiguration, required: true, location_name: "ArtifactsConfiguration"))
    ChimeSdkMeetingConcatenationConfiguration.struct_class = Types::ChimeSdkMeetingConcatenationConfiguration

    ChimeSdkMeetingConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    ChimeSdkMeetingConfiguration.add_member(:artifacts_configuration, Shapes::ShapeRef.new(shape: ArtifactsConfiguration, location_name: "ArtifactsConfiguration"))
    ChimeSdkMeetingConfiguration.struct_class = Types::ChimeSdkMeetingConfiguration

    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: LiveConnectorMuxType, required: true, location_name: "MuxType"))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:composited_video, Shapes::ShapeRef.new(shape: CompositedVideoArtifactsConfiguration, location_name: "CompositedVideo"))
    ChimeSdkMeetingLiveConnectorConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    ChimeSdkMeetingLiveConnectorConfiguration.struct_class = Types::ChimeSdkMeetingLiveConnectorConfiguration

    CompositedVideoArtifactsConfiguration.add_member(:layout, Shapes::ShapeRef.new(shape: LayoutOption, location_name: "Layout"))
    CompositedVideoArtifactsConfiguration.add_member(:resolution, Shapes::ShapeRef.new(shape: ResolutionOption, location_name: "Resolution"))
    CompositedVideoArtifactsConfiguration.add_member(:grid_view_configuration, Shapes::ShapeRef.new(shape: GridViewConfiguration, required: true, location_name: "GridViewConfiguration"))
    CompositedVideoArtifactsConfiguration.struct_class = Types::CompositedVideoArtifactsConfiguration

    CompositedVideoConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    CompositedVideoConcatenationConfiguration.struct_class = Types::CompositedVideoConcatenationConfiguration

    ConcatenationSink.add_member(:type, Shapes::ShapeRef.new(shape: ConcatenationSinkType, required: true, location_name: "Type"))
    ConcatenationSink.add_member(:s3_bucket_sink_configuration, Shapes::ShapeRef.new(shape: S3BucketSinkConfiguration, required: true, location_name: "S3BucketSinkConfiguration"))
    ConcatenationSink.struct_class = Types::ConcatenationSink

    ConcatenationSinkList.member = Shapes::ShapeRef.new(shape: ConcatenationSink)

    ConcatenationSource.add_member(:type, Shapes::ShapeRef.new(shape: ConcatenationSourceType, required: true, location_name: "Type"))
    ConcatenationSource.add_member(:media_capture_pipeline_source_configuration, Shapes::ShapeRef.new(shape: MediaCapturePipelineSourceConfiguration, required: true, location_name: "MediaCapturePipelineSourceConfiguration"))
    ConcatenationSource.struct_class = Types::ConcatenationSource

    ConcatenationSourceList.member = Shapes::ShapeRef.new(shape: ConcatenationSource)

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConflictException.struct_class = Types::ConflictException

    ContentArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    ContentArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: ContentMuxType, location_name: "MuxType"))
    ContentArtifactsConfiguration.struct_class = Types::ContentArtifactsConfiguration

    ContentConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    ContentConcatenationConfiguration.struct_class = Types::ContentConcatenationConfiguration

    CreateMediaCapturePipelineRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, required: true, location_name: "SourceType"))
    CreateMediaCapturePipelineRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SourceArn"))
    CreateMediaCapturePipelineRequest.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, required: true, location_name: "SinkType"))
    CreateMediaCapturePipelineRequest.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SinkArn"))
    CreateMediaCapturePipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaCapturePipelineRequest.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    CreateMediaCapturePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaCapturePipelineRequest.struct_class = Types::CreateMediaCapturePipelineRequest

    CreateMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    CreateMediaCapturePipelineResponse.struct_class = Types::CreateMediaCapturePipelineResponse

    CreateMediaConcatenationPipelineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: ConcatenationSourceList, required: true, location_name: "Sources"))
    CreateMediaConcatenationPipelineRequest.add_member(:sinks, Shapes::ShapeRef.new(shape: ConcatenationSinkList, required: true, location_name: "Sinks"))
    CreateMediaConcatenationPipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaConcatenationPipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaConcatenationPipelineRequest.struct_class = Types::CreateMediaConcatenationPipelineRequest

    CreateMediaConcatenationPipelineResponse.add_member(:media_concatenation_pipeline, Shapes::ShapeRef.new(shape: MediaConcatenationPipeline, location_name: "MediaConcatenationPipeline"))
    CreateMediaConcatenationPipelineResponse.struct_class = Types::CreateMediaConcatenationPipelineResponse

    CreateMediaInsightsPipelineConfigurationRequest.add_member(:media_insights_pipeline_configuration_name, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, required: true, location_name: "MediaInsightsPipelineConfigurationName"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceAccessRoleArn"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: "RealTimeAlertConfiguration"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:elements, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, required: true, location_name: "Elements"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaInsightsPipelineConfigurationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaInsightsPipelineConfigurationRequest.struct_class = Types::CreateMediaInsightsPipelineConfigurationRequest

    CreateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: "MediaInsightsPipelineConfiguration"))
    CreateMediaInsightsPipelineConfigurationResponse.struct_class = Types::CreateMediaInsightsPipelineConfigurationResponse

    CreateMediaInsightsPipelineRequest.add_member(:media_insights_pipeline_configuration_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "MediaInsightsPipelineConfigurationArn"))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_source_runtime_configuration, Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceRuntimeConfiguration, location_name: "KinesisVideoStreamSourceRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:media_insights_runtime_metadata, Shapes::ShapeRef.new(shape: MediaInsightsRuntimeMetadata, location_name: "MediaInsightsRuntimeMetadata"))
    CreateMediaInsightsPipelineRequest.add_member(:kinesis_video_stream_recording_source_runtime_configuration, Shapes::ShapeRef.new(shape: KinesisVideoStreamRecordingSourceRuntimeConfiguration, location_name: "KinesisVideoStreamRecordingSourceRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:s3_recording_sink_runtime_configuration, Shapes::ShapeRef.new(shape: S3RecordingSinkRuntimeConfiguration, location_name: "S3RecordingSinkRuntimeConfiguration"))
    CreateMediaInsightsPipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaInsightsPipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaInsightsPipelineRequest.struct_class = Types::CreateMediaInsightsPipelineRequest

    CreateMediaInsightsPipelineResponse.add_member(:media_insights_pipeline, Shapes::ShapeRef.new(shape: MediaInsightsPipeline, required: true, location_name: "MediaInsightsPipeline"))
    CreateMediaInsightsPipelineResponse.struct_class = Types::CreateMediaInsightsPipelineResponse

    CreateMediaLiveConnectorPipelineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: LiveConnectorSourceList, required: true, location_name: "Sources"))
    CreateMediaLiveConnectorPipelineRequest.add_member(:sinks, Shapes::ShapeRef.new(shape: LiveConnectorSinkList, required: true, location_name: "Sinks"))
    CreateMediaLiveConnectorPipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaLiveConnectorPipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaLiveConnectorPipelineRequest.struct_class = Types::CreateMediaLiveConnectorPipelineRequest

    CreateMediaLiveConnectorPipelineResponse.add_member(:media_live_connector_pipeline, Shapes::ShapeRef.new(shape: MediaLiveConnectorPipeline, location_name: "MediaLiveConnectorPipeline"))
    CreateMediaLiveConnectorPipelineResponse.struct_class = Types::CreateMediaLiveConnectorPipelineResponse

    DataChannelConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    DataChannelConcatenationConfiguration.struct_class = Types::DataChannelConcatenationConfiguration

    DeleteMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    DeleteMediaCapturePipelineRequest.struct_class = Types::DeleteMediaCapturePipelineRequest

    DeleteMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "identifier"))
    DeleteMediaInsightsPipelineConfigurationRequest.struct_class = Types::DeleteMediaInsightsPipelineConfigurationRequest

    DeleteMediaPipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    DeleteMediaPipelineRequest.struct_class = Types::DeleteMediaPipelineRequest

    ExternalUserIdList.member = Shapes::ShapeRef.new(shape: ExternalUserIdType)

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ForbiddenException.struct_class = Types::ForbiddenException

    FragmentSelector.add_member(:fragment_selector_type, Shapes::ShapeRef.new(shape: FragmentSelectorType, required: true, location_name: "FragmentSelectorType"))
    FragmentSelector.add_member(:timestamp_range, Shapes::ShapeRef.new(shape: TimestampRange, required: true, location_name: "TimestampRange"))
    FragmentSelector.struct_class = Types::FragmentSelector

    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaCapturePipelineRequest.struct_class = Types::GetMediaCapturePipelineRequest

    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    GetMediaCapturePipelineResponse.struct_class = Types::GetMediaCapturePipelineResponse

    GetMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "identifier"))
    GetMediaInsightsPipelineConfigurationRequest.struct_class = Types::GetMediaInsightsPipelineConfigurationRequest

    GetMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: "MediaInsightsPipelineConfiguration"))
    GetMediaInsightsPipelineConfigurationResponse.struct_class = Types::GetMediaInsightsPipelineConfigurationResponse

    GetMediaPipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaPipelineRequest.struct_class = Types::GetMediaPipelineRequest

    GetMediaPipelineResponse.add_member(:media_pipeline, Shapes::ShapeRef.new(shape: MediaPipeline, location_name: "MediaPipeline"))
    GetMediaPipelineResponse.struct_class = Types::GetMediaPipelineResponse

    GridViewConfiguration.add_member(:content_share_layout, Shapes::ShapeRef.new(shape: ContentShareLayoutOption, required: true, location_name: "ContentShareLayout"))
    GridViewConfiguration.add_member(:presenter_only_configuration, Shapes::ShapeRef.new(shape: PresenterOnlyConfiguration, location_name: "PresenterOnlyConfiguration"))
    GridViewConfiguration.struct_class = Types::GridViewConfiguration

    IssueDetectionConfiguration.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    IssueDetectionConfiguration.struct_class = Types::IssueDetectionConfiguration

    KeywordMatchConfiguration.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    KeywordMatchConfiguration.add_member(:keywords, Shapes::ShapeRef.new(shape: KeywordMatchWordList, required: true, location_name: "Keywords"))
    KeywordMatchConfiguration.add_member(:negate, Shapes::ShapeRef.new(shape: Boolean, location_name: "Negate"))
    KeywordMatchConfiguration.struct_class = Types::KeywordMatchConfiguration

    KeywordMatchWordList.member = Shapes::ShapeRef.new(shape: Keyword)

    KinesisDataStreamSinkConfiguration.add_member(:insights_target, Shapes::ShapeRef.new(shape: Arn, location_name: "InsightsTarget"))
    KinesisDataStreamSinkConfiguration.struct_class = Types::KinesisDataStreamSinkConfiguration

    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:streams, Shapes::ShapeRef.new(shape: RecordingStreamList, required: true, location_name: "Streams"))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.add_member(:fragment_selector, Shapes::ShapeRef.new(shape: FragmentSelector, required: true, location_name: "FragmentSelector"))
    KinesisVideoStreamRecordingSourceRuntimeConfiguration.struct_class = Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration

    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:streams, Shapes::ShapeRef.new(shape: Streams, required: true, location_name: "Streams"))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MediaEncoding, required: true, location_name: "MediaEncoding"))
    KinesisVideoStreamSourceRuntimeConfiguration.add_member(:media_sample_rate, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, required: true, location_name: "MediaSampleRate"))
    KinesisVideoStreamSourceRuntimeConfiguration.struct_class = Types::KinesisVideoStreamSourceRuntimeConfiguration

    LambdaFunctionSinkConfiguration.add_member(:insights_target, Shapes::ShapeRef.new(shape: Arn, location_name: "InsightsTarget"))
    LambdaFunctionSinkConfiguration.struct_class = Types::LambdaFunctionSinkConfiguration

    ListMediaCapturePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaCapturePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaCapturePipelinesRequest.struct_class = Types::ListMediaCapturePipelinesRequest

    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, Shapes::ShapeRef.new(shape: MediaCapturePipelineSummaryList, location_name: "MediaCapturePipelines"))
    ListMediaCapturePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaCapturePipelinesResponse.struct_class = Types::ListMediaCapturePipelinesResponse

    ListMediaInsightsPipelineConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaInsightsPipelineConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaInsightsPipelineConfigurationsRequest.struct_class = Types::ListMediaInsightsPipelineConfigurationsRequest

    ListMediaInsightsPipelineConfigurationsResponse.add_member(:media_insights_pipeline_configurations, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationSummaryList, location_name: "MediaInsightsPipelineConfigurations"))
    ListMediaInsightsPipelineConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaInsightsPipelineConfigurationsResponse.struct_class = Types::ListMediaInsightsPipelineConfigurationsResponse

    ListMediaPipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaPipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaPipelinesRequest.struct_class = Types::ListMediaPipelinesRequest

    ListMediaPipelinesResponse.add_member(:media_pipelines, Shapes::ShapeRef.new(shape: MediaPipelineList, location_name: "MediaPipelines"))
    ListMediaPipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaPipelinesResponse.struct_class = Types::ListMediaPipelinesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LiveConnectorRTMPConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Url"))
    LiveConnectorRTMPConfiguration.add_member(:audio_channels, Shapes::ShapeRef.new(shape: AudioChannelsOption, location_name: "AudioChannels"))
    LiveConnectorRTMPConfiguration.add_member(:audio_sample_rate, Shapes::ShapeRef.new(shape: AudioSampleRateOption, location_name: "AudioSampleRate"))
    LiveConnectorRTMPConfiguration.struct_class = Types::LiveConnectorRTMPConfiguration

    LiveConnectorSinkConfiguration.add_member(:sink_type, Shapes::ShapeRef.new(shape: LiveConnectorSinkType, required: true, location_name: "SinkType"))
    LiveConnectorSinkConfiguration.add_member(:rtmp_configuration, Shapes::ShapeRef.new(shape: LiveConnectorRTMPConfiguration, required: true, location_name: "RTMPConfiguration"))
    LiveConnectorSinkConfiguration.struct_class = Types::LiveConnectorSinkConfiguration

    LiveConnectorSinkList.member = Shapes::ShapeRef.new(shape: LiveConnectorSinkConfiguration)

    LiveConnectorSourceConfiguration.add_member(:source_type, Shapes::ShapeRef.new(shape: LiveConnectorSourceType, required: true, location_name: "SourceType"))
    LiveConnectorSourceConfiguration.add_member(:chime_sdk_meeting_live_connector_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingLiveConnectorConfiguration, required: true, location_name: "ChimeSdkMeetingLiveConnectorConfiguration"))
    LiveConnectorSourceConfiguration.struct_class = Types::LiveConnectorSourceConfiguration

    LiveConnectorSourceList.member = Shapes::ShapeRef.new(shape: LiveConnectorSourceConfiguration)

    MediaCapturePipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaCapturePipeline.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaCapturePipeline.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: "SourceType"))
    MediaCapturePipeline.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    MediaCapturePipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaCapturePipeline.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, location_name: "SinkType"))
    MediaCapturePipeline.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SinkArn"))
    MediaCapturePipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaCapturePipeline.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaCapturePipeline.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    MediaCapturePipeline.struct_class = Types::MediaCapturePipeline

    MediaCapturePipelineSourceConfiguration.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "MediaPipelineArn"))
    MediaCapturePipelineSourceConfiguration.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConcatenationConfiguration, required: true, location_name: "ChimeSdkMeetingConfiguration"))
    MediaCapturePipelineSourceConfiguration.struct_class = Types::MediaCapturePipelineSourceConfiguration

    MediaCapturePipelineSummary.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaCapturePipelineSummary.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaCapturePipelineSummary.struct_class = Types::MediaCapturePipelineSummary

    MediaCapturePipelineSummaryList.member = Shapes::ShapeRef.new(shape: MediaCapturePipelineSummary)

    MediaConcatenationPipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaConcatenationPipeline.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaConcatenationPipeline.add_member(:sources, Shapes::ShapeRef.new(shape: ConcatenationSourceList, location_name: "Sources"))
    MediaConcatenationPipeline.add_member(:sinks, Shapes::ShapeRef.new(shape: ConcatenationSinkList, location_name: "Sinks"))
    MediaConcatenationPipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaConcatenationPipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaConcatenationPipeline.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaConcatenationPipeline.struct_class = Types::MediaConcatenationPipeline

    MediaInsightsPipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaInsightsPipeline.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MediaPipelineArn"))
    MediaInsightsPipeline.add_member(:media_insights_pipeline_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_source_runtime_configuration, Shapes::ShapeRef.new(shape: KinesisVideoStreamSourceRuntimeConfiguration, location_name: "KinesisVideoStreamSourceRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:media_insights_runtime_metadata, Shapes::ShapeRef.new(shape: MediaInsightsRuntimeMetadata, location_name: "MediaInsightsRuntimeMetadata"))
    MediaInsightsPipeline.add_member(:kinesis_video_stream_recording_source_runtime_configuration, Shapes::ShapeRef.new(shape: KinesisVideoStreamRecordingSourceRuntimeConfiguration, location_name: "KinesisVideoStreamRecordingSourceRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:s3_recording_sink_runtime_configuration, Shapes::ShapeRef.new(shape: S3RecordingSinkRuntimeConfiguration, location_name: "S3RecordingSinkRuntimeConfiguration"))
    MediaInsightsPipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaInsightsPipeline.struct_class = Types::MediaInsightsPipeline

    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_name, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, location_name: "MediaInsightsPipelineConfigurationName"))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipelineConfiguration.add_member(:resource_access_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceAccessRoleArn"))
    MediaInsightsPipelineConfiguration.add_member(:real_time_alert_configuration, Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: "RealTimeAlertConfiguration"))
    MediaInsightsPipelineConfiguration.add_member(:elements, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, location_name: "Elements"))
    MediaInsightsPipelineConfiguration.add_member(:media_insights_pipeline_configuration_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaInsightsPipelineConfigurationId"))
    MediaInsightsPipelineConfiguration.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaInsightsPipelineConfiguration.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaInsightsPipelineConfiguration.struct_class = Types::MediaInsightsPipelineConfiguration

    MediaInsightsPipelineConfigurationElement.add_member(:type, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElementType, required: true, location_name: "Type"))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_call_analytics_processor_configuration, Shapes::ShapeRef.new(shape: AmazonTranscribeCallAnalyticsProcessorConfiguration, location_name: "AmazonTranscribeCallAnalyticsProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:amazon_transcribe_processor_configuration, Shapes::ShapeRef.new(shape: AmazonTranscribeProcessorConfiguration, location_name: "AmazonTranscribeProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:kinesis_data_stream_sink_configuration, Shapes::ShapeRef.new(shape: KinesisDataStreamSinkConfiguration, location_name: "KinesisDataStreamSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:s3_recording_sink_configuration, Shapes::ShapeRef.new(shape: S3RecordingSinkConfiguration, location_name: "S3RecordingSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:voice_analytics_processor_configuration, Shapes::ShapeRef.new(shape: VoiceAnalyticsProcessorConfiguration, location_name: "VoiceAnalyticsProcessorConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:lambda_function_sink_configuration, Shapes::ShapeRef.new(shape: LambdaFunctionSinkConfiguration, location_name: "LambdaFunctionSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:sqs_queue_sink_configuration, Shapes::ShapeRef.new(shape: SqsQueueSinkConfiguration, location_name: "SqsQueueSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.add_member(:sns_topic_sink_configuration, Shapes::ShapeRef.new(shape: SnsTopicSinkConfiguration, location_name: "SnsTopicSinkConfiguration"))
    MediaInsightsPipelineConfigurationElement.struct_class = Types::MediaInsightsPipelineConfigurationElement

    MediaInsightsPipelineConfigurationElements.member = Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElement)

    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_name, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationNameString, location_name: "MediaInsightsPipelineConfigurationName"))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaInsightsPipelineConfigurationId"))
    MediaInsightsPipelineConfigurationSummary.add_member(:media_insights_pipeline_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MediaInsightsPipelineConfigurationArn"))
    MediaInsightsPipelineConfigurationSummary.struct_class = Types::MediaInsightsPipelineConfigurationSummary

    MediaInsightsPipelineConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationSummary)

    MediaInsightsRuntimeMetadata.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    MediaInsightsRuntimeMetadata.value = Shapes::ShapeRef.new(shape: String)

    MediaLiveConnectorPipeline.add_member(:sources, Shapes::ShapeRef.new(shape: LiveConnectorSourceList, location_name: "Sources"))
    MediaLiveConnectorPipeline.add_member(:sinks, Shapes::ShapeRef.new(shape: LiveConnectorSinkList, location_name: "Sinks"))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaLiveConnectorPipeline.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaLiveConnectorPipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaLiveConnectorPipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaLiveConnectorPipeline.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaLiveConnectorPipeline.struct_class = Types::MediaLiveConnectorPipeline

    MediaPipeline.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    MediaPipeline.add_member(:media_live_connector_pipeline, Shapes::ShapeRef.new(shape: MediaLiveConnectorPipeline, location_name: "MediaLiveConnectorPipeline"))
    MediaPipeline.add_member(:media_concatenation_pipeline, Shapes::ShapeRef.new(shape: MediaConcatenationPipeline, location_name: "MediaConcatenationPipeline"))
    MediaPipeline.add_member(:media_insights_pipeline, Shapes::ShapeRef.new(shape: MediaInsightsPipeline, location_name: "MediaInsightsPipeline"))
    MediaPipeline.struct_class = Types::MediaPipeline

    MediaPipelineList.member = Shapes::ShapeRef.new(shape: MediaPipelineSummary)

    MediaPipelineSummary.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaPipelineSummary.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaPipelineSummary.struct_class = Types::MediaPipelineSummary

    MeetingEventsConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    MeetingEventsConcatenationConfiguration.struct_class = Types::MeetingEventsConcatenationConfiguration

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    NotFoundException.struct_class = Types::NotFoundException

    PostCallAnalyticsSettings.add_member(:output_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OutputLocation"))
    PostCallAnalyticsSettings.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataAccessRoleArn"))
    PostCallAnalyticsSettings.add_member(:content_redaction_output, Shapes::ShapeRef.new(shape: ContentRedactionOutput, location_name: "ContentRedactionOutput"))
    PostCallAnalyticsSettings.add_member(:output_encryption_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "OutputEncryptionKMSKeyId"))
    PostCallAnalyticsSettings.struct_class = Types::PostCallAnalyticsSettings

    PresenterOnlyConfiguration.add_member(:presenter_position, Shapes::ShapeRef.new(shape: PresenterPosition, location_name: "PresenterPosition"))
    PresenterOnlyConfiguration.struct_class = Types::PresenterOnlyConfiguration

    RealTimeAlertConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Disabled"))
    RealTimeAlertConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: RealTimeAlertRuleList, location_name: "Rules"))
    RealTimeAlertConfiguration.struct_class = Types::RealTimeAlertConfiguration

    RealTimeAlertRule.add_member(:type, Shapes::ShapeRef.new(shape: RealTimeAlertRuleType, required: true, location_name: "Type"))
    RealTimeAlertRule.add_member(:keyword_match_configuration, Shapes::ShapeRef.new(shape: KeywordMatchConfiguration, location_name: "KeywordMatchConfiguration"))
    RealTimeAlertRule.add_member(:sentiment_configuration, Shapes::ShapeRef.new(shape: SentimentConfiguration, location_name: "SentimentConfiguration"))
    RealTimeAlertRule.add_member(:issue_detection_configuration, Shapes::ShapeRef.new(shape: IssueDetectionConfiguration, location_name: "IssueDetectionConfiguration"))
    RealTimeAlertRule.struct_class = Types::RealTimeAlertRule

    RealTimeAlertRuleList.member = Shapes::ShapeRef.new(shape: RealTimeAlertRule)

    RecordingStreamConfiguration.add_member(:stream_arn, Shapes::ShapeRef.new(shape: KinesisVideoStreamArn, location_name: "StreamArn"))
    RecordingStreamConfiguration.struct_class = Types::RecordingStreamConfiguration

    RecordingStreamList.member = Shapes::ShapeRef.new(shape: RecordingStreamConfiguration)

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    S3BucketSinkConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Destination"))
    S3BucketSinkConfiguration.struct_class = Types::S3BucketSinkConfiguration

    S3RecordingSinkConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Arn, location_name: "Destination"))
    S3RecordingSinkConfiguration.add_member(:recording_file_format, Shapes::ShapeRef.new(shape: RecordingFileFormat, location_name: "RecordingFileFormat"))
    S3RecordingSinkConfiguration.struct_class = Types::S3RecordingSinkConfiguration

    S3RecordingSinkRuntimeConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Destination"))
    S3RecordingSinkRuntimeConfiguration.add_member(:recording_file_format, Shapes::ShapeRef.new(shape: RecordingFileFormat, required: true, location_name: "RecordingFileFormat"))
    S3RecordingSinkRuntimeConfiguration.struct_class = Types::S3RecordingSinkRuntimeConfiguration

    SelectedVideoStreams.add_member(:attendee_ids, Shapes::ShapeRef.new(shape: AttendeeIdList, location_name: "AttendeeIds"))
    SelectedVideoStreams.add_member(:external_user_ids, Shapes::ShapeRef.new(shape: ExternalUserIdList, location_name: "ExternalUserIds"))
    SelectedVideoStreams.struct_class = Types::SelectedVideoStreams

    SentimentConfiguration.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "RuleName"))
    SentimentConfiguration.add_member(:sentiment_type, Shapes::ShapeRef.new(shape: SentimentType, required: true, location_name: "SentimentType"))
    SentimentConfiguration.add_member(:time_period, Shapes::ShapeRef.new(shape: SentimentTimePeriodInSeconds, required: true, location_name: "TimePeriod"))
    SentimentConfiguration.struct_class = Types::SentimentConfiguration

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SnsTopicSinkConfiguration.add_member(:insights_target, Shapes::ShapeRef.new(shape: Arn, location_name: "InsightsTarget"))
    SnsTopicSinkConfiguration.struct_class = Types::SnsTopicSinkConfiguration

    SourceConfiguration.add_member(:selected_video_streams, Shapes::ShapeRef.new(shape: SelectedVideoStreams, location_name: "SelectedVideoStreams"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    SqsQueueSinkConfiguration.add_member(:insights_target, Shapes::ShapeRef.new(shape: Arn, location_name: "InsightsTarget"))
    SqsQueueSinkConfiguration.struct_class = Types::SqsQueueSinkConfiguration

    StreamChannelDefinition.add_member(:number_of_channels, Shapes::ShapeRef.new(shape: NumberOfChannels, required: true, location_name: "NumberOfChannels"))
    StreamChannelDefinition.add_member(:channel_definitions, Shapes::ShapeRef.new(shape: ChannelDefinitions, location_name: "ChannelDefinitions"))
    StreamChannelDefinition.struct_class = Types::StreamChannelDefinition

    StreamConfiguration.add_member(:stream_arn, Shapes::ShapeRef.new(shape: KinesisVideoStreamArn, required: true, location_name: "StreamArn"))
    StreamConfiguration.add_member(:fragment_number, Shapes::ShapeRef.new(shape: FragmentNumberString, location_name: "FragmentNumber"))
    StreamConfiguration.add_member(:stream_channel_definition, Shapes::ShapeRef.new(shape: StreamChannelDefinition, required: true, location_name: "StreamChannelDefinition"))
    StreamConfiguration.struct_class = Types::StreamConfiguration

    Streams.member = Shapes::ShapeRef.new(shape: StreamConfiguration)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    TimestampRange.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartTimestamp"))
    TimestampRange.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndTimestamp"))
    TimestampRange.struct_class = Types::TimestampRange

    TranscriptionMessagesConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    TranscriptionMessagesConcatenationConfiguration.struct_class = Types::TranscriptionMessagesConcatenationConfiguration

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "identifier"))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:resource_access_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceAccessRoleArn"))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:real_time_alert_configuration, Shapes::ShapeRef.new(shape: RealTimeAlertConfiguration, location_name: "RealTimeAlertConfiguration"))
    UpdateMediaInsightsPipelineConfigurationRequest.add_member(:elements, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfigurationElements, required: true, location_name: "Elements"))
    UpdateMediaInsightsPipelineConfigurationRequest.struct_class = Types::UpdateMediaInsightsPipelineConfigurationRequest

    UpdateMediaInsightsPipelineConfigurationResponse.add_member(:media_insights_pipeline_configuration, Shapes::ShapeRef.new(shape: MediaInsightsPipelineConfiguration, location_name: "MediaInsightsPipelineConfiguration"))
    UpdateMediaInsightsPipelineConfigurationResponse.struct_class = Types::UpdateMediaInsightsPipelineConfigurationResponse

    UpdateMediaInsightsPipelineStatusRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "identifier"))
    UpdateMediaInsightsPipelineStatusRequest.add_member(:update_status, Shapes::ShapeRef.new(shape: MediaPipelineStatusUpdate, required: true, location_name: "UpdateStatus"))
    UpdateMediaInsightsPipelineStatusRequest.struct_class = Types::UpdateMediaInsightsPipelineStatusRequest

    VideoArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    VideoArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: VideoMuxType, location_name: "MuxType"))
    VideoArtifactsConfiguration.struct_class = Types::VideoArtifactsConfiguration

    VideoConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    VideoConcatenationConfiguration.struct_class = Types::VideoConcatenationConfiguration

    VoiceAnalyticsProcessorConfiguration.add_member(:speaker_search_status, Shapes::ShapeRef.new(shape: VoiceAnalyticsConfigurationStatus, location_name: "SpeakerSearchStatus"))
    VoiceAnalyticsProcessorConfiguration.add_member(:voice_tone_analysis_status, Shapes::ShapeRef.new(shape: VoiceAnalyticsConfigurationStatus, location_name: "VoiceToneAnalysisStatus"))
    VoiceAnalyticsProcessorConfiguration.struct_class = Types::VoiceAnalyticsProcessorConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-07-15"

      api.metadata = {
        "apiVersion" => "2021-07-15",
        "endpointPrefix" => "media-pipelines-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Media Pipelines",
        "serviceId" => "Chime SDK Media Pipelines",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-media-pipelines-2021-07-15",
      }

      api.add_operation(:create_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaCapturePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/sdk-media-capture-pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_media_concatenation_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaConcatenationPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/sdk-media-concatenation-pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaConcatenationPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaConcatenationPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_media_insights_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaInsightsPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/media-insights-pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_media_insights_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaInsightsPipelineConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/media-insights-pipeline-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaInsightsPipelineConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_media_live_connector_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaLiveConnectorPipeline"
        o.http_method = "POST"
        o.http_request_uri = "/sdk-media-live-connector-pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaLiveConnectorPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaLiveConnectorPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaCapturePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/sdk-media-capture-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_media_insights_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaInsightsPipelineConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/media-insights-pipeline-configurations/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaInsightsPipelineConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_media_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaPipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/sdk-media-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaCapturePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-capture-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_media_insights_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaInsightsPipelineConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/media-insights-pipeline-configurations/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetMediaInsightsPipelineConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaInsightsPipelineConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_media_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaPipeline"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: GetMediaPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_media_capture_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMediaCapturePipelines"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-capture-pipelines"
        o.input = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_media_insights_pipeline_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMediaInsightsPipelineConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/media-insights-pipeline-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListMediaInsightsPipelineConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMediaInsightsPipelineConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_media_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMediaPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-pipelines"
        o.input = Shapes::ShapeRef.new(shape: ListMediaPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMediaPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
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
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_media_insights_pipeline_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMediaInsightsPipelineConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/media-insights-pipeline-configurations/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_media_insights_pipeline_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMediaInsightsPipelineStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/media-insights-pipeline-status/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMediaInsightsPipelineStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
