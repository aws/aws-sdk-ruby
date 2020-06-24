# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoMedia
  module Types

    # Kinesis Video Streams has throttled the request because you have
    # exceeded the limit of allowed client calls. Try making the call later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/ClientLimitExceededException AWS API Documentation
    #
    class ClientLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Kinesis Video Streams has throttled the request because you have
    # exceeded the limit of allowed client connections.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/ConnectionLimitExceededException AWS API Documentation
    #
    class ConnectionLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMediaInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         start_selector: { # required
    #           start_selector_type: "FRAGMENT_NUMBER", # required, accepts FRAGMENT_NUMBER, SERVER_TIMESTAMP, PRODUCER_TIMESTAMP, NOW, EARLIEST, CONTINUATION_TOKEN
    #           after_fragment_number: "FragmentNumberString",
    #           start_timestamp: Time.now,
    #           continuation_token: "ContinuationToken",
    #         },
    #       }
    #
    # @!attribute [rw] stream_name
    #   The Kinesis video stream name from where you want to get the media
    #   content. If you don't specify the `streamName`, you must specify
    #   the `streamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the stream from where you want to get the media content.
    #   If you don't specify the `streamARN`, you must specify the
    #   `streamName`.
    #   @return [String]
    #
    # @!attribute [rw] start_selector
    #   Identifies the starting chunk to get from the specified stream.
    #   @return [Types::StartSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/GetMediaInput AWS API Documentation
    #
    class GetMediaInput < Struct.new(
      :stream_name,
      :stream_arn,
      :start_selector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The content type of the requested media.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload Kinesis Video Streams returns is a sequence of chunks
    #   from the specified stream. For information about the chunks, see .
    #   The chunks that Kinesis Video Streams returns in the `GetMedia` call
    #   also include the following additional Matroska (MKV) tags:
    #
    #   * AWS\_KINESISVIDEO\_CONTINUATION\_TOKEN (UTF-8 string) - In the
    #     event your `GetMedia` call terminates, you can use this
    #     continuation token in your next request to get the next chunk
    #     where the last request terminated.
    #
    #   * AWS\_KINESISVIDEO\_MILLIS\_BEHIND\_NOW (UTF-8 string) - Client
    #     applications can use this tag value to determine how far behind
    #     the chunk returned in the response is from the latest chunk on the
    #     stream.
    #
    #   * AWS\_KINESISVIDEO\_FRAGMENT\_NUMBER - Fragment number returned in
    #     the chunk.
    #
    #   * AWS\_KINESISVIDEO\_SERVER\_TIMESTAMP - Server timestamp of the
    #     fragment.
    #
    #   * AWS\_KINESISVIDEO\_PRODUCER\_TIMESTAMP - Producer timestamp of the
    #     fragment.
    #
    #   The following tags will be present if an error occurs:
    #
    #   * AWS\_KINESISVIDEO\_ERROR\_CODE - String description of an error
    #     that caused GetMedia to stop.
    #
    #   * AWS\_KINESISVIDEO\_ERROR\_ID: Integer code of the error.
    #
    #   The error codes are as follows:
    #
    #   * 3002 - Error writing to the stream
    #
    #   * 4000 - Requested fragment is not found
    #
    #   * 4500 - Access denied for the stream's KMS key
    #
    #   * 4501 - Stream's KMS key is disabled
    #
    #   * 4502 - Validation error on the stream's KMS key
    #
    #   * 4503 - KMS key specified in the stream is unavailable
    #
    #   * 4504 - Invalid usage of the KMS key specified in the stream
    #
    #   * 4505 - Invalid state of the KMS key specified in the stream
    #
    #   * 4506 - Unable to find the KMS key specified in the stream
    #
    #   * 5000 - Internal error
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/GetMediaOutput AWS API Documentation
    #
    class GetMediaOutput < Struct.new(
      :content_type,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for this input parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status Code: 400, Caller used wrong endpoint to write data to a
    # stream. On receiving such an exception, the user must call
    # `GetDataEndpoint` with `AccessMode` set to "READ" and use the
    # endpoint Kinesis Video returns in the next `GetMedia` call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/InvalidEndpointException AWS API Documentation
    #
    class InvalidEndpointException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status Code: 403, The caller is not authorized to perform an operation
    # on the given stream, or the token has expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/NotAuthorizedException AWS API Documentation
    #
    class NotAuthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status Code: 404, The stream with the given name does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the chunk on the Kinesis video stream where you want the
    # `GetMedia` API to start returning media data. You have the following
    # options to identify the starting chunk:
    #
    # * Choose the latest (or oldest) chunk.
    #
    # * Identify a specific chunk. You can identify a specific chunk either
    #   by providing a fragment number or timestamp (server or producer).
    #
    # * Each chunk's metadata includes a continuation token as a Matroska
    #   (MKV) tag (`AWS_KINESISVIDEO_CONTINUATION_TOKEN`). If your previous
    #   `GetMedia` request terminated, you can use this tag value in your
    #   next `GetMedia` request. The API then starts returning chunks
    #   starting where the last API ended.
    #
    # @note When making an API call, you may pass StartSelector
    #   data as a hash:
    #
    #       {
    #         start_selector_type: "FRAGMENT_NUMBER", # required, accepts FRAGMENT_NUMBER, SERVER_TIMESTAMP, PRODUCER_TIMESTAMP, NOW, EARLIEST, CONTINUATION_TOKEN
    #         after_fragment_number: "FragmentNumberString",
    #         start_timestamp: Time.now,
    #         continuation_token: "ContinuationToken",
    #       }
    #
    # @!attribute [rw] start_selector_type
    #   Identifies the fragment on the Kinesis video stream where you want
    #   to start getting the data from.
    #
    #   * NOW - Start with the latest chunk on the stream.
    #
    #   * EARLIEST - Start with earliest available chunk on the stream.
    #
    #   * FRAGMENT\_NUMBER - Start with the chunk after a specific fragment.
    #     You must also specify the `AfterFragmentNumber` parameter.
    #
    #   * PRODUCER\_TIMESTAMP or SERVER\_TIMESTAMP - Start with the chunk
    #     containing a fragment with the specified producer or server
    #     timestamp. You specify the timestamp by adding `StartTimestamp`.
    #
    #   * CONTINUATION\_TOKEN - Read using the specified continuation token.
    #
    #   <note markdown="1"> If you choose the NOW, EARLIEST, or CONTINUATION\_TOKEN as the
    #   `startSelectorType`, you don't provide any additional information
    #   in the `startSelector`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] after_fragment_number
    #   Specifies the fragment number from where you want the `GetMedia` API
    #   to start returning the fragments.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   A timestamp value. This value is required if you choose the
    #   PRODUCER\_TIMESTAMP or the SERVER\_TIMESTAMP as the
    #   `startSelectorType`. The `GetMedia` API then starts with the chunk
    #   containing the fragment that has the specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] continuation_token
    #   Continuation token that Kinesis Video Streams returned in the
    #   previous `GetMedia` response. The `GetMedia` API then starts with
    #   the chunk identified by the continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-media-2017-09-30/StartSelector AWS API Documentation
    #
    class StartSelector < Struct.new(
      :start_selector_type,
      :after_fragment_number,
      :start_timestamp,
      :continuation_token)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
