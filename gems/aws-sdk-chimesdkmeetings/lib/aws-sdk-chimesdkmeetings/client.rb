# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkmeetings)

module Aws::ChimeSDKMeetings
  # An API client for ChimeSDKMeetings.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ChimeSDKMeetings::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :chimesdkmeetings

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
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ChimeSDKMeetings::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::ChimeSDKMeetings::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ChimeSDKMeetings::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Creates up to 100 attendees for an active Amazon Chime SDK meeting.
    # For more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK ID of the meeting to which you're adding
    #   attendees.
    #
    # @option params [required, Array<Types::CreateAttendeeRequestItem>] :attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #
    # @return [Types::BatchCreateAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateAttendeeResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::BatchCreateAttendeeResponse#errors #errors} => Array&lt;Types::CreateAttendeeError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_attendee({
    #     meeting_id: "GuidString", # required
    #     attendees: [ # required
    #       {
    #         external_user_id: "ExternalUserId", # required
    #         capabilities: {
    #           audio: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #           video: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #           content: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.attendees[0].capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.errors #=> Array
    #   resp.errors[0].external_user_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BatchCreateAttendee AWS API Documentation
    #
    # @overload batch_create_attendee(params = {})
    # @param [Hash] params ({})
    def batch_create_attendee(params = {}, options = {})
      req = build_request(:batch_create_attendee, params)
      req.send_request(options)
    end

    # Updates `AttendeeCapabilities` except the capabilities listed in an
    # `ExcludedAttendeeIds` table.
    #
    # <note markdown="1"> You use the capabilities with a set of values that control what the
    # capabilities can do, such as `SendReceive` data. For more information
    # about those values, see .
    #
    #  </note>
    #
    # When using capabilities, be aware of these corner cases:
    #
    # * You can't set `content` capabilities to `SendReceive` or `Receive`
    #   unless you also set `video` capabilities to `SendReceive` or
    #   `Receive`. If you don't set the `video` capability to receive, the
    #   response will contain an HTTP 400 Bad Request status code. However,
    #   you can set your `video` capability to receive and you set your
    #   `content` capability to not receive.
    #
    # * When you change an `audio` capability from `None` or `Receive` to
    #   `Send` or `SendReceive` , and if the attendee left their microphone
    #   unmuted, audio will flow from the attendee to the other meeting
    #   participants.
    #
    # * When you change a `video` or `content` capability from `None` or
    #   `Receive` to `Send` or `SendReceive` , and if the attendee turned on
    #   their video or content streams, remote attendees can receive those
    #   streams, but only after media renegotiation between the client and
    #   the Amazon Chime back-end server.
    #
    # @option params [required, String] :meeting_id
    #   The ID of the meeting associated with the update request.
    #
    # @option params [required, Array<Types::AttendeeIdItem>] :excluded_attendee_ids
    #   The `AttendeeIDs` that you want to exclude from one or more
    #   capabilities.
    #
    # @option params [required, Types::AttendeeCapabilities] :capabilities
    #   The capabilities (`audio`, `video`, or `content`) that you want to
    #   update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_attendee_capabilities_except({
    #     meeting_id: "GuidString", # required
    #     excluded_attendee_ids: [ # required
    #       {
    #         attendee_id: "GuidString", # required
    #       },
    #     ],
    #     capabilities: { # required
    #       audio: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       video: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       content: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/BatchUpdateAttendeeCapabilitiesExcept AWS API Documentation
    #
    # @overload batch_update_attendee_capabilities_except(params = {})
    # @param [Hash] params ({})
    def batch_update_attendee_capabilities_except(params = {}, options = {})
      req = build_request(:batch_update_attendee_capabilities_except, params)
      req.send_request(options)
    end

    # Creates a new attendee for an active Amazon Chime SDK meeting. For
    # more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The unique ID of the meeting.
    #
    # @option params [required, String] :external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links the
    #   attendee to an identity managed by a builder application.
    #
    #   Pattern: `[-_&@+=,()\{\}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*`
    #
    #   Values that begin with `aws:` are reserved. You can't configure a
    #   value that uses this prefix.
    #
    # @option params [Types::AttendeeCapabilities] :capabilities
    #   The capabilities (`audio`, `video`, or `content`) that you want to
    #   grant an attendee. If you don't specify capabilities, all users have
    #   send and receive capabilities on all media channels by default.
    #
    #   <note markdown="1"> You use the capabilities with a set of values that control what the
    #   capabilities can do, such as `SendReceive` data. For more information
    #   about those values, see .
    #
    #    </note>
    #
    #   When using capabilities, be aware of these corner cases:
    #
    #   * You can't set `content` capabilities to `SendReceive` or `Receive`
    #     unless you also set `video` capabilities to `SendReceive` or
    #     `Receive`. If you don't set the `video` capability to receive, the
    #     response will contain an HTTP 400 Bad Request status code. However,
    #     you can set your `video` capability to receive and you set your
    #     `content` capability to not receive.
    #
    #   * When you change an `audio` capability from `None` or `Receive` to
    #     `Send` or `SendReceive` , and if the attendee left their microphone
    #     unmuted, audio will flow from the attendee to the other meeting
    #     participants.
    #
    #   * When you change a `video` or `content` capability from `None` or
    #     `Receive` to `Send` or `SendReceive` , and if the attendee turned on
    #     their video or content streams, remote attendees can receive those
    #     streams, but only after media renegotiation between the client and
    #     the Amazon Chime back-end server.
    #
    # @return [Types::CreateAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAttendeeResponse#attendee #attendee} => Types::Attendee
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attendee({
    #     meeting_id: "GuidString", # required
    #     external_user_id: "ExternalUserId", # required
    #     capabilities: {
    #       audio: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       video: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       content: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.attendee.external_user_id #=> String
    #   resp.attendee.attendee_id #=> String
    #   resp.attendee.join_token #=> String
    #   resp.attendee.capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateAttendee AWS API Documentation
    #
    # @overload create_attendee(params = {})
    # @param [Hash] params ({})
    def create_attendee(params = {}, options = {})
      req = build_request(:create_attendee, params)
      req.send_request(options)
    end

    # Creates a new Amazon Chime SDK meeting in the specified media Region
    # with no initial attendees. For more information about specifying media
    # Regions, see [Amazon Chime SDK Media Regions][1] in the *Amazon Chime
    # Developer Guide*. For more information about the Amazon Chime SDK, see
    # [Using the Amazon Chime SDK][2] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html
    # [2]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :media_region
    #   The Region in which to create the meeting.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`, `eu-west-2`,
    #   `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`, `us-west-1`,
    #   `us-west-2`.
    #
    #   Available values in AWS GovCloud (US) Regions: `us-gov-east-1`,
    #   `us-gov-west-1`.
    #
    # @option params [String] :meeting_host_id
    #   Reserved.
    #
    # @option params [required, String] :external_meeting_id
    #   The external meeting ID.
    #
    #   Pattern: `[-_&@+=,()\{\}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*`
    #
    #   Values that begin with `aws:` are reserved. You can't configure a
    #   value that uses this prefix. Case insensitive.
    #
    # @option params [Types::NotificationsConfiguration] :notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #
    # @option params [Types::MeetingFeaturesConfiguration] :meeting_features
    #   Lists the audio and video features enabled for a meeting, such as echo
    #   reduction.
    #
    # @option params [String] :primary_meeting_id
    #   When specified, replicates the media from the primary meeting to the
    #   new meeting.
    #
    # @option params [Array<String>] :tenant_ids
    #   A consistent and opaque identifier, created and maintained by the
    #   builder to represent a segment of their users.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Applies one or more tags to an Amazon Chime SDK meeting. Note the
    #   following:
    #
    #   * Not all resources have tags. For a list of services with resources
    #     that support tagging using this operation, see [Services that
    #     support the Resource Groups Tagging API][1]. If the resource
    #     doesn't yet support this operation, the resource's service might
    #     support tagging using its own API operations. For more information,
    #     refer to the documentation for that service.
    #
    #   * Each resource can have up to 50 tags. For other limits, see [Tag
    #     Naming and Usage Conventions][2] in the *AWS General Reference*.
    #
    #   * You can only tag resources that are located in the specified AWS
    #     Region for the AWS account.
    #
    #   * To add tags to a resource, you need the necessary permissions for
    #     the service that the resource belongs to as well as permissions for
    #     adding tags. For more information, see the documentation for each
    #     service.
    #
    #   Do not store personally identifiable information (PII) or other
    #   confidential or sensitive information in tags. We use tags to provide
    #   you with billing and administration services. Tags are not intended to
    #   be used for private or sensitive data.
    #
    #   **Minimum permissions**
    #
    #   In addition to the `tag:TagResources` permission required by this
    #   operation, you must also have the tagging permission defined by the
    #   service that created the resource. For example, to tag a
    #   `ChimeSDKMeetings` instance using the `TagResources` operation, you
    #   must have both of the following permissions:
    #
    #   `tag:TagResources`
    #
    #   `ChimeSDKMeetings:CreateTags`
    #
    #   <note markdown="1"> Some services might have specific requirements for tagging some
    #   resources. For example, to tag an Amazon S3 bucket, you must also have
    #   the `s3:GetBucketTagging` permission. If the expected minimum
    #   permissions don't work, check the documentation for that service's
    #   tagging APIs for more information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions
    #
    # @return [Types::CreateMeetingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingResponse#meeting #meeting} => Types::Meeting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting({
    #     client_request_token: "ClientRequestToken", # required
    #     media_region: "MediaRegion", # required
    #     meeting_host_id: "ExternalUserId",
    #     external_meeting_id: "ExternalMeetingId", # required
    #     notifications_configuration: {
    #       lambda_function_arn: "Arn",
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn",
    #     },
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #       },
    #     },
    #     primary_meeting_id: "PrimaryMeetingId",
    #     tenant_ids: ["TenantId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.meeting_host_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_region #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.meeting_features.audio.echo_reduction #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.meeting.primary_meeting_id #=> String
    #   resp.meeting.tenant_ids #=> Array
    #   resp.meeting.tenant_ids[0] #=> String
    #   resp.meeting.meeting_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeeting AWS API Documentation
    #
    # @overload create_meeting(params = {})
    # @param [Hash] params ({})
    def create_meeting(params = {}, options = {})
      req = build_request(:create_meeting, params)
      req.send_request(options)
    end

    # Creates a new Amazon Chime SDK meeting in the specified media Region,
    # with attendees. For more information about specifying media Regions,
    # see [Amazon Chime SDK Media Regions][1] in the *Amazon Chime Developer
    # Guide*. For more information about the Amazon Chime SDK, see [Using
    # the Amazon Chime SDK][2] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html
    # [2]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :media_region
    #   The Region in which to create the meeting.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`, `eu-west-2`,
    #   `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`, `us-west-1`,
    #   `us-west-2`.
    #
    #   Available values in AWS GovCloud (US) Regions: `us-gov-east-1`,
    #   `us-gov-west-1`.
    #
    # @option params [String] :meeting_host_id
    #   Reserved.
    #
    # @option params [required, String] :external_meeting_id
    #   The external meeting ID.
    #
    #   Pattern: `[-_&@+=,()\{\}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*`
    #
    #   Values that begin with `aws:` are reserved. You can't configure a
    #   value that uses this prefix. Case insensitive.
    #
    # @option params [Types::MeetingFeaturesConfiguration] :meeting_features
    #   Lists the audio and video features enabled for a meeting, such as echo
    #   reduction.
    #
    # @option params [Types::NotificationsConfiguration] :notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #
    # @option params [required, Array<Types::CreateAttendeeRequestItem>] :attendees
    #   The attendee information, including attendees' IDs and join tokens.
    #
    # @option params [String] :primary_meeting_id
    #   When specified, replicates the media from the primary meeting to the
    #   new meeting.
    #
    # @option params [Array<String>] :tenant_ids
    #   A consistent and opaque identifier, created and maintained by the
    #   builder to represent a segment of their users.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags in the request.
    #
    # @return [Types::CreateMeetingWithAttendeesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingWithAttendeesResponse#meeting #meeting} => Types::Meeting
    #   * {Types::CreateMeetingWithAttendeesResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::CreateMeetingWithAttendeesResponse#errors #errors} => Array&lt;Types::CreateAttendeeError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_with_attendees({
    #     client_request_token: "ClientRequestToken", # required
    #     media_region: "MediaRegion", # required
    #     meeting_host_id: "ExternalUserId",
    #     external_meeting_id: "ExternalMeetingId", # required
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: "AVAILABLE", # accepts AVAILABLE, UNAVAILABLE
    #       },
    #     },
    #     notifications_configuration: {
    #       lambda_function_arn: "Arn",
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn",
    #     },
    #     attendees: [ # required
    #       {
    #         external_user_id: "ExternalUserId", # required
    #         capabilities: {
    #           audio: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #           video: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #           content: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #         },
    #       },
    #     ],
    #     primary_meeting_id: "PrimaryMeetingId",
    #     tenant_ids: ["TenantId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.meeting_host_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_region #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.meeting_features.audio.echo_reduction #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.meeting.primary_meeting_id #=> String
    #   resp.meeting.tenant_ids #=> Array
    #   resp.meeting.tenant_ids[0] #=> String
    #   resp.meeting.meeting_arn #=> String
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.attendees[0].capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.errors #=> Array
    #   resp.errors[0].external_user_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/CreateMeetingWithAttendees AWS API Documentation
    #
    # @overload create_meeting_with_attendees(params = {})
    # @param [Hash] params ({})
    def create_meeting_with_attendees(params = {}, options = {})
      req = build_request(:create_meeting_with_attendees, params)
      req.send_request(options)
    end

    # Deletes an attendee from the specified Amazon Chime SDK meeting and
    # deletes their `JoinToken`. Attendees are automatically deleted when a
    # Amazon Chime SDK meeting is deleted. For more information about the
    # Amazon Chime SDK, see [Using the Amazon Chime SDK][1] in the *Amazon
    # Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/DeleteAttendee AWS API Documentation
    #
    # @overload delete_attendee(params = {})
    # @param [Hash] params ({})
    def delete_attendee(params = {}, options = {})
      req = build_request(:delete_attendee, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime SDK meeting. The operation deletes
    # all attendees, disconnects all clients, and prevents new clients from
    # joining the meeting. For more information about the Amazon Chime SDK,
    # see [Using the Amazon Chime SDK][1] in the *Amazon Chime Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_meeting({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/DeleteMeeting AWS API Documentation
    #
    # @overload delete_meeting(params = {})
    # @param [Hash] params ({})
    def delete_meeting(params = {}, options = {})
      req = build_request(:delete_meeting, params)
      req.send_request(options)
    end

    # Gets the Amazon Chime SDK attendee details for a specified meeting ID
    # and attendee ID. For more information about the Amazon Chime SDK, see
    # [Using the Amazon Chime SDK][1] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @return [Types::GetAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttendeeResponse#attendee #attendee} => Types::Attendee
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attendee.external_user_id #=> String
    #   resp.attendee.attendee_id #=> String
    #   resp.attendee.join_token #=> String
    #   resp.attendee.capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetAttendee AWS API Documentation
    #
    # @overload get_attendee(params = {})
    # @param [Hash] params ({})
    def get_attendee(params = {}, options = {})
      req = build_request(:get_attendee, params)
      req.send_request(options)
    end

    # Gets the Amazon Chime SDK meeting details for the specified meeting
    # ID. For more information about the Amazon Chime SDK, see [Using the
    # Amazon Chime SDK][1] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @return [Types::GetMeetingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMeetingResponse#meeting #meeting} => Types::Meeting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_meeting({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.meeting_host_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_region #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.meeting_features.audio.echo_reduction #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.meeting.primary_meeting_id #=> String
    #   resp.meeting.tenant_ids #=> Array
    #   resp.meeting.tenant_ids[0] #=> String
    #   resp.meeting.meeting_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/GetMeeting AWS API Documentation
    #
    # @overload get_meeting(params = {})
    # @param [Hash] params ({})
    def get_meeting(params = {}, options = {})
      req = build_request(:get_meeting, params)
      req.send_request(options)
    end

    # Lists the attendees for the specified Amazon Chime SDK meeting. For
    # more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListAttendeesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttendeesResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::ListAttendeesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendees({
    #     meeting_id: "GuidString", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.attendees[0].capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendees[0].capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListAttendees AWS API Documentation
    #
    # @overload list_attendees(params = {})
    # @param [Hash] params ({})
    def list_attendees(params = {}, options = {})
      req = build_request(:list_attendees, params)
      req.send_request(options)
    end

    # Returns a list of the tags available for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts transcription for the specified `meetingId`. For more
    # information, refer to [ Using Amazon Chime SDK live transcription ][1]
    # in the *Amazon Chime SDK Developer Guide*.
    #
    # If you specify an invalid configuration, a `TranscriptFailed` event
    # will be sent with the contents of the `BadRequestException` generated
    # by Amazon Transcribe. For more information on each parameter and which
    # combinations are valid, refer to the [StartStreamTranscription][2] API
    # in the *Amazon Transcribe Developer Guide*.
    #
    # Amazon Chime SDK live transcription is powered by Amazon Transcribe.
    # Use of Amazon Transcribe is subject to the [AWS Service Terms][3],
    # including the terms specific to the AWS Machine Learning and
    # Artificial Intelligence Services.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html
    # [3]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :meeting_id
    #   The unique ID of the meeting being transcribed.
    #
    # @option params [required, Types::TranscriptionConfiguration] :transcription_configuration
    #   The configuration for the current transcription operation. Must
    #   contain `EngineTranscribeSettings` or
    #   `EngineTranscribeMedicalSettings`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_meeting_transcription({
    #     meeting_id: "GuidString", # required
    #     transcription_configuration: { # required
    #       engine_transcribe_settings: {
    #         language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         vocabulary_filter_name: "String",
    #         vocabulary_name: "String",
    #         region: "us-east-2", # accepts us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto, us-gov-west-1
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: "low", # accepts low, medium, high
    #         content_identification_type: "PII", # accepts PII
    #         content_redaction_type: "PII", # accepts PII
    #         pii_entity_types: "TranscribePiiEntityTypes",
    #         language_model_name: "TranscribeLanguageModelName",
    #         identify_language: false,
    #         language_options: "TranscribeLanguageOptions",
    #         preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN
    #         vocabulary_names: "TranscribeVocabularyNamesOrFilterNamesString",
    #         vocabulary_filter_names: "TranscribeVocabularyNamesOrFilterNamesString",
    #       },
    #       engine_transcribe_medical_settings: {
    #         language_code: "en-US", # required, accepts en-US
    #         specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #         type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #         vocabulary_name: "String",
    #         region: "us-east-1", # accepts us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto
    #         content_identification_type: "PHI", # accepts PHI
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/StartMeetingTranscription AWS API Documentation
    #
    # @overload start_meeting_transcription(params = {})
    # @param [Hash] params ({})
    def start_meeting_transcription(params = {}, options = {})
      req = build_request(:start_meeting_transcription, params)
      req.send_request(options)
    end

    # Stops transcription for the specified `meetingId`. For more
    # information, refer to [ Using Amazon Chime SDK live transcription ][1]
    # in the *Amazon Chime SDK Developer Guide*.
    #
    # Amazon Chime SDK live transcription is powered by Amazon Transcribe.
    # Use of Amazon Transcribe is subject to the [AWS Service Terms][2],
    # including the terms specific to the AWS Machine Learning and
    # Artificial Intelligence Services.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
    # [2]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :meeting_id
    #   The unique ID of the meeting for which you stop transcription.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_meeting_transcription({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/StopMeetingTranscription AWS API Documentation
    #
    # @overload stop_meeting_transcription(params = {})
    # @param [Hash] params ({})
    def stop_meeting_transcription(params = {}, options = {})
      req = build_request(:stop_meeting_transcription, params)
      req.send_request(options)
    end

    # The resource that supports tags.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Lists the requested tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resources. When you
    # specify a tag key, the action removes both that key and its associated
    # value. The operation succeeds even if you attempt to remove tags from
    # a resource that were already removed. Note the following:
    #
    # * To remove tags from a resource, you need the necessary permissions
    #   for the service that the resource belongs to as well as permissions
    #   for removing tags. For more information, see the documentation for
    #   the service whose resource you want to untag.
    #
    # * You can only tag resources that are located in the specified AWS
    #   Region for the calling AWS account.
    #
    # **Minimum permissions**
    #
    # In addition to the `tag:UntagResources` permission required by this
    # operation, you must also have the remove tags permission defined by
    # the service that created the resource. For example, to remove the tags
    # from an Amazon EC2 instance using the `UntagResources` operation, you
    # must have both of the following permissions:
    #
    # `tag:UntagResource`
    #
    # `ChimeSDKMeetings:DeleteTags`
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're removing tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys being removed from the resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # The capabilities that you want to update.
    #
    # <note markdown="1"> You use the capabilities with a set of values that control what the
    # capabilities can do, such as `SendReceive` data. For more information
    # about those values, see .
    #
    #  </note>
    #
    # When using capabilities, be aware of these corner cases:
    #
    # * You can't set `content` capabilities to `SendReceive` or `Receive`
    #   unless you also set `video` capabilities to `SendReceive` or
    #   `Receive`. If you don't set the `video` capability to receive, the
    #   response will contain an HTTP 400 Bad Request status code. However,
    #   you can set your `video` capability to receive and you set your
    #   `content` capability to not receive.
    #
    # * When you change an `audio` capability from `None` or `Receive` to
    #   `Send` or `SendReceive` , and if the attendee left their microphone
    #   unmuted, audio will flow from the attendee to the other meeting
    #   participants.
    #
    # * When you change a `video` or `content` capability from `None` or
    #   `Receive` to `Send` or `SendReceive` , and if the attendee turned on
    #   their video or content streams, remote attendees can receive those
    #   streams, but only after media renegotiation between the client and
    #   the Amazon Chime back-end server.
    #
    # @option params [required, String] :meeting_id
    #   The ID of the meeting associated with the update request.
    #
    # @option params [required, String] :attendee_id
    #   The ID of the attendee associated with the update request.
    #
    # @option params [required, Types::AttendeeCapabilities] :capabilities
    #   The capabilities that you want to update.
    #
    # @return [Types::UpdateAttendeeCapabilitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAttendeeCapabilitiesResponse#attendee #attendee} => Types::Attendee
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_attendee_capabilities({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #     capabilities: { # required
    #       audio: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       video: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #       content: "SendReceive", # required, accepts SendReceive, Send, Receive, None
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.attendee.external_user_id #=> String
    #   resp.attendee.attendee_id #=> String
    #   resp.attendee.join_token #=> String
    #   resp.attendee.capabilities.audio #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.video #=> String, one of "SendReceive", "Send", "Receive", "None"
    #   resp.attendee.capabilities.content #=> String, one of "SendReceive", "Send", "Receive", "None"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-meetings-2021-07-15/UpdateAttendeeCapabilities AWS API Documentation
    #
    # @overload update_attendee_capabilities(params = {})
    # @param [Hash] params ({})
    def update_attendee_capabilities(params = {}, options = {})
      req = build_request(:update_attendee_capabilities, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkmeetings'
      context[:gem_version] = '1.23.0'
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
