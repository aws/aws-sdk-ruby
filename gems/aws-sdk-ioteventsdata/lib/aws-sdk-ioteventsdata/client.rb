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

Aws::Plugins::GlobalConfiguration.add_identifier(:ioteventsdata)

module Aws::IoTEventsData
  # An API client for IoTEventsData.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTEventsData::Client.new(
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

    @identifier = :ioteventsdata

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
    add_plugin(Aws::IoTEventsData::Plugins::Endpoints)

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
    #   @option options [Aws::IoTEventsData::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IoTEventsData::EndpointParameters`
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

    # Acknowledges one or more alarms. The alarms change to the
    # `ACKNOWLEDGED` state after you acknowledge them.
    #
    # @option params [required, Array<Types::AcknowledgeAlarmActionRequest>] :acknowledge_action_requests
    #   The list of acknowledge action requests. You can specify up to 10
    #   requests per operation.
    #
    # @return [Types::BatchAcknowledgeAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAcknowledgeAlarmResponse#error_entries #error_entries} => Array&lt;Types::BatchAlarmActionErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_acknowledge_alarm({
    #     acknowledge_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].request_id #=> String
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.error_entries[0].error_message #=> String
    #
    # @overload batch_acknowledge_alarm(params = {})
    # @param [Hash] params ({})
    def batch_acknowledge_alarm(params = {}, options = {})
      req = build_request(:batch_acknowledge_alarm, params)
      req.send_request(options)
    end

    # Deletes one or more detectors that were created. When a detector is
    # deleted, its state will be cleared and the detector will be removed
    # from the list of detectors. The deleted detector will no longer appear
    # if referenced in the [ListDetectors][1] API call.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html
    #
    # @option params [required, Array<Types::DeleteDetectorRequest>] :detectors
    #   The list of one or more detectors to be deleted.
    #
    # @return [Types::BatchDeleteDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDetectorResponse#batch_delete_detector_error_entries #batch_delete_detector_error_entries} => Array&lt;Types::BatchDeleteDetectorErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_detector({
    #     detectors: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_delete_detector_error_entries #=> Array
    #   resp.batch_delete_detector_error_entries[0].message_id #=> String
    #   resp.batch_delete_detector_error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.batch_delete_detector_error_entries[0].error_message #=> String
    #
    # @overload batch_delete_detector(params = {})
    # @param [Hash] params ({})
    def batch_delete_detector(params = {}, options = {})
      req = build_request(:batch_delete_detector, params)
      req.send_request(options)
    end

    # Disables one or more alarms. The alarms change to the `DISABLED` state
    # after you disable them.
    #
    # @option params [required, Array<Types::DisableAlarmActionRequest>] :disable_action_requests
    #   The list of disable action requests. You can specify up to 10 requests
    #   per operation.
    #
    # @return [Types::BatchDisableAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisableAlarmResponse#error_entries #error_entries} => Array&lt;Types::BatchAlarmActionErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disable_alarm({
    #     disable_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].request_id #=> String
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.error_entries[0].error_message #=> String
    #
    # @overload batch_disable_alarm(params = {})
    # @param [Hash] params ({})
    def batch_disable_alarm(params = {}, options = {})
      req = build_request(:batch_disable_alarm, params)
      req.send_request(options)
    end

    # Enables one or more alarms. The alarms change to the `NORMAL` state
    # after you enable them.
    #
    # @option params [required, Array<Types::EnableAlarmActionRequest>] :enable_action_requests
    #   The list of enable action requests. You can specify up to 10 requests
    #   per operation.
    #
    # @return [Types::BatchEnableAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEnableAlarmResponse#error_entries #error_entries} => Array&lt;Types::BatchAlarmActionErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_enable_alarm({
    #     enable_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].request_id #=> String
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.error_entries[0].error_message #=> String
    #
    # @overload batch_enable_alarm(params = {})
    # @param [Hash] params ({})
    def batch_enable_alarm(params = {}, options = {})
      req = build_request(:batch_enable_alarm, params)
      req.send_request(options)
    end

    # Sends a set of messages to the IoT Events system. Each message payload
    # is transformed into the input you specify (`"inputName"`) and ingested
    # into any detectors that monitor that input. If multiple messages are
    # sent, the order in which the messages are processed isn't guaranteed.
    # To guarantee ordering, you must send messages one at a time and wait
    # for a successful response.
    #
    # @option params [required, Array<Types::Message>] :messages
    #   The list of messages to send. Each message has the following format:
    #   `'\{ "messageId": "string", "inputName": "string", "payload":
    #   "string"\}'`
    #
    # @return [Types::BatchPutMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutMessageResponse#batch_put_message_error_entries #batch_put_message_error_entries} => Array&lt;Types::BatchPutMessageErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_message({
    #     messages: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         input_name: "EphemeralInputName", # required
    #         payload: "data", # required
    #         timestamp: {
    #           time_in_millis: 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_put_message_error_entries #=> Array
    #   resp.batch_put_message_error_entries[0].message_id #=> String
    #   resp.batch_put_message_error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.batch_put_message_error_entries[0].error_message #=> String
    #
    # @overload batch_put_message(params = {})
    # @param [Hash] params ({})
    def batch_put_message(params = {}, options = {})
      req = build_request(:batch_put_message, params)
      req.send_request(options)
    end

    # Resets one or more alarms. The alarms return to the `NORMAL` state
    # after you reset them.
    #
    # @option params [required, Array<Types::ResetAlarmActionRequest>] :reset_action_requests
    #   The list of reset action requests. You can specify up to 10 requests
    #   per operation.
    #
    # @return [Types::BatchResetAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchResetAlarmResponse#error_entries #error_entries} => Array&lt;Types::BatchAlarmActionErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_reset_alarm({
    #     reset_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].request_id #=> String
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.error_entries[0].error_message #=> String
    #
    # @overload batch_reset_alarm(params = {})
    # @param [Hash] params ({})
    def batch_reset_alarm(params = {}, options = {})
      req = build_request(:batch_reset_alarm, params)
      req.send_request(options)
    end

    # Changes one or more alarms to the snooze mode. The alarms change to
    # the `SNOOZE_DISABLED` state after you set them to the snooze mode.
    #
    # @option params [required, Array<Types::SnoozeAlarmActionRequest>] :snooze_action_requests
    #   The list of snooze action requests. You can specify up to 10 requests
    #   per operation.
    #
    # @return [Types::BatchSnoozeAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchSnoozeAlarmResponse#error_entries #error_entries} => Array&lt;Types::BatchAlarmActionErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_snooze_alarm({
    #     snooze_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #         snooze_duration: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].request_id #=> String
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.error_entries[0].error_message #=> String
    #
    # @overload batch_snooze_alarm(params = {})
    # @param [Hash] params ({})
    def batch_snooze_alarm(params = {}, options = {})
      req = build_request(:batch_snooze_alarm, params)
      req.send_request(options)
    end

    # Updates the state, variable values, and timer settings of one or more
    # detectors (instances) of a specified detector model.
    #
    # @option params [required, Array<Types::UpdateDetectorRequest>] :detectors
    #   The list of detectors (instances) to update, along with the values to
    #   update.
    #
    # @return [Types::BatchUpdateDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateDetectorResponse#batch_update_detector_error_entries #batch_update_detector_error_entries} => Array&lt;Types::BatchUpdateDetectorErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_detector({
    #     detectors: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #         state: { # required
    #           state_name: "StateName", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: "VariableValue", # required
    #             },
    #           ],
    #           timers: [ # required
    #             {
    #               name: "TimerName", # required
    #               seconds: 1, # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_update_detector_error_entries #=> Array
    #   resp.batch_update_detector_error_entries[0].message_id #=> String
    #   resp.batch_update_detector_error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.batch_update_detector_error_entries[0].error_message #=> String
    #
    # @overload batch_update_detector(params = {})
    # @param [Hash] params ({})
    def batch_update_detector(params = {}, options = {})
      req = build_request(:batch_update_detector, params)
      req.send_request(options)
    end

    # Retrieves information about an alarm.
    #
    # @option params [required, String] :alarm_model_name
    #   The name of the alarm model.
    #
    # @option params [String] :key_value
    #   The value of the key used as a filter to select only the alarms
    #   associated with the [key][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key
    #
    # @return [Types::DescribeAlarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAlarmResponse#alarm #alarm} => Types::Alarm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarm({
    #     alarm_model_name: "AlarmModelName", # required
    #     key_value: "KeyValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.alarm.alarm_model_name #=> String
    #   resp.alarm.alarm_model_version #=> String
    #   resp.alarm.key_value #=> String
    #   resp.alarm.alarm_state.state_name #=> String, one of "DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"
    #   resp.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.input_property_value #=> String
    #   resp.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.operator #=> String, one of "GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"
    #   resp.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.threshold_value #=> String
    #   resp.alarm.alarm_state.customer_action.action_name #=> String, one of "SNOOZE", "ENABLE", "DISABLE", "ACKNOWLEDGE", "RESET"
    #   resp.alarm.alarm_state.customer_action.snooze_action_configuration.snooze_duration #=> Integer
    #   resp.alarm.alarm_state.customer_action.snooze_action_configuration.note #=> String
    #   resp.alarm.alarm_state.customer_action.enable_action_configuration.note #=> String
    #   resp.alarm.alarm_state.customer_action.disable_action_configuration.note #=> String
    #   resp.alarm.alarm_state.customer_action.acknowledge_action_configuration.note #=> String
    #   resp.alarm.alarm_state.customer_action.reset_action_configuration.note #=> String
    #   resp.alarm.alarm_state.system_event.event_type #=> String, one of "STATE_CHANGE"
    #   resp.alarm.alarm_state.system_event.state_change_configuration.trigger_type #=> String, one of "SNOOZE_TIMEOUT"
    #   resp.alarm.severity #=> Integer
    #   resp.alarm.creation_time #=> Time
    #   resp.alarm.last_update_time #=> Time
    #
    # @overload describe_alarm(params = {})
    # @param [Hash] params ({})
    def describe_alarm(params = {}, options = {})
      req = build_request(:describe_alarm, params)
      req.send_request(options)
    end

    # Returns information about the specified detector (instance).
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model whose detectors (instances) you want
    #   information about.
    #
    # @option params [String] :key_value
    #   A filter used to limit results to detectors (instances) created
    #   because of the given key ID.
    #
    # @return [Types::DescribeDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDetectorResponse#detector #detector} => Types::Detector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector({
    #     detector_model_name: "DetectorModelName", # required
    #     key_value: "KeyValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.detector.detector_model_name #=> String
    #   resp.detector.key_value #=> String
    #   resp.detector.detector_model_version #=> String
    #   resp.detector.state.state_name #=> String
    #   resp.detector.state.variables #=> Array
    #   resp.detector.state.variables[0].name #=> String
    #   resp.detector.state.variables[0].value #=> String
    #   resp.detector.state.timers #=> Array
    #   resp.detector.state.timers[0].name #=> String
    #   resp.detector.state.timers[0].timestamp #=> Time
    #   resp.detector.creation_time #=> Time
    #   resp.detector.last_update_time #=> Time
    #
    # @overload describe_detector(params = {})
    # @param [Hash] params ({})
    def describe_detector(params = {}, options = {})
      req = build_request(:describe_detector, params)
      req.send_request(options)
    end

    # Lists one or more alarms. The operation returns only the metadata
    # associated with each alarm.
    #
    # @option params [required, String] :alarm_model_name
    #   The name of the alarm model.
    #
    # @option params [String] :next_token
    #   The token that you can use to return the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAlarmsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlarmsResponse#alarm_summaries #alarm_summaries} => Array&lt;Types::AlarmSummary&gt;
    #   * {Types::ListAlarmsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarms({
    #     alarm_model_name: "AlarmModelName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.alarm_summaries #=> Array
    #   resp.alarm_summaries[0].alarm_model_name #=> String
    #   resp.alarm_summaries[0].alarm_model_version #=> String
    #   resp.alarm_summaries[0].key_value #=> String
    #   resp.alarm_summaries[0].state_name #=> String, one of "DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"
    #   resp.alarm_summaries[0].creation_time #=> Time
    #   resp.alarm_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_alarms(params = {})
    # @param [Hash] params ({})
    def list_alarms(params = {}, options = {})
      req = build_request(:list_alarms, params)
      req.send_request(options)
    end

    # Lists detectors (the instances of a detector model).
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model whose detectors (instances) are listed.
    #
    # @option params [String] :state_name
    #   A filter that limits results to those detectors (instances) in the
    #   given state.
    #
    # @option params [String] :next_token
    #   The token that you can use to return the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorsResponse#detector_summaries #detector_summaries} => Array&lt;Types::DetectorSummary&gt;
    #   * {Types::ListDetectorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors({
    #     detector_model_name: "DetectorModelName", # required
    #     state_name: "StateName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_summaries #=> Array
    #   resp.detector_summaries[0].detector_model_name #=> String
    #   resp.detector_summaries[0].key_value #=> String
    #   resp.detector_summaries[0].detector_model_version #=> String
    #   resp.detector_summaries[0].state.state_name #=> String
    #   resp.detector_summaries[0].creation_time #=> Time
    #   resp.detector_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_detectors(params = {})
    # @param [Hash] params ({})
    def list_detectors(params = {}, options = {})
      req = build_request(:list_detectors, params)
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
      context[:gem_name] = 'aws-sdk-ioteventsdata'
      context[:gem_version] = '1.34.0'
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
