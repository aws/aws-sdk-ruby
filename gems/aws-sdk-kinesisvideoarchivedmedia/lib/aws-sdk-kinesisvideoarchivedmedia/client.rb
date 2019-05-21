# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideoarchivedmedia)

module Aws::KinesisVideoArchivedMedia
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesisvideoarchivedmedia

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can
    # then open the URL in a browser or media player to view the stream
    # contents.
    #
    # You must specify either the `StreamName` or the `StreamARN`.
    #
    # An Amazon Kinesis video stream has the following requirements for
    # providing data through HLS:
    #
    # * The media must contain h.264 encoded video and, optionally, AAC
    #   encoded audio. Specifically, the codec id of track 1 should be
    #   `V_MPEG/ISO/AVC`. Optionally, the codec id of track 2 should be
    #   `A_AAC`.
    #
    # * Data retention must be greater than 0.
    #
    # * The video track of each fragment must contain codec private data in
    #   the Advanced Video Coding (AVC) for H.264 format ([MPEG-4
    #   specification ISO/IEC 14496-15][1]). For information about adapting
    #   stream data to a given format, see [NAL Adaptation Flags][2].
    #
    # * The audio track (if present) of each fragment must contain codec
    #   private data in the AAC format ([AAC specification ISO/IEC
    #   13818-7][3]).
    #
    # Kinesis Video Streams HLS sessions contain fragments in the fragmented
    # MPEG-4 form (also called fMP4 or CMAF), rather than the MPEG-2 form
    # (also called TS chunks, which the HLS specification also supports).
    # For more information about HLS fragment types, see the [HLS
    # specification][4].
    #
    # The following procedure shows how to use HLS with Kinesis Video
    # Streams:
    #
    # 1.  Get an endpoint using [GetDataEndpoint][5], specifying
    #     `GET_HLS_STREAMING_SESSION_URL` for the `APIName` parameter.
    #
    # 2.  Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
    #     Video Streams creates an HLS streaming session to be used for
    #     accessing content in a stream using the HLS protocol.
    #     `GetHLSStreamingSessionURL` returns an authenticated URL (that
    #     includes an encrypted session token) for the session's HLS
    #     *master playlist* (the root resource needed for streaming with
    #     HLS).
    #
    #     <note markdown="1"> Don't share or store this token where an unauthorized entity
    #     could access it. The token provides access to the content of the
    #     stream. Safeguard the token with the same measures that you would
    #     use with your AWS credentials.
    #
    #      </note>
    #
    #     The media that is made available through the playlist consists
    #     only of the requested stream, time range, and format. No other
    #     media data (such as frames outside the requested window or
    #     alternate bitrates) is made available.
    #
    # 3.  Provide the URL (containing the encrypted session token) for the
    #     HLS master playlist to a media player that supports the HLS
    #     protocol. Kinesis Video Streams makes the HLS media playlist,
    #     initialization fragment, and media fragments available through the
    #     master playlist URL. The initialization fragment contains the
    #     codec private data for the stream, and other data needed to set up
    #     the video or audio decoder and renderer. The media fragments
    #     contain H.264-encoded video frames or AAC-encoded audio samples.
    #
    # 4.  The media player receives the authenticated URL and requests
    #     stream metadata and media data normally. When the media player
    #     requests data, it calls the following actions:
    #
    #     * **GetHLSMasterPlaylist:** Retrieves an HLS master playlist,
    #       which contains a URL for the `GetHLSMediaPlaylist` action for
    #       each track, and additional metadata for the media player,
    #       including estimated bitrate and resolution.
    #
    #     * **GetHLSMediaPlaylist:** Retrieves an HLS media playlist, which
    #       contains a URL to access the MP4 initialization fragment with
    #       the `GetMP4InitFragment` action, and URLs to access the MP4
    #       media fragments with the `GetMP4MediaFragment` actions. The HLS
    #       media playlist also contains metadata about the stream that the
    #       player needs to play it, such as whether the `PlaybackMode` is
    #       `LIVE` or `ON_DEMAND`. The HLS media playlist is typically
    #       static for sessions with a `PlaybackType` of `ON_DEMAND`. The
    #       HLS media playlist is continually updated with new fragments for
    #       sessions with a `PlaybackType` of `LIVE`. There is a distinct
    #       HLS media playlist for the video track and the audio track (if
    #       applicable) that contains MP4 media URLs for the specific track.
    #
    #     * **GetMP4InitFragment:** Retrieves the MP4 initialization
    #       fragment. The media player typically loads the initialization
    #       fragment before loading any media fragments. This fragment
    #       contains the "`fytp`" and "`moov`" MP4 atoms, and the child
    #       atoms that are needed to initialize the media player decoder.
    #
    #       The initialization fragment does not correspond to a fragment in
    #       a Kinesis video stream. It contains only the codec private data
    #       for the stream and respective track, which the media player
    #       needs to decode the media frames.
    #
    #     * **GetMP4MediaFragment:** Retrieves MP4 media fragments. These
    #       fragments contain the "`moof`" and "`mdat`" MP4 atoms and
    #       their child atoms, containing the encoded fragment's media
    #       frames and their timestamps.
    #
    #       <note markdown="1"> After the first media fragment is made available in a streaming
    #       session, any fragments that don't contain the same codec
    #       private data cause an error to be returned when those different
    #       media fragments are loaded. Therefore, the codec private data
    #       should not change between fragments in a session. This also
    #       means that the session fails if the fragments in a stream change
    #       from having only video to having both audio and video.
    #
    #        </note>
    #
    #       Data retrieved with this action is billable. See [Pricing][6]
    #       for details.
    #
    #     * **GetTSFragment:** Retrieves MPEG TS fragments containing both
    #       initialization and media data for all tracks in the stream.
    #
    #       <note markdown="1"> If the `ContainerFormat` is `MPEG_TS`, this API is used instead
    #       of `GetMP4InitFragment` and `GetMP4MediaFragment` to retrieve
    #       stream media.
    #
    #        </note>
    #
    #       Data retrieved with this action is billable. For more
    #       information, see [Kinesis Video Streams pricing][6].
    #
    # <note markdown="1"> The following restrictions apply to HLS sessions:
    #
    #  * A streaming session URL should not be shared between players. The
    #   service might throttle a session if multiple media players are
    #   sharing it. For connection limits, see [Kinesis Video Streams
    #   Limits][7].
    #
    # * A Kinesis video stream can have a maximum of five active HLS
    #   streaming sessions. If a new session is created when the maximum
    #   number of sessions is already active, the oldest (earliest created)
    #   session is closed. The number of active `GetMedia` connections on a
    #   Kinesis video stream does not count against this limit, and the
    #   number of active HLS sessions does not count against the active
    #   `GetMedia` connection limit.
    #
    #  </note>
    #
    # You can monitor the amount of data that the media player consumes by
    # monitoring the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch
    # metric. For information about using CloudWatch to monitor Kinesis
    # Video Streams, see [Monitoring Kinesis Video Streams][8]. For pricing
    # information, see [Amazon Kinesis Video Streams Pricing][6] and [AWS
    # Pricing][9]. Charges for both HLS sessions and outgoing AWS data
    # apply.
    #
    # For more information about HLS, see [HTTP Live Streaming][10] on the
    # [Apple Developer site][11].
    #
    #
    #
    # [1]: https://www.iso.org/standard/55980.html
    # [2]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html
    # [3]: https://www.iso.org/standard/43345.html
    # [4]: https://tools.ietf.org/html/draft-pantos-http-live-streaming-23
    # [5]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html
    # [6]: https://aws.amazon.com/kinesis/video-streams/pricing/
    # [7]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html
    # [8]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html
    # [9]: https://aws.amazon.com/pricing/
    # [10]: https://developer.apple.com/streaming/
    # [11]: https://developer.apple.com
    #
    # @option params [String] :stream_name
    #   The name of the stream for which to retrieve the HLS master playlist
    #   URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to retrieve the
    #   HLS master playlist URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :playback_mode
    #   Whether to retrieve live or archived, on-demand data.
    #
    #   Features of the two types of session include the following:
    #
    #   * <b> <code>LIVE</code> </b>\: For sessions of this type, the HLS
    #     media playlist is continually updated with the latest fragments as
    #     they become available. We recommend that the media player retrieve a
    #     new playlist on a one-second interval. When this type of session is
    #     played in a media player, the user interface typically displays a
    #     "live" notification, with no scrubber control for choosing the
    #     position in the playback window to display.
    #
    #     <note markdown="1"> In `LIVE` mode, the newest available fragments are included in an
    #     HLS media playlist, even if there is a gap between fragments (that
    #     is, if a fragment is missing). A gap like this might cause a media
    #     player to halt or cause a jump in playback. In this mode, fragments
    #     are not added to the HLS media playlist if they are older than the
    #     newest fragment in the playlist. If the missing fragment becomes
    #     available after a subsequent fragment is added to the playlist, the
    #     older fragment is not added, and the gap is not filled.
    #
    #      </note>
    #
    #   * <b> <code>ON_DEMAND</code> </b>\: For sessions of this type, the HLS
    #     media playlist contains all the fragments for the session, up to the
    #     number that is specified in `MaxMediaPlaylistFragmentResults`. The
    #     playlist must be retrieved only once for each session. When this
    #     type of session is played in a media player, the user interface
    #     typically displays a scrubber control for choosing the position in
    #     the playback window to display.
    #
    #   In both playback modes, if `FragmentSelectorType` is
    #   `PRODUCER_TIMESTAMP`, and if there are multiple fragments with the
    #   same start timestamp, the fragment that has the larger fragment number
    #   (that is, the newer fragment) is included in the HLS media playlist.
    #   The other fragments are not included. Fragments that have different
    #   timestamps but have overlapping durations are still included in the
    #   HLS media playlist. This can lead to unexpected behavior in the media
    #   player.
    #
    #   The default is `LIVE`.
    #
    # @option params [Types::HLSFragmentSelector] :hls_fragment_selector
    #   The time range of the requested fragment, and the source of the
    #   timestamps.
    #
    #   This parameter is required if `PlaybackMode` is `ON_DEMAND`. This
    #   parameter is optional if `PlaybackMode` is `LIVE`. If `PlaybackMode`
    #   is `LIVE`, the `FragmentSelectorType` can be set, but the
    #   `TimestampRange` should not be set. If `PlaybackMode` is `ON_DEMAND`,
    #   both `FragmentSelectorType` and `TimestampRange` must be set.
    #
    # @option params [String] :container_format
    #   Specifies which format should be used for packaging the media.
    #   Specifying the `FRAGMENTED_MP4` container format packages the media
    #   into MP4 fragments (fMP4 or CMAF). This is the recommended packaging
    #   because there is minimal packaging overhead. The other container
    #   format option is `MPEG_TS`. HLS has supported MPEG TS chunks since it
    #   was released and is sometimes the only supported packaging on older
    #   HLS players. MPEG TS typically has a 5-25 percent packaging overhead.
    #   This means MPEG TS typically requires 5-25 percent more bandwidth and
    #   cost than fMP4.
    #
    #   The default is `FRAGMENTED_MP4`.
    #
    # @option params [String] :discontinuity_mode
    #   Specifies when flags marking discontinuities between fragments will be
    #   added to the media playlists. The default is `ALWAYS` when
    #   HLSFragmentSelector is `SERVER_TIMESTAMP`, and `NEVER` when it is
    #   `PRODUCER_TIMESTAMP`.
    #
    #   Media players typically build a timeline of media content to play,
    #   based on the timestamps of each fragment. This means that if there is
    #   any overlap between fragments (as is typical if HLSFragmentSelector is
    #   `SERVER_TIMESTAMP`), the media player timeline has small gaps between
    #   fragments in some places, and overwrites frames in other places. When
    #   there are discontinuity flags between fragments, the media player is
    #   expected to reset the timeline, resulting in the fragment being played
    #   immediately after the previous fragment. We recommend that you always
    #   have discontinuity flags between fragments if the fragment timestamps
    #   are not accurate or if fragments might be missing. You should not
    #   place discontinuity flags between fragments for the player timeline to
    #   accurately map to the producer timestamps.
    #
    # @option params [String] :display_fragment_timestamp
    #   Specifies when the fragment start timestamps should be included in the
    #   HLS media playlist. Typically, media players report the playhead
    #   position as a time relative to the start of the first fragment in the
    #   playback session. However, when the start timestamps are included in
    #   the HLS media playlist, some media players might report the current
    #   playhead as an absolute time based on the fragment timestamps. This
    #   can be useful for creating a playback experience that shows viewers
    #   the wall-clock time of the media.
    #
    #   The default is `NEVER`. When HLSFragmentSelector is
    #   `SERVER_TIMESTAMP`, the timestamps will be the server start
    #   timestamps. Similarly, when HLSFragmentSelector is
    #   `PRODUCER_TIMESTAMP`, the timestamps will be the producer start
    #   timestamps.
    #
    # @option params [Integer] :expires
    #   The time in seconds until the requested session expires. This value
    #   can be between 300 (5 minutes) and 43200 (12 hours).
    #
    #   When a session expires, no new calls to `GetHLSMasterPlaylist`,
    #   `GetHLSMediaPlaylist`, `GetMP4InitFragment`, or `GetMP4MediaFragment`
    #   can be made for that session.
    #
    #   The default is 300 (5 minutes).
    #
    # @option params [Integer] :max_media_playlist_fragment_results
    #   The maximum number of fragments that are returned in the HLS media
    #   playlists.
    #
    #   When the `PlaybackMode` is `LIVE`, the most recent fragments are
    #   returned up to this value. When the `PlaybackMode` is `ON_DEMAND`, the
    #   oldest fragments are returned, up to this maximum number.
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
    #
    # @return [Types::GetHLSStreamingSessionURLOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHLSStreamingSessionURLOutput#hls_streaming_session_url #hls_streaming_session_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hls_streaming_session_url({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     playback_mode: "LIVE", # accepts LIVE, ON_DEMAND
    #     hls_fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #       },
    #     },
    #     container_format: "FRAGMENTED_MP4", # accepts FRAGMENTED_MP4, MPEG_TS
    #     discontinuity_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #     display_fragment_timestamp: "ALWAYS", # accepts ALWAYS, NEVER
    #     expires: 1,
    #     max_media_playlist_fragment_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hls_streaming_session_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetHLSStreamingSessionURL AWS API Documentation
    #
    # @overload get_hls_streaming_session_url(params = {})
    # @param [Hash] params ({})
    def get_hls_streaming_session_url(params = {}, options = {})
      req = build_request(:get_hls_streaming_session_url, params)
      req.send_request(options)
    end

    # Gets media for a list of fragments (specified by fragment number) from
    # the archived data in an Amazon Kinesis video stream.
    #
    # <note markdown="1"> You must first call the `GetDataEndpoint` API to get an endpoint. Then
    # send the `GetMediaForFragmentList` requests to this endpoint using the
    # [--endpoint-url parameter][1].
    #
    #  </note>
    #
    # The following limits apply when using the `GetMediaForFragmentList`
    # API:
    #
    # * A client can call `GetMediaForFragmentList` up to five times per
    #   second per stream.
    #
    # * Kinesis Video Streams sends media data at a rate of up to 25
    #   megabytes per second (or 200 megabits per second) during a
    #   `GetMediaForFragmentList` session.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/
    #
    # @option params [required, String] :stream_name
    #   The name of the stream from which to retrieve fragment media.
    #
    # @option params [required, Array<String>] :fragments
    #   A list of the numbers of fragments for which to retrieve media. You
    #   retrieve these values with ListFragments.
    #
    # @return [Types::GetMediaForFragmentListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaForFragmentListOutput#content_type #content_type} => String
    #   * {Types::GetMediaForFragmentListOutput#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_for_fragment_list({
    #     stream_name: "StreamName", # required
    #     fragments: ["FragmentNumberString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentList AWS API Documentation
    #
    # @overload get_media_for_fragment_list(params = {})
    # @param [Hash] params ({})
    def get_media_for_fragment_list(params = {}, options = {}, &block)
      req = build_request(:get_media_for_fragment_list, params)
      req.send_request(options, &block)
    end

    # Returns a list of Fragment objects from the specified stream and
    # timestamp range within the archived data.
    #
    # Listing fragments is eventually consistent. This means that even if
    # the producer receives an acknowledgment that a fragment is persisted,
    # the result might not be returned immediately from a request to
    # `ListFragments`. However, results are typically available in less than
    # one second.
    #
    # <note markdown="1"> You must first call the `GetDataEndpoint` API to get an endpoint. Then
    # send the `ListFragments` requests to this endpoint using the
    # [--endpoint-url parameter][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/
    #
    # @option params [required, String] :stream_name
    #   The name of the stream from which to retrieve a fragment list.
    #
    # @option params [Integer] :max_results
    #   The total number of fragments to return. If the total number of
    #   fragments available is more than the value specified in `max-results`,
    #   then a ListFragmentsOutput$NextToken is provided in the output that
    #   you can use to resume pagination.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the
    #   ListFragmentsOutput$NextToken from a previously truncated response.
    #
    # @option params [Types::FragmentSelector] :fragment_selector
    #   Describes the timestamp range and timestamp origin for the range of
    #   fragments to return.
    #
    # @return [Types::ListFragmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFragmentsOutput#fragments #fragments} => Array&lt;Types::Fragment&gt;
    #   * {Types::ListFragmentsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fragments({
    #     stream_name: "StreamName", # required
    #     max_results: 1,
    #     next_token: "String",
    #     fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fragments #=> Array
    #   resp.fragments[0].fragment_number #=> String
    #   resp.fragments[0].fragment_size_in_bytes #=> Integer
    #   resp.fragments[0].producer_timestamp #=> Time
    #   resp.fragments[0].server_timestamp #=> Time
    #   resp.fragments[0].fragment_length_in_milliseconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/ListFragments AWS API Documentation
    #
    # @overload list_fragments(params = {})
    # @param [Hash] params ({})
    def list_fragments(params = {}, options = {})
      req = build_request(:list_fragments, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-kinesisvideoarchivedmedia'
      context[:gem_version] = '1.14.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
