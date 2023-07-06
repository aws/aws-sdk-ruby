# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideo
  module Types

    # You do not have required permissions to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum limit of active signaling channels for
    # this Amazon Web Services account in this region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/AccountChannelLimitExceededException AWS API Documentation
    #
    class AccountChannelLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of streams created for the account is too high.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/AccountStreamLimitExceededException AWS API Documentation
    #
    class AccountStreamLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that encapsulates a signaling channel's metadata and
    # properties.
    #
    # @!attribute [rw] channel_name
    #   The name of the signaling channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_type
    #   The type of the signaling channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_status
    #   Current status of the signaling channel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the signaling channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] single_master_configuration
    #   A structure that contains the configuration for the `SINGLE_MASTER`
    #   channel type.
    #   @return [Types::SingleMasterConfiguration]
    #
    # @!attribute [rw] version
    #   The current version of the signaling channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ChannelInfo AWS API Documentation
    #
    class ChannelInfo < Struct.new(
      :channel_name,
      :channel_arn,
      :channel_type,
      :channel_status,
      :creation_time,
      :single_master_configuration,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional input parameter for the `ListSignalingChannels` API. When
    # this parameter is specified while invoking `ListSignalingChannels`,
    # the API returns only the channels that satisfy a condition specified
    # in `ChannelNameCondition`.
    #
    # @!attribute [rw] comparison_operator
    #   A comparison operator. Currently, you can only specify the
    #   `BEGINS_WITH` operator, which finds signaling channels whose names
    #   begin with a given prefix.
    #   @return [String]
    #
    # @!attribute [rw] comparison_value
    #   A value to compare.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ChannelNameCondition AWS API Documentation
    #
    class ChannelNameCondition < Struct.new(
      :comparison_operator,
      :comparison_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Kinesis Video Streams has throttled the request because you have
    # exceeded the limit of allowed client calls. Try making the call later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ClientLimitExceededException AWS API Documentation
    #
    class ClientLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   A name for the signaling channel that you are creating. It must be
    #   unique for each Amazon Web Services account and Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] channel_type
    #   A type of the signaling channel that you are creating. Currently,
    #   `SINGLE_MASTER` is the only supported channel type.
    #   @return [String]
    #
    # @!attribute [rw] single_master_configuration
    #   A structure containing the configuration for the `SINGLE_MASTER`
    #   channel type.
    #   @return [Types::SingleMasterConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to associate with this
    #   channel.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateSignalingChannelInput AWS API Documentation
    #
    class CreateSignalingChannelInput < Struct.new(
      :channel_name,
      :channel_type,
      :single_master_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the created channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateSignalingChannelOutput AWS API Documentation
    #
    class CreateSignalingChannelOutput < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use
    #   this name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   A name for the stream that you are creating.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   The media type of the stream. Consumers of the stream can use this
    #   information when processing the stream. For more information about
    #   media types, see [Media Types][1]. If you choose to specify the
    #   `MediaType`, see [Naming Requirements][2] for guidelines.
    #
    #   Example valid values include "video/h264" and
    #   "video/h264,audio/aac".
    #
    #   This parameter is optional; the default value is `null` (or empty in
    #   JSON).
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Key Management Service (KMS) key that you want Kinesis
    #   Video Streams to use to encrypt stream data.
    #
    #   If no key ID is specified, the default, Kinesis Video-managed key
    #   (`Amazon Web Services/kinesisvideo`) is used.
    #
    #   For more information, see [DescribeKey][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   @return [String]
    #
    # @!attribute [rw] data_retention_in_hours
    #   The number of hours that you want to retain the data in the stream.
    #   Kinesis Video Streams retains the data in a data store that is
    #   associated with the stream.
    #
    #   The default value is 0, indicating that the stream does not persist
    #   data.
    #
    #   When the `DataRetentionInHours` value is 0, consumers can still
    #   consume the fragments that remain in the service host buffer, which
    #   has a retention time limit of 5 minutes and a retention memory limit
    #   of 200 MB. Fragments are removed from the buffer when either limit
    #   is reached.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStreamInput AWS API Documentation
    #
    class CreateStreamInput < Struct.new(
      :device_name,
      :stream_name,
      :media_type,
      :kms_key_id,
      :data_retention_in_hours,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStreamOutput AWS API Documentation
    #
    class CreateStreamOutput < Struct.new(
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream from which to delete the edge configuration.
    #   Specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteEdgeConfigurationInput AWS API Documentation
    #
    class DeleteEdgeConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteEdgeConfigurationOutput AWS API Documentation
    #
    class DeleteEdgeConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the signaling channel that you want to
    #   delete. You can obtain the current version by invoking the
    #   `DescribeSignalingChannel` or `ListSignalingChannels` API
    #   operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteSignalingChannelInput AWS API Documentation
    #
    class DeleteSignalingChannelInput < Struct.new(
      :channel_arn,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteSignalingChannelOutput AWS API Documentation
    #
    class DeleteSignalingChannelOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   Optional: The version of the stream that you want to delete.
    #
    #   Specify the version as a safeguard to ensure that your are deleting
    #   the correct stream. To get the stream version, use the
    #   `DescribeStream` API.
    #
    #   If not specified, only the `CreationTime` is checked before deleting
    #   the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStreamInput AWS API Documentation
    #
    class DeleteStreamInput < Struct.new(
      :stream_arn,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStreamOutput AWS API Documentation
    #
    class DeleteStreamOutput < Aws::EmptyStructure; end

    # The configuration details required to delete the connection of the
    # stream from the Edge Agent.
    #
    # @!attribute [rw] edge_retention_in_hours
    #   The number of hours that you want to retain the data in the stream
    #   on the Edge Agent. The default value of the retention time is 720
    #   hours, which translates to 30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] local_size_config
    #   The value of the local size required in order to delete the edge
    #   configuration.
    #   @return [Types::LocalSizeConfig]
    #
    # @!attribute [rw] delete_after_upload
    #   The `boolean` value used to indicate whether or not you want to mark
    #   the media for deletion, once it has been uploaded to the Kinesis
    #   Video Stream cloud. The media files can be deleted if any of the
    #   deletion configuration values are set to `true`, such as when the
    #   limit for the `EdgeRetentionInHours`, or the
    #   `MaxLocalMediaSizeInMB`, has been reached.
    #
    #   Since the default value is set to `true`, configure the uploader
    #   schedule such that the media files are not being deleted before they
    #   are initially uploaded to the Amazon Web Services cloud.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeletionConfig AWS API Documentation
    #
    class DeletionConfig < Struct.new(
      :edge_retention_in_hours,
      :local_size_config,
      :delete_after_upload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream whose edge configuration you want to update.
    #   Specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName`or the `StreamARN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeEdgeConfigurationInput AWS API Documentation
    #
    class DescribeEdgeConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream from which the edge configuration was
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp at which a stream’s edge configuration was first
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp at which a stream’s edge configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] sync_status
    #   The latest status of the edge configuration update.
    #   @return [String]
    #
    # @!attribute [rw] failed_status_details
    #   A description of the generated failure status.
    #   @return [String]
    #
    # @!attribute [rw] edge_config
    #   A description of the stream's edge configuration that will be used
    #   to sync with the Edge Agent IoT Greengrass component. The Edge Agent
    #   component will run on an IoT Hub Device setup at your premise.
    #   @return [Types::EdgeConfig]
    #
    # @!attribute [rw] edge_agent_status
    #   An object that contains the latest status details for an edge
    #   agent's recorder and uploader jobs. Use this information to
    #   determine the current health of an edge agent.
    #   @return [Types::EdgeAgentStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeEdgeConfigurationOutput AWS API Documentation
    #
    class DescribeEdgeConfigurationOutput < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config,
      :edge_agent_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream from which to retrieve the image generation
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from
    #   which to retrieve the image generation configuration. You must
    #   specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeImageGenerationConfigurationInput AWS API Documentation
    #
    class DescribeImageGenerationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_generation_configuration
    #   The structure that contains the information required for the Kinesis
    #   video stream (KVS) images delivery. If this structure is null, the
    #   configuration will be deleted from the stream.
    #   @return [Types::ImageGenerationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeImageGenerationConfigurationOutput AWS API Documentation
    #
    class DescribeImageGenerationConfigurationOutput < Struct.new(
      :image_generation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to provide in your next request, to get another batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMappedResourceConfigurationInput AWS API Documentation
    #
    class DescribeMappedResourceConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mapped_resource_configuration_list
    #   A structure that encapsulates, or contains, the media storage
    #   configuration properties.
    #   @return [Array<Types::MappedResourceConfigurationListItem>]
    #
    # @!attribute [rw] next_token
    #   The token that was used in the `NextToken`request to fetch the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMappedResourceConfigurationOutput AWS API Documentation
    #
    class DescribeMappedResourceConfigurationOutput < Struct.new(
      :mapped_resource_configuration_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMediaStorageConfigurationInput AWS API Documentation
    #
    class DescribeMediaStorageConfigurationInput < Struct.new(
      :channel_name,
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_storage_configuration
    #   A structure that encapsulates, or contains, the media storage
    #   configuration properties.
    #   @return [Types::MediaStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMediaStorageConfigurationOutput AWS API Documentation
    #
    class DescribeMediaStorageConfigurationOutput < Struct.new(
      :media_storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream from which to retrieve the notification
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from
    #   where you want to retrieve the notification configuration. You must
    #   specify either the `StreamName` or the StreamARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeNotificationConfigurationInput AWS API Documentation
    #
    class DescribeNotificationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configuration
    #   The structure that contains the information required for
    #   notifications. If the structure is null, the configuration will be
    #   deleted from the stream.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeNotificationConfigurationOutput AWS API Documentation
    #
    class DescribeNotificationConfigurationOutput < Struct.new(
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_name
    #   The name of the signaling channel that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the signaling channel that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeSignalingChannelInput AWS API Documentation
    #
    class DescribeSignalingChannelInput < Struct.new(
      :channel_name,
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_info
    #   A structure that encapsulates the specified signaling channel's
    #   metadata and properties.
    #   @return [Types::ChannelInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeSignalingChannelOutput AWS API Documentation
    #
    class DescribeSignalingChannelOutput < Struct.new(
      :channel_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeStreamInput AWS API Documentation
    #
    class DescribeStreamInput < Struct.new(
      :stream_name,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_info
    #   An object that describes the stream.
    #   @return [Types::StreamInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeStreamOutput AWS API Documentation
    #
    class DescribeStreamOutput < Struct.new(
      :stream_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Not implemented.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeviceStreamLimitExceededException AWS API Documentation
    #
    class DeviceStreamLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the latest status details for an edge agent's
    # recorder and uploader jobs. Use this information to determine the
    # current health of an edge agent.
    #
    # @!attribute [rw] last_recorder_status
    #   The latest status of a stream’s edge recording job.
    #   @return [Types::LastRecorderStatus]
    #
    # @!attribute [rw] last_uploader_status
    #   The latest status of a stream’s edge to cloud uploader job.
    #   @return [Types::LastUploaderStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/EdgeAgentStatus AWS API Documentation
    #
    class EdgeAgentStatus < Struct.new(
      :last_recorder_status,
      :last_uploader_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the stream's edge configuration that will be used to
    # sync with the Edge Agent IoT Greengrass component. The Edge Agent
    # component will run on an IoT Hub Device setup at your premise.
    #
    # @!attribute [rw] hub_device_arn
    #   The "**Internet of Things (IoT) Thing**" Arn of the stream.
    #   @return [String]
    #
    # @!attribute [rw] recorder_config
    #   The recorder configuration consists of the local `MediaSourceConfig`
    #   details, that are used as credentials to access the local media
    #   files streamed on the camera.
    #   @return [Types::RecorderConfig]
    #
    # @!attribute [rw] uploader_config
    #   The uploader configuration contains the `ScheduleExpression` details
    #   that are used to schedule upload jobs for the recorded media files
    #   from the Edge Agent to a Kinesis Video Stream.
    #   @return [Types::UploaderConfig]
    #
    # @!attribute [rw] deletion_config
    #   The deletion configuration is made up of the retention time
    #   (`EdgeRetentionInHours`) and local size configuration
    #   (`LocalSizeConfig`) details that are used to make the deletion.
    #   @return [Types::DeletionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/EdgeConfig AWS API Documentation
    #
    class EdgeConfig < Struct.new(
      :hub_device_arn,
      :recorder_config,
      :uploader_config,
      :deletion_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream that you want to get the endpoint for. You
    #   must specify either this parameter or a `StreamARN` in the request.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to get
    #   the endpoint for. You must specify either this parameter or a
    #   `StreamName` in the request.
    #   @return [String]
    #
    # @!attribute [rw] api_name
    #   The name of the API action for which to get an endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetDataEndpointInput AWS API Documentation
    #
    class GetDataEndpointInput < Struct.new(
      :stream_name,
      :stream_arn,
      :api_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_endpoint
    #   The endpoint value. To read data from the stream or to write data to
    #   it, specify this endpoint in your application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetDataEndpointOutput AWS API Documentation
    #
    class GetDataEndpointOutput < Struct.new(
      :data_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the signalling channel for which
    #   you want to get an endpoint.
    #   @return [String]
    #
    # @!attribute [rw] single_master_channel_endpoint_configuration
    #   A structure containing the endpoint configuration for the
    #   `SINGLE_MASTER` channel type.
    #   @return [Types::SingleMasterChannelEndpointConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetSignalingChannelEndpointInput AWS API Documentation
    #
    class GetSignalingChannelEndpointInput < Struct.new(
      :channel_arn,
      :single_master_channel_endpoint_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_endpoint_list
    #   A list of endpoints for the specified signaling channel.
    #   @return [Array<Types::ResourceEndpointListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetSignalingChannelEndpointOutput AWS API Documentation
    #
    class GetSignalingChannelEndpointOutput < Struct.new(
      :resource_endpoint_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains the information required for the KVS
    # images delivery. If null, the configuration will be deleted from the
    # stream.
    #
    # @!attribute [rw] status
    #   Indicates whether the `ContinuousImageGenerationConfigurations` API
    #   is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] image_selector_type
    #   The origin of the Server or Producer timestamps to use to generate
    #   the images.
    #   @return [String]
    #
    # @!attribute [rw] destination_config
    #   The structure that contains the information required to deliver
    #   images to a customer.
    #   @return [Types::ImageGenerationDestinationConfig]
    #
    # @!attribute [rw] sampling_interval
    #   The time interval in milliseconds (ms) at which the images need to
    #   be generated from the stream. The minimum value that can be provided
    #   is 33 ms, because a camera that generates content at 30 FPS would
    #   create a frame every 33.3 ms. If the timestamp range is less than
    #   the sampling interval, the Image from the `StartTimestamp` will be
    #   returned if available.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   The accepted image format.
    #   @return [String]
    #
    # @!attribute [rw] format_config
    #   The list of a key-value pair structure that contains extra
    #   parameters that can be applied when the image is generated. The
    #   `FormatConfig` key is the `JPEGQuality`, which indicates the JPEG
    #   quality key to be used to generate the image. The `FormatConfig`
    #   value accepts ints from 1 to 100. If the value is 1, the image will
    #   be generated with less quality and the best compression. If the
    #   value is 100, the image will be generated with the best quality and
    #   less compression. If no value is provided, the default value of the
    #   `JPEGQuality` key will be set to 80.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] width_pixels
    #   The width of the output image that is used in conjunction with the
    #   `HeightPixels` parameter. When both `WidthPixels` and `HeightPixels`
    #   parameters are provided, the image will be stretched to fit the
    #   specified aspect ratio. If only the `WidthPixels` parameter is
    #   provided, its original aspect ratio will be used to calculate the
    #   `HeightPixels` ratio. If neither parameter is provided, the original
    #   image size will be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] height_pixels
    #   The height of the output image that is used in conjunction with the
    #   `WidthPixels` parameter. When both `HeightPixels` and `WidthPixels`
    #   parameters are provided, the image will be stretched to fit the
    #   specified aspect ratio. If only the `HeightPixels` parameter is
    #   provided, its original aspect ratio will be used to calculate the
    #   `WidthPixels` ratio. If neither parameter is provided, the original
    #   image size will be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ImageGenerationConfiguration AWS API Documentation
    #
    class ImageGenerationConfiguration < Struct.new(
      :status,
      :image_selector_type,
      :destination_config,
      :sampling_interval,
      :format,
      :format_config,
      :width_pixels,
      :height_pixels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains the information required to deliver images
    # to a customer.
    #
    # @!attribute [rw] uri
    #   The Uniform Resource Identifier (URI) that identifies where the
    #   images will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The Amazon Web Services Region of the S3 bucket where images will be
    #   delivered. This `DestinationRegion` must match the Region where the
    #   stream is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ImageGenerationDestinationConfig AWS API Documentation
    #
    class ImageGenerationDestinationConfig < Struct.new(
      :uri,
      :destination_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for this input parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Not implemented.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/InvalidDeviceException AWS API Documentation
    #
    class InvalidDeviceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of the `StreamARN` is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/InvalidResourceFormatException AWS API Documentation
    #
    class InvalidResourceFormatException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The latest status of a stream's edge recording job.
    #
    # @!attribute [rw] job_status_details
    #   A description of a recorder job’s latest status.
    #   @return [String]
    #
    # @!attribute [rw] last_collected_time
    #   The timestamp at which the recorder job was last executed and media
    #   stored to local disk.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp at which the recorder status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] recorder_status
    #   The status of the latest recorder job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/LastRecorderStatus AWS API Documentation
    #
    class LastRecorderStatus < Struct.new(
      :job_status_details,
      :last_collected_time,
      :last_updated_time,
      :recorder_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The latest status of a stream’s edge to cloud uploader job.
    #
    # @!attribute [rw] job_status_details
    #   A description of an uploader job’s latest status.
    #   @return [String]
    #
    # @!attribute [rw] last_collected_time
    #   The timestamp at which the uploader job was last executed and media
    #   collected to the cloud.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp at which the uploader status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] uploader_status
    #   The status of the latest uploader job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/LastUploaderStatus AWS API Documentation
    #
    class LastUploaderStatus < Struct.new(
      :job_status_details,
      :last_collected_time,
      :last_updated_time,
      :uploader_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of a single stream's edge configuration.
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the stream first created the edge config.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the stream last updated the edge config.
    #   @return [Time]
    #
    # @!attribute [rw] sync_status
    #   The current sync status of the stream's edge configuration.
    #   @return [String]
    #
    # @!attribute [rw] failed_status_details
    #   A description of the generated failure status.
    #   @return [String]
    #
    # @!attribute [rw] edge_config
    #   A description of the stream's edge configuration that will be used
    #   to sync with the Edge Agent IoT Greengrass component. The Edge Agent
    #   component will run on an IoT Hub Device setup at your premise.
    #   @return [Types::EdgeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListEdgeAgentConfigurationsEdgeConfig AWS API Documentation
    #
    class ListEdgeAgentConfigurationsEdgeConfig < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_device_arn
    #   The "Internet of Things (IoT) Thing" Arn of the edge agent.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of edge configurations to return in the response.
    #   The default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you specify this parameter, when the result of a
    #   `ListEdgeAgentConfigurations` operation is truncated, the call
    #   returns the `NextToken` in the response. To get another batch of
    #   edge configurations, provide this token in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListEdgeAgentConfigurationsInput AWS API Documentation
    #
    class ListEdgeAgentConfigurationsInput < Struct.new(
      :hub_device_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] edge_configs
    #   A description of a single stream's edge configuration.
    #   @return [Array<Types::ListEdgeAgentConfigurationsEdgeConfig>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the call returns this element with a
    #   given token. To get the next batch of edge configurations, use this
    #   token in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListEdgeAgentConfigurationsOutput AWS API Documentation
    #
    class ListEdgeAgentConfigurationsOutput < Struct.new(
      :edge_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of channels to return in the response. The
    #   default is 500.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you specify this parameter, when the result of a
    #   `ListSignalingChannels` operation is truncated, the call returns the
    #   `NextToken` in the response. To get another batch of channels,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] channel_name_condition
    #   Optional: Returns only the channels that satisfy a specific
    #   condition.
    #   @return [Types::ChannelNameCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListSignalingChannelsInput AWS API Documentation
    #
    class ListSignalingChannelsInput < Struct.new(
      :max_results,
      :next_token,
      :channel_name_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_info_list
    #   An array of `ChannelInfo` objects.
    #   @return [Array<Types::ChannelInfo>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the call returns this element with a
    #   token. To get the next batch of streams, use this token in your next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListSignalingChannelsOutput AWS API Documentation
    #
    class ListSignalingChannelsOutput < Struct.new(
      :channel_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of streams to return in the response. The default
    #   is 10,000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you specify this parameter, when the result of a `ListStreams`
    #   operation is truncated, the call returns the `NextToken` in the
    #   response. To get another batch of streams, provide this token in
    #   your next request.
    #   @return [String]
    #
    # @!attribute [rw] stream_name_condition
    #   Optional: Returns only streams that satisfy a specific condition.
    #   Currently, you can specify only the prefix of a stream name as a
    #   condition.
    #   @return [Types::StreamNameCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListStreamsInput AWS API Documentation
    #
    class ListStreamsInput < Struct.new(
      :max_results,
      :next_token,
      :stream_name_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_info_list
    #   An array of `StreamInfo` objects.
    #   @return [Array<Types::StreamInfo>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the call returns this element with a
    #   token. To get the next batch of streams, use this token in your next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListStreamsOutput AWS API Documentation
    #
    class ListStreamsOutput < Struct.new(
      :stream_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you specify this parameter and the result of a
    #   `ListTagsForResource` call is truncated, the response includes a
    #   token that you can use in the next request to fetch the next batch
    #   of tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel for which
    #   you want to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you specify this parameter and the result of a
    #   `ListTagsForResource` call is truncated, the response includes a
    #   token that you can use in the next request to fetch the next set of
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values associated with the specified signaling
    #   channel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you specify this parameter and the result of a
    #   `ListTagsForStream` call is truncated, the response includes a token
    #   that you can use in the next request to fetch the next batch of
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to list
    #   tags for.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the stream that you want to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForStreamInput AWS API Documentation
    #
    class ListTagsForStreamInput < Struct.new(
      :next_token,
      :stream_arn,
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you specify this parameter and the result of a `ListTags` call is
    #   truncated, the response includes a token that you can use in the
    #   next request to fetch the next set of tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values associated with the specified stream.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForStreamOutput AWS API Documentation
    #
    class ListTagsForStreamOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details that include the maximum size of the media
    # (`MaxLocalMediaSizeInMB`) that you want to store for a stream on the
    # Edge Agent, as well as the strategy that should be used
    # (`StrategyOnFullSize`) when a stream's maximum size has been reached.
    #
    # @!attribute [rw] max_local_media_size_in_mb
    #   The overall maximum size of the media that you want to store for a
    #   stream on the Edge Agent.
    #   @return [Integer]
    #
    # @!attribute [rw] strategy_on_full_size
    #   The strategy to perform when a stream’s `MaxLocalMediaSizeInMB`
    #   limit is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/LocalSizeConfig AWS API Documentation
    #
    class LocalSizeConfig < Struct.new(
      :max_local_media_size_in_mb,
      :strategy_on_full_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that encapsulates, or contains, the media storage
    # configuration properties.
    #
    # @!attribute [rw] type
    #   The type of the associated resource for the kinesis video stream.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Kinesis Video Stream resource,
    #   associated with the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/MappedResourceConfigurationListItem AWS API Documentation
    #
    class MappedResourceConfigurationListItem < Struct.new(
      :type,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details that consist of the credentials required
    # (`MediaUriSecretArn` and `MediaUriType`) to access the media files
    # that are streamed to the camera.
    #
    # @!attribute [rw] media_uri_secret_arn
    #   The Amazon Web Services Secrets Manager ARN for the username and
    #   password of the camera, or a local media file location.
    #   @return [String]
    #
    # @!attribute [rw] media_uri_type
    #   The Uniform Resource Identifier (URI) type. The `FILE_URI` value can
    #   be used to stream local media files.
    #
    #   <note markdown="1"> Preview only supports the `RTSP_URI` media source URI format .
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/MediaSourceConfig AWS API Documentation
    #
    class MediaSourceConfig < Struct.new(
      :media_uri_secret_arn,
      :media_uri_type)
      SENSITIVE = [:media_uri_secret_arn]
      include Aws::Structure
    end

    # A structure that encapsulates, or contains, the media storage
    # configuration properties.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the media storage configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/MediaStorageConfiguration AWS API Documentation
    #
    class MediaStorageConfiguration < Struct.new(
      :stream_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Stream data retention in hours is equal to zero.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/NoDataRetentionException AWS API Documentation
    #
    class NoDataRetentionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller is not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/NotAuthorizedException AWS API Documentation
    #
    class NotAuthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains the notification information for the KVS
    # images delivery. If this parameter is null, the configuration will be
    # deleted from the stream.
    #
    # @!attribute [rw] status
    #   Indicates if a notification configuration is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] destination_config
    #   The destination information required to deliver a notification to a
    #   customer.
    #   @return [Types::NotificationDestinationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :status,
      :destination_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains the information required to deliver a
    # notification to a customer.
    #
    # @!attribute [rw] uri
    #   The Uniform Resource Identifier (URI) that identifies where the
    #   images will be delivered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/NotificationDestinationConfig AWS API Documentation
    #
    class NotificationDestinationConfig < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recorder configuration consists of the local `MediaSourceConfig`
    # details that are used as credentials to accesss the local media files
    # streamed on the camera.
    #
    # @!attribute [rw] media_source_config
    #   The configuration details that consist of the credentials required
    #   (`MediaUriSecretArn` and `MediaUriType`) to access the media files
    #   streamed to the camera.
    #   @return [Types::MediaSourceConfig]
    #
    # @!attribute [rw] schedule_config
    #   The configuration that consists of the `ScheduleExpression` and the
    #   `DurationInMinutes` details that specify the scheduling to record
    #   from a camera, or local media file, onto the Edge Agent. If the
    #   `ScheduleExpression` attribute is not provided, then the Edge Agent
    #   will always be set to recording mode.
    #   @return [Types::ScheduleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/RecorderConfig AWS API Documentation
    #
    class RecorderConfig < Struct.new(
      :media_source_config,
      :schedule_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the endpoint of the signaling channel
    # returned by the `GetSignalingChannelEndpoint` API.
    #
    # The media server endpoint will correspond to the `WEBRTC` Protocol.
    #
    # @!attribute [rw] protocol
    #   The protocol of the signaling channel returned by the
    #   `GetSignalingChannelEndpoint` API.
    #   @return [String]
    #
    # @!attribute [rw] resource_endpoint
    #   The endpoint of the signaling channel returned by the
    #   `GetSignalingChannelEndpoint` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ResourceEndpointListItem AWS API Documentation
    #
    class ResourceEndpointListItem < Struct.new(
      :protocol,
      :resource_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # When the input `StreamARN` or `ChannelARN` in `CLOUD_STORAGE_MODE` is
    # already mapped to a different Kinesis Video Stream resource, or if the
    # provided input `StreamARN` or `ChannelARN` is not in Active status,
    # try one of the following :
    #
    # 1.  The `DescribeMediaStorageConfiguration` API to determine what the
    #     stream given channel is mapped to.
    #
    # 2.  The `DescribeMappedResourceConfiguration` API to determine the
    #     channel that the given stream is mapped to.
    #
    # 3.  The `DescribeStream` or `DescribeSignalingChannel` API to
    #     determine the status of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Kinesis Video Streams can't find the stream that you
    # specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This API enables you to specify the duration that the camera, or local
    # media file, should record onto the Edge Agent. The `ScheduleConfig`
    # consists of the `ScheduleExpression` and the `DurationInMinutes`
    # attributes.
    #
    # If the `ScheduleConfig` is not provided in the `RecorderConfig`, then
    # the Edge Agent will always be set to recording mode.
    #
    # If the `ScheduleConfig` is not provided in the `UploaderConfig`, then
    # the Edge Agent will upload at regular intervals (every 1 hour).
    #
    # @!attribute [rw] schedule_expression
    #   The Quartz cron expression that takes care of scheduling jobs to
    #   record from the camera, or local media file, onto the Edge Agent. If
    #   the `ScheduleExpression` is not provided for the `RecorderConfig`,
    #   then the Edge Agent will always be set to recording mode.
    #
    #   For more information about Quartz, refer to the [ *Cron Trigger
    #   Tutorial* ][1] page to understand the valid expressions and its use.
    #
    #
    #
    #   [1]: http://www.quartz-scheduler.org/documentation/quartz-2.3.0/tutorials/crontrigger.html
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The total duration to record the media. If the `ScheduleExpression`
    #   attribute is provided, then the `DurationInSeconds` attribute should
    #   also be specified.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ScheduleConfig AWS API Documentation
    #
    class ScheduleConfig < Struct.new(
      :schedule_expression,
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the endpoint configuration for the
    # `SINGLE_MASTER` channel type.
    #
    # @!attribute [rw] protocols
    #   This property is used to determine the nature of communication over
    #   this `SINGLE_MASTER` signaling channel. If `WSS` is specified, this
    #   API returns a websocket endpoint. If `HTTPS` is specified, this API
    #   returns an `HTTPS` endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   This property is used to determine messaging permissions in this
    #   `SINGLE_MASTER` signaling channel. If `MASTER` is specified, this
    #   API returns an endpoint that a client can use to receive offers from
    #   and send answers to any of the viewers on this signaling channel. If
    #   `VIEWER` is specified, this API returns an endpoint that a client
    #   can use only to send offers to another `MASTER` client on this
    #   signaling channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/SingleMasterChannelEndpointConfiguration AWS API Documentation
    #
    class SingleMasterChannelEndpointConfiguration < Struct.new(
      :protocols,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration for the `SINGLE_MASTER`
    # channel type.
    #
    # @!attribute [rw] message_ttl_seconds
    #   The period of time a signaling channel retains undelivered messages
    #   before they are discarded.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/SingleMasterConfiguration AWS API Documentation
    #
    class SingleMasterConfiguration < Struct.new(
      :message_ttl_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream whose edge configuration you want to update.
    #   Specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] edge_config
    #   The edge configuration details required to invoke the update
    #   process.
    #   @return [Types::EdgeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StartEdgeConfigurationUpdateInput AWS API Documentation
    #
    class StartEdgeConfigurationUpdateInput < Struct.new(
      :stream_name,
      :stream_arn,
      :edge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream from which the edge configuration was
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp at which a stream’s edge configuration was first
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp at which a stream’s edge configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] sync_status
    #   The current sync status of the stream's edge configuration. When
    #   you invoke this API, the sync status will be set to the `SYNCING`
    #   state. Use the `DescribeEdgeConfiguration` API to get the latest
    #   status of the edge configuration.
    #   @return [String]
    #
    # @!attribute [rw] failed_status_details
    #   A description of the generated failure status.
    #   @return [String]
    #
    # @!attribute [rw] edge_config
    #   A description of the stream's edge configuration that will be used
    #   to sync with the Edge Agent IoT Greengrass component. The Edge Agent
    #   component will run on an IoT Hub Device setup at your premise.
    #   @return [Types::EdgeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StartEdgeConfigurationUpdateOutput AWS API Documentation
    #
    class StartEdgeConfigurationUpdateOutput < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Exception rendered when the Amazon Kinesis Video Stream can't
    # find a stream's edge configuration that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StreamEdgeConfigurationNotFoundException AWS API Documentation
    #
    class StreamEdgeConfigurationNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object describing a Kinesis video stream.
    #
    # @!attribute [rw] device_name
    #   The name of the device that is associated with the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   The `MediaType` of the stream.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Key Management Service (KMS) key that Kinesis Video
    #   Streams uses to encrypt data on the stream.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the stream.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp that indicates when the stream was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_retention_in_hours
    #   How long the stream retains data, in hours.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StreamInfo AWS API Documentation
    #
    class StreamInfo < Struct.new(
      :device_name,
      :stream_name,
      :stream_arn,
      :media_type,
      :kms_key_id,
      :version,
      :status,
      :creation_time,
      :data_retention_in_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the condition that streams must satisfy to be returned when
    # you list streams (see the `ListStreams` API). A condition has a
    # comparison operation and a value. Currently, you can specify only the
    # `BEGINS_WITH` operator, which finds streams whose names start with a
    # given prefix.
    #
    # @!attribute [rw] comparison_operator
    #   A comparison operator. Currently, you can specify only the
    #   `BEGINS_WITH` operator, which finds streams whose names start with a
    #   given prefix.
    #   @return [String]
    #
    # @!attribute [rw] comparison_value
    #   A value to compare.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StreamNameCondition AWS API Documentation
    #
    class StreamNameCondition < Struct.new(
      :comparison_operator,
      :comparison_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key and value pair that is associated with the specified signaling
    # channel.
    #
    # @!attribute [rw] key
    #   The key of the tag that is associated with the specified signaling
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag that is associated with the specified signaling
    #   channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel to which you
    #   want to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the specified signaling channel.
    #   Each tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   the tag or tags to.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the stream that you want to add the tag or tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStreamInput AWS API Documentation
    #
    class TagStreamInput < Struct.new(
      :stream_arn,
      :stream_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStreamOutput AWS API Documentation
    #
    class TagStreamOutput < Aws::EmptyStructure; end

    # You have exceeded the limit of tags that you can associate with the
    # resource. A Kinesis video stream can support up to 50 tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagsPerResourceExceededLimitException AWS API Documentation
    #
    class TagsPerResourceExceededLimitException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel from which
    #   you want to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_key_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to remove
    #   tags from.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the stream that you want to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagStreamInput AWS API Documentation
    #
    class UntagStreamInput < Struct.new(
      :stream_arn,
      :stream_name,
      :tag_key_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagStreamOutput AWS API Documentation
    #
    class UntagStreamOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_name
    #   The name of the stream whose retention period you want to change.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream whose retention period
    #   you want to change.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of the stream whose retention period you want to change.
    #   To get the version, call either the `DescribeStream` or the
    #   `ListStreams` API.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Indicates whether you want to increase or decrease the retention
    #   period.
    #   @return [String]
    #
    # @!attribute [rw] data_retention_change_in_hours
    #   The retention period, in hours. The value you specify replaces the
    #   current value. The maximum value for this parameter is 87600 (ten
    #   years).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetentionInput AWS API Documentation
    #
    class UpdateDataRetentionInput < Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :operation,
      :data_retention_change_in_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetentionOutput AWS API Documentation
    #
    class UpdateDataRetentionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_name
    #   The name of the stream from which to update the image generation
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from
    #   where you want to update the image generation configuration. You
    #   must specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] image_generation_configuration
    #   The structure that contains the information required for the KVS
    #   images delivery. If the structure is null, the configuration will be
    #   deleted from the stream.
    #   @return [Types::ImageGenerationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateImageGenerationConfigurationInput AWS API Documentation
    #
    class UpdateImageGenerationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :image_generation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateImageGenerationConfigurationOutput AWS API Documentation
    #
    class UpdateImageGenerationConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the channel.
    #   @return [String]
    #
    # @!attribute [rw] media_storage_configuration
    #   A structure that encapsulates, or contains, the media storage
    #   configuration properties.
    #   @return [Types::MediaStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateMediaStorageConfigurationInput AWS API Documentation
    #
    class UpdateMediaStorageConfigurationInput < Struct.new(
      :channel_arn,
      :media_storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateMediaStorageConfigurationOutput AWS API Documentation
    #
    class UpdateMediaStorageConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_name
    #   The name of the stream from which to update the notification
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from
    #   where you want to update the notification configuration. You must
    #   specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration
    #   The structure containing the information required for notifications.
    #   If the structure is null, the configuration will be deleted from the
    #   stream.
    #   @return [Types::NotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateNotificationConfigurationInput AWS API Documentation
    #
    class UpdateNotificationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :notification_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateNotificationConfigurationOutput AWS API Documentation
    #
    class UpdateNotificationConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the signaling channel that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] single_master_configuration
    #   The structure containing the configuration for the `SINGLE_MASTER`
    #   type of the signaling channel that you want to update.
    #   @return [Types::SingleMasterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateSignalingChannelInput AWS API Documentation
    #
    class UpdateSignalingChannelInput < Struct.new(
      :channel_arn,
      :current_version,
      :single_master_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateSignalingChannelOutput AWS API Documentation
    #
    class UpdateSignalingChannelOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stream_name
    #   The name of the stream whose metadata you want to update.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the stream whose metadata you want to update.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of the stream whose metadata you want to update.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use
    #   this name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   The stream's media type. Use `MediaType` to specify the type of
    #   content that the stream contains to the consumers of the stream. For
    #   more information about media types, see [Media Types][1]. If you
    #   choose to specify the `MediaType`, see [Naming Requirements][2].
    #
    #   To play video on the console, you must specify the correct video
    #   type. For example, if the video in the stream is H.264, specify
    #   `video/h264` as the `MediaType`.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStreamInput AWS API Documentation
    #
    class UpdateStreamInput < Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :device_name,
      :media_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStreamOutput AWS API Documentation
    #
    class UpdateStreamOutput < Aws::EmptyStructure; end

    # The configuration that consists of the `ScheduleExpression` and the
    # `DurationInMinutes` details that specify the scheduling to record from
    # a camera, or local media file, onto the Edge Agent. If the
    # `ScheduleConfig` is not provided in the `UploaderConfig`, then the
    # Edge Agent will upload at regular intervals (every 1 hour).
    #
    # @!attribute [rw] schedule_config
    #   The configuration that consists of the `ScheduleExpression` and the
    #   `DurationInMinutes` details that specify the scheduling to record
    #   from a camera, or local media file, onto the Edge Agent. If the
    #   `ScheduleConfig` is not provided in this `UploaderConfig`, then the
    #   Edge Agent will upload at regular intervals (every 1 hour).
    #   @return [Types::ScheduleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UploaderConfig AWS API Documentation
    #
    class UploaderConfig < Struct.new(
      :schedule_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stream version that you specified is not the latest version. To
    # get the latest version, use the [DescribeStream][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/VersionMismatchException AWS API Documentation
    #
    class VersionMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
