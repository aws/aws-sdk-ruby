# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    # this AWS account in this region.
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
    # @note When making an API call, you may pass ChannelNameCondition
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #         comparison_value: "ChannelName",
    #       }
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

    # @note When making an API call, you may pass CreateSignalingChannelInput
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName", # required
    #         channel_type: "SINGLE_MASTER", # accepts SINGLE_MASTER
    #         single_master_configuration: {
    #           message_ttl_seconds: 1,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] channel_name
    #   A name for the signaling channel that you are creating. It must be
    #   unique for each AWS account and AWS Region.
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

    # @note When making an API call, you may pass CreateStreamInput
    #   data as a hash:
    #
    #       {
    #         device_name: "DeviceName",
    #         stream_name: "StreamName", # required
    #         media_type: "MediaType",
    #         kms_key_id: "KmsKeyId",
    #         data_retention_in_hours: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
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
    #   The ID of the AWS Key Management Service (AWS KMS) key that you want
    #   Kinesis Video Streams to use to encrypt stream data.
    #
    #   If no key ID is specified, the default, Kinesis Video-managed key
    #   (`aws/kinesisvideo`) is used.
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

    # @note When making an API call, you may pass DeleteSignalingChannelInput
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ResourceARN", # required
    #         current_version: "Version",
    #       }
    #
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

    # @note When making an API call, you may pass DeleteStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "ResourceARN", # required
    #         current_version: "Version",
    #       }
    #
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

    # @note When making an API call, you may pass DescribeSignalingChannelInput
    #   data as a hash:
    #
    #       {
    #         channel_name: "ChannelName",
    #         channel_arn: "ResourceARN",
    #       }
    #
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

    # @note When making an API call, you may pass DescribeStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #       }
    #
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

    # @note When making an API call, you may pass GetDataEndpointInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         api_name: "PUT_MEDIA", # required, accepts PUT_MEDIA, GET_MEDIA, LIST_FRAGMENTS, GET_MEDIA_FOR_FRAGMENT_LIST, GET_HLS_STREAMING_SESSION_URL, GET_DASH_STREAMING_SESSION_URL, GET_CLIP
    #       }
    #
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

    # @note When making an API call, you may pass GetSignalingChannelEndpointInput
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ResourceARN", # required
    #         single_master_channel_endpoint_configuration: {
    #           protocols: ["WSS"], # accepts WSS, HTTPS
    #           role: "MASTER", # accepts MASTER, VIEWER
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass ListSignalingChannelsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         channel_name_condition: {
    #           comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #           comparison_value: "ChannelName",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass ListStreamsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         stream_name_condition: {
    #           comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #           comparison_value: "StreamName",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         resource_arn: "ResourceARN", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForStreamInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         stream_arn: "ResourceARN",
    #         stream_name: "StreamName",
    #       }
    #
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

    # An object that describes the endpoint of the signaling channel
    # returned by the `GetSignalingChannelEndpoint` API.
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

    # The signaling channel is currently not available for this operation.
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

    # An object that contains the endpoint configuration for the
    # `SINGLE_MASTER` channel type.
    #
    # @note When making an API call, you may pass SingleMasterChannelEndpointConfiguration
    #   data as a hash:
    #
    #       {
    #         protocols: ["WSS"], # accepts WSS, HTTPS
    #         role: "MASTER", # accepts MASTER, VIEWER
    #       }
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
    # @note When making an API call, you may pass SingleMasterConfiguration
    #   data as a hash:
    #
    #       {
    #         message_ttl_seconds: 1,
    #       }
    #
    # @!attribute [rw] message_ttl_seconds
    #   The period of time a signaling channel retains underlivered messages
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
    #   The ID of the AWS Key Management Service (AWS KMS) key that Kinesis
    #   Video Streams uses to encrypt data on the stream.
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
    # @note When making an API call, you may pass StreamNameCondition
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #         comparison_value: "StreamName",
    #       }
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
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass TagStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "ResourceARN",
    #         stream_name: "StreamName",
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    # resource. Kinesis video streams support up to 50 tags.
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

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tag_key_list: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UntagStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "ResourceARN",
    #         stream_name: "StreamName",
    #         tag_key_list: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateDataRetentionInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         current_version: "Version", # required
    #         operation: "INCREASE_DATA_RETENTION", # required, accepts INCREASE_DATA_RETENTION, DECREASE_DATA_RETENTION
    #         data_retention_change_in_hours: 1, # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateSignalingChannelInput
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ResourceARN", # required
    #         current_version: "Version", # required
    #         single_master_configuration: {
    #           message_ttl_seconds: 1,
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UpdateStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         current_version: "Version", # required
    #         device_name: "DeviceName",
    #         media_type: "MediaType",
    #       }
    #
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
