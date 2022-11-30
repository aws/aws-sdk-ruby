# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMediaPipelines
  module Types

    # The configuration for the artifacts concatenation.
    #
    # @!attribute [rw] audio
    #   The configuration for the audio artifacts concatenation.
    #   @return [Types::AudioConcatenationConfiguration]
    #
    # @!attribute [rw] video
    #   The configuration for the video artifacts concatenation.
    #   @return [Types::VideoConcatenationConfiguration]
    #
    # @!attribute [rw] content
    #   The configuration for the content artifacts concatenation.
    #   @return [Types::ContentConcatenationConfiguration]
    #
    # @!attribute [rw] data_channel
    #   The configuration for the data channel artifacts concatenation.
    #   @return [Types::DataChannelConcatenationConfiguration]
    #
    # @!attribute [rw] transcription_messages
    #   The configuration for the transcription messages artifacts
    #   concatenation.
    #   @return [Types::TranscriptionMessagesConcatenationConfiguration]
    #
    # @!attribute [rw] meeting_events
    #   The configuration for the meeting events artifacts concatenation.
    #   @return [Types::MeetingEventsConcatenationConfiguration]
    #
    # @!attribute [rw] composited_video
    #   The configuration for the composited video artifacts concatenation.
    #   @return [Types::CompositedVideoConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ArtifactsConcatenationConfiguration AWS API Documentation
    #
    class ArtifactsConcatenationConfiguration < Struct.new(
      :audio,
      :video,
      :content,
      :data_channel,
      :transcription_messages,
      :meeting_events,
      :composited_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the artifacts.
    #
    # @!attribute [rw] audio
    #   The configuration for the audio artifacts.
    #   @return [Types::AudioArtifactsConfiguration]
    #
    # @!attribute [rw] video
    #   The configuration for the video artifacts.
    #   @return [Types::VideoArtifactsConfiguration]
    #
    # @!attribute [rw] content
    #   The configuration for the content artifacts.
    #   @return [Types::ContentArtifactsConfiguration]
    #
    # @!attribute [rw] composited_video
    #   Enables video compositing.
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ArtifactsConfiguration AWS API Documentation
    #
    class ArtifactsConfiguration < Struct.new(
      :audio,
      :video,
      :content,
      :composited_video)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audio artifact configuration object.
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the audio artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AudioArtifactsConfiguration AWS API Documentation
    #
    class AudioArtifactsConfiguration < Struct.new(
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audio artifact concatenation configuration object.
    #
    # @!attribute [rw] state
    #   Enables the *name* object, where *name* is the name of the
    #   configuration object, such as `AudioConcatenation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/AudioConcatenationConfiguration AWS API Documentation
    #
    class AudioConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of the Amazon Chime SDK meeting concatenation
    # for a specified media pipeline.
    #
    # @!attribute [rw] artifacts_configuration
    #   The configuration for the artifacts in an Amazon Chime SDK meeting
    #   concatenation.
    #   @return [Types::ArtifactsConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingConcatenationConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingConcatenationConfiguration < Struct.new(
      :artifacts_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of the Amazon Chime SDK meeting for a
    # specified media pipeline. `SourceType` must be `ChimeSdkMeeting`.
    #
    # @!attribute [rw] source_configuration
    #   The source configuration for a specified media pipline.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] artifacts_configuration
    #   The configuration for the artifacts in an Amazon Chime SDK meeting.
    #   @return [Types::ArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingConfiguration < Struct.new(
      :source_configuration,
      :artifacts_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media pipeline's configuration object.
    #
    # @!attribute [rw] arn
    #   The configuration object's Chime SDK meeting ARN.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The configuration object's multiplex type.
    #   @return [String]
    #
    # @!attribute [rw] composited_video
    #   The media pipeline's composited video.
    #   @return [Types::CompositedVideoArtifactsConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The source configuration settings of the media pipeline's
    #   configuration object.
    #   @return [Types::SourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ChimeSdkMeetingLiveConnectorConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingLiveConnectorConfiguration < Struct.new(
      :arn,
      :mux_type,
      :composited_video,
      :source_configuration)
      SENSITIVE = [:arn]
      include Aws::Structure
    end

    # Describes the configuration for the composited video artifacts.
    #
    # @!attribute [rw] layout
    #   The layout setting, such as `GridView` in the configuration object.
    #   @return [String]
    #
    # @!attribute [rw] resolution
    #   The video resolution setting in the configuration object. Default:
    #   HD at 1280 x 720. FHD resolution: 1920 x 1080.
    #   @return [String]
    #
    # @!attribute [rw] grid_view_configuration
    #   The `GridView` configuration setting.
    #   @return [Types::GridViewConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CompositedVideoArtifactsConfiguration AWS API Documentation
    #
    class CompositedVideoArtifactsConfiguration < Struct.new(
      :layout,
      :resolution,
      :grid_view_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The composited video configuration object for a specified media
    # pipeline. `SourceType` must be `ChimeSdkMeeting`.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CompositedVideoConcatenationConfiguration AWS API Documentation
    #
    class CompositedVideoConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data sink of the configuration object.
    #
    # @!attribute [rw] type
    #   The type of data sink in the configuration object.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_sink_configuration
    #   The configuration settings for an Amazon S3 bucket sink.
    #   @return [Types::S3BucketSinkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ConcatenationSink AWS API Documentation
    #
    class ConcatenationSink < Struct.new(
      :type,
      :s3_bucket_sink_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source type and media pipeline configuration settings in a
    # configuration object.
    #
    # @!attribute [rw] type
    #   The type of concatenation source in a configuration object.
    #   @return [String]
    #
    # @!attribute [rw] media_capture_pipeline_source_configuration
    #   The concatenation settings for the media pipeline in a configuration
    #   object.
    #   @return [Types::MediaCapturePipelineSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ConcatenationSource AWS API Documentation
    #
    class ConcatenationSource < Struct.new(
      :type,
      :media_capture_pipeline_source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content artifact object.
    #
    # @!attribute [rw] state
    #   Indicates whether the content artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the artifact configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ContentArtifactsConfiguration AWS API Documentation
    #
    class ContentArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The composited content configuration object for a specified media
    # pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ContentConcatenationConfiguration AWS API Documentation
    #
    class ContentConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   Source type from which the media artifacts are captured. A Chime SDK
    #   Meeting is the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts are captured.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink type.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. The token makes the
    #   API request idempotent. Use a unique token for each media pipeline
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media pipeline. `SourceType` must
    #   be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipelineRequest AWS API Documentation
    #
    class CreateMediaCapturePipelineRequest < Struct.new(
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration,
      :tags)
      SENSITIVE = [:source_arn, :sink_arn, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   A media pipeline object, the ID, source type, source ARN, sink type,
    #   and sink ARN of a media pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipelineResponse AWS API Documentation
    #
    class CreateMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   An object that specifies the sources for the media concatenation
    #   pipeline.
    #   @return [Array<Types::ConcatenationSource>]
    #
    # @!attribute [rw] sinks
    #   An object that specifies the data sinks for the media concatenation
    #   pipeline.
    #   @return [Array<Types::ConcatenationSink>]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. The token makes the
    #   API request idempotent. Use a unique token for each media
    #   concatenation pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the media concatenation pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaConcatenationPipelineRequest AWS API Documentation
    #
    class CreateMediaConcatenationPipelineRequest < Struct.new(
      :sources,
      :sinks,
      :client_request_token,
      :tags)
      SENSITIVE = [:client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_concatenation_pipeline
    #   A media concatenation pipeline object, the ID, source type,
    #   `MediaPipelineARN`, and sink of a media concatenation pipeline
    #   object.
    #   @return [Types::MediaConcatenationPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaConcatenationPipelineResponse AWS API Documentation
    #
    class CreateMediaConcatenationPipelineResponse < Struct.new(
      :media_concatenation_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   The media pipeline's data sources.
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    #
    # @!attribute [rw] sinks
    #   The media pipeline's data sinks.
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    #
    # @!attribute [rw] client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the media pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaLiveConnectorPipelineRequest AWS API Documentation
    #
    class CreateMediaLiveConnectorPipelineRequest < Struct.new(
      :sources,
      :sinks,
      :client_request_token,
      :tags)
      SENSITIVE = [:client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_live_connector_pipeline
    #   The new media pipeline.
    #   @return [Types::MediaLiveConnectorPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaLiveConnectorPipelineResponse AWS API Documentation
    #
    class CreateMediaLiveConnectorPipelineResponse < Struct.new(
      :media_live_connector_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content configuration object's data channel.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DataChannelConcatenationConfiguration AWS API Documentation
    #
    class DataChannelConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaCapturePipelineRequest AWS API Documentation
    #
    class DeleteMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaPipelineRequest AWS API Documentation
    #
    class DeleteMediaPipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipelineRequest AWS API Documentation
    #
    class GetMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   The media pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipelineResponse AWS API Documentation
    #
    class GetMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipelineRequest AWS API Documentation
    #
    class GetMediaPipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipeline
    #   The media pipeline object.
    #   @return [Types::MediaPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipelineResponse AWS API Documentation
    #
    class GetMediaPipelineResponse < Struct.new(
      :media_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the type of grid layout.
    #
    # @!attribute [rw] content_share_layout
    #   Defines the layout of the video tiles when content sharing is
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] presenter_only_configuration
    #   Defines the configuration options for a presenter only video tile.
    #   @return [Types::PresenterOnlyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GridViewConfiguration AWS API Documentation
    #
    class GridViewConfiguration < Struct.new(
      :content_share_layout,
      :presenter_only_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   Range: 1 - 99.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaCapturePipelinesRequest AWS API Documentation
    #
    class ListMediaCapturePipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipelines
    #   The media pipeline objects in the list.
    #   @return [Array<Types::MediaCapturePipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaCapturePipelinesResponse AWS API Documentation
    #
    class ListMediaCapturePipelinesResponse < Struct.new(
      :media_capture_pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   Range: 1 - 99.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelinesRequest AWS API Documentation
    #
    class ListMediaPipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_pipelines
    #   The media pipeline objects in the list.
    #   @return [Array<Types::MediaPipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelinesResponse AWS API Documentation
    #
    class ListMediaPipelinesResponse < Struct.new(
      :media_pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's region, resource ID, and pipeline ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the specified media pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media pipeline's RTMP configuration object.
    #
    # @!attribute [rw] url
    #   The URL of the RTMP configuration.
    #   @return [String]
    #
    # @!attribute [rw] audio_channels
    #   The audio channels set for the RTMP configuration
    #   @return [String]
    #
    # @!attribute [rw] audio_sample_rate
    #   The audio sample rate set for the RTMP configuration. Default:
    #   48000.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorRTMPConfiguration AWS API Documentation
    #
    class LiveConnectorRTMPConfiguration < Struct.new(
      :url,
      :audio_channels,
      :audio_sample_rate)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # The media pipeline's sink configuration settings.
    #
    # @!attribute [rw] sink_type
    #   The sink configuration's sink type.
    #   @return [String]
    #
    # @!attribute [rw] rtmp_configuration
    #   The sink configuration's RTMP configuration setttings.
    #   @return [Types::LiveConnectorRTMPConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorSinkConfiguration AWS API Documentation
    #
    class LiveConnectorSinkConfiguration < Struct.new(
      :sink_type,
      :rtmp_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source configuration object of a streaming media pipeline.
    #
    # @!attribute [rw] source_type
    #   The source configuration's media source type.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_live_connector_configuration
    #   The configuration settings of the connector pipeline.
    #   @return [Types::ChimeSdkMeetingLiveConnectorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/LiveConnectorSourceConfiguration AWS API Documentation
    #
    class LiveConnectorSourceConfiguration < Struct.new(
      :source_type,
      :chime_sdk_meeting_live_connector_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A media pipeline object consisting of an ID, source type, source ARN,
    # a sink type, a sink ARN, and a configuration object.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media capture pipeline
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Source type from which media artifacts are saved. You must use
    #   `ChimeMeeting`.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts are saved.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the media pipeline.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 Bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   ARN of the destination to which the media artifacts are saved.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the pipeline was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the pipeline was updated, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media pipeline. `SourceType` must
    #   be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipeline AWS API Documentation
    #
    class MediaCapturePipeline < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:source_arn, :sink_arn]
      include Aws::Structure
    end

    # The source configuration object of a media capture pipeline.
    #
    # @!attribute [rw] media_pipeline_arn
    #   The media pipeline ARN in the configuration object of a media
    #   capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The meeting configuration settings in a media capture pipeline
    #   configuration object.
    #   @return [Types::ChimeSdkMeetingConcatenationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipelineSourceConfiguration AWS API Documentation
    #
    class MediaCapturePipelineSourceConfiguration < Struct.new(
      :media_pipeline_arn,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:media_pipeline_arn]
      include Aws::Structure
    end

    # The summary data of a media capture pipeline.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline in the summary.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline in the summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaCapturePipelineSummary AWS API Documentation
    #
    class MediaCapturePipelineSummary < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Concatenates audio and video data from one or more data streams.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline being concatenated.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline that you specify in the
    #   `SourceConfiguration` object.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The data sources being concatnated.
    #   @return [Array<Types::ConcatenationSource>]
    #
    # @!attribute [rw] sinks
    #   The data sinks of the concatenation pipeline.
    #   @return [Array<Types::ConcatenationSink>]
    #
    # @!attribute [rw] status
    #   The status of the concatenation pipeline.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the concatenation pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the concatenation pipeline was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaConcatenationPipeline AWS API Documentation
    #
    class MediaConcatenationPipeline < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn,
      :sources,
      :sinks,
      :status,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connector pipeline.
    #
    # @!attribute [rw] sources
    #   The connector pipeline's data sources.
    #   @return [Array<Types::LiveConnectorSourceConfiguration>]
    #
    # @!attribute [rw] sinks
    #   The connector pipeline's data sinks.
    #   @return [Array<Types::LiveConnectorSinkConfiguration>]
    #
    # @!attribute [rw] media_pipeline_id
    #   The connector pipeline's ID.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The connector pipeline's ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The connector pipeline's status.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   Thetime at which the connector pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the connector pipeline was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaLiveConnectorPipeline AWS API Documentation
    #
    class MediaLiveConnectorPipeline < Struct.new(
      :sources,
      :sinks,
      :media_pipeline_id,
      :media_pipeline_arn,
      :status,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pipeline consisting of a media capture, media concatenation, or
    # live-streaming pipeline.
    #
    # @!attribute [rw] media_capture_pipeline
    #   A pipeline that enables users to capture audio and video.
    #   @return [Types::MediaCapturePipeline]
    #
    # @!attribute [rw] media_live_connector_pipeline
    #   The connector pipeline of the media pipeline.
    #   @return [Types::MediaLiveConnectorPipeline]
    #
    # @!attribute [rw] media_concatenation_pipeline
    #   The media concatenation pipeline in a media pipeline.
    #   @return [Types::MediaConcatenationPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaPipeline AWS API Documentation
    #
    class MediaPipeline < Struct.new(
      :media_capture_pipeline,
      :media_live_connector_pipeline,
      :media_concatenation_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the media pipeline.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media pipeline in the summary.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of the media pipeline in the summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MediaPipelineSummary AWS API Documentation
    #
    class MediaPipelineSummary < Struct.new(
      :media_pipeline_id,
      :media_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for an event concatenation pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/MeetingEventsConcatenationConfiguration AWS API Documentation
    #
    class MeetingEventsConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the resources in the request does not exist in the
    # system.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration for a presenter only video tile.
    #
    # @!attribute [rw] presenter_position
    #   Defines the position of the presenter video tile. Default:
    #   `TopRight`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/PresenterOnlyConfiguration AWS API Documentation
    #
    class PresenterOnlyConfiguration < Struct.new(
      :presenter_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for the S3 bucket.
    #
    # @!attribute [rw] destination
    #   The destination URL of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/S3BucketSinkConfiguration AWS API Documentation
    #
    class S3BucketSinkConfiguration < Struct.new(
      :destination)
      SENSITIVE = [:destination]
      include Aws::Structure
    end

    # The video streams for a specified media pipeline. The total number of
    # video streams can't exceed 25.
    #
    # @!attribute [rw] attendee_ids
    #   The attendee IDs of the streams selected for a media pipeline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] external_user_ids
    #   The external user IDs of the streams selected for a media pipeline.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SelectedVideoStreams AWS API Documentation
    #
    class SelectedVideoStreams < Struct.new(
      :attendee_ids,
      :external_user_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source configuration for a specified media pipeline.
    #
    # @!attribute [rw] selected_video_streams
    #   The selected video streams for a specified media pipeline. The
    #   number of video streams can't exceed 25.
    #   @return [Types::SelectedVideoStreams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :selected_video_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key/value pair that grants users access to meeting resources.
    #
    # @!attribute [rw] key
    #   The key half of a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value half of a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's endpoint region, resource ID, and
    #   pipeline ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the specified media pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The client exceeded its request rate limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for concatenating transcription messages.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TranscriptionMessagesConcatenationConfiguration AWS API Documentation
    #
    class TranscriptionMessagesConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not currently authorized to make the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request id associated with the call responsible for the
    #   exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the pipeline that you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key/value pairs in the tag that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The video artifact configuration object.
    #
    # @!attribute [rw] state
    #   Indicates whether the video artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the video artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/VideoArtifactsConfiguration AWS API Documentation
    #
    class VideoArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object of a video contacatentation pipeline.
    #
    # @!attribute [rw] state
    #   Enables or disables the configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/VideoConcatenationConfiguration AWS API Documentation
    #
    class VideoConcatenationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
