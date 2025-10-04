# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::KinesisVideoArchivedMedia
  # An API client for Aws::KinesisVideoArchivedMedia.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSAcuityReader

    add_plugin(::Aws::KinesisVideoArchivedMedia::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KinesisVideoArchivedMedia::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Downloads an MP4 file (clip) containing the archived, on-demand media from the
    #             specified video stream over the specified time range. </p>
    #          <p>Both the StreamName and the StreamARN parameters are optional, but you must specify
    #             either the StreamName or the StreamARN when invoking this API operation. </p>
    #          <p>As a prerequisite to using GetCLip API, you must obtain an endpoint using
    #                 <code>GetDataEndpoint</code>, specifying GET_CLIP for<code></code> the
    #                 <code>APIName</code> parameter. </p>
    #          <p>An Amazon Kinesis video stream has the following requirements for providing data
    #             through MP4:</p>
    #          <ul>
    #             <li>
    #                <p>The media must contain h.264 or h.265 encoded video and, optionally, AAC or
    #                     G.711 encoded audio. Specifically, the codec ID of track 1 should be
    #                         <code>V_MPEG/ISO/AVC</code> (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
    #                     Optionally, the codec ID of track 2 should be <code>A_AAC</code> (for AAC) or
    #                     A_MS/ACM (for G.711).</p>
    #             </li>
    #             <li>
    #                <p>Data retention must be greater than 0.</p>
    #             </li>
    #             <li>
    #                <p>The video track of each fragment must contain codec private data in the
    #                     Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format. For more
    #                     information, see <a href="https://www.iso.org/standard/55980.html">MPEG-4
    #                         specification ISO/IEC 14496-15</a>. For information about adapting
    #                     stream data to a given format, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html">NAL Adaptation Flags</a>.</p>
    #             </li>
    #             <li>
    #                <p>The audio track (if present) of each fragment must contain codec private data
    #                     in the AAC format (<a href="https://www.iso.org/standard/43345.html">AAC
    #                         specification ISO/IEC 13818-7</a>) or the <a href="http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html">MS
    #                         Wave format</a>.</p>
    #             </li>
    #          </ul>
    #          <p>You can monitor the amount of outgoing data by monitoring the
    #                 <code>GetClip.OutgoingBytes</code> Amazon CloudWatch metric. For information about
    #             using CloudWatch to monitor Kinesis Video Streams, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html">Monitoring Kinesis Video Streams</a>. For pricing information, see <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Amazon Kinesis Video
    #                     Streams Pricing</a> and <a href="https://aws.amazon.com/pricing/"> Amazon Web Services
    #                 Pricing</a>. Charges for outgoing Amazon Web Services data apply.</p>
    # @param [Hash, Types::GetClipInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to retrieve the media clip. </p>
    #            <p>You must specify either the StreamName or the StreamARN. </p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream for which to retrieve the media clip. </p>
    #            <p>You must specify either the StreamName or the StreamARN. </p>
    # @option params [Types::ClipFragmentSelector] :clip_fragment_selector
    #   <p>The time range of the requested clip and the source of the timestamps.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     clip_fragment_selector: { # required
    #       fragment_selector_type: "PRODUCER_TIMESTAMP" # One of: ["PRODUCER_TIMESTAMP", "SERVER_TIMESTAMP"], # required
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_clip(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "ContentType",
    #     payload: File.read("source_file")
    #   }
    # @return [Types::GetClipOutput]
    def get_clip(params = {}, options = {})
      request = build_request(:get_clip, params)
      request.send_request(options)
    end

    # <p>Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for the stream. You
    #             can then open the URL in a media player to view the stream contents.</p>
    #          <p>Both the <code>StreamName</code> and the <code>StreamARN</code> parameters are
    #             optional, but you must specify either the <code>StreamName</code> or the
    #                 <code>StreamARN</code> when invoking this API operation.</p>
    #          <p>An Amazon Kinesis video stream has the following requirements for providing data
    #             through MPEG-DASH:</p>
    #          <ul>
    #             <li>
    #                <p>The media must contain h.264 or h.265 encoded video and, optionally, AAC or
    #                     G.711 encoded audio. Specifically, the codec ID of track 1 should be
    #                         <code>V_MPEG/ISO/AVC</code> (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
    #                     Optionally, the codec ID of track 2 should be <code>A_AAC</code> (for AAC) or
    #                     A_MS/ACM (for G.711).</p>
    #             </li>
    #             <li>
    #                <p>Data retention must be greater than 0.</p>
    #             </li>
    #             <li>
    #                <p>The video track of each fragment must contain codec private data in the
    #                     Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format. For more
    #                     information, see <a href="https://www.iso.org/standard/55980.html">MPEG-4
    #                         specification ISO/IEC 14496-15</a>. For information about adapting
    #                     stream data to a given format, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html">NAL Adaptation Flags</a>.</p>
    #             </li>
    #             <li>
    #                <p>The audio track (if present) of each fragment must contain codec private data
    #                     in the AAC format (<a href="https://www.iso.org/standard/43345.html">AAC
    #                         specification ISO/IEC 13818-7</a>) or the <a href="http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html">MS
    #                         Wave format</a>.</p>
    #             </li>
    #          </ul>
    #          <p>The following procedure shows how to use MPEG-DASH with Kinesis Video Streams:</p>
    #          <ol>
    #             <li>
    #                <p>Get an endpoint using <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html">GetDataEndpoint</a>, specifying
    #                         <code>GET_DASH_STREAMING_SESSION_URL</code> for the <code>APIName</code>
    #                     parameter.</p>
    #             </li>
    #             <li>
    #                <p>Retrieve the MPEG-DASH URL using <code>GetDASHStreamingSessionURL</code>.
    #                     Kinesis Video Streams creates an MPEG-DASH streaming session to be used for
    #                     accessing content in a stream using the MPEG-DASH protocol.
    #                         <code>GetDASHStreamingSessionURL</code> returns an authenticated URL (that
    #                     includes an encrypted session token) for the session's MPEG-DASH
    #                         <i>manifest</i> (the root resource needed for streaming with
    #                     MPEG-DASH).</p>
    #                <note>
    #                   <p>Don't share or store this token where an unauthorized entity can access
    #                         it. The token provides access to the content of the stream. Safeguard the
    #                         token with the same measures that you use with your Amazon Web Services credentials.</p>
    #                </note>
    #                <p>The media that is made available through the manifest consists only of the
    #                     requested stream, time range, and format. No other media data (such as frames
    #                     outside the requested window or alternate bitrates) is made available.</p>
    #             </li>
    #             <li>
    #                <p>Provide the URL (containing the encrypted session token) for the MPEG-DASH
    #                     manifest to a media player that supports the MPEG-DASH protocol. Kinesis Video
    #                     Streams makes the initialization fragment and media fragments available through
    #                     the manifest URL. The initialization fragment contains the codec private data
    #                     for the stream, and other data needed to set up the video or audio decoder and
    #                     renderer. The media fragments contain encoded video frames or encoded audio
    #                     samples.</p>
    #             </li>
    #             <li>
    #                <p>The media player receives the authenticated URL and requests stream metadata
    #                     and media data normally. When the media player requests data, it calls the
    #                     following actions:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>GetDASHManifest:</b> Retrieves an MPEG DASH
    #                             manifest, which contains the metadata for the media that you want to
    #                             playback.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetMP4InitFragment:</b> Retrieves the MP4
    #                             initialization fragment. The media player typically loads the
    #                             initialization fragment before loading any media fragments. This
    #                             fragment contains the "<code>fytp</code>" and "<code>moov</code>" MP4
    #                             atoms, and the child atoms that are needed to initialize the media
    #                             player decoder.</p>
    #                      <p>The initialization fragment does not correspond to a fragment in a
    #                             Kinesis video stream. It contains only the codec private data for the
    #                             stream and respective track, which the media player needs to decode the
    #                             media frames.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetMP4MediaFragment:</b> Retrieves MP4
    #                             media fragments. These fragments contain the "<code>moof</code>" and
    #                                 "<code>mdat</code>" MP4 atoms and their child atoms, containing the
    #                             encoded fragment's media frames and their timestamps. </p>
    #                      <note>
    #                         <p>After the first media fragment is made available in a streaming
    #                                 session, any fragments that don't contain the same codec private
    #                                 data cause an error to be returned when those different media
    #                                 fragments are loaded. Therefore, the codec private data should not
    #                                 change between fragments in a session. This also means that the
    #                                 session fails if the fragments in a stream change from having only
    #                                 video to having both audio and video.</p>
    #                      </note>
    #                      <p>Data retrieved with this action is billable. See <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Pricing</a> for details.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ol>
    #          <note>
    #             <p>For restrictions that apply to MPEG-DASH sessions, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html">Kinesis Video Streams Limits</a>.</p>
    #          </note>
    #          <p>You can monitor the amount of data that the media player consumes by monitoring the
    #                 <code>GetMP4MediaFragment.OutgoingBytes</code> Amazon CloudWatch metric. For
    #             information about using CloudWatch to monitor Kinesis Video Streams, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html">Monitoring Kinesis Video Streams</a>. For pricing information, see <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Amazon Kinesis Video
    #                 Streams Pricing</a> and <a href="https://aws.amazon.com/pricing/">Amazon Web Services
    #                 Pricing</a>. Charges for both HLS sessions and outgoing Amazon Web Services data apply.</p>
    #          <p>For more information about HLS, see <a href="https://developer.apple.com/streaming/">HTTP Live Streaming</a> on the
    #                 <a href="https://developer.apple.com">Apple Developer site</a>.</p>
    #          <important>
    #             <p>If an error is thrown after invoking a Kinesis Video Streams archived media API,
    #                 in addition to the HTTP status code and the response body, it includes the following
    #                 pieces of information: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>x-amz-ErrorType</code> HTTP header – contains a more specific error
    #                         type in addition to what the HTTP status code provides. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to
    #                         Amazon Web Services the support team can better diagnose the problem if given the Request
    #                         Id.</p>
    #                </li>
    #             </ul>
    #             <p>Both the HTTP status code and the ErrorType header can be utilized to make
    #                 programmatic decisions about whether errors are retry-able and under what
    #                 conditions, as well as provide information on what actions the client programmer
    #                 might need to take in order to successfully try again.</p>
    #             <p>For more information, see the <b>Errors</b> section at
    #                 the bottom of this topic, as well as <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common Errors</a>.
    #             </p>
    #          </important>
    # @param [Hash, Types::GetDASHStreamingSessionURLInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to retrieve the MPEG-DASH manifest URL.</p>
    #            <p>You must specify either the <code>StreamName</code> or the
    #               <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream for which to retrieve the MPEG-DASH
    #               manifest URL.</p>
    #            <p>You must specify either the <code>StreamName</code> or the
    #               <code>StreamARN</code>.</p>
    # @option params [String] :playback_mode
    #   <p>Whether to retrieve live, live replay, or archived, on-demand data.</p>
    #            <p>Features of the three types of sessions include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LIVE</code>
    #                     </b>: For sessions of this type, the MPEG-DASH manifest is continually
    #                       updated with the latest fragments as they become available. We recommend that
    #                       the media player retrieve a new manifest on a one-second interval. When this
    #                       type of session is played in a media player, the user interface typically
    #                       displays a "live" notification, with no scrubber control for choosing the
    #                       position in the playback window to display.</p>
    #                  <note>
    #                     <p>In <code>LIVE</code> mode, the newest available fragments are included in
    #                           an MPEG-DASH manifest, even if there is a gap between fragments (that is, if
    #                           a fragment is missing). A gap like this might cause a media player to halt
    #                           or cause a jump in playback. In this mode, fragments are not added to the
    #                           MPEG-DASH manifest if they are older than the newest fragment in the
    #                           playlist. If the missing fragment becomes available after a subsequent
    #                           fragment is added to the manifest, the older fragment is not added, and the
    #                           gap is not filled.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LIVE_REPLAY</code>
    #                     </b>: For sessions of this type, the MPEG-DASH manifest is updated
    #                       similarly to how it is updated for <code>LIVE</code> mode except that it starts
    #                       by including fragments from a given start time. Instead of fragments being added
    #                       as they are ingested, fragments are added as the duration of the next fragment
    #                       elapses. For example, if the fragments in the session are two seconds long, then
    #                       a new fragment is added to the manifest every two seconds. This mode is useful
    #                       to be able to start playback from when an event is detected and continue live
    #                       streaming media that has not yet been ingested as of the time of the session
    #                       creation. This mode is also useful to stream previously archived media without
    #                       being limited by the 1,000 fragment limit in the <code>ON_DEMAND</code> mode.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ON_DEMAND</code>
    #                     </b>: For sessions of this type, the MPEG-DASH manifest contains all the
    #                       fragments for the session, up to the number that is specified in
    #                           <code>MaxManifestFragmentResults</code>. The manifest must be retrieved only
    #                       once for each session. When this type of session is played in a media player,
    #                       the user interface typically displays a scrubber control for choosing the
    #                       position in the playback window to display.</p>
    #               </li>
    #            </ul>
    #            <p>In all playback modes, if <code>FragmentSelectorType</code> is
    #                   <code>PRODUCER_TIMESTAMP</code>, and if there are multiple fragments with the same
    #               start timestamp, the fragment that has the larger fragment number (that is, the newer
    #               fragment) is included in the MPEG-DASH manifest. The other fragments are not included.
    #               Fragments that have different timestamps but have overlapping durations are still
    #               included in the MPEG-DASH manifest. This can lead to unexpected behavior in the media
    #               player.</p>
    #            <p>The default is <code>LIVE</code>.</p>
    # @option params [String] :display_fragment_timestamp
    #   <p>Per the MPEG-DASH specification, the wall-clock time of fragments in the manifest file
    #               can be derived using attributes in the manifest itself. However, typically, MPEG-DASH
    #               compatible media players do not properly handle gaps in the media timeline. Kinesis
    #               Video Streams adjusts the media timeline in the manifest file to enable playback of
    #               media with discontinuities. Therefore, the wall-clock time derived from the manifest
    #               file may be inaccurate. If DisplayFragmentTimestamp is set to <code>ALWAYS</code>, the
    #               accurate fragment timestamp is added to each S element in the manifest file with the
    #               attribute name “kvs:ts”. A custom MPEG-DASH media player is necessary to leverage this
    #               custom attribute.</p>
    #            <p>The default value is <code>NEVER</code>. When <a>DASHFragmentSelector</a>
    #               is <code>SERVER_TIMESTAMP</code>, the timestamps will be the server start timestamps.
    #               Similarly, when <a>DASHFragmentSelector</a> is
    #                   <code>PRODUCER_TIMESTAMP</code>, the timestamps will be the producer start
    #               timestamps. </p>
    # @option params [String] :display_fragment_number
    #   <p>Fragments are identified in the manifest file based on their sequence number in the
    #               session. If DisplayFragmentNumber is set to <code>ALWAYS</code>, the Kinesis Video
    #               Streams fragment number is added to each S element in the manifest file with the
    #               attribute name “kvs:fn”. These fragment numbers can be used for logging or for use with
    #               other APIs (e.g. <code>GetMedia</code> and <code>GetMediaForFragmentList</code>). A
    #               custom MPEG-DASH media player is necessary to leverage these this custom
    #               attribute.</p>
    #            <p>The default value is <code>NEVER</code>.</p>
    # @option params [Types::DASHFragmentSelector] :dash_fragment_selector
    #   <p>The time range of the requested fragment and the source of the timestamps.</p>
    #            <p>This parameter is required if <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
    #                   <code>LIVE_REPLAY</code>. This parameter is optional if PlaybackMode is<code></code>
    #               <code>LIVE</code>. If <code>PlaybackMode</code> is <code>LIVE</code>, the
    #                   <code>FragmentSelectorType</code> can be set, but the <code>TimestampRange</code>
    #               should not be set. If <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
    #                   <code>LIVE_REPLAY</code>, both <code>FragmentSelectorType</code> and
    #                   <code>TimestampRange</code> must be set.</p>
    # @option params [Integer] :expires
    #   <p>The time in seconds until the requested session expires. This value can be between 300
    #               (5 minutes) and 43200 (12 hours).</p>
    #            <p>When a session expires, no new calls to <code>GetDashManifest</code>,
    #                   <code>GetMP4InitFragment</code>, or <code>GetMP4MediaFragment</code> can be made for
    #               that session.</p>
    #            <p>The default is 300 (5 minutes).</p>
    # @option params [Integer] :max_manifest_fragment_results
    #   <p>The maximum number of fragments that are returned in the MPEG-DASH manifest.</p>
    #            <p>When the <code>PlaybackMode</code> is <code>LIVE</code>, the most recent fragments are
    #               returned up to this value. When the <code>PlaybackMode</code> is <code>ON_DEMAND</code>,
    #               the oldest fragments are returned, up to this maximum number.</p>
    #            <p>When there are a higher number of fragments available in a live MPEG-DASH manifest,
    #               video players often buffer content before starting playback. Increasing the buffer size
    #               increases the playback latency, but it decreases the likelihood that rebuffering will
    #               occur during playback. We recommend that a live MPEG-DASH manifest have a minimum of 3
    #               fragments and a maximum of 10 fragments.</p>
    #            <p>The default is 5 fragments if <code>PlaybackMode</code> is <code>LIVE</code> or
    #                   <code>LIVE_REPLAY</code>, and 1,000 if <code>PlaybackMode</code> is
    #                   <code>ON_DEMAND</code>. </p>
    #            <p>The maximum value of 1,000 fragments corresponds to more than 16 minutes of video on
    #               streams with 1-second fragments, and more than 2 1/2 hours of video on streams with
    #               10-second fragments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     playback_mode: "LIVE" # One of: ["LIVE", "LIVE_REPLAY", "ON_DEMAND"],
    #     display_fragment_timestamp: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #     display_fragment_number: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #     dash_fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP" # One of: ["PRODUCER_TIMESTAMP", "SERVER_TIMESTAMP"],
    #       timestamp_range: {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now
    #       }
    #     },
    #     expires: 1,
    #     max_manifest_fragment_results: 1
    #   }
    #   options = {}
    #   response = client.get_dash_streaming_session_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dash_streaming_session_url: "DASHStreamingSessionURL"
    #   }
    # @return [Types::GetDASHStreamingSessionURLOutput]
    def get_dash_streaming_session_url(params = {}, options = {})
      request = build_request(:get_dash_streaming_session_url, params)
      request.send_request(options)
    end

    # <p>Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can then open the URL
    #             in a browser or media player to view the stream contents.</p>
    #          <p>Both the <code>StreamName</code> and the <code>StreamARN</code> parameters are
    #             optional, but you must specify either the <code>StreamName</code> or the
    #                 <code>StreamARN</code> when invoking this API operation.</p>
    #          <p>An Amazon Kinesis video stream has the following requirements for providing data
    #             through HLS:</p>
    #          <ul>
    #             <li>
    #                <p>For streaming video, the media must contain H.264 or H.265 encoded video and, optionally, AAC
    #                     encoded audio. Specifically, the codec ID of track 1 should be
    #                     <code>V_MPEG/ISO/AVC</code> (for H.264) or <code>V_MPEG/ISO/HEVC</code> (for
    #                     H.265). Optionally, the codec ID of track 2 should be <code>A_AAC</code>. For audio only streaming, the codec ID of track 1 should be 
    #                     <code>A_AAC</code>.</p>
    #             </li>
    #             <li>
    #                <p>Data retention must be greater than 0.</p>
    #             </li>
    #             <li>
    #                <p>The video track of each fragment must contain codec private data in the
    #                     Advanced Video Coding (AVC) for H.264 format or HEVC for H.265 format (<a href="https://www.iso.org/standard/55980.html">MPEG-4 specification ISO/IEC
    #                         14496-15</a>). For information about adapting stream data to a given
    #                     format, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html">NAL Adaptation Flags</a>.</p>
    #             </li>
    #             <li>
    #                <p>The audio track (if present) of each fragment must contain codec private data
    #                     in the AAC format (<a href="https://www.iso.org/standard/43345.html">AAC
    #                         specification ISO/IEC 13818-7</a>).</p>
    #             </li>
    #          </ul>
    #          <p>Kinesis Video Streams HLS sessions contain fragments in the fragmented MPEG-4 form
    #             (also called fMP4 or CMAF) or the MPEG-2 form (also called TS chunks, which the HLS
    #             specification also supports). For more information about HLS fragment types, see the
    #                 <a href="https://tools.ietf.org/html/draft-pantos-http-live-streaming-23">HLS
    #                 specification</a>.</p>
    #          <p>The following procedure shows how to use HLS with Kinesis Video Streams:</p>
    #          <ol>
    #             <li>
    #                <p>Get an endpoint using <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html">GetDataEndpoint</a>, specifying
    #                         <code>GET_HLS_STREAMING_SESSION_URL</code> for the <code>APIName</code>
    #                     parameter.</p>
    #             </li>
    #             <li>
    #                <p>Retrieve the HLS URL using <code>GetHLSStreamingSessionURL</code>. Kinesis
    #                     Video Streams creates an HLS streaming session to be used for accessing content
    #                     in a stream using the HLS protocol. <code>GetHLSStreamingSessionURL</code>
    #                     returns an authenticated URL (that includes an encrypted session token) for the
    #                     session's HLS <i>master playlist</i> (the root resource needed for
    #                     streaming with HLS).</p>
    #                <note>
    #                   <p>Don't share or store this token where an unauthorized entity could access
    #                         it. The token provides access to the content of the stream. Safeguard the
    #                         token with the same measures that you would use with your Amazon Web Services
    #                         credentials.</p>
    #                </note>
    #                <p>The media that is made available through the playlist consists only of the
    #                     requested stream, time range, and format. No other media data (such as frames
    #                     outside the requested window or alternate bitrates) is made available.</p>
    #             </li>
    #             <li>
    #                <p>Provide the URL (containing the encrypted session token) for the HLS master
    #                     playlist to a media player that supports the HLS protocol. Kinesis Video Streams
    #                     makes the HLS media playlist, initialization fragment, and media fragments
    #                     available through the master playlist URL. The initialization fragment contains
    #                     the codec private data for the stream, and other data needed to set up the video
    #                     or audio decoder and renderer. The media fragments contain H.264-encoded video
    #                     frames or AAC-encoded audio samples.</p>
    #             </li>
    #             <li>
    #                <p>The media player receives the authenticated URL and requests stream metadata
    #                     and media data normally. When the media player requests data, it calls the
    #                     following actions:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>GetHLSMasterPlaylist:</b> Retrieves an HLS
    #                             master playlist, which contains a URL for the
    #                                 <code>GetHLSMediaPlaylist</code> action for each track, and
    #                             additional metadata for the media player, including estimated bitrate
    #                             and resolution.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetHLSMediaPlaylist:</b> Retrieves an HLS
    #                             media playlist, which contains a URL to access the MP4 initialization
    #                             fragment with the <code>GetMP4InitFragment</code> action, and URLs to
    #                             access the MP4 media fragments with the <code>GetMP4MediaFragment</code>
    #                             actions. The HLS media playlist also contains metadata about the stream
    #                             that the player needs to play it, such as whether the
    #                                 <code>PlaybackMode</code> is <code>LIVE</code> or
    #                                 <code>ON_DEMAND</code>. The HLS media playlist is typically static
    #                             for sessions with a <code>PlaybackType</code> of <code>ON_DEMAND</code>.
    #                             The HLS media playlist is continually updated with new fragments for
    #                             sessions with a <code>PlaybackType</code> of <code>LIVE</code>. There is
    #                             a distinct HLS media playlist for the video track and the audio track
    #                             (if applicable) that contains MP4 media URLs for the specific track.
    #                         </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetMP4InitFragment:</b> Retrieves the MP4
    #                             initialization fragment. The media player typically loads the
    #                             initialization fragment before loading any media fragments. This
    #                             fragment contains the "<code>fytp</code>" and "<code>moov</code>" MP4
    #                             atoms, and the child atoms that are needed to initialize the media
    #                             player decoder.</p>
    #                      <p>The initialization fragment does not correspond to a fragment in a
    #                             Kinesis video stream. It contains only the codec private data for the
    #                             stream and respective track, which the media player needs to decode the
    #                             media frames.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetMP4MediaFragment:</b> Retrieves MP4
    #                             media fragments. These fragments contain the "<code>moof</code>" and
    #                                 "<code>mdat</code>" MP4 atoms and their child atoms, containing the
    #                             encoded fragment's media frames and their timestamps. </p>
    #                      <note>
    #                         <p>For the HLS streaming session, in-track codec private data (CPD)
    #                                 changes are supported. After the first media fragment is made
    #                                 available in a streaming session, fragments can contain CPD changes
    #                                 for each track. Therefore, the fragments in a session can have a
    #                                 different resolution, bit rate, or other information in the CPD
    #                                 without interrupting playback. However, any change made in the track
    #                                 number or track codec format can return an error when those
    #                                 different media fragments are loaded. For example, streaming will
    #                                 fail if the fragments in the stream change from having only video to
    #                                 having both audio and video, or if an AAC audio track is changed to
    #                                 an ALAW audio track. For each streaming session, only 500 CPD
    #                                 changes are allowed.</p>
    #                      </note>
    #                      <p>Data retrieved with this action is billable. For information, see
    #                                 <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Pricing</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>GetTSFragment:</b> Retrieves MPEG TS
    #                             fragments containing both initialization and media data for all tracks
    #                             in the stream.</p>
    #                      <note>
    #                         <p>If the <code>ContainerFormat</code> is <code>MPEG_TS</code>, this
    #                                 API is used instead of <code>GetMP4InitFragment</code> and
    #                                     <code>GetMP4MediaFragment</code> to retrieve stream
    #                                 media.</p>
    #                      </note>
    #                      <p>Data retrieved with this action is billable. For more information, see
    #                                 <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Kinesis Video Streams pricing</a>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ol>
    #          <p>A streaming session URL must not be shared between players. The service
    #                         might throttle a session if multiple media players are sharing it. For
    #                         connection limits, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html">Kinesis Video Streams Limits</a>.</p>
    #          <p>You can monitor the amount of data that the media player consumes by monitoring the
    #                 <code>GetMP4MediaFragment.OutgoingBytes</code> Amazon CloudWatch metric. For
    #             information about using CloudWatch to monitor Kinesis Video Streams, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html">Monitoring Kinesis Video Streams</a>. For pricing information, see <a href="https://aws.amazon.com/kinesis/video-streams/pricing/">Amazon Kinesis Video
    #                 Streams Pricing</a> and <a href="https://aws.amazon.com/pricing/">Amazon Web Services
    #                 Pricing</a>. Charges for both HLS sessions and outgoing Amazon Web Services data apply.</p>
    #          <p>For more information about HLS, see <a href="https://developer.apple.com/streaming/">HTTP Live Streaming</a> on the
    #                 <a href="https://developer.apple.com">Apple Developer site</a>.</p>
    #          <important>
    #             <p>If an error is thrown after invoking a Kinesis Video Streams archived media API,
    #                 in addition to the HTTP status code and the response body, it includes the following
    #                 pieces of information: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>x-amz-ErrorType</code> HTTP header – contains a more specific error
    #                         type in addition to what the HTTP status code provides. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to
    #                         Amazon Web Services, the support team can better diagnose the problem if given the Request
    #                         Id.</p>
    #                </li>
    #             </ul>
    #             <p>Both the HTTP status code and the ErrorType header can be utilized to make
    #                 programmatic decisions about whether errors are retry-able and under what
    #                 conditions, as well as provide information on what actions the client programmer
    #                 might need to take in order to successfully try again.</p>
    #             <p>For more information, see the <b>Errors</b> section at
    #                 the bottom of this topic, as well as <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common Errors</a>.
    #             </p>
    #          </important>
    # @param [Hash, Types::GetHLSStreamingSessionURLInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to retrieve the HLS master playlist URL.</p>
    #            <p>You must specify either the <code>StreamName</code> or the
    #               <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream for which to retrieve the HLS master
    #               playlist URL.</p>
    #            <p>You must specify either the <code>StreamName</code> or the
    #               <code>StreamARN</code>.</p>
    # @option params [String] :playback_mode
    #   <p>Whether to retrieve live, live replay, or archived, on-demand data.</p>
    #            <p>Features of the three types of sessions include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LIVE</code>
    #                     </b>: For sessions of this type, the HLS media playlist is continually
    #                       updated with the latest fragments as they become available. We recommend that
    #                       the media player retrieve a new playlist on a one-second interval. When this
    #                       type of session is played in a media player, the user interface typically
    #                       displays a "live" notification, with no scrubber control for choosing the
    #                       position in the playback window to display.</p>
    #                  <note>
    #                     <p>In <code>LIVE</code> mode, the newest available fragments are included in
    #                           an HLS media playlist, even if there is a gap between fragments (that is, if
    #                           a fragment is missing). A gap like this might cause a media player to halt
    #                           or cause a jump in playback. In this mode, fragments are not added to the
    #                           HLS media playlist if they are older than the newest fragment in the
    #                           playlist. If the missing fragment becomes available after a subsequent
    #                           fragment is added to the playlist, the older fragment is not added, and the
    #                           gap is not filled.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LIVE_REPLAY</code>
    #                     </b>: For sessions of this type, the HLS media playlist is updated
    #                       similarly to how it is updated for <code>LIVE</code> mode except that it starts
    #                       by including fragments from a given start time. Instead of fragments being added
    #                       as they are ingested, fragments are added as the duration of the next fragment
    #                       elapses. For example, if the fragments in the session are two seconds long, then
    #                       a new fragment is added to the media playlist every two seconds. This mode is
    #                       useful to be able to start playback from when an event is detected and continue
    #                       live streaming media that has not yet been ingested as of the time of the
    #                       session creation. This mode is also useful to stream previously archived media
    #                       without being limited by the 1,000 fragment limit in the <code>ON_DEMAND</code>
    #                       mode. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ON_DEMAND</code>
    #                     </b>: For sessions of this type, the HLS media playlist contains all the
    #                       fragments for the session, up to the number that is specified in
    #                           <code>MaxMediaPlaylistFragmentResults</code>. The playlist must be retrieved
    #                       only once for each session. When this type of session is played in a media
    #                       player, the user interface typically displays a scrubber control for choosing
    #                       the position in the playback window to display.</p>
    #               </li>
    #            </ul>
    #            <p>In all playback modes, if <code>FragmentSelectorType</code> is
    #                   <code>PRODUCER_TIMESTAMP</code>, and if there are multiple fragments with the same
    #               start timestamp, the fragment that has the largest fragment number (that is, the newest
    #               fragment) is included in the HLS media playlist. The other fragments are not included.
    #               Fragments that have different timestamps but have overlapping durations are still
    #               included in the HLS media playlist. This can lead to unexpected behavior in the media
    #               player.</p>
    #            <p>The default is <code>LIVE</code>.</p>
    # @option params [Types::HLSFragmentSelector] :hls_fragment_selector
    #   <p>The time range of the requested fragment and the source of the timestamps.</p>
    #            <p>This parameter is required if <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
    #                   <code>LIVE_REPLAY</code>. This parameter is optional if PlaybackMode is<code></code>
    #               <code>LIVE</code>. If <code>PlaybackMode</code> is <code>LIVE</code>, the
    #                   <code>FragmentSelectorType</code> can be set, but the <code>TimestampRange</code>
    #               should not be set. If <code>PlaybackMode</code> is <code>ON_DEMAND</code> or
    #                   <code>LIVE_REPLAY</code>, both <code>FragmentSelectorType</code> and
    #                   <code>TimestampRange</code> must be set.</p>
    # @option params [String] :container_format
    #   <p>Specifies which format should be used for packaging the media. Specifying the
    #                   <code>FRAGMENTED_MP4</code> container format packages the media into MP4 fragments
    #               (fMP4 or CMAF). This is the recommended packaging because there is minimal packaging
    #               overhead. The other container format option is <code>MPEG_TS</code>. HLS has supported
    #               MPEG TS chunks since it was released and is sometimes the only supported packaging on
    #               older HLS players. MPEG TS typically has a 5-25 percent packaging overhead. This means
    #               MPEG TS typically requires 5-25 percent more bandwidth and cost than fMP4.</p>
    #            <p>The default is <code>FRAGMENTED_MP4</code>.</p>
    # @option params [String] :discontinuity_mode
    #   <p>Specifies when flags marking discontinuities between fragments are added to the media
    #               playlists.</p>
    #            <p>Media players typically build a timeline of media content to play, based on the
    #               timestamps of each fragment. This means that if there is any overlap or gap between
    #               fragments (as is typical if <a>HLSFragmentSelector</a> is set to
    #                   <code>SERVER_TIMESTAMP</code>), the media player timeline will also have small gaps
    #               between fragments in some places, and will overwrite frames in other places. Gaps in the
    #               media player timeline can cause playback to stall and overlaps can cause playback to be
    #               jittery. When there are discontinuity flags between fragments, the media player is
    #               expected to reset the timeline, resulting in the next fragment being played immediately
    #               after the previous fragment. </p>
    #            <p>The following modes are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALWAYS</code>: a discontinuity marker is placed between every fragment in
    #                       the HLS media playlist. It is recommended to use a value of <code>ALWAYS</code>
    #                       if the fragment timestamps are not accurate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEVER</code>: no discontinuity markers are placed anywhere. It is
    #                       recommended to use a value of <code>NEVER</code> to ensure the media player
    #                       timeline most accurately maps to the producer timestamps. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ON_DISCONTINUITY</code>: a discontinuity marker is placed between
    #                       fragments that have a gap or overlap of more than 50 milliseconds. For most
    #                       playback scenarios, it is recommended to use a value of
    #                           <code>ON_DISCONTINUITY</code> so that the media player timeline is only
    #                       reset when there is a significant issue with the media timeline (e.g. a missing
    #                       fragment).</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>ALWAYS</code> when <a>HLSFragmentSelector</a> is set
    #               to <code>SERVER_TIMESTAMP</code>, and <code>NEVER</code> when it is set to
    #                   <code>PRODUCER_TIMESTAMP</code>.</p>
    # @option params [String] :display_fragment_timestamp
    #   <p>Specifies when the fragment start timestamps should be included in the HLS media
    #               playlist. Typically, media players report the playhead position as a time relative to
    #               the start of the first fragment in the playback session. However, when the start
    #               timestamps are included in the HLS media playlist, some media players might report the
    #               current playhead as an absolute time based on the fragment timestamps. This can be
    #               useful for creating a playback experience that shows viewers the wall-clock time of the
    #               media.</p>
    #            <p>The default is <code>NEVER</code>. When <a>HLSFragmentSelector</a> is
    #                   <code>SERVER_TIMESTAMP</code>, the timestamps will be the server start timestamps.
    #               Similarly, when <a>HLSFragmentSelector</a> is
    #               <code>PRODUCER_TIMESTAMP</code>, the timestamps will be the producer start timestamps.
    #           </p>
    # @option params [Integer] :expires
    #   <p>The time in seconds until the requested session expires. This value can be between 300
    #               (5 minutes) and 43200 (12 hours).</p>
    #            <p>When a session expires, no new calls to <code>GetHLSMasterPlaylist</code>,
    #                   <code>GetHLSMediaPlaylist</code>, <code>GetMP4InitFragment</code>,
    #                   <code>GetMP4MediaFragment</code>, or <code>GetTSFragment</code> can be made for that
    #               session.</p>
    #            <p>The default is 300 (5 minutes).</p>
    # @option params [Integer] :max_media_playlist_fragment_results
    #   <p>The maximum number of fragments that are returned in the HLS media playlists.</p>
    #            <p>When the <code>PlaybackMode</code> is <code>LIVE</code>, the most recent fragments are
    #               returned up to this value. When the <code>PlaybackMode</code> is <code>ON_DEMAND</code>,
    #               the oldest fragments are returned, up to this maximum number.</p>
    #            <p>When there are a higher number of fragments available in a live HLS media playlist,
    #               video players often buffer content before starting playback. Increasing the buffer size
    #               increases the playback latency, but it decreases the likelihood that rebuffering will
    #               occur during playback. We recommend that a live HLS media playlist have a minimum of 3
    #               fragments and a maximum of 10 fragments.</p>
    #            <p>The default is 5 fragments if <code>PlaybackMode</code> is <code>LIVE</code> or
    #                   <code>LIVE_REPLAY</code>, and 1,000 if <code>PlaybackMode</code> is
    #                   <code>ON_DEMAND</code>. </p>
    #            <p>The maximum value of 5,000 fragments corresponds to more than 80 minutes of video on
    #               streams with 1-second fragments, and more than 13 hours of video on streams with
    #               10-second fragments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     playback_mode: "LIVE" # One of: ["LIVE", "LIVE_REPLAY", "ON_DEMAND"],
    #     hls_fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP" # One of: ["PRODUCER_TIMESTAMP", "SERVER_TIMESTAMP"],
    #       timestamp_range: {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now
    #       }
    #     },
    #     container_format: "FRAGMENTED_MP4" # One of: ["FRAGMENTED_MP4", "MPEG_TS"],
    #     discontinuity_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER", "ON_DISCONTINUITY"],
    #     display_fragment_timestamp: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #     expires: 1,
    #     max_media_playlist_fragment_results: 1
    #   }
    #   options = {}
    #   response = client.get_hls_streaming_session_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hls_streaming_session_url: "HLSStreamingSessionURL"
    #   }
    # @return [Types::GetHLSStreamingSessionURLOutput]
    def get_hls_streaming_session_url(params = {}, options = {})
      request = build_request(:get_hls_streaming_session_url, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of images corresponding to each timestamp for a given time range,
    #             sampling interval, and image format configuration.</p>
    # @param [Hash, Types::GetImagesInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve the images. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream from which to retrieve the images. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :image_selector_type
    #   <p>The origin of the Server or Producer timestamps to use to generate the images.</p>
    # @option params [Time] :start_timestamp
    #   <p>The starting point from which the images should be generated. This <code>StartTimestamp</code> must be within an inclusive range of timestamps for an image to be returned.</p>
    # @option params [Time] :end_timestamp
    #   <p>The end timestamp for the range of images to be generated. If the time range between <code>StartTimestamp</code> and <code>EndTimestamp</code> is more than 300 seconds above <code>StartTimestamp</code>, you will receive an <code>IllegalArgumentException</code>.</p>
    # @option params [Integer] :sampling_interval
    #   <p>The time interval in milliseconds (ms) at which the images need to be generated from the stream. The minimum value that can be provided is 200 ms (5 images per second). If the timestamp range is less than the sampling interval, the image from the <code>startTimestamp</code> will be returned if available.
    #           </p>
    # @option params [String] :format
    #   <p>The format that will be used to encode the image.</p>
    # @option params [Hash<String, String>] :format_config
    #   <p>The list of a key-value pair structure that contains extra parameters that can be applied when the image is generated. The <code>FormatConfig</code> key is the <code>JPEGQuality</code>, which indicates the JPEG quality key to be used to generate the image.
    #               The <code>FormatConfig</code> value accepts ints from 1 to 100. If the value is 1, the image will be generated with less quality and the best compression. 
    #               If the value is 100, the image will be generated with the best quality and less compression. If no value is provided, the default value of the <code>JPEGQuality</code> key will be set to 80.</p>
    # @option params [Integer] :width_pixels
    #   <p>The width of the output image that is used in conjunction with the <code>HeightPixels</code> parameter. When both <code>WidthPixels</code> and <code>HeightPixels</code> parameters are provided, 
    #               the image will be stretched to fit the specified aspect ratio. If only the <code>WidthPixels</code> parameter is provided or if only the <code>HeightPixels</code> is provided, a <code>ValidationException</code> will be thrown. 
    #               If neither parameter is provided, the original image size from the stream will be returned.</p>
    # @option params [Integer] :height_pixels
    #   <p>The height of the output image that is used in conjunction with the <code>WidthPixels</code> parameter. When both <code>HeightPixels</code> and <code>WidthPixels</code> parameters are provided, the image will be stretched to fit the 
    #               specified aspect ratio. If only the <code>HeightPixels</code> parameter is provided, its original aspect ratio will be used to calculate the <code>WidthPixels</code> ratio. If neither parameter is provided, 
    #               the original image size will be returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of images to be returned by the API. </p>
    #            <note>
    #               <p>The default limit is 25 images per API response. Providing a <code>MaxResults</code> greater than this value will result in a page size of 25. Any additional results will be paginated. </p>
    #            </note>
    # @option params [String] :next_token
    #   <p>A token that specifies where to start paginating the next set of Images. This is the <code>GetImages:NextToken</code> from a previously truncated response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     image_selector_type: "PRODUCER_TIMESTAMP" # One of: ["PRODUCER_TIMESTAMP", "SERVER_TIMESTAMP"], # required
    #     start_timestamp: Time.now, # required
    #     end_timestamp: Time.now, # required
    #     sampling_interval: 1,
    #     format: "JPEG" # One of: ["JPEG", "PNG"], # required
    #     format_config: {
    #       "FormatConfigKey" => "FormatConfigValue"
    #     },
    #     width_pixels: 1,
    #     height_pixels: 1,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     images: [
    #       {
    #         time_stamp: Time.now,
    #         error: "NO_MEDIA" # One of: ["NO_MEDIA", "MEDIA_ERROR"],
    #         image_content: "ImageContent"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetImagesOutput]
    def get_images(params = {}, options = {})
      request = build_request(:get_images, params)
      request.send_request(options)
    end

    # <p>Gets media for a list of fragments (specified by fragment number) from the archived
    #             data in an Amazon Kinesis video stream.</p>
    #          <note>
    #             <p>You must first call the <code>GetDataEndpoint</code> API to get an endpoint.
    #                 Then send the <code>GetMediaForFragmentList</code> requests to this endpoint using
    #                 the <a href="https://docs.aws.amazon.com/cli/latest/reference/">--endpoint-url
    #                     parameter</a>. </p>
    #          </note>
    #          <p>For limits, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html">Kinesis Video Streams Limits</a>.</p>
    #          <important>
    #             <p>If an error is thrown after invoking a Kinesis Video Streams archived media API,
    #                 in addition to the HTTP status code and the response body, it includes the following
    #                 pieces of information: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>x-amz-ErrorType</code> HTTP header – contains a more specific error
    #                         type in addition to what the HTTP status code provides. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to
    #                         Amazon Web Services, the support team can better diagnose the problem if given the Request
    #                         Id.</p>
    #                </li>
    #             </ul>
    #             <p>Both the HTTP status code and the ErrorType header can be utilized to make
    #                 programmatic decisions about whether errors are retry-able and under what
    #                 conditions, as well as provide information on what actions the client programmer
    #                 might need to take in order to successfully try again.</p>
    #             <p>For more information, see the <b>Errors</b> section at
    #                 the bottom of this topic, as well as <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common Errors</a>.
    #             </p>
    #          </important>
    # @param [Hash, Types::GetMediaForFragmentListInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve fragment media. Specify either this parameter or the <code>StreamARN</code> parameter.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream from which to retrieve fragment media. Specify either this parameter or the <code>StreamName</code> parameter.</p>
    # @option params [Array<String>] :fragments
    #   <p>A list of the numbers of fragments for which to retrieve media. You retrieve these
    #               values with <a>ListFragments</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     fragments: ["FragmentNumberString"], # required
    #   }
    #   options = {}
    #   response = client.get_media_for_fragment_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "ContentType",
    #     payload: File.read("source_file")
    #   }
    # @return [Types::GetMediaForFragmentListOutput]
    def get_media_for_fragment_list(params = {}, options = {})
      request = build_request(:get_media_for_fragment_list, params)
      request.send_request(options)
    end

    # <p>Returns a list of <a>Fragment</a> objects from the specified stream and
    #             timestamp range within the archived data.</p>
    #          <p>Listing fragments is eventually consistent. This means that even if the producer
    #             receives an acknowledgment that a fragment is persisted, the result might not be
    #             returned immediately from a request to <code>ListFragments</code>. However, results are
    #             typically available in less than one second.</p>
    #          <note>
    #             <p>You must first call the <code>GetDataEndpoint</code> API to get an endpoint.
    #                 Then send the <code>ListFragments</code> requests to this endpoint using the <a href="https://docs.aws.amazon.com/cli/latest/reference/">--endpoint-url
    #                     parameter</a>. </p>
    #          </note>
    #          <important>
    #             <p>If an error is thrown after invoking a Kinesis Video Streams archived media API,
    #                 in addition to the HTTP status code and the response body, it includes the following
    #                 pieces of information: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>x-amz-ErrorType</code> HTTP header – contains a more specific error
    #                         type in addition to what the HTTP status code provides. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to
    #                         Amazon Web Services, the support team can better diagnose the problem if given the Request
    #                         Id.</p>
    #                </li>
    #             </ul>
    #             <p>Both the HTTP status code and the ErrorType header can be utilized to make
    #                 programmatic decisions about whether errors are retry-able and under what
    #                 conditions, as well as provide information on what actions the client programmer
    #                 might need to take in order to successfully try again.</p>
    #             <p>For more information, see the <b>Errors</b> section at
    #                 the bottom of this topic, as well as <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common Errors</a>.
    #             </p>
    #          </important>
    # @param [Hash, Types::ListFragmentsInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve a fragment list. Specify either this parameter or the <code>StreamARN</code> parameter.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream from which to retrieve a fragment list. Specify either this parameter or the <code>StreamName</code> parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of fragments to return. If the total number of fragments available is
    #               more than the value specified in <code>max-results</code>, then a <a>ListFragmentsOutput$NextToken</a> is provided in the output that you can use
    #               to resume pagination.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the <a>ListFragmentsOutput$NextToken</a> from a previously truncated
    #               response.</p>
    # @option params [Types::FragmentSelector] :fragment_selector
    #   <p>Describes the timestamp range and timestamp origin for the range of fragments to
    #               return.</p>
    #            <note>
    #               <p>This is only required when the <code>NextToken</code> isn't passed in the API.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP" # One of: ["PRODUCER_TIMESTAMP", "SERVER_TIMESTAMP"], # required
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_fragments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fragments: [
    #       {
    #         fragment_number: "FragmentNumberString",
    #         fragment_size_in_bytes: 1,
    #         producer_timestamp: Time.now,
    #         server_timestamp: Time.now,
    #         fragment_length_in_milliseconds: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFragmentsOutput]
    def list_fragments(params = {}, options = {})
      request = build_request(:list_fragments, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-kinesisvideoarchivedmedia'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
