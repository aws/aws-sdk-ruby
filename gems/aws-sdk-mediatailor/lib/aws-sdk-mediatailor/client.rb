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
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mediatailor)

module Aws::MediaTailor
  # An API client for Aws::MediaTailor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MediaTailor
    @identifier = :mediatailor

    add_plugin(::Aws::MediaTailor::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaTailor::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Configures Amazon CloudWatch log settings for a channel.</p>
    # @param [Hash, Types::ConfigureLogsForChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [Array<String>] :log_types
    #   <p>The types of logs to collect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     log_types: ["AS_RUN" # One of: ["AS_RUN"]], # required
    #   }
    #   options = {}
    #   response = client.configure_logs_for_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_name: "__string",
    #     log_types: ["AS_RUN" # One of: ["AS_RUN"]]
    #   }
    # @return [Types::ConfigureLogsForChannelOutput]
    def configure_logs_for_channel(params = {}, options = {})
      request = build_request(:configure_logs_for_channel, params)
      request.send_request(options)
    end

    # <p>Defines where AWS Elemental MediaTailor sends logs for the playback configuration.</p>
    # @param [Hash, Types::ConfigureLogsForPlaybackConfigurationInput] params
    # @option params [Integer] :percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your CloudWatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to <code>60</code>, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: <code>0</code> - <code>100</code> </p>
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    # @option params [Array<String>] :enabled_logging_strategies
    #   <p>The method used for collecting logs from AWS Elemental MediaTailor. To configure MediaTailor to send logs directly to Amazon CloudWatch Logs, choose <code>LEGACY_CLOUDWATCH</code>. To configure MediaTailor to send logs to CloudWatch, which then vends the logs to your destination of choice, choose <code>VENDED_LOGS</code>. Supported destinations are CloudWatch Logs log group, Amazon S3 bucket, and Amazon Data Firehose stream.</p> <p>To use vended logs, you must configure the delivery destination in Amazon CloudWatch, as described in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html#AWS-vended-logs-permissions-V2">Enable logging from AWS services, Logging that requires additional permissions [V2]</a>.</p>
    # @option params [Types::AdsInteractionLog] :ads_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the ADS.</p>
    # @option params [Types::ManifestServiceInteractionLog] :manifest_service_interaction_log
    #   <p>The event types that MediaTailor emits in logs for interactions with the origin server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     percent_enabled: 1, # required
    #     playback_configuration_name: "__string", # required
    #     enabled_logging_strategies: ["VENDED_LOGS" # One of: ["VENDED_LOGS", "LEGACY_CLOUDWATCH"]],
    #     ads_interaction_log: {
    #       publish_opt_in_event_types: ["RAW_ADS_RESPONSE" # One of: ["RAW_ADS_RESPONSE"]],
    #       exclude_event_types: ["AD_MARKER_FOUND" # One of: ["AD_MARKER_FOUND", "NON_AD_MARKER_FOUND", "MAKING_ADS_REQUEST", "MODIFIED_TARGET_URL", "VAST_REDIRECT", "EMPTY_VAST_RESPONSE", "EMPTY_VMAP_RESPONSE", "VAST_RESPONSE", "REDIRECTED_VAST_RESPONSE", "FILLED_AVAIL", "FILLED_OVERLAY_AVAIL", "BEACON_FIRED", "WARNING_NO_ADVERTISEMENTS", "WARNING_VPAID_AD_DROPPED", "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", "ERROR_UNKNOWN", "ERROR_UNKNOWN_HOST", "ERROR_DISALLOWED_HOST", "ERROR_ADS_IO", "ERROR_ADS_TIMEOUT", "ERROR_ADS_RESPONSE_PARSE", "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", "ERROR_ADS_INVALID_RESPONSE", "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", "ERROR_VAST_REDIRECT_MULTIPLE_VAST", "ERROR_VAST_REDIRECT_FAILED", "ERROR_VAST_MISSING_MEDIAFILES", "ERROR_VAST_MISSING_CREATIVES", "ERROR_VAST_MISSING_OVERLAYS", "ERROR_VAST_MISSING_IMPRESSION", "ERROR_VAST_INVALID_VAST_AD_TAG_URI", "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", "ERROR_VAST_MULTIPLE_LINEAR", "ERROR_VAST_INVALID_MEDIA_FILE", "ERROR_FIRING_BEACON_FAILED", "ERROR_PERSONALIZATION_DISABLED", "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", "INTERSTITIAL_VOD_SUCCESS", "INTERSTITIAL_VOD_FAILURE"]]
    #     },
    #     manifest_service_interaction_log: {
    #       exclude_event_types: ["GENERATED_MANIFEST" # One of: ["GENERATED_MANIFEST", "ORIGIN_MANIFEST", "SESSION_INITIALIZED", "TRACKING_RESPONSE", "CONFIG_SYNTAX_ERROR", "CONFIG_SECURITY_ERROR", "UNKNOWN_HOST", "TIMEOUT_ERROR", "CONNECTION_ERROR", "IO_ERROR", "UNKNOWN_ERROR", "HOST_DISALLOWED", "PARSING_ERROR", "MANIFEST_ERROR", "NO_MASTER_OR_MEDIA_PLAYLIST", "NO_MASTER_PLAYLIST", "NO_MEDIA_PLAYLIST", "INCOMPATIBLE_HLS_VERSION", "SCTE35_PARSING_ERROR", "INVALID_SINGLE_PERIOD_DASH_MANIFEST", "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", "LAST_PERIOD_MISSING_AUDIO", "LAST_PERIOD_MISSING_AUDIO_WARNING", "ERROR_ORIGIN_PREFIX_INTERPOLATION", "ERROR_ADS_INTERPOLATION", "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", "ERROR_CDN_AD_SEGMENT_INTERPOLATION", "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", "ERROR_SLATE_AD_URL_INTERPOLATION", "ERROR_PROFILE_NAME_INTERPOLATION", "ERROR_BUMPER_START_INTERPOLATION", "ERROR_BUMPER_END_INTERPOLATION"]]
    #     }
    #   }
    #   options = {}
    #   response = client.configure_logs_for_playback_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     percent_enabled: 1, # required
    #     playback_configuration_name: "__string",
    #     enabled_logging_strategies: ["VENDED_LOGS" # One of: ["VENDED_LOGS", "LEGACY_CLOUDWATCH"]],
    #     ads_interaction_log: {
    #       publish_opt_in_event_types: ["RAW_ADS_RESPONSE" # One of: ["RAW_ADS_RESPONSE"]],
    #       exclude_event_types: ["AD_MARKER_FOUND" # One of: ["AD_MARKER_FOUND", "NON_AD_MARKER_FOUND", "MAKING_ADS_REQUEST", "MODIFIED_TARGET_URL", "VAST_REDIRECT", "EMPTY_VAST_RESPONSE", "EMPTY_VMAP_RESPONSE", "VAST_RESPONSE", "REDIRECTED_VAST_RESPONSE", "FILLED_AVAIL", "FILLED_OVERLAY_AVAIL", "BEACON_FIRED", "WARNING_NO_ADVERTISEMENTS", "WARNING_VPAID_AD_DROPPED", "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", "ERROR_UNKNOWN", "ERROR_UNKNOWN_HOST", "ERROR_DISALLOWED_HOST", "ERROR_ADS_IO", "ERROR_ADS_TIMEOUT", "ERROR_ADS_RESPONSE_PARSE", "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", "ERROR_ADS_INVALID_RESPONSE", "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", "ERROR_VAST_REDIRECT_MULTIPLE_VAST", "ERROR_VAST_REDIRECT_FAILED", "ERROR_VAST_MISSING_MEDIAFILES", "ERROR_VAST_MISSING_CREATIVES", "ERROR_VAST_MISSING_OVERLAYS", "ERROR_VAST_MISSING_IMPRESSION", "ERROR_VAST_INVALID_VAST_AD_TAG_URI", "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", "ERROR_VAST_MULTIPLE_LINEAR", "ERROR_VAST_INVALID_MEDIA_FILE", "ERROR_FIRING_BEACON_FAILED", "ERROR_PERSONALIZATION_DISABLED", "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", "INTERSTITIAL_VOD_SUCCESS", "INTERSTITIAL_VOD_FAILURE"]]
    #     },
    #     manifest_service_interaction_log: {
    #       exclude_event_types: ["GENERATED_MANIFEST" # One of: ["GENERATED_MANIFEST", "ORIGIN_MANIFEST", "SESSION_INITIALIZED", "TRACKING_RESPONSE", "CONFIG_SYNTAX_ERROR", "CONFIG_SECURITY_ERROR", "UNKNOWN_HOST", "TIMEOUT_ERROR", "CONNECTION_ERROR", "IO_ERROR", "UNKNOWN_ERROR", "HOST_DISALLOWED", "PARSING_ERROR", "MANIFEST_ERROR", "NO_MASTER_OR_MEDIA_PLAYLIST", "NO_MASTER_PLAYLIST", "NO_MEDIA_PLAYLIST", "INCOMPATIBLE_HLS_VERSION", "SCTE35_PARSING_ERROR", "INVALID_SINGLE_PERIOD_DASH_MANIFEST", "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", "LAST_PERIOD_MISSING_AUDIO", "LAST_PERIOD_MISSING_AUDIO_WARNING", "ERROR_ORIGIN_PREFIX_INTERPOLATION", "ERROR_ADS_INTERPOLATION", "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", "ERROR_CDN_AD_SEGMENT_INTERPOLATION", "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", "ERROR_SLATE_AD_URL_INTERPOLATION", "ERROR_PROFILE_NAME_INTERPOLATION", "ERROR_BUMPER_START_INTERPOLATION", "ERROR_BUMPER_END_INTERPOLATION"]]
    #     }
    #   }
    # @return [Types::ConfigureLogsForPlaybackConfigurationOutput]
    def configure_logs_for_playback_configuration(params = {}, options = {})
      request = build_request(:configure_logs_for_playback_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::CreateChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [Types::SlateSource] :filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    # @option params [Array<Types::RequestOutputItem>] :outputs
    #   <p>The channel's output properties.</p>
    # @option params [String] :playback_mode
    #   <p>The type of playback mode to use for this channel.</p> <p> <code>LINEAR</code> - The programs in the schedule play once back-to-back in the schedule.</p> <p> <code>LOOP</code> - The programs in the schedule play back-to-back in an endless loop. When the last program in the schedule stops playing, playback loops back to the first program in the schedule.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the channel. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @option params [String] :tier
    #   <p>The tier of the channel.</p>
    # @option params [Types::TimeShiftConfiguration] :time_shift_configuration
    #   <p> The time-shifted viewing configuration you want to associate to the channel. </p>
    # @option params [Array<String>] :audiences
    #   <p>The list of audiences defined in channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string"
    #     },
    #     outputs: [ # required
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #         },
    #         manifest_name: "__string", # required
    #         source_group: "__string", # required
    #       }
    #     ],
    #     playback_mode: "LOOP" # One of: ["LOOP", "LINEAR"], # required
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     tier: "BASIC" # One of: ["BASIC", "STANDARD"],
    #     time_shift_configuration: {
    #       max_time_delay_seconds: 1, # required
    #     },
    #     audiences: ["String"]
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     channel_name: "__string",
    #     channel_state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     creation_time: Time.now,
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string"
    #     },
    #     last_modified_time: Time.now,
    #     outputs: [
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #         },
    #         manifest_name: "__string", # required
    #         playback_url: "__string", # required
    #         source_group: "__string", # required
    #       }
    #     ],
    #     playback_mode: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     tier: "__string",
    #     time_shift_configuration: {
    #       max_time_delay_seconds: 1, # required
    #     },
    #     audiences: ["String"]
    #   }
    # @return [Types::CreateChannelOutput]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>The live source configuration.</p>
    # @param [Hash, Types::CreateLiveSourceInput] params
    # @option params [Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this live source.</p>
    # @option params [String] :live_source_name
    #   <p>The name of the live source.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the live source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_live_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     live_source_name: "__string",
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateLiveSourceOutput]
    def create_live_source(params = {}, options = {})
      request = build_request(:create_live_source, params)
      request.send_request(options)
    end

    # <p>Creates a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Using ad prefetching</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::CreatePrefetchScheduleInput] params
    # @option params [Types::PrefetchConsumption] :consumption
    #   <p>The configuration settings for how and when MediaTailor consumes prefetched ads from the ad decision server for single prefetch schedules. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    # @option params [String] :name
    #   <p>The name to assign to the schedule request.</p>
    # @option params [String] :playback_configuration_name
    #   <p>The name to assign to the playback configuration.</p>
    # @option params [Types::PrefetchRetrieval] :retrieval
    #   <p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>
    # @option params [Types::RecurringPrefetchConfiguration] :recurring_prefetch_configuration
    #   <p>The configuration that defines how and when MediaTailor performs ad prefetching in a live event.</p>
    # @option params [String] :schedule_type
    #   <p>The frequency that MediaTailor creates prefetch schedules. <code>SINGLE</code> indicates that this schedule applies to one ad break. <code>RECURRING</code> indicates that MediaTailor automatically creates a schedule for each ad avail in a live event.</p> <p>For more information about the prefetch types and when you might use each, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Prefetching ads in Elemental MediaTailor.</a> </p>
    # @option params [String] :stream_id
    #   <p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If <code>StreamId</code> is specified, MediaTailor returns all of the prefetch schedules with an exact match on <code>StreamId</code>. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of <code>StreamId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consumption: {
    #       avail_matching_criteria: [
    #         {
    #           dynamic_variable: "__string", # required
    #           operator: "EQUALS" # One of: ["EQUALS"], # required
    #         }
    #       ],
    #       end_time: Time.now, # required
    #       start_time: Time.now
    #     },
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #     retrieval: {
    #       dynamic_variables: {
    #         "__string" => "__string"
    #       },
    #       end_time: Time.now, # required
    #       start_time: Time.now,
    #       traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #       traffic_shaping_retrieval_window: {
    #         retrieval_window_duration_seconds: 1
    #       },
    #       traffic_shaping_tps_configuration: {
    #         peak_tps: 1,
    #         peak_concurrent_users: 1
    #       }
    #     },
    #     recurring_prefetch_configuration: {
    #       start_time: Time.now,
    #       end_time: Time.now, # required
    #       recurring_consumption: { # required
    #         retrieved_ad_expiration_seconds: 1,
    #         avail_matching_criteria: [
    #           {
    #             dynamic_variable: "__string", # required
    #             operator: "EQUALS" # One of: ["EQUALS"], # required
    #           }
    #         ]
    #       },
    #       recurring_retrieval: { # required
    #         dynamic_variables: {
    #           "__string" => "__string"
    #         },
    #         delay_after_avail_end_seconds: 1,
    #         traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #         traffic_shaping_retrieval_window: {
    #           retrieval_window_duration_seconds: 1
    #         },
    #         traffic_shaping_tps_configuration: {
    #           peak_tps: 1,
    #           peak_concurrent_users: 1
    #         }
    #       }
    #     },
    #     schedule_type: "SINGLE" # One of: ["SINGLE", "RECURRING"],
    #     stream_id: "__string"
    #   }
    #   options = {}
    #   response = client.create_prefetch_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     consumption: {
    #       avail_matching_criteria: [
    #         {
    #           dynamic_variable: "__string", # required
    #           operator: "EQUALS" # One of: ["EQUALS"], # required
    #         }
    #       ],
    #       end_time: Time.now, # required
    #       start_time: Time.now
    #     },
    #     name: "__string",
    #     playback_configuration_name: "__string",
    #     retrieval: {
    #       dynamic_variables: {
    #         "__string" => "__string"
    #       },
    #       end_time: Time.now, # required
    #       start_time: Time.now,
    #       traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #       traffic_shaping_retrieval_window: {
    #         retrieval_window_duration_seconds: 1
    #       },
    #       traffic_shaping_tps_configuration: {
    #         peak_tps: 1,
    #         peak_concurrent_users: 1
    #       }
    #     },
    #     recurring_prefetch_configuration: {
    #       start_time: Time.now,
    #       end_time: Time.now, # required
    #       recurring_consumption: { # required
    #         retrieved_ad_expiration_seconds: 1,
    #         avail_matching_criteria: [
    #           {
    #             dynamic_variable: "__string", # required
    #             operator: "EQUALS" # One of: ["EQUALS"], # required
    #           }
    #         ]
    #       },
    #       recurring_retrieval: { # required
    #         dynamic_variables: {
    #           "__string" => "__string"
    #         },
    #         delay_after_avail_end_seconds: 1,
    #         traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #         traffic_shaping_retrieval_window: {
    #           retrieval_window_duration_seconds: 1
    #         },
    #         traffic_shaping_tps_configuration: {
    #           peak_tps: 1,
    #           peak_concurrent_users: 1
    #         }
    #       }
    #     },
    #     schedule_type: "SINGLE" # One of: ["SINGLE", "RECURRING"],
    #     stream_id: "__string"
    #   }
    # @return [Types::CreatePrefetchScheduleOutput]
    def create_prefetch_schedule(params = {}, options = {})
      request = build_request(:create_prefetch_schedule, params)
      request.send_request(options)
    end

    # <p>Creates a program within a channel. For information about programs, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html">Working with programs</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::CreateProgramInput] params
    # @option params [Array<Types::AdBreak>] :ad_breaks
    #   <p>The ad break configuration settings.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel for this Program.</p>
    # @option params [String] :live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    # @option params [String] :program_name
    #   <p>The name of the Program.</p>
    # @option params [Types::ScheduleConfiguration] :schedule_configuration
    #   <p>The schedule configuration settings.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    # @option params [String] :vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    # @option params [Array<Types::AudienceMedia>] :audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ad_breaks: [
    #       {
    #         message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #         offset_millis: 1, # required
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segmentation_event_id: 1,
    #               segmentation_upid_type: 1,
    #               segmentation_upid: "String",
    #               segmentation_type_id: 1,
    #               segment_num: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1
    #             }
    #           ]
    #         },
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     channel_name: "__string", # required
    #     live_source_name: "__string",
    #     program_name: "__string", # required
    #     schedule_configuration: { # required
    #       transition: { # required
    #         duration_millis: 1,
    #         relative_position: "BEFORE_PROGRAM" # One of: ["BEFORE_PROGRAM", "AFTER_PROGRAM"], # required
    #         relative_program: "__string",
    #         scheduled_start_time_millis: 1,
    #         type: "__string", # required
    #       },
    #       clip_range: {
    #         end_offset_millis: 1,
    #         start_offset_millis: 1
    #       }
    #     },
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string",
    #     audience_media: [
    #       {
    #         audience: "__string",
    #         alternate_media: [
    #           {
    #             source_location_name: "__string",
    #             live_source_name: "__string",
    #             vod_source_name: "__string",
    #             clip_range: {
    #               end_offset_millis: 1,
    #               start_offset_millis: 1
    #             },
    #             scheduled_start_time_millis: 1,
    #             ad_breaks: [
    #               {
    #                 message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #                 offset_millis: 1, # required
    #                 slate: {
    #                   source_location_name: "__string",
    #                   vod_source_name: "__string"
    #                 },
    #                 splice_insert_message: {
    #                   avail_num: 1,
    #                   avails_expected: 1,
    #                   splice_event_id: 1,
    #                   unique_program_id: 1
    #                 },
    #                 time_signal_message: {
    #                   segmentation_descriptors: [
    #                     {
    #                       segmentation_event_id: 1,
    #                       segmentation_upid_type: 1,
    #                       segmentation_upid: "String",
    #                       segmentation_type_id: 1,
    #                       segment_num: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1
    #                     }
    #                   ]
    #                 },
    #                 ad_break_metadata: [
    #                   {
    #                     key: "String", # required
    #                     value: "String", # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             duration_millis: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_program(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_breaks: [
    #       {
    #         message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #         offset_millis: 1, # required
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segmentation_event_id: 1,
    #               segmentation_upid_type: 1,
    #               segmentation_upid: "String",
    #               segmentation_type_id: 1,
    #               segment_num: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1
    #             }
    #           ]
    #         },
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     arn: "__string",
    #     channel_name: "__string",
    #     creation_time: Time.now,
    #     live_source_name: "__string",
    #     program_name: "__string",
    #     scheduled_start_time: Time.now,
    #     source_location_name: "__string",
    #     vod_source_name: "__string",
    #     clip_range: {
    #       end_offset_millis: 1,
    #       start_offset_millis: 1
    #     },
    #     duration_millis: 1,
    #     audience_media: [
    #       {
    #         audience: "__string",
    #         alternate_media: [
    #           {
    #             source_location_name: "__string",
    #             live_source_name: "__string",
    #             vod_source_name: "__string",
    #             clip_range: {
    #               end_offset_millis: 1,
    #               start_offset_millis: 1
    #             },
    #             scheduled_start_time_millis: 1,
    #             ad_breaks: [
    #               {
    #                 message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #                 offset_millis: 1, # required
    #                 slate: {
    #                   source_location_name: "__string",
    #                   vod_source_name: "__string"
    #                 },
    #                 splice_insert_message: {
    #                   avail_num: 1,
    #                   avails_expected: 1,
    #                   splice_event_id: 1,
    #                   unique_program_id: 1
    #                 },
    #                 time_signal_message: {
    #                   segmentation_descriptors: [
    #                     {
    #                       segmentation_event_id: 1,
    #                       segmentation_upid_type: 1,
    #                       segmentation_upid: "String",
    #                       segmentation_type_id: 1,
    #                       segment_num: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1
    #                     }
    #                   ]
    #                 },
    #                 ad_break_metadata: [
    #                   {
    #                     key: "String", # required
    #                     value: "String", # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             duration_millis: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::CreateProgramOutput]
    def create_program(params = {}, options = {})
      request = build_request(:create_program, params)
      request.send_request(options)
    end

    # <p>Creates a source location. A source location is a container for sources. For more information about source locations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html">Working with source locations</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::CreateSourceLocationInput] params
    # @option params [Types::AccessConfiguration] :access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    # @option params [Types::DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   <p>The optional configuration for the server that serves segments.</p>
    # @option params [Types::HttpConfiguration] :http_configuration
    #   <p>The source's HTTP package configurations.</p>
    # @option params [Array<Types::SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    # @option params [String] :source_location_name
    #   <p>The name associated with the source location.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the source location. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_configuration: {
    #       access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string"
    #       }
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: "__string"
    #     },
    #     http_configuration: { # required
    #       base_url: "__string", # required
    #     },
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_source_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_configuration: {
    #       access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string"
    #       }
    #     },
    #     arn: "__string",
    #     creation_time: Time.now,
    #     default_segment_delivery_configuration: {
    #       base_url: "__string"
    #     },
    #     http_configuration: {
    #       base_url: "__string", # required
    #     },
    #     last_modified_time: Time.now,
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateSourceLocationOutput]
    def create_source_location(params = {}, options = {})
      request = build_request(:create_source_location, params)
      request.send_request(options)
    end

    # <p>The VOD source configuration parameters.</p>
    # @param [Hash, Types::CreateVodSourceInput] params
    # @option params [Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this VOD source.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location for this VOD source.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the VOD source. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @option params [String] :vod_source_name
    #   <p>The name associated with the VOD source.&gt;</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     vod_source_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_vod_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     vod_source_name: "__string"
    #   }
    # @return [Types::CreateVodSourceOutput]
    def create_vod_source(params = {}, options = {})
      request = build_request(:create_vod_source, params)
      request.send_request(options)
    end

    # <p>Deletes a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DeleteChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelOutput]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>The channel policy to delete.</p>
    # @param [Hash, Types::DeleteChannelPolicyInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel associated with this channel policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteChannelPolicyOutput]
    def delete_channel_policy(params = {}, options = {})
      request = build_request(:delete_channel_policy, params)
      request.send_request(options)
    end

    # <p>The live source to delete.</p>
    # @param [Hash, Types::DeleteLiveSourceInput] params
    # @option params [String] :live_source_name
    #   <p>The name of the live source.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_live_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLiveSourceOutput]
    def delete_live_source(params = {}, options = {})
      request = build_request(:delete_live_source, params)
      request.send_request(options)
    end

    # <p>Deletes a playback configuration. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    # @param [Hash, Types::DeletePlaybackConfigurationInput] params
    # @option params [String] :name
    #   <p>The name of the playback configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_playback_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePlaybackConfigurationOutput]
    def delete_playback_configuration(params = {}, options = {})
      request = build_request(:delete_playback_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a prefetch schedule for a specific playback configuration. If you call <code>DeletePrefetchSchedule</code> on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code. For more information about ad prefetching, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Using ad prefetching</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DeletePrefetchScheduleInput] params
    # @option params [String] :name
    #   <p>The name of the prefetch schedule. If the action is successful, the service sends back an HTTP 204 response with an empty HTTP body.</p>
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration for this prefetch schedule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_prefetch_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePrefetchScheduleOutput]
    def delete_prefetch_schedule(params = {}, options = {})
      request = build_request(:delete_prefetch_schedule, params)
      request.send_request(options)
    end

    # <p>Deletes a program within a channel. For information about programs, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html">Working with programs</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DeleteProgramInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [String] :program_name
    #   <p>The name of the program.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_program(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProgramOutput]
    def delete_program(params = {}, options = {})
      request = build_request(:delete_program, params)
      request.send_request(options)
    end

    # <p>Deletes a source location. A source location is a container for sources. For more information about source locations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html">Working with source locations</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DeleteSourceLocationInput] params
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_source_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSourceLocationOutput]
    def delete_source_location(params = {}, options = {})
      request = build_request(:delete_source_location, params)
      request.send_request(options)
    end

    # <p>The video on demand (VOD) source to delete.</p>
    # @param [Hash, Types::DeleteVodSourceInput] params
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    # @option params [String] :vod_source_name
    #   <p>The name of the VOD source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_vod_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVodSourceOutput]
    def delete_vod_source(params = {}, options = {})
      request = build_request(:delete_vod_source, params)
      request.send_request(options)
    end

    # <p>Describes a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DescribeChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     channel_name: "__string",
    #     channel_state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     creation_time: Time.now,
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string"
    #     },
    #     last_modified_time: Time.now,
    #     outputs: [
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #         },
    #         manifest_name: "__string", # required
    #         playback_url: "__string", # required
    #         source_group: "__string", # required
    #       }
    #     ],
    #     playback_mode: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     tier: "__string",
    #     log_configuration: { # required
    #       log_types: ["AS_RUN" # One of: ["AS_RUN"]]
    #     },
    #     time_shift_configuration: {
    #       max_time_delay_seconds: 1, # required
    #     },
    #     audiences: ["String"]
    #   }
    # @return [Types::DescribeChannelOutput]
    def describe_channel(params = {}, options = {})
      request = build_request(:describe_channel, params)
      request.send_request(options)
    end

    # <p>The live source to describe.</p>
    # @param [Hash, Types::DescribeLiveSourceInput] params
    # @option params [String] :live_source_name
    #   <p>The name of the live source.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_live_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     live_source_name: "__string",
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeLiveSourceOutput]
    def describe_live_source(params = {}, options = {})
      request = build_request(:describe_live_source, params)
      request.send_request(options)
    end

    # <p>Describes a program within a channel. For information about programs, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html">Working with programs</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DescribeProgramInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel associated with this Program.</p>
    # @option params [String] :program_name
    #   <p>The name of the program.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_program(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_breaks: [
    #       {
    #         message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #         offset_millis: 1, # required
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segmentation_event_id: 1,
    #               segmentation_upid_type: 1,
    #               segmentation_upid: "String",
    #               segmentation_type_id: 1,
    #               segment_num: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1
    #             }
    #           ]
    #         },
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     arn: "__string",
    #     channel_name: "__string",
    #     creation_time: Time.now,
    #     live_source_name: "__string",
    #     program_name: "__string",
    #     scheduled_start_time: Time.now,
    #     source_location_name: "__string",
    #     vod_source_name: "__string",
    #     clip_range: {
    #       end_offset_millis: 1,
    #       start_offset_millis: 1
    #     },
    #     duration_millis: 1,
    #     audience_media: [
    #       {
    #         audience: "__string",
    #         alternate_media: [
    #           {
    #             source_location_name: "__string",
    #             live_source_name: "__string",
    #             vod_source_name: "__string",
    #             clip_range: {
    #               end_offset_millis: 1,
    #               start_offset_millis: 1
    #             },
    #             scheduled_start_time_millis: 1,
    #             ad_breaks: [
    #               {
    #                 message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #                 offset_millis: 1, # required
    #                 slate: {
    #                   source_location_name: "__string",
    #                   vod_source_name: "__string"
    #                 },
    #                 splice_insert_message: {
    #                   avail_num: 1,
    #                   avails_expected: 1,
    #                   splice_event_id: 1,
    #                   unique_program_id: 1
    #                 },
    #                 time_signal_message: {
    #                   segmentation_descriptors: [
    #                     {
    #                       segmentation_event_id: 1,
    #                       segmentation_upid_type: 1,
    #                       segmentation_upid: "String",
    #                       segmentation_type_id: 1,
    #                       segment_num: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1
    #                     }
    #                   ]
    #                 },
    #                 ad_break_metadata: [
    #                   {
    #                     key: "String", # required
    #                     value: "String", # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             duration_millis: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProgramOutput]
    def describe_program(params = {}, options = {})
      request = build_request(:describe_program, params)
      request.send_request(options)
    end

    # <p>Describes a source location. A source location is a container for sources. For more information about source locations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html">Working with source locations</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::DescribeSourceLocationInput] params
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_source_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_configuration: {
    #       access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string"
    #       }
    #     },
    #     arn: "__string",
    #     creation_time: Time.now,
    #     default_segment_delivery_configuration: {
    #       base_url: "__string"
    #     },
    #     http_configuration: {
    #       base_url: "__string", # required
    #     },
    #     last_modified_time: Time.now,
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeSourceLocationOutput]
    def describe_source_location(params = {}, options = {})
      request = build_request(:describe_source_location, params)
      request.send_request(options)
    end

    # <p>Provides details about a specific video on demand (VOD) source in a specific source location.</p>
    # @param [Hash, Types::DescribeVodSourceInput] params
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    # @option params [String] :vod_source_name
    #   <p>The name of the VOD Source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_vod_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_break_opportunities: [
    #       {
    #         offset_millis: 1, # required
    #       }
    #     ],
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     vod_source_name: "__string"
    #   }
    # @return [Types::DescribeVodSourceOutput]
    def describe_vod_source(params = {}, options = {})
      request = build_request(:describe_vod_source, params)
      request.send_request(options)
    end

    # <p>Returns the channel's IAM policy. IAM policies are used to control access to your channel.</p>
    # @param [Hash, Types::GetChannelPolicyInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel associated with this Channel Policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "__string"
    #   }
    # @return [Types::GetChannelPolicyOutput]
    def get_channel_policy(params = {}, options = {})
      request = build_request(:get_channel_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about your channel's schedule.</p>
    # @param [Hash, Types::GetChannelScheduleInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel associated with this Channel Schedule.</p>
    # @option params [String] :duration_minutes
    #   <p>The duration in minutes of the channel schedule.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel schedules that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> channel schedules, use the value of <code>NextToken</code> in the response to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>(Optional) If the playback configuration has more than <code>MaxResults</code> channel schedules, use <code>NextToken</code> to get the second and subsequent pages of results.</p> <p>For the first <code>GetChannelScheduleRequest</code> request, omit this value.</p> <p>For the second and subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request.</p> <p>If the previous response didn't include a <code>NextToken</code> element, there are no more channel schedules to get.</p>
    # @option params [String] :audience
    #   <p>The single audience for GetChannelScheduleRequest.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     duration_minutes: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     audience: "__string"
    #   }
    #   options = {}
    #   response = client.get_channel_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         approximate_duration_seconds: 1,
    #         approximate_start_time: Time.now,
    #         arn: "__string", # required
    #         channel_name: "__string", # required
    #         live_source_name: "__string",
    #         program_name: "__string", # required
    #         schedule_ad_breaks: [
    #           {
    #             approximate_duration_seconds: 1,
    #             approximate_start_time: Time.now,
    #             source_location_name: "__string",
    #             vod_source_name: "__string"
    #           }
    #         ],
    #         schedule_entry_type: "PROGRAM" # One of: ["PROGRAM", "FILLER_SLATE", "ALTERNATE_MEDIA"],
    #         source_location_name: "__string", # required
    #         vod_source_name: "__string",
    #         audiences: ["String"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::GetChannelScheduleOutput]
    def get_channel_schedule(params = {}, options = {})
      request = build_request(:get_channel_schedule, params)
      request.send_request(options)
    end

    # <p>Retrieves a playback configuration. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    # @param [Hash, Types::GetPlaybackConfigurationInput] params
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_playback_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_decision_server_url: "__string",
    #     avail_suppression: {
    #       mode: "OFF" # One of: ["OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"],
    #       value: "__string",
    #       fill_policy: "FULL_AVAIL_ONLY" # One of: ["FULL_AVAIL_ONLY", "PARTIAL_AVAIL"]
    #     },
    #     bumper: {
    #       end_url: "__string",
    #       start_url: "__string"
    #     },
    #     cdn_configuration: {
    #       ad_segment_url_prefix: "__string",
    #       content_segment_url_prefix: "__string"
    #     },
    #     configuration_aliases: {
    #       "__string" => {
    #         "__string" => "__string"
    #       }
    #     },
    #     dash_configuration: {
    #       manifest_endpoint_prefix: "__string",
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD" # One of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #     },
    #     hls_configuration: {
    #       manifest_endpoint_prefix: "__string"
    #     },
    #     insertion_mode: "STITCHED_ONLY" # One of: ["STITCHED_ONLY", "PLAYER_SELECT"],
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: "__string",
    #       max_duration_seconds: 1
    #     },
    #     log_configuration: {
    #       percent_enabled: 1, # required
    #       enabled_logging_strategies: ["VENDED_LOGS" # One of: ["VENDED_LOGS", "LEGACY_CLOUDWATCH"]], # required
    #       ads_interaction_log: {
    #         publish_opt_in_event_types: ["RAW_ADS_RESPONSE" # One of: ["RAW_ADS_RESPONSE"]],
    #         exclude_event_types: ["AD_MARKER_FOUND" # One of: ["AD_MARKER_FOUND", "NON_AD_MARKER_FOUND", "MAKING_ADS_REQUEST", "MODIFIED_TARGET_URL", "VAST_REDIRECT", "EMPTY_VAST_RESPONSE", "EMPTY_VMAP_RESPONSE", "VAST_RESPONSE", "REDIRECTED_VAST_RESPONSE", "FILLED_AVAIL", "FILLED_OVERLAY_AVAIL", "BEACON_FIRED", "WARNING_NO_ADVERTISEMENTS", "WARNING_VPAID_AD_DROPPED", "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", "ERROR_UNKNOWN", "ERROR_UNKNOWN_HOST", "ERROR_DISALLOWED_HOST", "ERROR_ADS_IO", "ERROR_ADS_TIMEOUT", "ERROR_ADS_RESPONSE_PARSE", "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", "ERROR_ADS_INVALID_RESPONSE", "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", "ERROR_VAST_REDIRECT_MULTIPLE_VAST", "ERROR_VAST_REDIRECT_FAILED", "ERROR_VAST_MISSING_MEDIAFILES", "ERROR_VAST_MISSING_CREATIVES", "ERROR_VAST_MISSING_OVERLAYS", "ERROR_VAST_MISSING_IMPRESSION", "ERROR_VAST_INVALID_VAST_AD_TAG_URI", "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", "ERROR_VAST_MULTIPLE_LINEAR", "ERROR_VAST_INVALID_MEDIA_FILE", "ERROR_FIRING_BEACON_FAILED", "ERROR_PERSONALIZATION_DISABLED", "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", "INTERSTITIAL_VOD_SUCCESS", "INTERSTITIAL_VOD_FAILURE"]]
    #       },
    #       manifest_service_interaction_log: {
    #         exclude_event_types: ["GENERATED_MANIFEST" # One of: ["GENERATED_MANIFEST", "ORIGIN_MANIFEST", "SESSION_INITIALIZED", "TRACKING_RESPONSE", "CONFIG_SYNTAX_ERROR", "CONFIG_SECURITY_ERROR", "UNKNOWN_HOST", "TIMEOUT_ERROR", "CONNECTION_ERROR", "IO_ERROR", "UNKNOWN_ERROR", "HOST_DISALLOWED", "PARSING_ERROR", "MANIFEST_ERROR", "NO_MASTER_OR_MEDIA_PLAYLIST", "NO_MASTER_PLAYLIST", "NO_MEDIA_PLAYLIST", "INCOMPATIBLE_HLS_VERSION", "SCTE35_PARSING_ERROR", "INVALID_SINGLE_PERIOD_DASH_MANIFEST", "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", "LAST_PERIOD_MISSING_AUDIO", "LAST_PERIOD_MISSING_AUDIO_WARNING", "ERROR_ORIGIN_PREFIX_INTERPOLATION", "ERROR_ADS_INTERPOLATION", "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", "ERROR_CDN_AD_SEGMENT_INTERPOLATION", "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", "ERROR_SLATE_AD_URL_INTERPOLATION", "ERROR_PROFILE_NAME_INTERPOLATION", "ERROR_BUMPER_START_INTERPOLATION", "ERROR_BUMPER_END_INTERPOLATION"]]
    #       }
    #     },
    #     manifest_processing_rules: {
    #       ad_marker_passthrough: {
    #         enabled: false
    #       }
    #     },
    #     name: "__string",
    #     personalization_threshold_seconds: 1,
    #     playback_configuration_arn: "__string",
    #     playback_endpoint_prefix: "__string",
    #     session_initialization_endpoint_prefix: "__string",
    #     slate_ad_url: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     transcode_profile_name: "__string",
    #     video_content_source_url: "__string",
    #     ad_conditioning_configuration: {
    #       streaming_media_file_conditioning: "TRANSCODE" # One of: ["TRANSCODE", "NONE"], # required
    #     }
    #   }
    # @return [Types::GetPlaybackConfigurationOutput]
    def get_playback_configuration(params = {}, options = {})
      request = build_request(:get_playback_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a prefetch schedule for a playback configuration. A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain ads before an ad break happens. For more information about ad prefetching, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html">Using ad prefetching</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::GetPrefetchScheduleInput] params
    # @option params [String] :name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    # @option params [String] :playback_configuration_name
    #   <p>Returns information about the prefetch schedule for a specific playback configuration. If you call <code>GetPrefetchSchedule</code> on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_prefetch_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     consumption: {
    #       avail_matching_criteria: [
    #         {
    #           dynamic_variable: "__string", # required
    #           operator: "EQUALS" # One of: ["EQUALS"], # required
    #         }
    #       ],
    #       end_time: Time.now, # required
    #       start_time: Time.now
    #     },
    #     name: "__string",
    #     playback_configuration_name: "__string",
    #     retrieval: {
    #       dynamic_variables: {
    #         "__string" => "__string"
    #       },
    #       end_time: Time.now, # required
    #       start_time: Time.now,
    #       traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #       traffic_shaping_retrieval_window: {
    #         retrieval_window_duration_seconds: 1
    #       },
    #       traffic_shaping_tps_configuration: {
    #         peak_tps: 1,
    #         peak_concurrent_users: 1
    #       }
    #     },
    #     schedule_type: "SINGLE" # One of: ["SINGLE", "RECURRING"],
    #     recurring_prefetch_configuration: {
    #       start_time: Time.now,
    #       end_time: Time.now, # required
    #       recurring_consumption: { # required
    #         retrieved_ad_expiration_seconds: 1,
    #         avail_matching_criteria: [
    #           {
    #             dynamic_variable: "__string", # required
    #             operator: "EQUALS" # One of: ["EQUALS"], # required
    #           }
    #         ]
    #       },
    #       recurring_retrieval: { # required
    #         dynamic_variables: {
    #           "__string" => "__string"
    #         },
    #         delay_after_avail_end_seconds: 1,
    #         traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #         traffic_shaping_retrieval_window: {
    #           retrieval_window_duration_seconds: 1
    #         },
    #         traffic_shaping_tps_configuration: {
    #           peak_tps: 1,
    #           peak_concurrent_users: 1
    #         }
    #       }
    #     },
    #     stream_id: "__string"
    #   }
    # @return [Types::GetPrefetchScheduleOutput]
    def get_prefetch_schedule(params = {}, options = {})
      request = build_request(:get_prefetch_schedule, params)
      request.send_request(options)
    end

    # <p>Lists the alerts that are associated with a MediaTailor channel assembly resource.</p>
    # @param [Hash, Types::ListAlertsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of alerts that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> alerts, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListAlerts</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_alerts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         alert_code: "__string", # required
    #         alert_message: "__string", # required
    #         last_modified_time: Time.now, # required
    #         related_resource_arns: ["__string"], # required
    #         resource_arn: "__string", # required
    #         category: "SCHEDULING_ERROR" # One of: ["SCHEDULING_ERROR", "PLAYBACK_WARNING", "INFO"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListAlertsOutput]
    def list_alerts(params = {}, options = {})
      request = build_request(:list_alerts, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the channels that are associated with the current AWS account.</p>
    # @param [Hash, Types::ListChannelsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> channels, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListChannels</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "__string", # required
    #         channel_name: "__string", # required
    #         channel_state: "__string", # required
    #         creation_time: Time.now,
    #         filler_slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         last_modified_time: Time.now,
    #         outputs: [ # required
    #           {
    #             dash_playlist_settings: {
    #               manifest_window_seconds: 1,
    #               min_buffer_time_seconds: 1,
    #               min_update_period_seconds: 1,
    #               suggested_presentation_delay_seconds: 1
    #             },
    #             hls_playlist_settings: {
    #               manifest_window_seconds: 1,
    #               ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #             },
    #             manifest_name: "__string", # required
    #             playback_url: "__string", # required
    #             source_group: "__string", # required
    #           }
    #         ],
    #         playback_mode: "__string", # required
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         tier: "__string", # required
    #         log_configuration: { # required
    #           log_types: ["AS_RUN" # One of: ["AS_RUN"]]
    #         },
    #         audiences: ["String"]
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListChannelsOutput]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Lists the live sources contained in a source location. A source represents a piece of content.</p>
    # @param [Hash, Types::ListLiveSourcesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of live sources that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> live sources, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListLiveSources</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this Live Sources list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_live_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "__string", # required
    #         creation_time: Time.now,
    #         http_package_configurations: [ # required
    #           {
    #             path: "__string", # required
    #             source_group: "__string", # required
    #             type: "DASH" # One of: ["DASH", "HLS"], # required
    #           }
    #         ],
    #         last_modified_time: Time.now,
    #         live_source_name: "__string", # required
    #         source_location_name: "__string", # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListLiveSourcesOutput]
    def list_live_sources(params = {}, options = {})
      request = build_request(:list_live_sources, params)
      request.send_request(options)
    end

    # <p>Retrieves existing playback configurations. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with Configurations in AWS Elemental MediaTailor</a>.</p>
    # @param [Hash, Types::ListPlaybackConfigurationsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of playback configurations that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> playback configurations, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListPlaybackConfigurations</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_playback_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         ad_decision_server_url: "__string",
    #         avail_suppression: {
    #           mode: "OFF" # One of: ["OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"],
    #           value: "__string",
    #           fill_policy: "FULL_AVAIL_ONLY" # One of: ["FULL_AVAIL_ONLY", "PARTIAL_AVAIL"]
    #         },
    #         bumper: {
    #           end_url: "__string",
    #           start_url: "__string"
    #         },
    #         cdn_configuration: {
    #           ad_segment_url_prefix: "__string",
    #           content_segment_url_prefix: "__string"
    #         },
    #         configuration_aliases: {
    #           "__string" => {
    #             "__string" => "__string"
    #           }
    #         },
    #         dash_configuration: {
    #           manifest_endpoint_prefix: "__string",
    #           mpd_location: "__string",
    #           origin_manifest_type: "SINGLE_PERIOD" # One of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #         },
    #         hls_configuration: {
    #           manifest_endpoint_prefix: "__string"
    #         },
    #         insertion_mode: "STITCHED_ONLY" # One of: ["STITCHED_ONLY", "PLAYER_SELECT"],
    #         live_pre_roll_configuration: {
    #           ad_decision_server_url: "__string",
    #           max_duration_seconds: 1
    #         },
    #         log_configuration: {
    #           percent_enabled: 1, # required
    #           enabled_logging_strategies: ["VENDED_LOGS" # One of: ["VENDED_LOGS", "LEGACY_CLOUDWATCH"]], # required
    #           ads_interaction_log: {
    #             publish_opt_in_event_types: ["RAW_ADS_RESPONSE" # One of: ["RAW_ADS_RESPONSE"]],
    #             exclude_event_types: ["AD_MARKER_FOUND" # One of: ["AD_MARKER_FOUND", "NON_AD_MARKER_FOUND", "MAKING_ADS_REQUEST", "MODIFIED_TARGET_URL", "VAST_REDIRECT", "EMPTY_VAST_RESPONSE", "EMPTY_VMAP_RESPONSE", "VAST_RESPONSE", "REDIRECTED_VAST_RESPONSE", "FILLED_AVAIL", "FILLED_OVERLAY_AVAIL", "BEACON_FIRED", "WARNING_NO_ADVERTISEMENTS", "WARNING_VPAID_AD_DROPPED", "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", "ERROR_UNKNOWN", "ERROR_UNKNOWN_HOST", "ERROR_DISALLOWED_HOST", "ERROR_ADS_IO", "ERROR_ADS_TIMEOUT", "ERROR_ADS_RESPONSE_PARSE", "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", "ERROR_ADS_INVALID_RESPONSE", "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", "ERROR_VAST_REDIRECT_MULTIPLE_VAST", "ERROR_VAST_REDIRECT_FAILED", "ERROR_VAST_MISSING_MEDIAFILES", "ERROR_VAST_MISSING_CREATIVES", "ERROR_VAST_MISSING_OVERLAYS", "ERROR_VAST_MISSING_IMPRESSION", "ERROR_VAST_INVALID_VAST_AD_TAG_URI", "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", "ERROR_VAST_MULTIPLE_LINEAR", "ERROR_VAST_INVALID_MEDIA_FILE", "ERROR_FIRING_BEACON_FAILED", "ERROR_PERSONALIZATION_DISABLED", "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", "INTERSTITIAL_VOD_SUCCESS", "INTERSTITIAL_VOD_FAILURE"]]
    #           },
    #           manifest_service_interaction_log: {
    #             exclude_event_types: ["GENERATED_MANIFEST" # One of: ["GENERATED_MANIFEST", "ORIGIN_MANIFEST", "SESSION_INITIALIZED", "TRACKING_RESPONSE", "CONFIG_SYNTAX_ERROR", "CONFIG_SECURITY_ERROR", "UNKNOWN_HOST", "TIMEOUT_ERROR", "CONNECTION_ERROR", "IO_ERROR", "UNKNOWN_ERROR", "HOST_DISALLOWED", "PARSING_ERROR", "MANIFEST_ERROR", "NO_MASTER_OR_MEDIA_PLAYLIST", "NO_MASTER_PLAYLIST", "NO_MEDIA_PLAYLIST", "INCOMPATIBLE_HLS_VERSION", "SCTE35_PARSING_ERROR", "INVALID_SINGLE_PERIOD_DASH_MANIFEST", "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", "LAST_PERIOD_MISSING_AUDIO", "LAST_PERIOD_MISSING_AUDIO_WARNING", "ERROR_ORIGIN_PREFIX_INTERPOLATION", "ERROR_ADS_INTERPOLATION", "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", "ERROR_CDN_AD_SEGMENT_INTERPOLATION", "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", "ERROR_SLATE_AD_URL_INTERPOLATION", "ERROR_PROFILE_NAME_INTERPOLATION", "ERROR_BUMPER_START_INTERPOLATION", "ERROR_BUMPER_END_INTERPOLATION"]]
    #           }
    #         },
    #         manifest_processing_rules: {
    #           ad_marker_passthrough: {
    #             enabled: false
    #           }
    #         },
    #         name: "__string",
    #         personalization_threshold_seconds: 1,
    #         playback_configuration_arn: "__string",
    #         playback_endpoint_prefix: "__string",
    #         session_initialization_endpoint_prefix: "__string",
    #         slate_ad_url: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         transcode_profile_name: "__string",
    #         video_content_source_url: "__string",
    #         ad_conditioning_configuration: {
    #           streaming_media_file_conditioning: "TRANSCODE" # One of: ["TRANSCODE", "NONE"], # required
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListPlaybackConfigurationsOutput]
    def list_playback_configurations(params = {}, options = {})
      request = build_request(:list_playback_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the prefetch schedules for a playback configuration.</p>
    # @param [Hash, Types::ListPrefetchSchedulesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of prefetch schedules that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> prefetch schedules, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListPrefetchSchedules</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @option params [String] :playback_configuration_name
    #   <p>Retrieves the prefetch schedule(s) for a specific playback configuration.</p>
    # @option params [String] :schedule_type
    #   <p>The type of prefetch schedules that you want to list. <code>SINGLE</code> indicates that you want to list the configured single prefetch schedules. <code>RECURRING</code> indicates that you want to list the configured recurring prefetch schedules. <code>ALL</code> indicates that you want to list all configured prefetch schedules.</p>
    # @option params [String] :stream_id
    #   <p>An optional filtering parameter whereby MediaTailor filters the prefetch schedules to include only specific streams.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     playback_configuration_name: "__string", # required
    #     schedule_type: "SINGLE" # One of: ["SINGLE", "RECURRING", "ALL"],
    #     stream_id: "__string"
    #   }
    #   options = {}
    #   response = client.list_prefetch_schedules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "__string", # required
    #         consumption: {
    #           avail_matching_criteria: [
    #             {
    #               dynamic_variable: "__string", # required
    #               operator: "EQUALS" # One of: ["EQUALS"], # required
    #             }
    #           ],
    #           end_time: Time.now, # required
    #           start_time: Time.now
    #         },
    #         name: "__string", # required
    #         playback_configuration_name: "__string", # required
    #         retrieval: {
    #           dynamic_variables: {
    #             "__string" => "__string"
    #           },
    #           end_time: Time.now, # required
    #           start_time: Time.now,
    #           traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #           traffic_shaping_retrieval_window: {
    #             retrieval_window_duration_seconds: 1
    #           },
    #           traffic_shaping_tps_configuration: {
    #             peak_tps: 1,
    #             peak_concurrent_users: 1
    #           }
    #         },
    #         schedule_type: "SINGLE" # One of: ["SINGLE", "RECURRING"],
    #         recurring_prefetch_configuration: {
    #           start_time: Time.now,
    #           end_time: Time.now, # required
    #           recurring_consumption: { # required
    #             retrieved_ad_expiration_seconds: 1,
    #             avail_matching_criteria: [
    #               {
    #                 dynamic_variable: "__string", # required
    #                 operator: "EQUALS" # One of: ["EQUALS"], # required
    #               }
    #             ]
    #           },
    #           recurring_retrieval: { # required
    #             dynamic_variables: {
    #               "__string" => "__string"
    #             },
    #             delay_after_avail_end_seconds: 1,
    #             traffic_shaping_type: "RETRIEVAL_WINDOW" # One of: ["RETRIEVAL_WINDOW", "TPS"],
    #             traffic_shaping_retrieval_window: {
    #               retrieval_window_duration_seconds: 1
    #             },
    #             traffic_shaping_tps_configuration: {
    #               peak_tps: 1,
    #               peak_concurrent_users: 1
    #             }
    #           }
    #         },
    #         stream_id: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListPrefetchSchedulesOutput]
    def list_prefetch_schedules(params = {}, options = {})
      request = build_request(:list_prefetch_schedules, params)
      request.send_request(options)
    end

    # <p>Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.</p>
    # @param [Hash, Types::ListSourceLocationsInput] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of source locations that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> source locations, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListSourceLocations</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_source_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         access_configuration: {
    #           access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #           secrets_manager_access_token_configuration: {
    #             header_name: "__string",
    #             secret_arn: "__string",
    #             secret_string_key: "__string"
    #           }
    #         },
    #         arn: "__string", # required
    #         creation_time: Time.now,
    #         default_segment_delivery_configuration: {
    #           base_url: "__string"
    #         },
    #         http_configuration: { # required
    #           base_url: "__string", # required
    #         },
    #         last_modified_time: Time.now,
    #         segment_delivery_configurations: [
    #           {
    #             base_url: "__string",
    #             name: "__string"
    #           }
    #         ],
    #         source_location_name: "__string", # required
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListSourceLocationsOutput]
    def list_source_locations(params = {}, options = {})
      request = build_request(:list_source_locations, params)
      request.send_request(options)
    end

    # <p>A list of tags that are associated with this resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the VOD sources contained in a source location. A source represents a piece of content.</p>
    # @param [Hash, Types::ListVodSourcesInput] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of VOD sources that you want MediaTailor to return in response to the current request. If there are more than <code>MaxResults</code> VOD sources, use the value of <code>NextToken</code> in the response to get the next page of results.</p> <p>The default value is 100. MediaTailor uses DynamoDB-based pagination, which means that a response might contain fewer than <code>MaxResults</code> items, including 0 items, even when more results are available. To retrieve all results, you must continue making requests using the <code>NextToken</code> value from each response until the response no longer includes a <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p> <p>For the first <code>ListVodSources</code> request, omit this value. For subsequent requests, get the value of <code>NextToken</code> from the previous response and specify that value for <code>NextToken</code> in the request. Continue making requests until the response no longer includes a <code>NextToken</code> value, which indicates that all results have been retrieved.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this VOD Source list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_vod_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "__string", # required
    #         creation_time: Time.now,
    #         http_package_configurations: [ # required
    #           {
    #             path: "__string", # required
    #             source_group: "__string", # required
    #             type: "DASH" # One of: ["DASH", "HLS"], # required
    #           }
    #         ],
    #         last_modified_time: Time.now,
    #         source_location_name: "__string", # required
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         vod_source_name: "__string", # required
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListVodSourcesOutput]
    def list_vod_sources(params = {}, options = {})
      request = build_request(:list_vod_sources, params)
      request.send_request(options)
    end

    # <p>Creates an IAM policy for the channel. IAM policies are used to control access to your channel.</p>
    # @param [Hash, Types::PutChannelPolicyInput] params
    # @option params [String] :channel_name
    #   <p>The channel name associated with this Channel Policy.</p>
    # @option params [String] :policy
    #   <p>Adds an IAM role that determines the permissions of your channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     policy: "__string", # required
    #   }
    #   options = {}
    #   response = client.put_channel_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutChannelPolicyOutput]
    def put_channel_policy(params = {}, options = {})
      request = build_request(:put_channel_policy, params)
      request.send_request(options)
    end

    # <p>Creates a playback configuration. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    # @param [Hash, Types::PutPlaybackConfigurationInput] params
    # @option params [String] :ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    # @option params [Types::AvailSuppression] :avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    # @option params [Types::Bumper] :bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    # @option params [Types::CdnConfiguration] :cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    # @option params [Hash<String, Hash<String, String>>] :configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domains.html">Domain Variables</a>.</p>
    # @option params [Types::DashConfigurationForPut] :dash_configuration
    #   <p>The configuration for DASH content.</p>
    # @option params [String] :insertion_mode
    #   <p>The setting that controls whether players can use stitched or guided ad insertion. The default, <code>STITCHED_ONLY</code>, forces all player sessions to use stitched (server-side) ad insertion. Choosing <code>PLAYER_SELECT</code> allows players to select either stitched or guided ad insertion at session-initialization time. The default for players that do not specify an insertion mode is stitched.</p>
    # @option params [Types::LivePreRollConfiguration] :live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    # @option params [Types::ManifestProcessingRules] :manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    # @option params [Integer] :personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    # @option params [String] :slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the playback configuration. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @option params [String] :transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    # @option params [String] :video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    # @option params [Types::AdConditioningConfiguration] :ad_conditioning_configuration
    #   <p>The setting that indicates what conditioning MediaTailor will perform on ads that the ad decision server (ADS) returns, and what priority MediaTailor uses when inserting ads. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ad_decision_server_url: "__string",
    #     avail_suppression: {
    #       mode: "OFF" # One of: ["OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"],
    #       value: "__string",
    #       fill_policy: "FULL_AVAIL_ONLY" # One of: ["FULL_AVAIL_ONLY", "PARTIAL_AVAIL"]
    #     },
    #     bumper: {
    #       end_url: "__string",
    #       start_url: "__string"
    #     },
    #     cdn_configuration: {
    #       ad_segment_url_prefix: "__string",
    #       content_segment_url_prefix: "__string"
    #     },
    #     configuration_aliases: {
    #       "__string" => {
    #         "__string" => "__string"
    #       }
    #     },
    #     dash_configuration: {
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD" # One of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #     },
    #     insertion_mode: "STITCHED_ONLY" # One of: ["STITCHED_ONLY", "PLAYER_SELECT"],
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: "__string",
    #       max_duration_seconds: 1
    #     },
    #     manifest_processing_rules: {
    #       ad_marker_passthrough: {
    #         enabled: false
    #       }
    #     },
    #     name: "__string", # required
    #     personalization_threshold_seconds: 1,
    #     slate_ad_url: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     transcode_profile_name: "__string",
    #     video_content_source_url: "__string",
    #     ad_conditioning_configuration: {
    #       streaming_media_file_conditioning: "TRANSCODE" # One of: ["TRANSCODE", "NONE"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_playback_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_decision_server_url: "__string",
    #     avail_suppression: {
    #       mode: "OFF" # One of: ["OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"],
    #       value: "__string",
    #       fill_policy: "FULL_AVAIL_ONLY" # One of: ["FULL_AVAIL_ONLY", "PARTIAL_AVAIL"]
    #     },
    #     bumper: {
    #       end_url: "__string",
    #       start_url: "__string"
    #     },
    #     cdn_configuration: {
    #       ad_segment_url_prefix: "__string",
    #       content_segment_url_prefix: "__string"
    #     },
    #     configuration_aliases: {
    #       "__string" => {
    #         "__string" => "__string"
    #       }
    #     },
    #     dash_configuration: {
    #       manifest_endpoint_prefix: "__string",
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD" # One of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #     },
    #     hls_configuration: {
    #       manifest_endpoint_prefix: "__string"
    #     },
    #     insertion_mode: "STITCHED_ONLY" # One of: ["STITCHED_ONLY", "PLAYER_SELECT"],
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: "__string",
    #       max_duration_seconds: 1
    #     },
    #     log_configuration: {
    #       percent_enabled: 1, # required
    #       enabled_logging_strategies: ["VENDED_LOGS" # One of: ["VENDED_LOGS", "LEGACY_CLOUDWATCH"]], # required
    #       ads_interaction_log: {
    #         publish_opt_in_event_types: ["RAW_ADS_RESPONSE" # One of: ["RAW_ADS_RESPONSE"]],
    #         exclude_event_types: ["AD_MARKER_FOUND" # One of: ["AD_MARKER_FOUND", "NON_AD_MARKER_FOUND", "MAKING_ADS_REQUEST", "MODIFIED_TARGET_URL", "VAST_REDIRECT", "EMPTY_VAST_RESPONSE", "EMPTY_VMAP_RESPONSE", "VAST_RESPONSE", "REDIRECTED_VAST_RESPONSE", "FILLED_AVAIL", "FILLED_OVERLAY_AVAIL", "BEACON_FIRED", "WARNING_NO_ADVERTISEMENTS", "WARNING_VPAID_AD_DROPPED", "WARNING_URL_VARIABLE_SUBSTITUTION_FAILED", "ERROR_UNKNOWN", "ERROR_UNKNOWN_HOST", "ERROR_DISALLOWED_HOST", "ERROR_ADS_IO", "ERROR_ADS_TIMEOUT", "ERROR_ADS_RESPONSE_PARSE", "ERROR_ADS_RESPONSE_UNKNOWN_ROOT_ELEMENT", "ERROR_ADS_INVALID_RESPONSE", "ERROR_VAST_REDIRECT_EMPTY_RESPONSE", "ERROR_VAST_REDIRECT_MULTIPLE_VAST", "ERROR_VAST_REDIRECT_FAILED", "ERROR_VAST_MISSING_MEDIAFILES", "ERROR_VAST_MISSING_CREATIVES", "ERROR_VAST_MISSING_OVERLAYS", "ERROR_VAST_MISSING_IMPRESSION", "ERROR_VAST_INVALID_VAST_AD_TAG_URI", "ERROR_VAST_MULTIPLE_TRACKING_EVENTS", "ERROR_VAST_MULTIPLE_LINEAR", "ERROR_VAST_INVALID_MEDIA_FILE", "ERROR_FIRING_BEACON_FAILED", "ERROR_PERSONALIZATION_DISABLED", "VOD_TIME_BASED_AVAIL_PLAN_VAST_RESPONSE_FOR_OFFSET", "VOD_TIME_BASED_AVAIL_PLAN_SUCCESS", "VOD_TIME_BASED_AVAIL_PLAN_WARNING_NO_ADVERTISEMENTS", "INTERSTITIAL_VOD_SUCCESS", "INTERSTITIAL_VOD_FAILURE"]]
    #       },
    #       manifest_service_interaction_log: {
    #         exclude_event_types: ["GENERATED_MANIFEST" # One of: ["GENERATED_MANIFEST", "ORIGIN_MANIFEST", "SESSION_INITIALIZED", "TRACKING_RESPONSE", "CONFIG_SYNTAX_ERROR", "CONFIG_SECURITY_ERROR", "UNKNOWN_HOST", "TIMEOUT_ERROR", "CONNECTION_ERROR", "IO_ERROR", "UNKNOWN_ERROR", "HOST_DISALLOWED", "PARSING_ERROR", "MANIFEST_ERROR", "NO_MASTER_OR_MEDIA_PLAYLIST", "NO_MASTER_PLAYLIST", "NO_MEDIA_PLAYLIST", "INCOMPATIBLE_HLS_VERSION", "SCTE35_PARSING_ERROR", "INVALID_SINGLE_PERIOD_DASH_MANIFEST", "UNSUPPORTED_SINGLE_PERIOD_DASH_MANIFEST", "LAST_PERIOD_MISSING_AUDIO", "LAST_PERIOD_MISSING_AUDIO_WARNING", "ERROR_ORIGIN_PREFIX_INTERPOLATION", "ERROR_ADS_INTERPOLATION", "ERROR_LIVE_PRE_ROLL_ADS_INTERPOLATION", "ERROR_CDN_AD_SEGMENT_INTERPOLATION", "ERROR_CDN_CONTENT_SEGMENT_INTERPOLATION", "ERROR_SLATE_AD_URL_INTERPOLATION", "ERROR_PROFILE_NAME_INTERPOLATION", "ERROR_BUMPER_START_INTERPOLATION", "ERROR_BUMPER_END_INTERPOLATION"]]
    #       }
    #     },
    #     manifest_processing_rules: {
    #       ad_marker_passthrough: {
    #         enabled: false
    #       }
    #     },
    #     name: "__string",
    #     personalization_threshold_seconds: 1,
    #     playback_configuration_arn: "__string",
    #     playback_endpoint_prefix: "__string",
    #     session_initialization_endpoint_prefix: "__string",
    #     slate_ad_url: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     transcode_profile_name: "__string",
    #     video_content_source_url: "__string",
    #     ad_conditioning_configuration: {
    #       streaming_media_file_conditioning: "TRANSCODE" # One of: ["TRANSCODE", "NONE"], # required
    #     }
    #   }
    # @return [Types::PutPlaybackConfigurationOutput]
    def put_playback_configuration(params = {}, options = {})
      request = build_request(:put_playback_configuration, params)
      request.send_request(options)
    end

    # <p>Starts a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::StartChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.start_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartChannelOutput]
    def start_channel(params = {}, options = {})
      request = build_request(:start_channel, params)
      request.send_request(options)
    end

    # <p>Stops a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::StopChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.stop_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopChannelOutput]
    def stop_channel(params = {}, options = {})
      request = build_request(:stop_channel, params)
      request.send_request(options)
    end

    # <p>The resource to tag. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the resource. Tags are key-value pairs that you can associate with Amazon resources to help with organization, access control, and cost tracking. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html">Tagging AWS Elemental MediaTailor Resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>The resource to untag.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a channel. For information about MediaTailor channels, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html">Working with channels</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::UpdateChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [Types::SlateSource] :filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the <code>LINEAR</code> <code>PlaybackMode</code>. MediaTailor doesn't support filler slate for channels using the <code>LOOP</code> <code>PlaybackMode</code>.</p>
    # @option params [Array<Types::RequestOutputItem>] :outputs
    #   <p>The channel's output properties.</p>
    # @option params [Types::TimeShiftConfiguration] :time_shift_configuration
    #   <p> The time-shifted viewing configuration you want to associate to the channel. </p>
    # @option params [Array<String>] :audiences
    #   <p>The list of audiences defined in channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "__string", # required
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string"
    #     },
    #     outputs: [ # required
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #         },
    #         manifest_name: "__string", # required
    #         source_group: "__string", # required
    #       }
    #     ],
    #     time_shift_configuration: {
    #       max_time_delay_seconds: 1, # required
    #     },
    #     audiences: ["String"]
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     channel_name: "__string",
    #     channel_state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     creation_time: Time.now,
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string"
    #     },
    #     last_modified_time: Time.now,
    #     outputs: [
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           ad_markup_type: ["DATERANGE" # One of: ["DATERANGE", "SCTE35_ENHANCED"]]
    #         },
    #         manifest_name: "__string", # required
    #         playback_url: "__string", # required
    #         source_group: "__string", # required
    #       }
    #     ],
    #     playback_mode: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     tier: "__string",
    #     time_shift_configuration: {
    #       max_time_delay_seconds: 1, # required
    #     },
    #     audiences: ["String"]
    #   }
    # @return [Types::UpdateChannelOutput]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Updates a live source's configuration.</p>
    # @param [Hash, Types::UpdateLiveSourceInput] params
    # @option params [Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configurations for the live source on this account.</p>
    # @option params [String] :live_source_name
    #   <p>The name of the live source.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this Live Source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_live_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     live_source_name: "__string",
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateLiveSourceOutput]
    def update_live_source(params = {}, options = {})
      request = build_request(:update_live_source, params)
      request.send_request(options)
    end

    # <p>Updates a program within a channel.</p>
    # @param [Hash, Types::UpdateProgramInput] params
    # @option params [Array<Types::AdBreak>] :ad_breaks
    #   <p>The ad break configuration settings.</p>
    # @option params [String] :channel_name
    #   <p>The name of the channel for this Program.</p>
    # @option params [String] :program_name
    #   <p>The name of the Program.</p>
    # @option params [Types::UpdateProgramScheduleConfiguration] :schedule_configuration
    #   <p>The schedule configuration settings.</p>
    # @option params [Array<Types::AudienceMedia>] :audience_media
    #   <p>The list of AudienceMedia defined in program.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ad_breaks: [
    #       {
    #         message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #         offset_millis: 1, # required
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segmentation_event_id: 1,
    #               segmentation_upid_type: 1,
    #               segmentation_upid: "String",
    #               segmentation_type_id: 1,
    #               segment_num: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1
    #             }
    #           ]
    #         },
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #     schedule_configuration: { # required
    #       transition: {
    #         scheduled_start_time_millis: 1,
    #         duration_millis: 1
    #       },
    #       clip_range: {
    #         end_offset_millis: 1,
    #         start_offset_millis: 1
    #       }
    #     },
    #     audience_media: [
    #       {
    #         audience: "__string",
    #         alternate_media: [
    #           {
    #             source_location_name: "__string",
    #             live_source_name: "__string",
    #             vod_source_name: "__string",
    #             clip_range: {
    #               end_offset_millis: 1,
    #               start_offset_millis: 1
    #             },
    #             scheduled_start_time_millis: 1,
    #             ad_breaks: [
    #               {
    #                 message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #                 offset_millis: 1, # required
    #                 slate: {
    #                   source_location_name: "__string",
    #                   vod_source_name: "__string"
    #                 },
    #                 splice_insert_message: {
    #                   avail_num: 1,
    #                   avails_expected: 1,
    #                   splice_event_id: 1,
    #                   unique_program_id: 1
    #                 },
    #                 time_signal_message: {
    #                   segmentation_descriptors: [
    #                     {
    #                       segmentation_event_id: 1,
    #                       segmentation_upid_type: 1,
    #                       segmentation_upid: "String",
    #                       segmentation_type_id: 1,
    #                       segment_num: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1
    #                     }
    #                   ]
    #                 },
    #                 ad_break_metadata: [
    #                   {
    #                     key: "String", # required
    #                     value: "String", # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             duration_millis: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_program(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ad_breaks: [
    #       {
    #         message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #         offset_millis: 1, # required
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string"
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segmentation_event_id: 1,
    #               segmentation_upid_type: 1,
    #               segmentation_upid: "String",
    #               segmentation_type_id: 1,
    #               segment_num: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1
    #             }
    #           ]
    #         },
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     arn: "__string",
    #     channel_name: "__string",
    #     creation_time: Time.now,
    #     program_name: "__string",
    #     source_location_name: "__string",
    #     vod_source_name: "__string",
    #     live_source_name: "__string",
    #     clip_range: {
    #       end_offset_millis: 1,
    #       start_offset_millis: 1
    #     },
    #     duration_millis: 1,
    #     scheduled_start_time: Time.now,
    #     audience_media: [
    #       {
    #         audience: "__string",
    #         alternate_media: [
    #           {
    #             source_location_name: "__string",
    #             live_source_name: "__string",
    #             vod_source_name: "__string",
    #             clip_range: {
    #               end_offset_millis: 1,
    #               start_offset_millis: 1
    #             },
    #             scheduled_start_time_millis: 1,
    #             ad_breaks: [
    #               {
    #                 message_type: "SPLICE_INSERT" # One of: ["SPLICE_INSERT", "TIME_SIGNAL"],
    #                 offset_millis: 1, # required
    #                 slate: {
    #                   source_location_name: "__string",
    #                   vod_source_name: "__string"
    #                 },
    #                 splice_insert_message: {
    #                   avail_num: 1,
    #                   avails_expected: 1,
    #                   splice_event_id: 1,
    #                   unique_program_id: 1
    #                 },
    #                 time_signal_message: {
    #                   segmentation_descriptors: [
    #                     {
    #                       segmentation_event_id: 1,
    #                       segmentation_upid_type: 1,
    #                       segmentation_upid: "String",
    #                       segmentation_type_id: 1,
    #                       segment_num: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1
    #                     }
    #                   ]
    #                 },
    #                 ad_break_metadata: [
    #                   {
    #                     key: "String", # required
    #                     value: "String", # required
    #                   }
    #                 ]
    #               }
    #             ],
    #             duration_millis: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::UpdateProgramOutput]
    def update_program(params = {}, options = {})
      request = build_request(:update_program, params)
      request.send_request(options)
    end

    # <p>Updates a source location. A source location is a container for sources. For more information about source locations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html">Working with source locations</a> in the <i>MediaTailor User Guide</i>.</p>
    # @param [Hash, Types::UpdateSourceLocationInput] params
    # @option params [Types::AccessConfiguration] :access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    # @option params [Types::DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   <p>The optional configuration for the host server that serves segments.</p>
    # @option params [Types::HttpConfiguration] :http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    # @option params [Array<Types::SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_configuration: {
    #       access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string"
    #       }
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: "__string"
    #     },
    #     http_configuration: { # required
    #       base_url: "__string", # required
    #     },
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     source_location_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_source_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_configuration: {
    #       access_type: "S3_SIGV4" # One of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN", "AUTODETECT_SIGV4"],
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string"
    #       }
    #     },
    #     arn: "__string",
    #     creation_time: Time.now,
    #     default_segment_delivery_configuration: {
    #       base_url: "__string"
    #     },
    #     http_configuration: {
    #       base_url: "__string", # required
    #     },
    #     last_modified_time: Time.now,
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateSourceLocationOutput]
    def update_source_location(params = {}, options = {})
      request = build_request(:update_source_location, params)
      request.send_request(options)
    end

    # <p>Updates a VOD source's configuration.</p>
    # @param [Hash, Types::UpdateVodSourceInput] params
    # @option params [Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configurations for the VOD source on this account.</p>
    # @option params [String] :source_location_name
    #   <p>The name of the source location associated with this VOD Source.</p>
    # @option params [String] :vod_source_name
    #   <p>The name of the VOD source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_vod_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_time: Time.now,
    #     http_package_configurations: [
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH" # One of: ["DASH", "HLS"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     source_location_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     vod_source_name: "__string"
    #   }
    # @return [Types::UpdateVodSourceOutput]
    def update_vod_source(params = {}, options = {})
      request = build_request(:update_vod_source, params)
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
      context[:gem_name] = 'aws-sdk-mediatailor'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
