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

    # @note When making an API call, you may pass GetHLSStreamingSessionURLInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         playback_mode: "LIVE", # accepts LIVE, ON_DEMAND
    #         hls_fragment_selector: {
    #           fragment_selector_type: "PRODUCER_TIMESTAMP", # accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #           timestamp_range: {
    #             start_timestamp: Time.now,
    #             end_timestamp: Time.now,
    #           },
    #         },
    #         discontinuity_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #         expires: 1,
    #         max_media_playlist_fragment_results: 1,
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream for which to retrieve the HLS master playlist
    #   URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to retrieve
    #   the HLS master playlist URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #   @return [String]
    #
    # @!attribute [rw] playback_mode
    #   Whether to retrieve live or archived, on-demand data.
    #
    #   Features of the two types of session include the following:
    #
    #   * <b> <code>LIVE</code> </b>\: For sessions of this type, the HLS
    #     media playlist is continually updated with the latest fragments as
    #     they become available. We recommend that the media player retrieve
    #     a new playlist on a one-second interval. When this type of session
    #     is played in a media player, the user interface typically displays
    #     a "live" notification, with no scrubber control for choosing the
    #     position in the playback window to display.
    #
    #     <note markdown="1"> In `LIVE` mode, the newest available fragments are included in an
    #     HLS media playlist, even if there is a gap between fragments (that
    #     is, if a fragment is missing). A gap like this might cause a media
    #     player to halt or cause a jump in playback. In this mode,
    #     fragments are not added to the HLS media playlist if they are
    #     older than the newest fragment in the playlist. If the missing
    #     fragment becomes available after a subsequent fragment is added to
    #     the playlist, the older fragment is not added, and the gap is not
    #     filled.
    #
    #      </note>
    #
    #   * <b> <code>ON_DEMAND</code> </b>\: For sessions of this type, the
    #     HLS media playlist contains all the fragments for the session, up
    #     to the number that is specified in
    #     `MaxMediaPlaylistFragmentResults`. The playlist must be retrieved
    #     only once for each session. When this type of session is played in
    #     a media player, the user interface typically displays a scrubber
    #     control for choosing the position in the playback window to
    #     display.
    #
    #   In both playback modes, if `FragmentSelectorType` is
    #   `PRODUCER_TIMESTAMP`, and if there are multiple fragments with the
    #   same start time stamp, the fragment that has the larger fragment
    #   number (that is, the newer fragment) is included in the HLS media
    #   playlist. The other fragments are not included. Fragments that have
    #   different time stamps but have overlapping durations are still
    #   included in the HLS media playlist. This can lead to unexpected
    #   behavior in the media player.
    #
    #   The default is `LIVE`.
    #   @return [String]
    #
    # @!attribute [rw] hls_fragment_selector
    #   The time range of the requested fragment, and the source of the time
    #   stamps.
    #
    #   This parameter is required if `PlaybackMode` is `ON_DEMAND`. This
    #   parameter is optional if `PlaybackMode` is `LIVE`. If `PlaybackMode`
    #   is `LIVE`, the `FragmentSelectorType` can be set, but the
    #   `TimestampRange` should not be set. If `PlaybackMode` is
    #   `ON_DEMAND`, both `FragmentSelectorType` and `TimestampRange` must
    #   be set.
    #   @return [Types::HLSFragmentSelector]
    #
    # @!attribute [rw] discontinuity_mode
    #   Specifies when flags marking discontinuities between fragments will
    #   be added to the media playlists. The default is `ALWAYS` when
    #   HLSFragmentSelector is `SERVER_TIMESTAMP`, and `NEVER` when it is
    #   `PRODUCER_TIMESTAMP`.
    #
    #   Media players typically build a timeline of media content to play,
    #   based on the time stamps of each fragment. This means that if there
    #   is any overlap between fragments (as is typical if
    #   HLSFragmentSelector is `SERVER_TIMESTAMP`), the media player
    #   timeline has small gaps between fragments in some places, and
    #   overwrites frames in other places. When there are discontinuity
    #   flags between fragments, the media player is expected to reset the
    #   timeline, resulting in the fragment being played immediately after
    #   the previous fragment. We recommend that you always have
    #   discontinuity flags between fragments if the fragment time stamps
    #   are not accurate or if fragments might be missing. You should not
    #   place discontinuity flags between fragments for the player timeline
    #   to accurately map to the producer time stamps.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The time in seconds until the requested session expires. This value
    #   can be between 300 (5 minutes) and 43200 (12 hours).
    #
    #   When a session expires, no new calls to `GetHLSMasterPlaylist`,
    #   `GetHLSMediaPlaylist`, `GetMP4InitFragment`, or
    #   `GetMP4MediaFragment` can be made for that session.
    #
    #   The default is 300 (5 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] max_media_playlist_fragment_results
    #   The maximum number of fragments that are returned in the HLS media
    #   playlists.
    #
    #   When the `PlaybackMode` is `LIVE`, the most recent fragments are
    #   returned up to this value. When the `PlaybackMode` is `ON_DEMAND`,
    #   the oldest fragments are returned, up to this maximum number.
    #
    #   When there are a higher number of fragments available in a live HLS
    #   media playlist, video players often buffer content before starting
    #   playback. Increasing the buffer size increases the playback latency,
    #   but it decreases the likelihood that rebuffering will occur during
    #   playback. We recommend that a live HLS media playlist have a minimum
    #   of 3 fragments and a maximum of 10 fragments.
    #
    #   The default is 5 fragments if `PlaybackMode` is `LIVE`, and 1,000 if
    #   `PlaybackMode` is `ON_DEMAND`.
    #
    #   The maximum value of 1,000 fragments corresponds to more than 16
    #   minutes of video on streams with 1-second fragments, and more than 2
    #   1/2 hours of video on streams with 10-second fragments.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetHLSStreamingSessionURLInput AWS API Documentation
    #
    class GetHLSStreamingSessionURLInput < Struct.new(
      :stream_name,
      :stream_arn,
      :playback_mode,
      :hls_fragment_selector,
      :discontinuity_mode,
      :expires,
      :max_media_playlist_fragment_results)
      include Aws::Structure
    end

    # @!attribute [rw] hls_streaming_session_url
    #   The URL (containing the session token) that a media player can use
    #   to retrieve the HLS master playlist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetHLSStreamingSessionURLOutput AWS API Documentation
    #
    class GetHLSStreamingSessionURLOutput < Struct.new(
      :hls_streaming_session_url)
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
    #   see [PutMedia][1]. The chunks that Kinesis Video Streams returns in
    #   the `GetMediaForFragmentList` call also include the following
    #   additional Matroska (MKV) tags:
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
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentListOutput AWS API Documentation
    #
    class GetMediaForFragmentListOutput < Struct.new(
      :content_type,
      :payload)
      include Aws::Structure
    end

    # Contains the range of time stamps for the requested media, and the
    # source of the time stamps.
    #
    # @note When making an API call, you may pass HLSFragmentSelector
    #   data as a hash:
    #
    #       {
    #         fragment_selector_type: "PRODUCER_TIMESTAMP", # accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #         timestamp_range: {
    #           start_timestamp: Time.now,
    #           end_timestamp: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] fragment_selector_type
    #   The source of the time stamps for the requested media.
    #
    #   When `FragmentSelectorType` is set to `PRODUCER_TIMESTAMP` and
    #   GetHLSStreamingSessionURLInput$PlaybackMode is `ON_DEMAND`, the
    #   first fragment ingested with a producer time stamp within the
    #   specified FragmentSelector$TimestampRange is included in the media
    #   playlist. In addition, the fragments with producer time stamps
    #   within the `TimestampRange` ingested immediately following the first
    #   fragment (up to the
    #   GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults
    #   value) are included.
    #
    #   Fragments that have duplicate producer time stamps are deduplicated.
    #   This means that if producers are producing a stream of fragments
    #   with producer time stamps that are approximately equal to the true
    #   clock time, the HLS media playlists will contain all of the
    #   fragments within the requested time stamp range. If some fragments
    #   are ingested within the same time range and very different points in
    #   time, only the oldest ingested collection of fragments are returned.
    #
    #   When `FragmentSelectorType` is set to `PRODUCER_TIMESTAMP` and
    #   GetHLSStreamingSessionURLInput$PlaybackMode is `LIVE`, the producer
    #   time stamps are used in the MP4 fragments and for deduplication. But
    #   the most recently ingested fragments based on server time stamps are
    #   included in the HLS media playlist. This means that even if
    #   fragments ingested in the past have producer time stamps with values
    #   now, they are not included in the HLS media playlist.
    #
    #   The default is `SERVER_TIMESTAMP`.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_range
    #   The start and end of the time stamp range for the requested media.
    #
    #   This value should not be present if `PlaybackType` is `LIVE`.
    #   @return [Types::HLSTimestampRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/HLSFragmentSelector AWS API Documentation
    #
    class HLSFragmentSelector < Struct.new(
      :fragment_selector_type,
      :timestamp_range)
      include Aws::Structure
    end

    # The start and end of the time stamp range for the requested media.
    #
    # This value should not be present if `PlaybackType` is `LIVE`.
    #
    # <note markdown="1"> The values in the `HLSTimestampRange` are inclusive. Fragments that
    # begin before the start time but continue past it, or fragments that
    # begin before the end time but continue past it, are included in the
    # session.
    #
    #  </note>
    #
    # @note When making an API call, you may pass HLSTimestampRange
    #   data as a hash:
    #
    #       {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] start_timestamp
    #   The start of the time stamp range for the requested media.
    #
    #   If the `HLSTimestampRange` value is specified, the `StartTimestamp`
    #   value is required.
    #
    #   <note markdown="1"> This value is inclusive. Fragments that start before the
    #   `StartTimestamp` and continue past it are included in the session.
    #   If `FragmentSelectorType` is `SERVER_TIMESTAMP`, the
    #   `StartTimestamp` must be later than the stream head.
    #
    #    </note>
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The end of the time stamp range for the requested media. This value
    #   must be within 3 hours of the specified `StartTimestamp`, and it
    #   must be later than the `StartTimestamp` value.
    #
    #   If `FragmentSelectorType` for the request is `SERVER_TIMESTAMP`,
    #   this value must be in the past.
    #
    #   If the `HLSTimestampRange` value is specified, the `EndTimestamp`
    #   value is required.
    #
    #   <note markdown="1"> This value is inclusive. The `EndTimestamp` is compared to the
    #   (starting) time stamp of the fragment. Fragments that start before
    #   the `EndTimestamp` value and continue past it are included in the
    #   session.
    #
    #    </note>
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/HLSTimestampRange AWS API Documentation
    #
    class HLSTimestampRange < Struct.new(
      :start_timestamp,
      :end_timestamp)
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
