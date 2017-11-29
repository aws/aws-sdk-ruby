# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoArchivedMedia
  module Types

    # Represents a segment of video or other time-delimited data.
    #
    # @!attribute [rw] fragment_number
    #   The index value of the fragment.
    #   @return [String]
    #
    # @!attribute [rw] fragment_size_in_bytes
    #   The total fragment size, including information about the fragment
    #   and contained media data.
    #   @return [Integer]
    #
    # @!attribute [rw] producer_timestamp
    #   The time stamp from the producer corresponding to the fragment.
    #   @return [Time]
    #
    # @!attribute [rw] server_timestamp
    #   The time stamp from the AWS server corresponding to the fragment.
    #   @return [Time]
    #
    # @!attribute [rw] fragment_length_in_milliseconds
    #   The playback duration or other time value associated with the
    #   fragment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/Fragment AWS API Documentation
    #
    class Fragment < Struct.new(
      :fragment_number,
      :fragment_size_in_bytes,
      :producer_timestamp,
      :server_timestamp,
      :fragment_length_in_milliseconds)
      include Aws::Structure
    end

    # Describes the time stamp range and time stamp origin of a range of
    # fragments.
    #
    # @note When making an API call, you may pass FragmentSelector
    #   data as a hash:
    #
    #       {
    #         fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #         timestamp_range: { # required
    #           start_timestamp: Time.now, # required
    #           end_timestamp: Time.now, # required
    #         },
    #       }
    #
    # @!attribute [rw] fragment_selector_type
    #   The origin of the time stamps to use (Server or Producer).
    #   @return [String]
    #
    # @!attribute [rw] timestamp_range
    #   The range of time stamps to return.
    #   @return [Types::TimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/FragmentSelector AWS API Documentation
    #
    class FragmentSelector < Struct.new(
      :fragment_selector_type,
      :timestamp_range)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMediaForFragmentListInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         fragments: ["FragmentNumberString"], # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream from which to retrieve fragment media.
    #   @return [String]
    #
    # @!attribute [rw] fragments
    #   A list of the numbers of fragments for which to retrieve media. You
    #   retrieve these values with ListFragments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentListInput AWS API Documentation
    #
    class GetMediaForFragmentListInput < Struct.new(
      :stream_name,
      :fragments)
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The content type of the requested media.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload that Kinesis Video Streams returns is a sequence of
    #   chunks from the specified stream. For information about the chunks,
    #   see
    #   [PutMedia](docs.aws.amazon.com/acuity/latest/dg/API_dataplane_PutMedia.html).
    #   The chunks that Kinesis Video Streams returns in the
    #   `GetMediaForFragmentList` call also include the following additional
    #   Matroska (MKV) tags:
    #
    #   * AWS\_KINESISVIDEO\_FRAGMENT\_NUMBER - Fragment number returned in
    #     the chunk.
    #
    #   * AWS\_KINESISVIDEO\_SERVER\_SIDE\_TIMESTAMP - Server-side time
    #     stamp of the fragment.
    #
    #   * AWS\_KINESISVIDEO\_PRODUCER\_SIDE\_TIMESTAMP - Producer-side time
    #     stamp of the fragment.
    #
    #   The following tags will be included if an exception occurs:
    #
    #   * AWS\_KINESISVIDEO\_FRAGMENT\_NUMBER - The number of the fragment
    #     that threw the exception
    #
    #   * AWS\_KINESISVIDEO\_EXCEPTION\_ERROR\_CODE - The integer code of
    #     the exception
    #
    #   * AWS\_KINESISVIDEO\_EXCEPTION\_MESSAGE - A text description of the
    #     exception
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentListOutput AWS API Documentation
    #
    class GetMediaForFragmentListOutput < Struct.new(
      :content_type,
      :payload)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFragmentsInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         max_results: 1,
    #         next_token: "String",
    #         fragment_selector: {
    #           fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #           timestamp_range: { # required
    #             start_timestamp: Time.now, # required
    #             end_timestamp: Time.now, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream from which to retrieve a fragment list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of fragments to return. If the total number of
    #   fragments available is more than the value specified in
    #   `max-results`, then a ListFragmentsOutput$NextToken is provided in
    #   the output that you can use to resume pagination.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the
    #   ListFragmentsOutput$NextToken from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] fragment_selector
    #   Describes the time stamp range and time stamp origin for the range
    #   of fragments to return.
    #   @return [Types::FragmentSelector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/ListFragmentsInput AWS API Documentation
    #
    class ListFragmentsInput < Struct.new(
      :stream_name,
      :max_results,
      :next_token,
      :fragment_selector)
      include Aws::Structure
    end

    # @!attribute [rw] fragments
    #   A list of fragment numbers that correspond to the time stamp range
    #   provided.
    #   @return [Array<Types::Fragment>]
    #
    # @!attribute [rw] next_token
    #   If the returned list is truncated, the operation returns this token
    #   to use to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/ListFragmentsOutput AWS API Documentation
    #
    class ListFragmentsOutput < Struct.new(
      :fragments,
      :next_token)
      include Aws::Structure
    end

    # The range of time stamps for which to return fragments.
    #
    # @note When making an API call, you may pass TimestampRange
    #   data as a hash:
    #
    #       {
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       }
    #
    # @!attribute [rw] start_timestamp
    #   The starting time stamp in the range of time stamps for which to
    #   return fragments.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The ending time stamp in the range of time stamps for which to
    #   return fragments.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/TimestampRange AWS API Documentation
    #
    class TimestampRange < Struct.new(
      :start_timestamp,
      :end_timestamp)
      include Aws::Structure
    end

  end
end
