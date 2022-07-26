# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMediaPipelines
  module Types

    # The configuration for the artifacts.
    #
    # @note When making an API call, you may pass ArtifactsConfiguration
    #   data as a hash:
    #
    #       {
    #         audio: { # required
    #           mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo
    #         },
    #         video: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "VideoOnly", # accepts VideoOnly
    #         },
    #         content: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "ContentOnly", # accepts ContentOnly
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ArtifactsConfiguration AWS API Documentation
    #
    class ArtifactsConfiguration < Struct.new(
      :audio,
      :video,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The audio artifact configuration object.
    #
    # @note When making an API call, you may pass AudioArtifactsConfiguration
    #   data as a hash:
    #
    #       {
    #         mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo
    #       }
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

    # The configuration object of the Amazon Chime SDK meeting for a
    # specified media capture pipeline. `SourceType` must be
    # `ChimeSdkMeeting`.
    #
    # @note When making an API call, you may pass ChimeSdkMeetingConfiguration
    #   data as a hash:
    #
    #       {
    #         source_configuration: {
    #           selected_video_streams: {
    #             attendee_ids: ["GuidString"],
    #             external_user_ids: ["ExternalUserIdType"],
    #           },
    #         },
    #         artifacts_configuration: {
    #           audio: { # required
    #             mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo
    #           },
    #           video: { # required
    #             state: "Enabled", # required, accepts Enabled, Disabled
    #             mux_type: "VideoOnly", # accepts VideoOnly
    #           },
    #           content: { # required
    #             state: "Enabled", # required, accepts Enabled, Disabled
    #             mux_type: "ContentOnly", # accepts ContentOnly
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] source_configuration
    #   The source configuration for a specified media capture pipline.
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

    # The content artifact object.
    #
    # @note When making an API call, you may pass ContentArtifactsConfiguration
    #   data as a hash:
    #
    #       {
    #         state: "Enabled", # required, accepts Enabled, Disabled
    #         mux_type: "ContentOnly", # accepts ContentOnly
    #       }
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

    # @note When making an API call, you may pass CreateMediaCapturePipelineRequest
    #   data as a hash:
    #
    #       {
    #         source_type: "ChimeSdkMeeting", # required, accepts ChimeSdkMeeting
    #         source_arn: "Arn", # required
    #         sink_type: "S3Bucket", # required, accepts S3Bucket
    #         sink_arn: "Arn", # required
    #         client_request_token: "ClientRequestToken",
    #         chime_sdk_meeting_configuration: {
    #           source_configuration: {
    #             selected_video_streams: {
    #               attendee_ids: ["GuidString"],
    #               external_user_ids: ["ExternalUserIdType"],
    #             },
    #           },
    #           artifacts_configuration: {
    #             audio: { # required
    #               mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo
    #             },
    #             video: { # required
    #               state: "Enabled", # required, accepts Enabled, Disabled
    #               mux_type: "VideoOnly", # accepts VideoOnly
    #             },
    #             content: { # required
    #               state: "Enabled", # required, accepts Enabled, Disabled
    #               mux_type: "ContentOnly", # accepts ContentOnly
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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
    #   The token assigned to the client making the pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media capture pipeline.
    #   `SourceType` must be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @!attribute [rw] tags
    #   The list of tags.
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
    #   A media capture pipeline object, the ID, source type, source ARN,
    #   sink type, and sink ARN of a media capture pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipelineResponse AWS API Documentation
    #
    class CreateMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMediaCapturePipelineRequest
    #   data as a hash:
    #
    #       {
    #         media_pipeline_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of the media capture pipeline being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaCapturePipelineRequest AWS API Documentation
    #
    class DeleteMediaCapturePipelineRequest < Struct.new(
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

    # @note When making an API call, you may pass GetMediaCapturePipelineRequest
    #   data as a hash:
    #
    #       {
    #         media_pipeline_id: "GuidString", # required
    #       }
    #
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
    #   The media capture pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipelineResponse AWS API Documentation
    #
    class GetMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMediaCapturePipelinesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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
    #   The media capture pipeline objects in the list.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
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
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A media capture pipeline object consisting of an ID, source type,
    # source ARN, a sink type, a sink ARN, and a configuration object.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of a media capture pipeline.
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
    #   The status of the media capture pipeline.
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
    #   The time at which the capture pipeline was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the capture pipeline was updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media capture pipeline.
    #   `SourceType` must be `ChimeSdkMeeting`.
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

    # A summary of a media capture pipeline.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] media_pipeline_arn
    #   The ARN of a media capture pipeline.
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

    # The video streams to capture for a specified media capture pipeline.
    # The total number of video streams can't exceed 25.
    #
    # @note When making an API call, you may pass SelectedVideoStreams
    #   data as a hash:
    #
    #       {
    #         attendee_ids: ["GuidString"],
    #         external_user_ids: ["ExternalUserIdType"],
    #       }
    #
    # @!attribute [rw] attendee_ids
    #   The attendee IDs of the streams selected for a media capture
    #   pipeline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] external_user_ids
    #   The external user IDs of the streams selected for a media capture
    #   pipeline.
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

    # Source configuration for a specified media capture pipeline.
    #
    # @note When making an API call, you may pass SourceConfiguration
    #   data as a hash:
    #
    #       {
    #         selected_video_streams: {
    #           attendee_ids: ["GuidString"],
    #           external_user_ids: ["ExternalUserIdType"],
    #         },
    #       }
    #
    # @!attribute [rw] selected_video_streams
    #   The selected video streams to capture for a specified media capture
    #   pipeline. The number of video streams can't exceed 25.
    #   @return [Types::SelectedVideoStreams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :selected_video_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag applied to a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
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
    # @note When making an API call, you may pass VideoArtifactsConfiguration
    #   data as a hash:
    #
    #       {
    #         state: "Enabled", # required, accepts Enabled, Disabled
    #         mux_type: "VideoOnly", # accepts VideoOnly
    #       }
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

  end
end
