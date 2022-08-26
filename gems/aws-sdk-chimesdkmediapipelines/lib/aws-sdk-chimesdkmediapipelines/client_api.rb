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
    ContentArtifactsConfiguration = Shapes::StructureShape.new(name: 'ContentArtifactsConfiguration')
    ContentConcatenationConfiguration = Shapes::StructureShape.new(name: 'ContentConcatenationConfiguration')
    ContentMuxType = Shapes::StringShape.new(name: 'ContentMuxType')
    ContentShareLayoutOption = Shapes::StringShape.new(name: 'ContentShareLayoutOption')
    CreateMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineRequest')
    CreateMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineResponse')
    CreateMediaConcatenationPipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaConcatenationPipelineRequest')
    CreateMediaConcatenationPipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaConcatenationPipelineResponse')
    CreateMediaLiveConnectorPipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaLiveConnectorPipelineRequest')
    CreateMediaLiveConnectorPipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaLiveConnectorPipelineResponse')
    DataChannelConcatenationConfiguration = Shapes::StructureShape.new(name: 'DataChannelConcatenationConfiguration')
    DeleteMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaCapturePipelineRequest')
    DeleteMediaPipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaPipelineRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExternalUserIdList = Shapes::ListShape.new(name: 'ExternalUserIdList')
    ExternalUserIdType = Shapes::StringShape.new(name: 'ExternalUserIdType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineRequest')
    GetMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineResponse')
    GetMediaPipelineRequest = Shapes::StructureShape.new(name: 'GetMediaPipelineRequest')
    GetMediaPipelineResponse = Shapes::StructureShape.new(name: 'GetMediaPipelineResponse')
    GridViewConfiguration = Shapes::StructureShape.new(name: 'GridViewConfiguration')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    LayoutOption = Shapes::StringShape.new(name: 'LayoutOption')
    ListMediaCapturePipelinesRequest = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesRequest')
    ListMediaCapturePipelinesResponse = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesResponse')
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
    MediaLiveConnectorPipeline = Shapes::StructureShape.new(name: 'MediaLiveConnectorPipeline')
    MediaPipeline = Shapes::StructureShape.new(name: 'MediaPipeline')
    MediaPipelineList = Shapes::ListShape.new(name: 'MediaPipelineList')
    MediaPipelineSinkType = Shapes::StringShape.new(name: 'MediaPipelineSinkType')
    MediaPipelineSourceType = Shapes::StringShape.new(name: 'MediaPipelineSourceType')
    MediaPipelineStatus = Shapes::StringShape.new(name: 'MediaPipelineStatus')
    MediaPipelineSummary = Shapes::StructureShape.new(name: 'MediaPipelineSummary')
    MeetingEventsConcatenationConfiguration = Shapes::StructureShape.new(name: 'MeetingEventsConcatenationConfiguration')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PresenterOnlyConfiguration = Shapes::StructureShape.new(name: 'PresenterOnlyConfiguration')
    PresenterPosition = Shapes::StringShape.new(name: 'PresenterPosition')
    ResolutionOption = Shapes::StringShape.new(name: 'ResolutionOption')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    S3BucketSinkConfiguration = Shapes::StructureShape.new(name: 'S3BucketSinkConfiguration')
    SelectedVideoStreams = Shapes::StructureShape.new(name: 'SelectedVideoStreams')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    TranscriptionMessagesConcatenationConfiguration = Shapes::StructureShape.new(name: 'TranscriptionMessagesConcatenationConfiguration')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    VideoArtifactsConfiguration = Shapes::StructureShape.new(name: 'VideoArtifactsConfiguration')
    VideoConcatenationConfiguration = Shapes::StructureShape.new(name: 'VideoConcatenationConfiguration')
    VideoMuxType = Shapes::StringShape.new(name: 'VideoMuxType')

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

    DeleteMediaPipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    DeleteMediaPipelineRequest.struct_class = Types::DeleteMediaPipelineRequest

    ExternalUserIdList.member = Shapes::ShapeRef.new(shape: ExternalUserIdType)

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaCapturePipelineRequest.struct_class = Types::GetMediaCapturePipelineRequest

    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    GetMediaCapturePipelineResponse.struct_class = Types::GetMediaCapturePipelineResponse

    GetMediaPipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaPipelineRequest.struct_class = Types::GetMediaPipelineRequest

    GetMediaPipelineResponse.add_member(:media_pipeline, Shapes::ShapeRef.new(shape: MediaPipeline, location_name: "MediaPipeline"))
    GetMediaPipelineResponse.struct_class = Types::GetMediaPipelineResponse

    GridViewConfiguration.add_member(:content_share_layout, Shapes::ShapeRef.new(shape: ContentShareLayoutOption, required: true, location_name: "ContentShareLayout"))
    GridViewConfiguration.add_member(:presenter_only_configuration, Shapes::ShapeRef.new(shape: PresenterOnlyConfiguration, location_name: "PresenterOnlyConfiguration"))
    GridViewConfiguration.struct_class = Types::GridViewConfiguration

    ListMediaCapturePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaCapturePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaCapturePipelinesRequest.struct_class = Types::ListMediaCapturePipelinesRequest

    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, Shapes::ShapeRef.new(shape: MediaCapturePipelineSummaryList, location_name: "MediaCapturePipelines"))
    ListMediaCapturePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaCapturePipelinesResponse.struct_class = Types::ListMediaCapturePipelinesResponse

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

    PresenterOnlyConfiguration.add_member(:presenter_position, Shapes::ShapeRef.new(shape: PresenterPosition, location_name: "PresenterPosition"))
    PresenterOnlyConfiguration.struct_class = Types::PresenterOnlyConfiguration

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    S3BucketSinkConfiguration.add_member(:destination, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Destination"))
    S3BucketSinkConfiguration.struct_class = Types::S3BucketSinkConfiguration

    SelectedVideoStreams.add_member(:attendee_ids, Shapes::ShapeRef.new(shape: AttendeeIdList, location_name: "AttendeeIds"))
    SelectedVideoStreams.add_member(:external_user_ids, Shapes::ShapeRef.new(shape: ExternalUserIdList, location_name: "ExternalUserIds"))
    SelectedVideoStreams.struct_class = Types::SelectedVideoStreams

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SourceConfiguration.add_member(:selected_video_streams, Shapes::ShapeRef.new(shape: SelectedVideoStreams, location_name: "SelectedVideoStreams"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

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

    VideoArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    VideoArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: VideoMuxType, location_name: "MuxType"))
    VideoArtifactsConfiguration.struct_class = Types::VideoArtifactsConfiguration

    VideoConcatenationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsConcatenationState, required: true, location_name: "State"))
    VideoConcatenationConfiguration.struct_class = Types::VideoConcatenationConfiguration


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
    end

  end
end
