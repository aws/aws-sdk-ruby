# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideo
  module Types

    # @note When making an API call, you may pass CreateStreamInput
    #   data as a hash:
    #
    #       {
    #         device_name: "DeviceName",
    #         stream_name: "StreamName", # required
    #         media_type: "MediaType",
    #         kms_key_id: "KmsKeyId",
    #         data_retention_in_hours: 1,
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
    #   To play video on the console, the media must be H.264 encoded, and
    #   you need to specify this video type in this parameter as
    #   `video/h264`.
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
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStreamInput AWS API Documentation
    #
    class CreateStreamInput < Struct.new(
      :device_name,
      :stream_name,
      :media_type,
      :kms_key_id,
      :data_retention_in_hours)
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStreamOutput AWS API Documentation
    #
    class DeleteStreamOutput < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataEndpointInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         api_name: "PUT_MEDIA", # required, accepts PUT_MEDIA, GET_MEDIA, LIST_FRAGMENTS, GET_MEDIA_FOR_FRAGMENT_LIST, GET_HLS_STREAMING_SESSION_URL
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStreamOutput AWS API Documentation
    #
    class TagStreamOutput < Aws::EmptyStructure; end

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
    #   current value.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetentionOutput AWS API Documentation
    #
    class UpdateDataRetentionOutput < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStreamOutput AWS API Documentation
    #
    class UpdateStreamOutput < Aws::EmptyStructure; end

  end
end
