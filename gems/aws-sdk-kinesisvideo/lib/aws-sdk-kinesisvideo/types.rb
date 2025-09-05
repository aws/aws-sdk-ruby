# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideo
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have required permissions to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum limit of active signaling channels for this Amazon Web Services account
    #             in this region.</p>
    # @!attribute message
    #   @return [String]
    class AccountChannelLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of streams created for the account is too high.</p>
    # @!attribute message
    #   @return [String]
    class AccountStreamLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that encapsulates a signaling channel's metadata and properties.</p>
    # @!attribute channel_name
    #   <p>The name of the signaling channel.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel.</p>
    #   @return [String]
    # @!attribute channel_type
    #   <p>The type of the signaling channel.</p>
    #   @return [String]
    # @!attribute channel_status
    #   <p>Current status of the signaling channel.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the signaling channel was created.</p>
    #   @return [Time]
    # @!attribute single_master_configuration
    #   <p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
    #               type.</p>
    #   @return [Types::SingleMasterConfiguration]
    # @!attribute version
    #   <p>The current version of the signaling channel.</p>
    #   @return [String]
    class ChannelInfo < Struct.new(
      :channel_name,
      :channel_arn,
      :channel_type,
      :channel_status,
      :creation_time,
      :single_master_configuration,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An optional input parameter for the <code>ListSignalingChannels</code> API. When this
    #             parameter is specified while invoking <code>ListSignalingChannels</code>, the API
    #             returns only the channels that satisfy a condition specified in
    #                 <code>ChannelNameCondition</code>.</p>
    # @!attribute comparison_operator
    #   <p>A comparison operator. Currently, you can only specify the <code>BEGINS_WITH</code>
    #               operator, which finds signaling channels whose names begin with a given prefix.</p>
    #   @return [String]
    # @!attribute comparison_value
    #   <p>A value to compare.</p>
    #   @return [String]
    class ChannelNameCondition < Struct.new(
      :comparison_operator,
      :comparison_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of
    #             allowed client calls. Try making the call later.</p>
    # @!attribute message
    #   @return [String]
    class ClientLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>A name for the signaling channel that you are creating. It must be unique for each Amazon Web Services account and Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute channel_type
    #   <p>A type of the signaling channel that you are creating. Currently,
    #                   <code>SINGLE_MASTER</code> is the only supported channel type. </p>
    #   @return [String]
    # @!attribute single_master_configuration
    #   <p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel
    #               type. </p>
    #   @return [Types::SingleMasterConfiguration]
    # @!attribute tags
    #   <p>A set of tags (key-value pairs) that you want to associate with this channel.</p>
    #   @return [Array<Types::Tag>]
    class CreateSignalingChannelInput < Struct.new(
      :channel_name,
      :channel_type,
      :single_master_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the created channel.</p>
    #   @return [String]
    class CreateSignalingChannelOutput < Struct.new(
      :channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #            <note>
    #               <p>In the current implementation, Kinesis Video Streams does not use this
    #                   name.</p>
    #            </note>
    #   @return [String]
    # @!attribute stream_name
    #   <p>A name for the stream that you are creating.</p>
    #            <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #   @return [String]
    # @!attribute media_type
    #   <p>The media type of the stream. Consumers of the stream can use this information when
    #               processing the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming Requirements</a>
    #               for guidelines.</p>
    #            <p>Example valid values include "video/h264" and "video/h264,audio/aac".</p>
    #            <p>This parameter is optional; the default value is <code>null</code> (or empty in
    #               JSON).</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that you want Kinesis Video
    #               Streams to use to encrypt stream data.</p>
    #            <p>If no key ID is specified, the default, Kinesis Video-managed key
    #               (<code>Amazon Web Services/kinesisvideo</code>) is used.</p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">DescribeKey</a>. </p>
    #   @return [String]
    # @!attribute data_retention_in_hours
    #   <p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p>
    #            <p>The default value is 0, indicating that the stream does not persist data.</p>
    #            <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume
    #               the fragments that remain in the service host buffer, which has a retention time limit
    #               of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the
    #               buffer when either limit is reached.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #   @return [Hash<String, String>]
    class CreateStreamInput < Struct.new(
      :device_name,
      :stream_name,
      :media_type,
      :kms_key_id,
      :data_retention_in_hours,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    class CreateStreamOutput < Struct.new(
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to delete the edge configuration. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    class DeleteEdgeConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteEdgeConfigurationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               delete.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the signaling channel that you want to delete. You can obtain
    #               the current version by invoking the <code>DescribeSignalingChannel</code> or
    #                   <code>ListSignalingChannels</code> API operations.</p>
    #   @return [String]
    class DeleteSignalingChannelInput < Struct.new(
      :channel_arn,
      :current_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSignalingChannelOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>
    #   @return [String]
    # @!attribute current_version
    #   <p>Optional: The version of the stream that you want to delete. </p>
    #            <p>Specify the version as a safeguard to ensure that your are deleting the correct
    #               stream. To get the stream version, use the <code>DescribeStream</code> API.</p>
    #            <p>If not specified, only the <code>CreationTime</code> is checked before deleting the
    #               stream.</p>
    #   @return [String]
    class DeleteStreamInput < Struct.new(
      :stream_arn,
      :current_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteStreamOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details required to delete the connection of the stream from the Edge Agent.</p>
    # @!attribute edge_retention_in_hours
    #   <p>The number of hours that you want to retain the data in the stream on the Edge Agent. The default value of the retention
    #               time is 720 hours, which translates to 30 days.</p>
    #   @return [Integer]
    # @!attribute local_size_config
    #   <p>The value of the local size required in order to delete the edge configuration.</p>
    #   @return [Types::LocalSizeConfig]
    # @!attribute delete_after_upload
    #   <p>The <code>boolean</code> value used to indicate whether or not you want to mark the media for deletion, once it has been uploaded to 
    #               the Kinesis Video Stream cloud. The media files can be deleted if any of the deletion configuration values are 
    #               set to <code>true</code>, such as when the limit for the <code>EdgeRetentionInHours</code>, or the
    #               <code>MaxLocalMediaSizeInMB</code>, has been reached. 
    #           </p>
    #            <p>Since the default value is set to <code>true</code>, configure the uploader schedule such 
    #               that the media files are not being deleted before they are initially uploaded to the  Amazon Web Services cloud.</p>
    #   @return [Boolean]
    class DeletionConfig < Struct.new(
      :edge_retention_in_hours,
      :local_size_config,
      :delete_after_upload,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code> or 
    #               the <code>StreamARN</code>.
    #           </p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code>or the <code>StreamARN</code>.</p>
    #   @return [String]
    class DescribeEdgeConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which the edge configuration was updated.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp at which a stream’s edge configuration was first created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp at which a stream’s edge configuration was last updated.</p>
    #   @return [Time]
    # @!attribute sync_status
    #   <p>The latest status of the edge configuration update.</p>
    #   @return [String]
    # @!attribute failed_status_details
    #   <p>A description of the generated failure status.</p>
    #   @return [String]
    # @!attribute edge_config
    #   <p>A description of the stream's edge configuration that will be used to sync 
    #               with the Edge Agent IoT Greengrass component. The Edge Agent component will run
    #               on an IoT Hub Device setup at your premise.</p>
    #   @return [Types::EdgeConfig]
    # @!attribute edge_agent_status
    #   <p>An object that contains the latest status details for an edge agent's recorder and uploader jobs. Use this information to determine the current health of an edge agent.</p>
    #   @return [Types::EdgeAgentStatus]
    class DescribeEdgeConfigurationOutput < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config,
      :edge_agent_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.  </p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    class DescribeImageGenerationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_generation_configuration
    #   <p>The structure that contains the information required for the Kinesis video stream (KVS) images delivery. If this structure is null, the configuration will be deleted from the stream.</p>
    #   @return [Types::ImageGenerationConfiguration]
    class DescribeImageGenerationConfigurationOutput < Struct.new(
      :image_generation_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to provide in your next request, to get another batch of results.</p>
    #   @return [String]
    class DescribeMappedResourceConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute mapped_resource_configuration_list
    #   <p>A structure that encapsulates, or contains, the media storage configuration properties.</p>
    #   @return [Array<Types::MappedResourceConfigurationListItem>]
    # @!attribute next_token
    #   <p>The token that was used in the <code>NextToken</code>request to fetch the next set of results. </p>
    #   @return [String]
    class DescribeMappedResourceConfigurationOutput < Struct.new(
      :mapped_resource_configuration_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the channel.</p>
    #   @return [String]
    class DescribeMediaStorageConfigurationInput < Struct.new(
      :channel_name,
      :channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_storage_configuration
    #   <p>A structure that encapsulates, or contains, the media storage configuration properties.</p>
    #   @return [Types::MediaStorageConfiguration]
    class DescribeMediaStorageConfigurationOutput < Struct.new(
      :media_storage_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the StreamARN.</p>
    #   @return [String]
    class DescribeNotificationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute notification_configuration
    #   <p>The structure that contains the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    #   @return [Types::NotificationConfiguration]
    class DescribeNotificationConfigurationOutput < Struct.new(
      :notification_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_name
    #   <p>The name of the signaling channel that you want to describe.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The ARN of the signaling channel that you want to describe.</p>
    #   @return [String]
    class DescribeSignalingChannelInput < Struct.new(
      :channel_name,
      :channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_info
    #   <p>A structure that encapsulates the specified signaling channel's metadata and
    #               properties.</p>
    #   @return [Types::ChannelInfo]
    class DescribeSignalingChannelOutput < Struct.new(
      :channel_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    class DescribeStreamInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_info
    #   <p>An object that describes the stream.</p>
    #   @return [Types::StreamInfo]
    class DescribeStreamOutput < Struct.new(
      :stream_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Not implemented.
    #             </p>
    # @!attribute message
    #   @return [String]
    class DeviceStreamLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the latest status details for an edge agent's recorder and uploader jobs. Use this information to determine the current health of an edge agent.</p>
    # @!attribute last_recorder_status
    #   <p>The latest status of a stream’s edge recording job.</p>
    #   @return [Types::LastRecorderStatus]
    # @!attribute last_uploader_status
    #   <p>The latest status of a stream’s edge to cloud uploader job.</p>
    #   @return [Types::LastUploaderStatus]
    class EdgeAgentStatus < Struct.new(
      :last_recorder_status,
      :last_uploader_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the stream's edge configuration that will be used to sync 
    #             with the Edge Agent IoT Greengrass component. The Edge Agent component will run
    #             on an IoT Hub Device setup at your premise.</p>
    # @!attribute hub_device_arn
    #   <p>The "<b>Internet of Things (IoT) Thing</b>" Arn of the stream.</p>
    #   @return [String]
    # @!attribute recorder_config
    #   <p>The recorder configuration consists of the local <code>MediaSourceConfig</code> details, that are used as 
    #               credentials to access the local media files streamed on the camera. </p>
    #   @return [Types::RecorderConfig]
    # @!attribute uploader_config
    #   <p>The uploader configuration contains the <code>ScheduleExpression</code> details that are used to
    #               schedule upload jobs for the recorded media files from the Edge Agent to a Kinesis Video Stream.</p>
    #   @return [Types::UploaderConfig]
    # @!attribute deletion_config
    #   <p>The deletion configuration is made up of the retention time (<code>EdgeRetentionInHours</code>) and local size configuration
    #           (<code>LocalSizeConfig</code>) details that are used to make the deletion.</p>
    #   @return [Types::DeletionConfig]
    class EdgeConfig < Struct.new(
      :hub_device_arn,
      :recorder_config,
      :uploader_config,
      :deletion_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream that you want to get the endpoint for. You must specify
    #               either this parameter or a <code>StreamARN</code> in the request.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.
    #               You must specify either this parameter or a <code>StreamName</code> in the request.
    #           </p>
    #   @return [String]
    # @!attribute api_name
    #   <p>The name of the API action for which to get an endpoint.</p>
    #   @return [String]
    class GetDataEndpointInput < Struct.new(
      :stream_name,
      :stream_arn,
      :api_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_endpoint
    #   <p>The endpoint value. To read data from the stream or to write data to it, specify
    #               this endpoint in your application.</p>
    #   @return [String]
    class GetDataEndpointOutput < Struct.new(
      :data_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an
    #               endpoint.</p>
    #   @return [String]
    # @!attribute single_master_channel_endpoint_configuration
    #   <p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>
    #               channel type.</p>
    #   @return [Types::SingleMasterChannelEndpointConfiguration]
    class GetSignalingChannelEndpointInput < Struct.new(
      :channel_arn,
      :single_master_channel_endpoint_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_endpoint_list
    #   <p>A list of endpoints for the specified signaling channel.</p>
    #   @return [Array<Types::ResourceEndpointListItem>]
    class GetSignalingChannelEndpointOutput < Struct.new(
      :resource_endpoint_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains the information required for the KVS images delivery. If null, the configuration will be deleted from the stream.</p>
    # @!attribute status
    #   <p>Indicates whether the <code>ContinuousImageGenerationConfigurations</code> API is enabled or disabled.</p>
    #   @return [String]
    # @!attribute image_selector_type
    #   <p>The origin of the Server or Producer timestamps to use to generate the images.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>The structure that contains the information required to deliver images to a customer.</p>
    #   @return [Types::ImageGenerationDestinationConfig]
    # @!attribute sampling_interval
    #   <p>The time interval in milliseconds (ms) at which the images need to be generated from the stream. The minimum value that can be provided is 200 ms. If the timestamp range is less than the sampling interval, the 
    #               Image from the <code>StartTimestamp</code> will be returned if available. </p>
    #   @return [Integer]
    # @!attribute format
    #   <p>The accepted image format.</p>
    #   @return [String]
    # @!attribute format_config
    #   <p>The list of a key-value pair structure that contains extra parameters that can be applied when the image is generated.
    #               The <code>FormatConfig</code> key is the <code>JPEGQuality</code>, which indicates the JPEG quality key to be used to generate the image. 
    #               The <code>FormatConfig</code> value accepts ints from 1 to 100. If the value is 1, the image will be generated with less quality and the best compression. 
    #               If the value is 100, the image will be generated with the best quality and less compression. If no value is provided, the default value of the <code>JPEGQuality</code>
    #               key will be set to 80.</p>
    #   @return [Hash<String, String>]
    # @!attribute width_pixels
    #   <p>The width of the output image that is used in conjunction with the <code>HeightPixels</code> parameter. When both <code>WidthPixels</code> and 
    #               <code>HeightPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio. If only the <code>WidthPixels</code> parameter is 
    #               provided, its original aspect ratio will be used to calculate the <code>HeightPixels</code> ratio. If neither parameter is provided, the original image size will be returned.</p>
    #   @return [Integer]
    # @!attribute height_pixels
    #   <p>The height of the output image that is used in conjunction with the <code>WidthPixels</code> parameter. When both
    #               <code>HeightPixels</code> and <code>WidthPixels</code> parameters are provided, the image will be stretched to fit the specified aspect ratio. 
    #               If only the <code>HeightPixels</code> parameter is provided, its original aspect ratio will be used to calculate the <code>WidthPixels</code> ratio.
    #               If neither parameter is provided, the original image size will be returned.</p>
    #   @return [Integer]
    class ImageGenerationConfiguration < Struct.new(
      :status,
      :image_selector_type,
      :destination_config,
      :sampling_interval,
      :format,
      :format_config,
      :width_pixels,
      :height_pixels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains the information required to deliver images to a customer.</p>
    # @!attribute uri
    #   <p>The Uniform Resource Identifier (URI) that identifies where the images will be delivered.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The Amazon Web Services Region of the S3 bucket where images will be delivered. This <code>DestinationRegion</code> must match the Region where the stream is located.</p>
    #   @return [String]
    class ImageGenerationDestinationConfig < Struct.new(
      :uri,
      :destination_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value for this input parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Not implemented.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDeviceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The format of the <code>StreamARN</code> is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourceFormatException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The latest status of a stream's edge recording job.</p>
    # @!attribute job_status_details
    #   <p>A description of a recorder job’s latest status.</p>
    #   @return [String]
    # @!attribute last_collected_time
    #   <p>The timestamp at which the recorder job was last executed and media stored to local disk.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp at which the recorder status was last updated.</p>
    #   @return [Time]
    # @!attribute recorder_status
    #   <p>The status of the latest recorder job.</p>
    #   @return [String]
    class LastRecorderStatus < Struct.new(
      :job_status_details,
      :last_collected_time,
      :last_updated_time,
      :recorder_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The latest status of a stream’s edge to cloud uploader job.</p>
    # @!attribute job_status_details
    #   <p>A description of an uploader job’s latest status.</p>
    #   @return [String]
    # @!attribute last_collected_time
    #   <p>The timestamp at which the uploader job was last executed and media collected to the cloud.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp at which the uploader status was last updated.</p>
    #   @return [Time]
    # @!attribute uploader_status
    #   <p>The status of the latest uploader job.</p>
    #   @return [String]
    class LastUploaderStatus < Struct.new(
      :job_status_details,
      :last_collected_time,
      :last_updated_time,
      :uploader_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a single stream's edge configuration.</p>
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the stream first created the edge config.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the stream last updated the edge config.</p>
    #   @return [Time]
    # @!attribute sync_status
    #   <p>The current sync status of the stream's edge configuration.</p>
    #   @return [String]
    # @!attribute failed_status_details
    #   <p>A description of the generated failure status.</p>
    #   @return [String]
    # @!attribute edge_config
    #   <p>A description of the stream's edge configuration that will be used to sync 
    #               with the Edge Agent IoT Greengrass component. The Edge Agent component will run
    #               on an IoT Hub Device setup at your premise.</p>
    #   @return [Types::EdgeConfig]
    class ListEdgeAgentConfigurationsEdgeConfig < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hub_device_arn
    #   <p>The "Internet of Things (IoT) Thing" Arn of the edge agent.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of edge configurations to return in the response. The default is 5.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you specify this parameter, when the result of a <code>ListEdgeAgentConfigurations</code> operation is truncated, the call returns the <code>NextToken</code> in the response. To get another batch of edge configurations, provide this token in your next request.
    #           </p>
    #   @return [String]
    class ListEdgeAgentConfigurationsInput < Struct.new(
      :hub_device_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute edge_configs
    #   <p>A description of a single stream's edge configuration.</p>
    #   @return [Array<Types::ListEdgeAgentConfigurationsEdgeConfig>]
    # @!attribute next_token
    #   <p>If the response is truncated, the call returns this element with a given token. To get the next batch of edge configurations, use this token in your next request.</p>
    #   @return [String]
    class ListEdgeAgentConfigurationsOutput < Struct.new(
      :edge_configs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of channels to return in the response. The default is 500.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of channels, provide this token in your next request.</p>
    #   @return [String]
    # @!attribute channel_name_condition
    #   <p>Optional: Returns only the channels that satisfy a specific condition.</p>
    #   @return [Types::ChannelNameCondition]
    class ListSignalingChannelsInput < Struct.new(
      :max_results,
      :next_token,
      :channel_name_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_info_list
    #   <p>An array of <code>ChannelInfo</code> objects.</p>
    #   @return [Array<Types::ChannelInfo>]
    # @!attribute next_token
    #   <p>If the response is truncated, the call returns this element with a token. To get the
    #               next batch of streams, use this token in your next request.</p>
    #   @return [String]
    class ListSignalingChannelsOutput < Struct.new(
      :channel_info_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of streams to return in the response. The default is
    #               10,000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you specify this parameter, when the result of a <code>ListStreams</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of streams, provide this token in your next request.</p>
    #   @return [String]
    # @!attribute stream_name_condition
    #   <p>Optional: Returns only streams that satisfy a specific condition. Currently, you
    #               can specify only the prefix of a stream name as a condition. </p>
    #   @return [Types::StreamNameCondition]
    class ListStreamsInput < Struct.new(
      :max_results,
      :next_token,
      :stream_name_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_info_list
    #   <p>An array of <code>StreamInfo</code> objects.</p>
    #   @return [Array<Types::StreamInfo>]
    # @!attribute next_token
    #   <p>If the response is truncated, the call returns this element with a token. To get
    #               the next batch of streams, use this token in your next request. </p>
    #   @return [String]
    class ListStreamsOutput < Struct.new(
      :stream_info_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list
    #               tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :next_token,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next set of tags. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the specified signaling channel.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :next_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForStream</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to list tags
    #               for.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the stream that you want to list tags for.</p>
    #   @return [String]
    class ListTagsForStreamInput < Struct.new(
      :next_token,
      :stream_arn,
      :stream_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify this parameter and the result of a <code>ListTags</code> call is
    #               truncated, the response includes a token that you can use in the next request to fetch
    #               the next set of tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the specified stream.</p>
    #   @return [Hash<String, String>]
    class ListTagsForStreamOutput < Struct.new(
      :next_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details that include the maximum size of the media 
    #             (<code>MaxLocalMediaSizeInMB</code>) that you want to
    #             store for a stream on the Edge Agent, as well as the strategy that should be used (<code>StrategyOnFullSize</code>) when a stream's
    #             maximum size has been reached.</p>
    # @!attribute max_local_media_size_in_mb
    #   <p>The overall maximum size of the media that you want to store for a stream on the Edge Agent. </p>
    #   @return [Integer]
    # @!attribute strategy_on_full_size
    #   <p>The strategy to perform when a stream’s <code>MaxLocalMediaSizeInMB</code> limit is reached.</p>
    #   @return [String]
    class LocalSizeConfig < Struct.new(
      :max_local_media_size_in_mb,
      :strategy_on_full_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that encapsulates, or contains, the media storage configuration properties.</p>
    # @!attribute type
    #   <p>The type of the associated resource for the kinesis video stream.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis Video Stream resource, associated with the stream.</p>
    #   @return [String]
    class MappedResourceConfigurationListItem < Struct.new(
      :type,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details that consist of the credentials required 
    #             (<code>MediaUriSecretArn</code> and <code>MediaUriType</code>) to access the media files that are 
    #             streamed to the camera.</p>
    # @!attribute media_uri_secret_arn
    #   <p>The Amazon Web Services Secrets Manager ARN for the username and password of the camera, or a local media file location.</p>
    #   @return [String]
    # @!attribute media_uri_type
    #   <p>The Uniform Resource Identifier (URI) type. The <code>FILE_URI</code> value can be used to stream 
    #               local media files.</p>
    #            <note>
    #               <p>Preview only supports the <code>RTSP_URI</code> media source URI format .</p>
    #            </note>
    #   @return [String]
    class MediaSourceConfig < Struct.new(
      :media_uri_secret_arn,
      :media_uri_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that encapsulates, or contains, the media storage configuration
    #             properties.</p>
    #          <ul>
    #             <li>
    #                <p>If <code>StorageStatus</code> is enabled, the data will be stored in the
    #                         <code>StreamARN</code> provided. In order for WebRTC Ingestion to work, the stream must have data retention
    #                     enabled.</p>
    #             </li>
    #             <li>
    #                <p>If <code>StorageStatus</code> is disabled, no data will be stored, and the
    #                         <code>StreamARN</code> parameter will not be needed. </p>
    #             </li>
    #          </ul>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the media storage configuration.</p>
    #   @return [String]
    class MediaStorageConfiguration < Struct.new(
      :stream_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Stream data retention in hours is equal to zero.</p>
    # @!attribute message
    #   @return [String]
    class NoDataRetentionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The caller is not authorized to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class NotAuthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains the notification information for the KVS images delivery. If this parameter is null, the configuration will be deleted from the stream.</p>
    # @!attribute status
    #   <p>Indicates if a notification configuration is enabled or disabled.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>The destination information required to deliver a notification to a customer.</p>
    #   @return [Types::NotificationDestinationConfig]
    class NotificationConfiguration < Struct.new(
      :status,
      :destination_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure that contains the information required to deliver a notification to a customer.</p>
    # @!attribute uri
    #   <p>The Uniform Resource Identifier (URI) that identifies where the images will be delivered.</p>
    #   @return [String]
    class NotificationDestinationConfig < Struct.new(
      :uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The recorder configuration consists of the local <code>MediaSourceConfig</code> details that are used as 
    #             credentials to accesss the local media files streamed on the camera. </p>
    # @!attribute media_source_config
    #   <p>The configuration details that consist of the credentials required 
    #               (<code>MediaUriSecretArn</code> and <code>MediaUriType</code>) to access the media files 
    #               streamed to the camera.
    #               </p>
    #   @return [Types::MediaSourceConfig]
    # @!attribute schedule_config
    #   <p>The configuration that consists of the <code>ScheduleExpression</code> and the 
    #               <code>DurationInMinutes</code> details that specify the scheduling to record from a camera, or
    #           local media file, onto the Edge Agent. If the <code>ScheduleExpression</code> attribute is not provided,
    #           then the Edge Agent will always be set to recording mode.</p>
    #   @return [Types::ScheduleConfig]
    class RecorderConfig < Struct.new(
      :media_source_config,
      :schedule_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the endpoint of the signaling channel returned by the
    #                 <code>GetSignalingChannelEndpoint</code> API.</p>
    #          <p>The media server endpoint will correspond to the <code>WEBRTC</code> Protocol.</p>
    # @!attribute protocol
    #   <p>The protocol of the signaling channel returned by the
    #                   <code>GetSignalingChannelEndpoint</code> API.</p>
    #   @return [String]
    # @!attribute resource_endpoint
    #   <p>The endpoint of the signaling channel returned by the
    #                   <code>GetSignalingChannelEndpoint</code> API.</p>
    #   @return [String]
    class ResourceEndpointListItem < Struct.new(
      :protocol,
      :resource_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>When the input <code>StreamARN</code> or <code>ChannelARN</code>
    #             in <code>CLOUD_STORAGE_MODE</code> is already mapped to a different
    #             Kinesis Video Stream resource, or if the provided input <code>StreamARN</code>
    #             or <code>ChannelARN</code> is not in Active status, try one of the following : </p>
    #          <ol>
    #             <li>
    #                <p>The <code>DescribeMediaStorageConfiguration</code> API to determine what the stream given channel is mapped to. 
    #             </p>
    #             </li>
    #             <li>
    #                <p>The <code>DescribeMappedResourceConfiguration</code> API to determine the channel that the given stream is mapped to. 
    #             </p>
    #             </li>
    #             <li>
    #                <p>The <code>DescribeStream</code> or <code>DescribeSignalingChannel</code> API to determine the status of the resource.
    #             </p>
    #             </li>
    #          </ol>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Kinesis Video Streams can't find the stream that you specified.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This API enables you to specify the duration that the camera,
    #             or local media file, should record onto the Edge Agent. The <code>ScheduleConfig</code> consists of the <code>ScheduleExpression</code> and the 
    #             <code>DurationInMinutes</code> attributes. </p>
    #          <p>If the <code>ScheduleConfig</code> is not provided in the <code>RecorderConfig</code>,
    #                 then the Edge Agent will always be set to recording mode.</p>
    #          <p>If the <code>ScheduleConfig</code> is not provided in the <code>UploaderConfig</code>,
    #             then the Edge Agent will upload at regular intervals (every 1 hour).</p>
    # @!attribute schedule_expression
    #   <p>The Quartz cron expression that takes care of scheduling jobs to record from the
    #               camera, or local media file, onto the Edge Agent. If the <code>ScheduleExpression</code> is not provided for the <code>RecorderConfig</code>,
    #               then the Edge Agent will always be set to recording mode.</p>
    #            <p>For more information about Quartz, refer to the 
    #               <a href="http://www.quartz-scheduler.org/documentation/quartz-2.3.0/tutorials/crontrigger.html">
    #                  <i>Cron Trigger Tutorial</i>
    #               </a> page to understand the valid expressions and its use.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The total duration to record the media. If the <code>ScheduleExpression</code> attribute is provided, then the
    #           <code>DurationInSeconds</code> attribute should also be specified.</p>
    #   @return [Integer]
    class ScheduleConfig < Struct.new(
      :schedule_expression,
      :duration_in_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains the endpoint configuration for the <code>SINGLE_MASTER</code>
    #             channel type. </p>
    # @!attribute protocols
    #   <p>This property is used to determine the nature of communication over this
    #                   <code>SINGLE_MASTER</code> signaling channel. If <code>WSS</code> is specified, this
    #               API returns a websocket endpoint. If <code>HTTPS</code> is specified, this API returns
    #               an <code>HTTPS</code> endpoint.</p>
    #   @return [Array<String>]
    # @!attribute role
    #   <p>This property is used to determine messaging permissions in this
    #                   <code>SINGLE_MASTER</code> signaling channel. If <code>MASTER</code> is specified,
    #               this API returns an endpoint that a client can use to receive offers from and send
    #               answers to any of the viewers on this signaling channel. If <code>VIEWER</code> is
    #               specified, this API returns an endpoint that a client can use only to send offers to
    #               another <code>MASTER</code> client on this signaling channel. </p>
    #   @return [String]
    class SingleMasterChannelEndpointConfiguration < Struct.new(
      :protocols,
      :role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration for the <code>SINGLE_MASTER</code> channel
    #             type.</p>
    # @!attribute message_ttl_seconds
    #   <p>The period of time a signaling channel retains undelivered messages before they are
    #               discarded.</p>
    #   @return [Integer]
    class SingleMasterConfiguration < Struct.new(
      :message_ttl_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code>
    #               or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream. Specify either the 
    #               <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute edge_config
    #   <p>The edge configuration details required to invoke the update process.</p>
    #   @return [Types::EdgeConfig]
    class StartEdgeConfigurationUpdateInput < Struct.new(
      :stream_name,
      :stream_arn,
      :edge_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which the edge configuration was updated.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp at which a stream’s edge configuration was first created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp at which a stream’s edge configuration was last updated.</p>
    #   @return [Time]
    # @!attribute sync_status
    #   <p> The current sync status of the stream's edge configuration. When you invoke this API, the sync
    #               status will be set to the <code>SYNCING</code> state. Use the <code>DescribeEdgeConfiguration</code> API
    #               to get the latest status of the edge configuration.</p>
    #   @return [String]
    # @!attribute failed_status_details
    #   <p>A description of the generated failure status.</p>
    #   @return [String]
    # @!attribute edge_config
    #   <p>A description of the stream's edge configuration that will be used to sync 
    #               with the Edge Agent IoT Greengrass component. The Edge Agent component will run
    #               on an IoT Hub Device setup at your premise.</p>
    #   @return [Types::EdgeConfig]
    class StartEdgeConfigurationUpdateOutput < Struct.new(
      :stream_name,
      :stream_arn,
      :creation_time,
      :last_updated_time,
      :sync_status,
      :failed_status_details,
      :edge_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Exception rendered when the Amazon Kinesis Video Stream can't find a stream's edge configuration
    #          that you specified. </p>
    # @!attribute message
    #   @return [String]
    class StreamEdgeConfigurationNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object describing a Kinesis video stream.</p>
    # @!attribute device_name
    #   <p>The name of the device that is associated with the stream.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute media_type
    #   <p>The <code>MediaType</code> of the stream. </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that Kinesis Video Streams
    #               uses to encrypt data on the stream.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the stream.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the stream.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp that indicates when the stream was created.</p>
    #   @return [Time]
    # @!attribute data_retention_in_hours
    #   <p>How long the stream retains data, in hours.</p>
    #   @return [Integer]
    class StreamInfo < Struct.new(
      :device_name,
      :stream_name,
      :stream_arn,
      :media_type,
      :kms_key_id,
      :version,
      :status,
      :creation_time,
      :data_retention_in_hours,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the condition that streams must satisfy to be returned when you list
    #             streams (see the <code>ListStreams</code> API). A condition has a comparison operation
    #             and a value. Currently, you can specify only the <code>BEGINS_WITH</code> operator,
    #             which finds streams whose names start with a given prefix. </p>
    # @!attribute comparison_operator
    #   <p>A comparison operator. Currently, you can specify only the <code>BEGINS_WITH</code>
    #               operator, which finds streams whose names start with a given prefix.</p>
    #   @return [String]
    # @!attribute comparison_value
    #   <p>A value to compare.</p>
    #   @return [String]
    class StreamNameCondition < Struct.new(
      :comparison_operator,
      :comparison_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key and value pair that is associated with the specified signaling channel.</p>
    # @!attribute key
    #   <p>The key of the tag that is associated with the specified signaling channel.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag that is associated with the specified signaling channel.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add
    #               tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the specified signaling channel. Each tag is a
    #               key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags
    #               to.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the stream that you want to add the tag or tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #   @return [Hash<String, String>]
    class TagStreamInput < Struct.new(
      :stream_arn,
      :stream_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagStreamOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the limit of tags that you can associate with the resource.
    #             A Kinesis video stream can support up to 50 tags. </p>
    # @!attribute message
    #   @return [String]
    class TagsPerResourceExceededLimitException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove
    #               tags.</p>
    #   @return [String]
    # @!attribute tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_key_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to remove tags
    #               from.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the stream that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagStreamInput < Struct.new(
      :stream_arn,
      :stream_name,
      :tag_key_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagStreamOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose retention period you want to change.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream whose retention period you want to
    #               change.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of the stream whose retention period you want to change. To get the
    #               version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>
    #               API.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>Indicates whether you want to increase or decrease the retention period.</p>
    #   @return [String]
    # @!attribute data_retention_change_in_hours
    #   <p>The number of hours to adjust the current retention by. The value you specify is added to or subtracted from the current value, depending on the <code>operation</code>.</p>
    #            <p>The minimum value for data retention is 0 and the maximum value is 87600 (ten years).</p>
    #   @return [Integer]
    class UpdateDataRetentionInput < Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :operation,
      :data_retention_change_in_hours,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDataRetentionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to update the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the image generation configuration. You must specify either the <code>StreamName</code> 
    #               or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute image_generation_configuration
    #   <p>The structure that contains the information required for the KVS images delivery. If the structure is null, the configuration will be deleted from the stream.</p>
    #   @return [Types::ImageGenerationConfiguration]
    class UpdateImageGenerationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :image_generation_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateImageGenerationConfigurationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the channel.</p>
    #   @return [String]
    # @!attribute media_storage_configuration
    #   <p>A structure that encapsulates, or contains, the media storage configuration properties.</p>
    #   @return [Types::MediaStorageConfiguration]
    class UpdateMediaStorageConfigurationInput < Struct.new(
      :channel_arn,
      :media_storage_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateMediaStorageConfigurationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream from which to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #   @return [String]
    # @!attribute notification_configuration
    #   <p>The structure containing the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    #   @return [Types::NotificationConfiguration]
    class UpdateNotificationConfigurationInput < Struct.new(
      :stream_name,
      :stream_arn,
      :notification_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateNotificationConfigurationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               update.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the signaling channel that you want to update.</p>
    #   @return [String]
    # @!attribute single_master_configuration
    #   <p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of
    #               the signaling channel that you want to update. </p>
    #   @return [Types::SingleMasterConfiguration]
    class UpdateSignalingChannelInput < Struct.new(
      :channel_arn,
      :current_version,
      :single_master_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateSignalingChannelOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream whose metadata you want to update.</p>
    #            <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream whose metadata you want to update.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of the stream whose metadata you want to update.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #            <note>
    #               <p> In the current implementation, Kinesis Video Streams does not use this name.
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute media_type
    #   <p>The stream's media type. Use <code>MediaType</code> to specify the type of content
    #               that the stream contains to the consumers of the stream. For more information about
    #               media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming
    #               Requirements</a>.</p>
    #            <p>To play video on the console, you must specify the correct video type. For example,
    #               if the video in the stream is H.264, specify <code>video/h264</code> as the
    #                   <code>MediaType</code>.</p>
    #   @return [String]
    class UpdateStreamInput < Struct.new(
      :stream_name,
      :stream_arn,
      :current_version,
      :device_name,
      :media_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateStreamOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that consists of the <code>ScheduleExpression</code>
    #             and the <code>DurationInMinutes</code> details that specify the scheduling to record from a camera,
    #             or local media file, onto the Edge Agent. If the <code>ScheduleConfig</code>
    #             is not provided in the <code>UploaderConfig</code>, then the Edge Agent will upload at regular intervals (every 1 hour).
    #         </p>
    # @!attribute schedule_config
    #   <p>The configuration that consists of the <code>ScheduleExpression</code> and the 
    #               <code>DurationInMinutes</code> details that specify the scheduling to record from a camera, or
    #               local media file, onto the Edge Agent. If the <code>ScheduleConfig</code> is not provided in this <code>UploaderConfig</code>,
    #               then the Edge Agent will upload at regular intervals (every 1 hour).</p>
    #   @return [Types::ScheduleConfig]
    class UploaderConfig < Struct.new(
      :schedule_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The stream version that you specified is not the latest version. To get the latest
    #             version, use the <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html">DescribeStream</a>
    #             API.</p>
    # @!attribute message
    #   @return [String]
    class VersionMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
