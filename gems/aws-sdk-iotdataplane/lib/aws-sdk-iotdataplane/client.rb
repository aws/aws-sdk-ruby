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

Aws::Plugins::GlobalConfiguration.add_identifier(:iotdataplane)

module Aws::IoTDataPlane
  # An API client for IoTDataPlane.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTDataPlane::Client.new(
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

    @identifier = :iotdataplane

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
    add_plugin(Aws::IoTDataPlane::Plugins::Endpoints)

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
    #   @option options [Aws::IoTDataPlane::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IoTDataPlane::EndpointParameters`
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

    # Deletes the shadow for the specified thing.
    #
    # Requires permission to access the [DeleteThingShadow][1] action.
    #
    # For more information, see [DeleteThingShadow][2] in the IoT Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [String] :shadow_name
    #   The name of the shadow.
    #
    # @return [Types::DeleteThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteThingShadowResponse#payload #payload} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_shadow({
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName",
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> String
    #
    # @overload delete_thing_shadow(params = {})
    # @param [Hash] params ({})
    def delete_thing_shadow(params = {}, options = {})
      req = build_request(:delete_thing_shadow, params)
      req.send_request(options)
    end

    # Gets the details of a single retained message for the specified topic.
    #
    # This action returns the message payload of the retained message, which
    # can incur messaging costs. To list only the topic names of the
    # retained messages, call [ListRetainedMessages][1].
    #
    # Requires permission to access the [GetRetainedMessage][2] action.
    #
    # For more information about messaging costs, see [Amazon Web Services
    # IoT Core pricing - Messaging][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions
    # [3]: http://aws.amazon.com/iot-core/pricing/#Messaging
    #
    # @option params [required, String] :topic
    #   The topic name of the retained message to retrieve.
    #
    # @return [Types::GetRetainedMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRetainedMessageResponse#topic #topic} => String
    #   * {Types::GetRetainedMessageResponse#payload #payload} => String
    #   * {Types::GetRetainedMessageResponse#qos #qos} => Integer
    #   * {Types::GetRetainedMessageResponse#last_modified_time #last_modified_time} => Integer
    #   * {Types::GetRetainedMessageResponse#user_properties #user_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retained_message({
    #     topic: "Topic", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic #=> String
    #   resp.payload #=> String
    #   resp.qos #=> Integer
    #   resp.last_modified_time #=> Integer
    #   resp.user_properties #=> String
    #
    # @overload get_retained_message(params = {})
    # @param [Hash] params ({})
    def get_retained_message(params = {}, options = {})
      req = build_request(:get_retained_message, params)
      req.send_request(options)
    end

    # Gets the shadow for the specified thing.
    #
    # Requires permission to access the [GetThingShadow][1] action.
    #
    # For more information, see [GetThingShadow][2] in the IoT Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [String] :shadow_name
    #   The name of the shadow.
    #
    # @return [Types::GetThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThingShadowResponse#payload #payload} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_thing_shadow({
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName",
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> String
    #
    # @overload get_thing_shadow(params = {})
    # @param [Hash] params ({})
    def get_thing_shadow(params = {}, options = {})
      req = build_request(:get_thing_shadow, params)
      req.send_request(options)
    end

    # Lists the shadows for the specified thing.
    #
    # Requires permission to access the [ListNamedShadowsForThing][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @return [Types::ListNamedShadowsForThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamedShadowsForThingResponse#results #results} => Array&lt;String&gt;
    #   * {Types::ListNamedShadowsForThingResponse#next_token #next_token} => String
    #   * {Types::ListNamedShadowsForThingResponse#timestamp #timestamp} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_named_shadows_for_thing({
    #     thing_name: "ThingName", # required
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0] #=> String
    #   resp.next_token #=> String
    #   resp.timestamp #=> Integer
    #
    # @overload list_named_shadows_for_thing(params = {})
    # @param [Hash] params ({})
    def list_named_shadows_for_thing(params = {}, options = {})
      req = build_request(:list_named_shadows_for_thing, params)
      req.send_request(options)
    end

    # Lists summary information about the retained messages stored for the
    # account.
    #
    # This action returns only the topic names of the retained messages. It
    # doesn't return any message payloads. Although this action doesn't
    # return a message payload, it can still incur messaging costs.
    #
    # To get the message payload of a retained message, call
    # [GetRetainedMessage][1] with the topic name of the retained message.
    #
    # Requires permission to access the [ListRetainedMessages][2] action.
    #
    # For more information about messaging costs, see [Amazon Web Services
    # IoT Core pricing - Messaging][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions
    # [3]: http://aws.amazon.com/iot-core/pricing/#Messaging
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListRetainedMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRetainedMessagesResponse#retained_topics #retained_topics} => Array&lt;Types::RetainedMessageSummary&gt;
    #   * {Types::ListRetainedMessagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_retained_messages({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.retained_topics #=> Array
    #   resp.retained_topics[0].topic #=> String
    #   resp.retained_topics[0].payload_size #=> Integer
    #   resp.retained_topics[0].qos #=> Integer
    #   resp.retained_topics[0].last_modified_time #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_retained_messages(params = {})
    # @param [Hash] params ({})
    def list_retained_messages(params = {}, options = {})
      req = build_request(:list_retained_messages, params)
      req.send_request(options)
    end

    # Publishes an MQTT message.
    #
    # Requires permission to access the [Publish][1] action.
    #
    # For more information about MQTT messages, see [MQTT Protocol][2] in
    # the IoT Developer Guide.
    #
    # For more information about messaging costs, see [Amazon Web Services
    # IoT Core pricing - Messaging][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html
    # [3]: http://aws.amazon.com/iot-core/pricing/#Messaging
    #
    # @option params [required, String] :topic
    #   The name of the MQTT topic.
    #
    # @option params [Integer] :qos
    #   The Quality of Service (QoS) level. The default QoS level is 0.
    #
    # @option params [Boolean] :retain
    #   A Boolean value that determines whether to set the RETAIN flag when
    #   the message is published.
    #
    #   Setting the RETAIN flag causes the message to be retained and sent to
    #   new subscribers to the topic.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default value: `false`
    #
    # @option params [String, StringIO, File] :payload
    #   The message body. MQTT accepts text, binary, and empty (null) message
    #   payloads.
    #
    #   Publishing an empty (null) payload with **retain** = `true` deletes
    #   the retained message identified by **topic** from Amazon Web Services
    #   IoT Core.
    #
    # @option params [String] :user_properties
    #   A JSON string that contains an array of JSON objects. If you don’t use
    #   Amazon Web Services SDK or CLI, you must encode the JSON string to
    #   base64 format before adding it to the HTTP header. `userProperties` is
    #   an HTTP header value in the API.
    #
    #   The following example `userProperties` parameter is a JSON string
    #   which represents two User Properties. Note that it needs to be
    #   base64-encoded:
    #
    #   `[\{"deviceName": "alpha"\}, \{"deviceCnt": "45"\}]`
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [String] :payload_format_indicator
    #   An `Enum` string value that indicates whether the payload is formatted
    #   as UTF-8. `payloadFormatIndicator` is an HTTP header value in the API.
    #
    # @option params [String] :content_type
    #   A UTF-8 encoded string that describes the content of the publishing
    #   message.
    #
    # @option params [String] :response_topic
    #   A UTF-8 encoded string that's used as the topic name for a response
    #   message. The response topic is used to describe the topic which the
    #   receiver should publish to as part of the request-response flow. The
    #   topic must not contain wildcard characters.
    #
    # @option params [String] :correlation_data
    #   The base64-encoded binary data used by the sender of the request
    #   message to identify which request the response message is for when
    #   it's received. `correlationData` is an HTTP header value in the API.
    #
    # @option params [Integer] :message_expiry
    #   A user-defined integer value that represents the message expiry
    #   interval in seconds. If absent, the message doesn't expire. For more
    #   information about the limits of `messageExpiry`, see [Amazon Web
    #   Services IoT Core message broker and protocol limits and quotas ][1]
    #   from the Amazon Web Services Reference Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish({
    #     topic: "Topic", # required
    #     qos: 1,
    #     retain: false,
    #     payload: "data",
    #     user_properties: "UserProperties",
    #     payload_format_indicator: "UNSPECIFIED_BYTES", # accepts UNSPECIFIED_BYTES, UTF8_DATA
    #     content_type: "ContentType",
    #     response_topic: "ResponseTopic",
    #     correlation_data: "CorrelationData",
    #     message_expiry: 1,
    #   })
    #
    # @overload publish(params = {})
    # @param [Hash] params ({})
    def publish(params = {}, options = {})
      req = build_request(:publish, params)
      req.send_request(options)
    end

    # Updates the shadow for the specified thing.
    #
    # Requires permission to access the [UpdateThingShadow][1] action.
    #
    # For more information, see [UpdateThingShadow][2] in the IoT Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [String] :shadow_name
    #   The name of the shadow.
    #
    # @option params [required, String, StringIO, File] :payload
    #   The state information, in JSON format.
    #
    # @return [Types::UpdateThingShadowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThingShadowResponse#payload #payload} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_shadow({
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName",
    #     payload: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> String
    #
    # @overload update_thing_shadow(params = {})
    # @param [Hash] params ({})
    def update_thing_shadow(params = {}, options = {})
      req = build_request(:update_thing_shadow, params)
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
      context[:gem_name] = 'aws-sdk-iotdataplane'
      context[:gem_version] = '1.50.0'
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
