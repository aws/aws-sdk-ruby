# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::MailManager
  # An API client for MailManager.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MailManager::Client.new(
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

    @identifier = :mailmanager

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::MailManager::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::MailManager::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MailManager::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an Add On instance for the subscription indicated in the
    # request. The resulting Amazon Resource Name (ARN) can be used in a
    # conditional statement for a rule set or traffic policy.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :addon_subscription_id
    #   The unique ID of a previously created subscription that an Add On
    #   instance is created for. You can only have one instance per
    #   subscription.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateAddonInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddonInstanceResponse#addon_instance_id #addon_instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_addon_instance({
    #     client_token: "IdempotencyToken",
    #     addon_subscription_id: "AddonSubscriptionId", # required
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
    #   resp.addon_instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonInstance AWS API Documentation
    #
    # @overload create_addon_instance(params = {})
    # @param [Hash] params ({})
    def create_addon_instance(params = {}, options = {})
      req = build_request(:create_addon_instance, params)
      req.send_request(options)
    end

    # Creates a subscription for an Add On representing the acceptance of
    # its terms of use and additional pricing. The subscription can then be
    # used to create an instance for use in rule sets or traffic policies.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :addon_name
    #   The name of the Add On to subscribe to. You can only have one
    #   subscription for each Add On name.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateAddonSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddonSubscriptionResponse#addon_subscription_id #addon_subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_addon_subscription({
    #     client_token: "IdempotencyToken",
    #     addon_name: "AddonName", # required
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
    #   resp.addon_subscription_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonSubscription AWS API Documentation
    #
    # @overload create_addon_subscription(params = {})
    # @param [Hash] params ({})
    def create_addon_subscription(params = {}, options = {})
      req = build_request(:create_addon_subscription, params)
      req.send_request(options)
    end

    # Creates a new address list.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :address_list_name
    #   A user-friendly name for the address list.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateAddressListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressListResponse#address_list_id #address_list_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address_list({
    #     client_token: "IdempotencyToken",
    #     address_list_name: "AddressListName", # required
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
    #   resp.address_list_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressList AWS API Documentation
    #
    # @overload create_address_list(params = {})
    # @param [Hash] params ({})
    def create_address_list(params = {}, options = {})
      req = build_request(:create_address_list, params)
      req.send_request(options)
    end

    # Creates an import job for an address list.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list for importing addresses to.
    #
    # @option params [required, String] :name
    #   A user-friendly name for the import job.
    #
    # @option params [required, Types::ImportDataFormat] :import_data_format
    #   The format of the input for an import job.
    #
    # @return [Types::CreateAddressListImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressListImportJobResponse#job_id #job_id} => String
    #   * {Types::CreateAddressListImportJobResponse#pre_signed_url #pre_signed_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address_list_import_job({
    #     client_token: "IdempotencyToken",
    #     address_list_id: "AddressListId", # required
    #     name: "JobName", # required
    #     import_data_format: { # required
    #       import_data_type: "CSV", # required, accepts CSV, JSON
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.pre_signed_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressListImportJob AWS API Documentation
    #
    # @overload create_address_list_import_job(params = {})
    # @param [Hash] params ({})
    def create_address_list_import_job(params = {}, options = {})
      req = build_request(:create_address_list_import_job, params)
      req.send_request(options)
    end

    # Creates a new email archive resource for storing and retaining emails.
    #
    # @option params [String] :client_token
    #   A unique token Amazon SES uses to recognize retries of this request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :archive_name
    #   A unique name for the new archive.
    #
    # @option params [Types::ArchiveRetention] :retention
    #   The period for retaining emails in the archive before automatic
    #   deletion.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key for encrypting emails in
    #   the archive.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateArchiveResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateArchiveResponse#archive_id #archive_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_archive({
    #     client_token: "IdempotencyToken",
    #     archive_name: "ArchiveNameString", # required
    #     retention: {
    #       retention_period: "THREE_MONTHS", # accepts THREE_MONTHS, SIX_MONTHS, NINE_MONTHS, ONE_YEAR, EIGHTEEN_MONTHS, TWO_YEARS, THIRTY_MONTHS, THREE_YEARS, FOUR_YEARS, FIVE_YEARS, SIX_YEARS, SEVEN_YEARS, EIGHT_YEARS, NINE_YEARS, TEN_YEARS, PERMANENT
    #     },
    #     kms_key_arn: "KmsKeyArn",
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
    #   resp.archive_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateArchive AWS API Documentation
    #
    # @overload create_archive(params = {})
    # @param [Hash] params ({})
    def create_archive(params = {}, options = {})
      req = build_request(:create_archive, params)
      req.send_request(options)
    end

    # Provision a new ingress endpoint resource.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :ingress_point_name
    #   A user friendly name for an ingress endpoint resource.
    #
    # @option params [required, String] :type
    #   The type of the ingress endpoint to create.
    #
    # @option params [required, String] :rule_set_id
    #   The identifier of an existing rule set that you attach to an ingress
    #   endpoint resource.
    #
    # @option params [required, String] :traffic_policy_id
    #   The identifier of an existing traffic policy that you attach to an
    #   ingress endpoint resource.
    #
    # @option params [Types::IngressPointConfiguration] :ingress_point_configuration
    #   If you choose an Authenticated ingress endpoint, you must configure
    #   either an SMTP password or a secret ARN.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   Specifies the network configuration for the ingress point. This allows
    #   you to create an IPv4-only, Dual-Stack, or PrivateLink type of ingress
    #   point. If not specified, the default network type is IPv4-only.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateIngressPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngressPointResponse#ingress_point_id #ingress_point_id} => String
    #
    #
    # @example Example: Create Open IngressPoint
    #
    #   resp = client.create_ingress_point({
    #     ingress_point_name: "ingressPointName", 
    #     rule_set_id: "rs-12345", 
    #     tags: [
    #       {
    #         key: "key", 
    #         value: "value", 
    #       }, 
    #     ], 
    #     traffic_policy_id: "tp-12345", 
    #     type: "OPEN", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_point_id: "inp-12345", 
    #   }
    #
    # @example Example: Create Auth IngressPoint with Password
    #
    #   resp = client.create_ingress_point({
    #     ingress_point_configuration: {
    #       smtp_password: "smtpPassword", 
    #     }, 
    #     ingress_point_name: "ingressPointName", 
    #     rule_set_id: "rs-12345", 
    #     tags: [
    #       {
    #         key: "key", 
    #         value: "value", 
    #       }, 
    #     ], 
    #     traffic_policy_id: "tp-12345", 
    #     type: "AUTH", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_point_id: "inp-12345", 
    #   }
    #
    # @example Example: Create Auth IngressPoint with SecretsManager Secret
    #
    #   resp = client.create_ingress_point({
    #     ingress_point_configuration: {
    #       secret_arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde", 
    #     }, 
    #     ingress_point_name: "ingressPointName", 
    #     rule_set_id: "rs-12345", 
    #     tags: [
    #       {
    #         key: "key", 
    #         value: "value", 
    #       }, 
    #     ], 
    #     traffic_policy_id: "tp-12345", 
    #     type: "AUTH", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_point_id: "inp-12345", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingress_point({
    #     client_token: "IdempotencyToken",
    #     ingress_point_name: "IngressPointName", # required
    #     type: "OPEN", # required, accepts OPEN, AUTH
    #     rule_set_id: "RuleSetId", # required
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     ingress_point_configuration: {
    #       smtp_password: "SmtpPassword",
    #       secret_arn: "SecretArn",
    #     },
    #     network_configuration: {
    #       public_network_configuration: {
    #         ip_type: "IPV4", # required, accepts IPV4, DUAL_STACK
    #       },
    #       private_network_configuration: {
    #         vpc_endpoint_id: "VpcEndpointId", # required
    #       },
    #     },
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
    #   resp.ingress_point_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateIngressPoint AWS API Documentation
    #
    # @overload create_ingress_point(params = {})
    # @param [Hash] params ({})
    def create_ingress_point(params = {}, options = {})
      req = build_request(:create_ingress_point, params)
      req.send_request(options)
    end

    # Creates a relay resource which can be used in rules to relay incoming
    # emails to defined relay destinations.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :relay_name
    #   The unique name of the relay resource.
    #
    # @option params [required, String] :server_name
    #   The destination relay server address.
    #
    # @option params [required, Integer] :server_port
    #   The destination relay server port.
    #
    # @option params [required, Types::RelayAuthentication] :authentication
    #   Authentication for the relay destination server—specify the secretARN
    #   where the SMTP credentials are stored.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateRelayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelayResponse#relay_id #relay_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_relay({
    #     client_token: "IdempotencyToken",
    #     relay_name: "RelayName", # required
    #     server_name: "RelayServerName", # required
    #     server_port: 1, # required
    #     authentication: { # required
    #       secret_arn: "SecretArn",
    #       no_authentication: {
    #       },
    #     },
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
    #   resp.relay_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRelay AWS API Documentation
    #
    # @overload create_relay(params = {})
    # @param [Hash] params ({})
    def create_relay(params = {}, options = {})
      req = build_request(:create_relay, params)
      req.send_request(options)
    end

    # Provision a new rule set.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :rule_set_name
    #   A user-friendly name for the rule set.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   Conditional rules that are evaluated for determining actions on email.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateRuleSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleSetResponse#rule_set_id #rule_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_set({
    #     client_token: "IdempotencyToken",
    #     rule_set_name: "RuleSetName", # required
    #     rules: [ # required
    #       {
    #         name: "RuleName",
    #         conditions: [
    #           {
    #             boolean_expression: {
    #               evaluate: { # required
    #                 attribute: "READ_RECEIPT_REQUESTED", # accepts READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "MAIL_FROM", # accepts MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC
    #                 mime_header_attribute: "MimeHeaderAttribute",
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["RuleStringValue"], # required
    #             },
    #             number_expression: {
    #               evaluate: { # required
    #                 attribute: "MESSAGE_SIZE", # accepts MESSAGE_SIZE
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
    #               value: 1.0, # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SOURCE_IP", # accepts SOURCE_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["RuleIpStringValue"], # required
    #             },
    #             verdict_expression: {
    #               evaluate: { # required
    #                 attribute: "SPF", # accepts SPF, DKIM
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["PASS"], # required, accepts PASS, FAIL, GRAY, PROCESSING_FAILED
    #             },
    #             dmarc_expression: {
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["NONE"], # required, accepts NONE, QUARANTINE, REJECT
    #             },
    #           },
    #         ],
    #         unless: [
    #           {
    #             boolean_expression: {
    #               evaluate: { # required
    #                 attribute: "READ_RECEIPT_REQUESTED", # accepts READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "MAIL_FROM", # accepts MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC
    #                 mime_header_attribute: "MimeHeaderAttribute",
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["RuleStringValue"], # required
    #             },
    #             number_expression: {
    #               evaluate: { # required
    #                 attribute: "MESSAGE_SIZE", # accepts MESSAGE_SIZE
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
    #               value: 1.0, # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SOURCE_IP", # accepts SOURCE_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["RuleIpStringValue"], # required
    #             },
    #             verdict_expression: {
    #               evaluate: { # required
    #                 attribute: "SPF", # accepts SPF, DKIM
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["PASS"], # required, accepts PASS, FAIL, GRAY, PROCESSING_FAILED
    #             },
    #             dmarc_expression: {
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["NONE"], # required, accepts NONE, QUARANTINE, REJECT
    #             },
    #           },
    #         ],
    #         actions: [ # required
    #           {
    #             drop: {
    #             },
    #             relay: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               relay: "IdOrArn", # required
    #               mail_from: "REPLACE", # accepts REPLACE, PRESERVE
    #             },
    #             archive: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               target_archive: "NameOrArn", # required
    #             },
    #             write_to_s3: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               role_arn: "IamRoleArn", # required
    #               s3_bucket: "S3Bucket", # required
    #               s3_prefix: "S3Prefix",
    #               s3_sse_kms_key_id: "KmsKeyId",
    #             },
    #             send: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               role_arn: "IamRoleArn", # required
    #             },
    #             add_header: {
    #               header_name: "HeaderName", # required
    #               header_value: "HeaderValue", # required
    #             },
    #             replace_recipient: {
    #               replace_with: ["EmailAddress"],
    #             },
    #             deliver_to_mailbox: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               mailbox_arn: "NameOrArn", # required
    #               role_arn: "IamRoleArn", # required
    #             },
    #             deliver_to_q_business: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               application_id: "QBusinessApplicationId", # required
    #               index_id: "QBusinessIndexId", # required
    #               role_arn: "IamRoleArn", # required
    #             },
    #             publish_to_sns: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               topic_arn: "SnsTopicArn", # required
    #               role_arn: "IamRoleArn", # required
    #               encoding: "UTF-8", # accepts UTF-8, BASE64
    #               payload_type: "HEADERS", # accepts HEADERS, CONTENT
    #             },
    #           },
    #         ],
    #       },
    #     ],
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
    #   resp.rule_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRuleSet AWS API Documentation
    #
    # @overload create_rule_set(params = {})
    # @param [Hash] params ({})
    def create_rule_set(params = {}, options = {})
      req = build_request(:create_rule_set, params)
      req.send_request(options)
    end

    # Provision a new traffic policy resource.
    #
    # @option params [String] :client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries of
    #   the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :traffic_policy_name
    #   A user-friendly name for the traffic policy resource.
    #
    # @option params [required, Array<Types::PolicyStatement>] :policy_statements
    #   Conditional statements for filtering email traffic.
    #
    # @option params [required, String] :default_action
    #   Default action instructs the traﬃc policy to either Allow or Deny
    #   (block) messages that fall outside of (or not addressed by) the
    #   conditions of your policy statements
    #
    # @option params [Integer] :max_message_size_bytes
    #   The maximum message size in bytes of email which is allowed in by this
    #   traffic policy—anything larger will be blocked.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Types::CreateTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficPolicyResponse#traffic_policy_id #traffic_policy_id} => String
    #
    #
    # @example Example: Create TrafficPolicy
    #
    #   resp = client.create_traffic_policy({
    #     default_action: "DENY", 
    #     policy_statements: [
    #       {
    #         action: "ALLOW", 
    #         conditions: [
    #           {
    #             ip_expression: {
    #               evaluate: {
    #                 attribute: "SENDER_IP", 
    #               }, 
    #               operator: "CIDR_MATCHES", 
    #               values: [
    #                 "0.0.0.0/12", 
    #               ], 
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #     traffic_policy_name: "trafficPolicyName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     traffic_policy_id: "tp-13245", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy({
    #     client_token: "IdempotencyToken",
    #     traffic_policy_name: "TrafficPolicyName", # required
    #     policy_statements: [ # required
    #       {
    #         conditions: [ # required
    #           {
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "RECIPIENT", # accepts RECIPIENT
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["String"], # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SENDER_IP", # accepts SENDER_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["Ipv4Cidr"], # required
    #             },
    #             ipv_6_expression: {
    #               evaluate: { # required
    #                 attribute: "SENDER_IPV6", # accepts SENDER_IPV6
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["Ipv6Cidr"], # required
    #             },
    #             tls_expression: {
    #               evaluate: { # required
    #                 attribute: "TLS_PROTOCOL", # accepts TLS_PROTOCOL
    #               },
    #               operator: "MINIMUM_TLS_VERSION", # required, accepts MINIMUM_TLS_VERSION, IS
    #               value: "TLS1_2", # required, accepts TLS1_2, TLS1_3
    #             },
    #             boolean_expression: {
    #               evaluate: { # required
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #           },
    #         ],
    #         action: "ALLOW", # required, accepts ALLOW, DENY
    #       },
    #     ],
    #     default_action: "ALLOW", # required, accepts ALLOW, DENY
    #     max_message_size_bytes: 1,
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
    #   resp.traffic_policy_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateTrafficPolicy AWS API Documentation
    #
    # @overload create_traffic_policy(params = {})
    # @param [Hash] params ({})
    def create_traffic_policy(params = {}, options = {})
      req = build_request(:create_traffic_policy, params)
      req.send_request(options)
    end

    # Deletes an Add On instance.
    #
    # @option params [required, String] :addon_instance_id
    #   The Add On instance ID to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_addon_instance({
    #     addon_instance_id: "AddonInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonInstance AWS API Documentation
    #
    # @overload delete_addon_instance(params = {})
    # @param [Hash] params ({})
    def delete_addon_instance(params = {}, options = {})
      req = build_request(:delete_addon_instance, params)
      req.send_request(options)
    end

    # Deletes an Add On subscription.
    #
    # @option params [required, String] :addon_subscription_id
    #   The Add On subscription ID to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_addon_subscription({
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonSubscription AWS API Documentation
    #
    # @overload delete_addon_subscription(params = {})
    # @param [Hash] params ({})
    def delete_addon_subscription(params = {}, options = {})
      req = build_request(:delete_addon_subscription, params)
      req.send_request(options)
    end

    # Deletes an address list.
    #
    # @option params [required, String] :address_list_id
    #   The identifier of an existing address list resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_address_list({
    #     address_list_id: "AddressListId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddressList AWS API Documentation
    #
    # @overload delete_address_list(params = {})
    # @param [Hash] params ({})
    def delete_address_list(params = {}, options = {})
      req = build_request(:delete_address_list, params)
      req.send_request(options)
    end

    # Initiates deletion of an email archive. This changes the archive state
    # to pending deletion. In this state, no new emails can be added, and
    # existing archived emails become inaccessible (search, export,
    # download). The archive and all of its contents will be permanently
    # deleted 30 days after entering the pending deletion state, regardless
    # of the configured retention period.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive({
    #     archive_id: "ArchiveIdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteArchive AWS API Documentation
    #
    # @overload delete_archive(params = {})
    # @param [Hash] params ({})
    def delete_archive(params = {}, options = {})
      req = build_request(:delete_archive, params)
      req.send_request(options)
    end

    # Delete an ingress endpoint resource.
    #
    # @option params [required, String] :ingress_point_id
    #   The identifier of the ingress endpoint resource that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete IngressPoint
    #
    #   resp = client.delete_ingress_point({
    #     ingress_point_id: "inp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ingress_point({
    #     ingress_point_id: "IngressPointId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteIngressPoint AWS API Documentation
    #
    # @overload delete_ingress_point(params = {})
    # @param [Hash] params ({})
    def delete_ingress_point(params = {}, options = {})
      req = build_request(:delete_ingress_point, params)
      req.send_request(options)
    end

    # Deletes an existing relay resource.
    #
    # @option params [required, String] :relay_id
    #   The unique relay identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_relay({
    #     relay_id: "RelayId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRelay AWS API Documentation
    #
    # @overload delete_relay(params = {})
    # @param [Hash] params ({})
    def delete_relay(params = {}, options = {})
      req = build_request(:delete_relay, params)
      req.send_request(options)
    end

    # Delete a rule set.
    #
    # @option params [required, String] :rule_set_id
    #   The identifier of an existing rule set resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_set({
    #     rule_set_id: "RuleSetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRuleSet AWS API Documentation
    #
    # @overload delete_rule_set(params = {})
    # @param [Hash] params ({})
    def delete_rule_set(params = {}, options = {})
      req = build_request(:delete_rule_set, params)
      req.send_request(options)
    end

    # Delete a traffic policy resource.
    #
    # @option params [required, String] :traffic_policy_id
    #   The identifier of the traffic policy that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete TrafficPolicy
    #
    #   resp = client.delete_traffic_policy({
    #     traffic_policy_id: "tp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_policy({
    #     traffic_policy_id: "TrafficPolicyId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteTrafficPolicy AWS API Documentation
    #
    # @overload delete_traffic_policy(params = {})
    # @param [Hash] params ({})
    def delete_traffic_policy(params = {}, options = {})
      req = build_request(:delete_traffic_policy, params)
      req.send_request(options)
    end

    # Removes a member from an address list.
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list to remove the address from.
    #
    # @option params [required, String] :address
    #   The address to be removed from the address list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_member_from_address_list({
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeregisterMemberFromAddressList AWS API Documentation
    #
    # @overload deregister_member_from_address_list(params = {})
    # @param [Hash] params ({})
    def deregister_member_from_address_list(params = {}, options = {})
      req = build_request(:deregister_member_from_address_list, params)
      req.send_request(options)
    end

    # Gets detailed information about an Add On instance.
    #
    # @option params [required, String] :addon_instance_id
    #   The Add On instance ID to retrieve information for.
    #
    # @return [Types::GetAddonInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddonInstanceResponse#addon_subscription_id #addon_subscription_id} => String
    #   * {Types::GetAddonInstanceResponse#addon_name #addon_name} => String
    #   * {Types::GetAddonInstanceResponse#addon_instance_arn #addon_instance_arn} => String
    #   * {Types::GetAddonInstanceResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_addon_instance({
    #     addon_instance_id: "AddonInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.addon_subscription_id #=> String
    #   resp.addon_name #=> String
    #   resp.addon_instance_arn #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonInstance AWS API Documentation
    #
    # @overload get_addon_instance(params = {})
    # @param [Hash] params ({})
    def get_addon_instance(params = {}, options = {})
      req = build_request(:get_addon_instance, params)
      req.send_request(options)
    end

    # Gets detailed information about an Add On subscription.
    #
    # @option params [required, String] :addon_subscription_id
    #   The Add On subscription ID to retrieve information for.
    #
    # @return [Types::GetAddonSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddonSubscriptionResponse#addon_name #addon_name} => String
    #   * {Types::GetAddonSubscriptionResponse#addon_subscription_arn #addon_subscription_arn} => String
    #   * {Types::GetAddonSubscriptionResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_addon_subscription({
    #     addon_subscription_id: "AddonSubscriptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.addon_name #=> String
    #   resp.addon_subscription_arn #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonSubscription AWS API Documentation
    #
    # @overload get_addon_subscription(params = {})
    # @param [Hash] params ({})
    def get_addon_subscription(params = {}, options = {})
      req = build_request(:get_addon_subscription, params)
      req.send_request(options)
    end

    # Fetch attributes of an address list.
    #
    # @option params [required, String] :address_list_id
    #   The identifier of an existing address list resource to be retrieved.
    #
    # @return [Types::GetAddressListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddressListResponse#address_list_id #address_list_id} => String
    #   * {Types::GetAddressListResponse#address_list_arn #address_list_arn} => String
    #   * {Types::GetAddressListResponse#address_list_name #address_list_name} => String
    #   * {Types::GetAddressListResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetAddressListResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_address_list({
    #     address_list_id: "AddressListId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address_list_id #=> String
    #   resp.address_list_arn #=> String
    #   resp.address_list_name #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressList AWS API Documentation
    #
    # @overload get_address_list(params = {})
    # @param [Hash] params ({})
    def get_address_list(params = {}, options = {})
      req = build_request(:get_address_list, params)
      req.send_request(options)
    end

    # Fetch attributes of an import job.
    #
    # @option params [required, String] :job_id
    #   The identifier of the import job that needs to be retrieved.
    #
    # @return [Types::GetAddressListImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddressListImportJobResponse#job_id #job_id} => String
    #   * {Types::GetAddressListImportJobResponse#name #name} => String
    #   * {Types::GetAddressListImportJobResponse#status #status} => String
    #   * {Types::GetAddressListImportJobResponse#pre_signed_url #pre_signed_url} => String
    #   * {Types::GetAddressListImportJobResponse#imported_items_count #imported_items_count} => Integer
    #   * {Types::GetAddressListImportJobResponse#failed_items_count #failed_items_count} => Integer
    #   * {Types::GetAddressListImportJobResponse#import_data_format #import_data_format} => Types::ImportDataFormat
    #   * {Types::GetAddressListImportJobResponse#address_list_id #address_list_id} => String
    #   * {Types::GetAddressListImportJobResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetAddressListImportJobResponse#start_timestamp #start_timestamp} => Time
    #   * {Types::GetAddressListImportJobResponse#completed_timestamp #completed_timestamp} => Time
    #   * {Types::GetAddressListImportJobResponse#error #error} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_address_list_import_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "STOPPED"
    #   resp.pre_signed_url #=> String
    #   resp.imported_items_count #=> Integer
    #   resp.failed_items_count #=> Integer
    #   resp.import_data_format.import_data_type #=> String, one of "CSV", "JSON"
    #   resp.address_list_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.start_timestamp #=> Time
    #   resp.completed_timestamp #=> Time
    #   resp.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressListImportJob AWS API Documentation
    #
    # @overload get_address_list_import_job(params = {})
    # @param [Hash] params ({})
    def get_address_list_import_job(params = {}, options = {})
      req = build_request(:get_address_list_import_job, params)
      req.send_request(options)
    end

    # Retrieves the full details and current state of a specified email
    # archive.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive to retrieve.
    #
    # @return [Types::GetArchiveResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveResponse#archive_id #archive_id} => String
    #   * {Types::GetArchiveResponse#archive_name #archive_name} => String
    #   * {Types::GetArchiveResponse#archive_arn #archive_arn} => String
    #   * {Types::GetArchiveResponse#archive_state #archive_state} => String
    #   * {Types::GetArchiveResponse#retention #retention} => Types::ArchiveRetention
    #   * {Types::GetArchiveResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetArchiveResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #   * {Types::GetArchiveResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive({
    #     archive_id: "ArchiveIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_id #=> String
    #   resp.archive_name #=> String
    #   resp.archive_arn #=> String
    #   resp.archive_state #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.retention.retention_period #=> String, one of "THREE_MONTHS", "SIX_MONTHS", "NINE_MONTHS", "ONE_YEAR", "EIGHTEEN_MONTHS", "TWO_YEARS", "THIRTY_MONTHS", "THREE_YEARS", "FOUR_YEARS", "FIVE_YEARS", "SIX_YEARS", "SEVEN_YEARS", "EIGHT_YEARS", "NINE_YEARS", "TEN_YEARS", "PERMANENT"
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchive AWS API Documentation
    #
    # @overload get_archive(params = {})
    # @param [Hash] params ({})
    def get_archive(params = {}, options = {})
      req = build_request(:get_archive, params)
      req.send_request(options)
    end

    # Retrieves the details and current status of a specific email archive
    # export job.
    #
    # @option params [required, String] :export_id
    #   The identifier of the export job to get details for.
    #
    # @return [Types::GetArchiveExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveExportResponse#archive_id #archive_id} => String
    #   * {Types::GetArchiveExportResponse#filters #filters} => Types::ArchiveFilters
    #   * {Types::GetArchiveExportResponse#from_timestamp #from_timestamp} => Time
    #   * {Types::GetArchiveExportResponse#to_timestamp #to_timestamp} => Time
    #   * {Types::GetArchiveExportResponse#max_results #max_results} => Integer
    #   * {Types::GetArchiveExportResponse#export_destination_configuration #export_destination_configuration} => Types::ExportDestinationConfiguration
    #   * {Types::GetArchiveExportResponse#status #status} => Types::ExportStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_export({
    #     export_id: "ExportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_id #=> String
    #   resp.filters.include #=> Array
    #   resp.filters.include[0].string_expression.evaluate.attribute #=> String, one of "TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"
    #   resp.filters.include[0].string_expression.operator #=> String, one of "CONTAINS"
    #   resp.filters.include[0].string_expression.values #=> Array
    #   resp.filters.include[0].string_expression.values[0] #=> String
    #   resp.filters.include[0].boolean_expression.evaluate.attribute #=> String, one of "HAS_ATTACHMENTS"
    #   resp.filters.include[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.filters.unless #=> Array
    #   resp.filters.unless[0].string_expression.evaluate.attribute #=> String, one of "TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"
    #   resp.filters.unless[0].string_expression.operator #=> String, one of "CONTAINS"
    #   resp.filters.unless[0].string_expression.values #=> Array
    #   resp.filters.unless[0].string_expression.values[0] #=> String
    #   resp.filters.unless[0].boolean_expression.evaluate.attribute #=> String, one of "HAS_ATTACHMENTS"
    #   resp.filters.unless[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.from_timestamp #=> Time
    #   resp.to_timestamp #=> Time
    #   resp.max_results #=> Integer
    #   resp.export_destination_configuration.s3.s3_location #=> String
    #   resp.status.submission_timestamp #=> Time
    #   resp.status.completion_timestamp #=> Time
    #   resp.status.state #=> String, one of "QUEUED", "PREPROCESSING", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.status.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveExport AWS API Documentation
    #
    # @overload get_archive_export(params = {})
    # @param [Hash] params ({})
    def get_archive_export(params = {}, options = {})
      req = build_request(:get_archive_export, params)
      req.send_request(options)
    end

    # Returns a pre-signed URL that provides temporary download access to
    # the specific email message stored in the archive.
    #
    # @option params [required, String] :archived_message_id
    #   The unique identifier of the archived email message.
    #
    # @return [Types::GetArchiveMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveMessageResponse#message_download_link #message_download_link} => String
    #   * {Types::GetArchiveMessageResponse#metadata #metadata} => Types::Metadata
    #   * {Types::GetArchiveMessageResponse#envelope #envelope} => Types::Envelope
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_message({
    #     archived_message_id: "ArchivedMessageId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_download_link #=> String
    #   resp.metadata.timestamp #=> Time
    #   resp.metadata.ingress_point_id #=> String
    #   resp.metadata.traffic_policy_id #=> String
    #   resp.metadata.rule_set_id #=> String
    #   resp.metadata.sender_hostname #=> String
    #   resp.metadata.sender_ip_address #=> String
    #   resp.metadata.tls_cipher_suite #=> String
    #   resp.metadata.tls_protocol #=> String
    #   resp.metadata.sending_method #=> String
    #   resp.metadata.source_identity #=> String
    #   resp.metadata.sending_pool #=> String
    #   resp.metadata.configuration_set #=> String
    #   resp.metadata.source_arn #=> String
    #   resp.envelope.helo #=> String
    #   resp.envelope.from #=> String
    #   resp.envelope.to #=> Array
    #   resp.envelope.to[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessage AWS API Documentation
    #
    # @overload get_archive_message(params = {})
    # @param [Hash] params ({})
    def get_archive_message(params = {}, options = {})
      req = build_request(:get_archive_message, params)
      req.send_request(options)
    end

    # Returns the textual content of a specific email message stored in the
    # archive. Attachments are not included.
    #
    # @option params [required, String] :archived_message_id
    #   The unique identifier of the archived email message.
    #
    # @return [Types::GetArchiveMessageContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveMessageContentResponse#body #body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_message_content({
    #     archived_message_id: "ArchivedMessageId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.body.text #=> String
    #   resp.body.html #=> String
    #   resp.body.message_malformed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessageContent AWS API Documentation
    #
    # @overload get_archive_message_content(params = {})
    # @param [Hash] params ({})
    def get_archive_message_content(params = {}, options = {})
      req = build_request(:get_archive_message_content, params)
      req.send_request(options)
    end

    # Retrieves the details and current status of a specific email archive
    # search job.
    #
    # @option params [required, String] :search_id
    #   The identifier of the search job to get details for.
    #
    # @return [Types::GetArchiveSearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveSearchResponse#archive_id #archive_id} => String
    #   * {Types::GetArchiveSearchResponse#filters #filters} => Types::ArchiveFilters
    #   * {Types::GetArchiveSearchResponse#from_timestamp #from_timestamp} => Time
    #   * {Types::GetArchiveSearchResponse#to_timestamp #to_timestamp} => Time
    #   * {Types::GetArchiveSearchResponse#max_results #max_results} => Integer
    #   * {Types::GetArchiveSearchResponse#status #status} => Types::SearchStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_search({
    #     search_id: "SearchId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_id #=> String
    #   resp.filters.include #=> Array
    #   resp.filters.include[0].string_expression.evaluate.attribute #=> String, one of "TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"
    #   resp.filters.include[0].string_expression.operator #=> String, one of "CONTAINS"
    #   resp.filters.include[0].string_expression.values #=> Array
    #   resp.filters.include[0].string_expression.values[0] #=> String
    #   resp.filters.include[0].boolean_expression.evaluate.attribute #=> String, one of "HAS_ATTACHMENTS"
    #   resp.filters.include[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.filters.unless #=> Array
    #   resp.filters.unless[0].string_expression.evaluate.attribute #=> String, one of "TO", "FROM", "CC", "SUBJECT", "ENVELOPE_TO", "ENVELOPE_FROM"
    #   resp.filters.unless[0].string_expression.operator #=> String, one of "CONTAINS"
    #   resp.filters.unless[0].string_expression.values #=> Array
    #   resp.filters.unless[0].string_expression.values[0] #=> String
    #   resp.filters.unless[0].boolean_expression.evaluate.attribute #=> String, one of "HAS_ATTACHMENTS"
    #   resp.filters.unless[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.from_timestamp #=> Time
    #   resp.to_timestamp #=> Time
    #   resp.max_results #=> Integer
    #   resp.status.submission_timestamp #=> Time
    #   resp.status.completion_timestamp #=> Time
    #   resp.status.state #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.status.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearch AWS API Documentation
    #
    # @overload get_archive_search(params = {})
    # @param [Hash] params ({})
    def get_archive_search(params = {}, options = {})
      req = build_request(:get_archive_search, params)
      req.send_request(options)
    end

    # Returns the results of a completed email archive search job.
    #
    # @option params [required, String] :search_id
    #   The identifier of the completed search job.
    #
    # @return [Types::GetArchiveSearchResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveSearchResultsResponse#rows #rows} => Array&lt;Types::Row&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_search_results({
    #     search_id: "SearchId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rows #=> Array
    #   resp.rows[0].archived_message_id #=> String
    #   resp.rows[0].received_timestamp #=> Time
    #   resp.rows[0].date #=> String
    #   resp.rows[0].to #=> String
    #   resp.rows[0].from #=> String
    #   resp.rows[0].cc #=> String
    #   resp.rows[0].subject #=> String
    #   resp.rows[0].message_id #=> String
    #   resp.rows[0].has_attachments #=> Boolean
    #   resp.rows[0].received_headers #=> Array
    #   resp.rows[0].received_headers[0] #=> String
    #   resp.rows[0].in_reply_to #=> String
    #   resp.rows[0].x_mailer #=> String
    #   resp.rows[0].x_original_mailer #=> String
    #   resp.rows[0].x_priority #=> String
    #   resp.rows[0].ingress_point_id #=> String
    #   resp.rows[0].sender_hostname #=> String
    #   resp.rows[0].sender_ip_address #=> String
    #   resp.rows[0].envelope.helo #=> String
    #   resp.rows[0].envelope.from #=> String
    #   resp.rows[0].envelope.to #=> Array
    #   resp.rows[0].envelope.to[0] #=> String
    #   resp.rows[0].source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearchResults AWS API Documentation
    #
    # @overload get_archive_search_results(params = {})
    # @param [Hash] params ({})
    def get_archive_search_results(params = {}, options = {})
      req = build_request(:get_archive_search_results, params)
      req.send_request(options)
    end

    # Fetch ingress endpoint resource attributes.
    #
    # @option params [required, String] :ingress_point_id
    #   The identifier of an ingress endpoint.
    #
    # @return [Types::GetIngressPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngressPointResponse#ingress_point_id #ingress_point_id} => String
    #   * {Types::GetIngressPointResponse#ingress_point_name #ingress_point_name} => String
    #   * {Types::GetIngressPointResponse#ingress_point_arn #ingress_point_arn} => String
    #   * {Types::GetIngressPointResponse#status #status} => String
    #   * {Types::GetIngressPointResponse#type #type} => String
    #   * {Types::GetIngressPointResponse#a_record #a_record} => String
    #   * {Types::GetIngressPointResponse#rule_set_id #rule_set_id} => String
    #   * {Types::GetIngressPointResponse#traffic_policy_id #traffic_policy_id} => String
    #   * {Types::GetIngressPointResponse#ingress_point_auth_configuration #ingress_point_auth_configuration} => Types::IngressPointAuthConfiguration
    #   * {Types::GetIngressPointResponse#network_configuration #network_configuration} => Types::NetworkConfiguration
    #   * {Types::GetIngressPointResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetIngressPointResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    #
    # @example Example: Get Open IngressPoint
    #
    #   resp = client.get_ingress_point({
    #     ingress_point_id: "inp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com", 
    #     ingress_point_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-ingress-point/inp-12345", 
    #     ingress_point_id: "inp-12345", 
    #     ingress_point_name: "ingressPointName", 
    #     status: "ACTIVE", 
    #     type: "OPEN", 
    #   }
    #
    # @example Example: Get Auth IngressPoint
    #
    #   resp = client.get_ingress_point({
    #     ingress_point_id: "inp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com", 
    #     ingress_point_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-ingress-point/inp-12345", 
    #     ingress_point_auth_configuration: {
    #       secret_arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde", 
    #     }, 
    #     ingress_point_id: "inp-12345", 
    #     ingress_point_name: "ingressPointName", 
    #     status: "ACTIVE", 
    #     type: "AUTH", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingress_point({
    #     ingress_point_id: "IngressPointId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingress_point_id #=> String
    #   resp.ingress_point_name #=> String
    #   resp.ingress_point_arn #=> String
    #   resp.status #=> String, one of "PROVISIONING", "DEPROVISIONING", "UPDATING", "ACTIVE", "CLOSED", "FAILED"
    #   resp.type #=> String, one of "OPEN", "AUTH"
    #   resp.a_record #=> String
    #   resp.rule_set_id #=> String
    #   resp.traffic_policy_id #=> String
    #   resp.ingress_point_auth_configuration.ingress_point_password_configuration.smtp_password_version #=> String
    #   resp.ingress_point_auth_configuration.ingress_point_password_configuration.previous_smtp_password_version #=> String
    #   resp.ingress_point_auth_configuration.ingress_point_password_configuration.previous_smtp_password_expiry_timestamp #=> Time
    #   resp.ingress_point_auth_configuration.secret_arn #=> String
    #   resp.network_configuration.public_network_configuration.ip_type #=> String, one of "IPV4", "DUAL_STACK"
    #   resp.network_configuration.private_network_configuration.vpc_endpoint_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetIngressPoint AWS API Documentation
    #
    # @overload get_ingress_point(params = {})
    # @param [Hash] params ({})
    def get_ingress_point(params = {}, options = {})
      req = build_request(:get_ingress_point, params)
      req.send_request(options)
    end

    # Fetch attributes of a member in an address list.
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list to retrieve the address
    #   from.
    #
    # @option params [required, String] :address
    #   The address to be retrieved from the address list.
    #
    # @return [Types::GetMemberOfAddressListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberOfAddressListResponse#address #address} => String
    #   * {Types::GetMemberOfAddressListResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member_of_address_list({
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetMemberOfAddressList AWS API Documentation
    #
    # @overload get_member_of_address_list(params = {})
    # @param [Hash] params ({})
    def get_member_of_address_list(params = {}, options = {})
      req = build_request(:get_member_of_address_list, params)
      req.send_request(options)
    end

    # Fetch the relay resource and it's attributes.
    #
    # @option params [required, String] :relay_id
    #   A unique relay identifier.
    #
    # @return [Types::GetRelayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelayResponse#relay_id #relay_id} => String
    #   * {Types::GetRelayResponse#relay_arn #relay_arn} => String
    #   * {Types::GetRelayResponse#relay_name #relay_name} => String
    #   * {Types::GetRelayResponse#server_name #server_name} => String
    #   * {Types::GetRelayResponse#server_port #server_port} => Integer
    #   * {Types::GetRelayResponse#authentication #authentication} => Types::RelayAuthentication
    #   * {Types::GetRelayResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetRelayResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relay({
    #     relay_id: "RelayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.relay_id #=> String
    #   resp.relay_arn #=> String
    #   resp.relay_name #=> String
    #   resp.server_name #=> String
    #   resp.server_port #=> Integer
    #   resp.authentication.secret_arn #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRelay AWS API Documentation
    #
    # @overload get_relay(params = {})
    # @param [Hash] params ({})
    def get_relay(params = {}, options = {})
      req = build_request(:get_relay, params)
      req.send_request(options)
    end

    # Fetch attributes of a rule set.
    #
    # @option params [required, String] :rule_set_id
    #   The identifier of an existing rule set to be retrieved.
    #
    # @return [Types::GetRuleSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleSetResponse#rule_set_id #rule_set_id} => String
    #   * {Types::GetRuleSetResponse#rule_set_arn #rule_set_arn} => String
    #   * {Types::GetRuleSetResponse#rule_set_name #rule_set_name} => String
    #   * {Types::GetRuleSetResponse#created_date #created_date} => Time
    #   * {Types::GetRuleSetResponse#last_modification_date #last_modification_date} => Time
    #   * {Types::GetRuleSetResponse#rules #rules} => Array&lt;Types::Rule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_set({
    #     rule_set_id: "RuleSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_set_id #=> String
    #   resp.rule_set_arn #=> String
    #   resp.rule_set_name #=> String
    #   resp.created_date #=> Time
    #   resp.last_modification_date #=> Time
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.attribute #=> String, one of "READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.is_in_address_list.attribute #=> String, one of "RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.is_in_address_list.address_lists #=> Array
    #   resp.rules[0].conditions[0].boolean_expression.evaluate.is_in_address_list.address_lists[0] #=> String
    #   resp.rules[0].conditions[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.rules[0].conditions[0].string_expression.evaluate.attribute #=> String, one of "MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"
    #   resp.rules[0].conditions[0].string_expression.evaluate.mime_header_attribute #=> String
    #   resp.rules[0].conditions[0].string_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].conditions[0].string_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].conditions[0].string_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"
    #   resp.rules[0].conditions[0].string_expression.values #=> Array
    #   resp.rules[0].conditions[0].string_expression.values[0] #=> String
    #   resp.rules[0].conditions[0].number_expression.evaluate.attribute #=> String, one of "MESSAGE_SIZE"
    #   resp.rules[0].conditions[0].number_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"
    #   resp.rules[0].conditions[0].number_expression.value #=> Float
    #   resp.rules[0].conditions[0].ip_expression.evaluate.attribute #=> String, one of "SOURCE_IP"
    #   resp.rules[0].conditions[0].ip_expression.operator #=> String, one of "CIDR_MATCHES", "NOT_CIDR_MATCHES"
    #   resp.rules[0].conditions[0].ip_expression.values #=> Array
    #   resp.rules[0].conditions[0].ip_expression.values[0] #=> String
    #   resp.rules[0].conditions[0].verdict_expression.evaluate.attribute #=> String, one of "SPF", "DKIM"
    #   resp.rules[0].conditions[0].verdict_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].conditions[0].verdict_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].conditions[0].verdict_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.rules[0].conditions[0].verdict_expression.values #=> Array
    #   resp.rules[0].conditions[0].verdict_expression.values[0] #=> String, one of "PASS", "FAIL", "GRAY", "PROCESSING_FAILED"
    #   resp.rules[0].conditions[0].dmarc_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.rules[0].conditions[0].dmarc_expression.values #=> Array
    #   resp.rules[0].conditions[0].dmarc_expression.values[0] #=> String, one of "NONE", "QUARANTINE", "REJECT"
    #   resp.rules[0].unless #=> Array
    #   resp.rules[0].unless[0].boolean_expression.evaluate.attribute #=> String, one of "READ_RECEIPT_REQUESTED", "TLS", "TLS_WRAPPED"
    #   resp.rules[0].unless[0].boolean_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].unless[0].boolean_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].unless[0].boolean_expression.evaluate.is_in_address_list.attribute #=> String, one of "RECIPIENT", "MAIL_FROM", "SENDER", "FROM", "TO", "CC"
    #   resp.rules[0].unless[0].boolean_expression.evaluate.is_in_address_list.address_lists #=> Array
    #   resp.rules[0].unless[0].boolean_expression.evaluate.is_in_address_list.address_lists[0] #=> String
    #   resp.rules[0].unless[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.rules[0].unless[0].string_expression.evaluate.attribute #=> String, one of "MAIL_FROM", "HELO", "RECIPIENT", "SENDER", "FROM", "SUBJECT", "TO", "CC"
    #   resp.rules[0].unless[0].string_expression.evaluate.mime_header_attribute #=> String
    #   resp.rules[0].unless[0].string_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].unless[0].string_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].unless[0].string_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"
    #   resp.rules[0].unless[0].string_expression.values #=> Array
    #   resp.rules[0].unless[0].string_expression.values[0] #=> String
    #   resp.rules[0].unless[0].number_expression.evaluate.attribute #=> String, one of "MESSAGE_SIZE"
    #   resp.rules[0].unless[0].number_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS", "LESS_THAN", "GREATER_THAN", "LESS_THAN_OR_EQUAL", "GREATER_THAN_OR_EQUAL"
    #   resp.rules[0].unless[0].number_expression.value #=> Float
    #   resp.rules[0].unless[0].ip_expression.evaluate.attribute #=> String, one of "SOURCE_IP"
    #   resp.rules[0].unless[0].ip_expression.operator #=> String, one of "CIDR_MATCHES", "NOT_CIDR_MATCHES"
    #   resp.rules[0].unless[0].ip_expression.values #=> Array
    #   resp.rules[0].unless[0].ip_expression.values[0] #=> String
    #   resp.rules[0].unless[0].verdict_expression.evaluate.attribute #=> String, one of "SPF", "DKIM"
    #   resp.rules[0].unless[0].verdict_expression.evaluate.analysis.analyzer #=> String
    #   resp.rules[0].unless[0].verdict_expression.evaluate.analysis.result_field #=> String
    #   resp.rules[0].unless[0].verdict_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.rules[0].unless[0].verdict_expression.values #=> Array
    #   resp.rules[0].unless[0].verdict_expression.values[0] #=> String, one of "PASS", "FAIL", "GRAY", "PROCESSING_FAILED"
    #   resp.rules[0].unless[0].dmarc_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.rules[0].unless[0].dmarc_expression.values #=> Array
    #   resp.rules[0].unless[0].dmarc_expression.values[0] #=> String, one of "NONE", "QUARANTINE", "REJECT"
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].relay.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].relay.relay #=> String
    #   resp.rules[0].actions[0].relay.mail_from #=> String, one of "REPLACE", "PRESERVE"
    #   resp.rules[0].actions[0].archive.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].archive.target_archive #=> String
    #   resp.rules[0].actions[0].write_to_s3.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].write_to_s3.role_arn #=> String
    #   resp.rules[0].actions[0].write_to_s3.s3_bucket #=> String
    #   resp.rules[0].actions[0].write_to_s3.s3_prefix #=> String
    #   resp.rules[0].actions[0].write_to_s3.s3_sse_kms_key_id #=> String
    #   resp.rules[0].actions[0].send.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].send.role_arn #=> String
    #   resp.rules[0].actions[0].add_header.header_name #=> String
    #   resp.rules[0].actions[0].add_header.header_value #=> String
    #   resp.rules[0].actions[0].replace_recipient.replace_with #=> Array
    #   resp.rules[0].actions[0].replace_recipient.replace_with[0] #=> String
    #   resp.rules[0].actions[0].deliver_to_mailbox.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].deliver_to_mailbox.mailbox_arn #=> String
    #   resp.rules[0].actions[0].deliver_to_mailbox.role_arn #=> String
    #   resp.rules[0].actions[0].deliver_to_q_business.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].deliver_to_q_business.application_id #=> String
    #   resp.rules[0].actions[0].deliver_to_q_business.index_id #=> String
    #   resp.rules[0].actions[0].deliver_to_q_business.role_arn #=> String
    #   resp.rules[0].actions[0].publish_to_sns.action_failure_policy #=> String, one of "CONTINUE", "DROP"
    #   resp.rules[0].actions[0].publish_to_sns.topic_arn #=> String
    #   resp.rules[0].actions[0].publish_to_sns.role_arn #=> String
    #   resp.rules[0].actions[0].publish_to_sns.encoding #=> String, one of "UTF-8", "BASE64"
    #   resp.rules[0].actions[0].publish_to_sns.payload_type #=> String, one of "HEADERS", "CONTENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRuleSet AWS API Documentation
    #
    # @overload get_rule_set(params = {})
    # @param [Hash] params ({})
    def get_rule_set(params = {}, options = {})
      req = build_request(:get_rule_set, params)
      req.send_request(options)
    end

    # Fetch attributes of a traffic policy resource.
    #
    # @option params [required, String] :traffic_policy_id
    #   The identifier of the traffic policy resource.
    #
    # @return [Types::GetTrafficPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficPolicyResponse#traffic_policy_name #traffic_policy_name} => String
    #   * {Types::GetTrafficPolicyResponse#traffic_policy_id #traffic_policy_id} => String
    #   * {Types::GetTrafficPolicyResponse#traffic_policy_arn #traffic_policy_arn} => String
    #   * {Types::GetTrafficPolicyResponse#policy_statements #policy_statements} => Array&lt;Types::PolicyStatement&gt;
    #   * {Types::GetTrafficPolicyResponse#max_message_size_bytes #max_message_size_bytes} => Integer
    #   * {Types::GetTrafficPolicyResponse#default_action #default_action} => String
    #   * {Types::GetTrafficPolicyResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetTrafficPolicyResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    #
    # @example Example: Get TrafficPolicy
    #
    #   resp = client.get_traffic_policy({
    #     traffic_policy_id: "tp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     default_action: "DENY", 
    #     max_message_size_bytes: 1000, 
    #     policy_statements: [
    #       {
    #         action: "ALLOW", 
    #         conditions: [
    #           {
    #             string_expression: {
    #               evaluate: {
    #                 attribute: "RECIPIENT", 
    #               }, 
    #               operator: "EQUALS", 
    #               values: [
    #                 "example@amazon.com", 
    #                 "example@gmail.com", 
    #               ], 
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #     traffic_policy_arn: "arn:aws:ses:us-east-1:123456789012:mailmanager-traffic-policy/tp-12345", 
    #     traffic_policy_id: "tp-12345", 
    #     traffic_policy_name: "trafficPolicyName", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy({
    #     traffic_policy_id: "TrafficPolicyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policy_name #=> String
    #   resp.traffic_policy_id #=> String
    #   resp.traffic_policy_arn #=> String
    #   resp.policy_statements #=> Array
    #   resp.policy_statements[0].conditions #=> Array
    #   resp.policy_statements[0].conditions[0].string_expression.evaluate.attribute #=> String, one of "RECIPIENT"
    #   resp.policy_statements[0].conditions[0].string_expression.evaluate.analysis.analyzer #=> String
    #   resp.policy_statements[0].conditions[0].string_expression.evaluate.analysis.result_field #=> String
    #   resp.policy_statements[0].conditions[0].string_expression.operator #=> String, one of "EQUALS", "NOT_EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS"
    #   resp.policy_statements[0].conditions[0].string_expression.values #=> Array
    #   resp.policy_statements[0].conditions[0].string_expression.values[0] #=> String
    #   resp.policy_statements[0].conditions[0].ip_expression.evaluate.attribute #=> String, one of "SENDER_IP"
    #   resp.policy_statements[0].conditions[0].ip_expression.operator #=> String, one of "CIDR_MATCHES", "NOT_CIDR_MATCHES"
    #   resp.policy_statements[0].conditions[0].ip_expression.values #=> Array
    #   resp.policy_statements[0].conditions[0].ip_expression.values[0] #=> String
    #   resp.policy_statements[0].conditions[0].ipv_6_expression.evaluate.attribute #=> String, one of "SENDER_IPV6"
    #   resp.policy_statements[0].conditions[0].ipv_6_expression.operator #=> String, one of "CIDR_MATCHES", "NOT_CIDR_MATCHES"
    #   resp.policy_statements[0].conditions[0].ipv_6_expression.values #=> Array
    #   resp.policy_statements[0].conditions[0].ipv_6_expression.values[0] #=> String
    #   resp.policy_statements[0].conditions[0].tls_expression.evaluate.attribute #=> String, one of "TLS_PROTOCOL"
    #   resp.policy_statements[0].conditions[0].tls_expression.operator #=> String, one of "MINIMUM_TLS_VERSION", "IS"
    #   resp.policy_statements[0].conditions[0].tls_expression.value #=> String, one of "TLS1_2", "TLS1_3"
    #   resp.policy_statements[0].conditions[0].boolean_expression.evaluate.analysis.analyzer #=> String
    #   resp.policy_statements[0].conditions[0].boolean_expression.evaluate.analysis.result_field #=> String
    #   resp.policy_statements[0].conditions[0].boolean_expression.evaluate.is_in_address_list.attribute #=> String, one of "RECIPIENT"
    #   resp.policy_statements[0].conditions[0].boolean_expression.evaluate.is_in_address_list.address_lists #=> Array
    #   resp.policy_statements[0].conditions[0].boolean_expression.evaluate.is_in_address_list.address_lists[0] #=> String
    #   resp.policy_statements[0].conditions[0].boolean_expression.operator #=> String, one of "IS_TRUE", "IS_FALSE"
    #   resp.policy_statements[0].action #=> String, one of "ALLOW", "DENY"
    #   resp.max_message_size_bytes #=> Integer
    #   resp.default_action #=> String, one of "ALLOW", "DENY"
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetTrafficPolicy AWS API Documentation
    #
    # @overload get_traffic_policy(params = {})
    # @param [Hash] params ({})
    def get_traffic_policy(params = {}, options = {})
      req = build_request(:get_traffic_policy, params)
      req.send_request(options)
    end

    # Lists all Add On instances in your account.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of ingress endpoint resources that are returned per
    #   call. You can use NextToken to obtain further ingress endpoints.
    #
    # @return [Types::ListAddonInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAddonInstancesResponse#addon_instances #addon_instances} => Array&lt;Types::AddonInstance&gt;
    #   * {Types::ListAddonInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_addon_instances({
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.addon_instances #=> Array
    #   resp.addon_instances[0].addon_instance_id #=> String
    #   resp.addon_instances[0].addon_subscription_id #=> String
    #   resp.addon_instances[0].addon_name #=> String
    #   resp.addon_instances[0].addon_instance_arn #=> String
    #   resp.addon_instances[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonInstances AWS API Documentation
    #
    # @overload list_addon_instances(params = {})
    # @param [Hash] params ({})
    def list_addon_instances(params = {}, options = {})
      req = build_request(:list_addon_instances, params)
      req.send_request(options)
    end

    # Lists all Add On subscriptions in your account.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of ingress endpoint resources that are returned per
    #   call. You can use NextToken to obtain further ingress endpoints.
    #
    # @return [Types::ListAddonSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAddonSubscriptionsResponse#addon_subscriptions #addon_subscriptions} => Array&lt;Types::AddonSubscription&gt;
    #   * {Types::ListAddonSubscriptionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_addon_subscriptions({
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.addon_subscriptions #=> Array
    #   resp.addon_subscriptions[0].addon_subscription_id #=> String
    #   resp.addon_subscriptions[0].addon_name #=> String
    #   resp.addon_subscriptions[0].addon_subscription_arn #=> String
    #   resp.addon_subscriptions[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonSubscriptions AWS API Documentation
    #
    # @overload list_addon_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_addon_subscriptions(params = {}, options = {})
      req = build_request(:list_addon_subscriptions, params)
      req.send_request(options)
    end

    # Lists jobs for an address list.
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list for listing import jobs.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of import jobs that are returned per call. You can
    #   use NextToken to retrieve the next page of jobs.
    #
    # @return [Types::ListAddressListImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAddressListImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportJob&gt;
    #   * {Types::ListAddressListImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_address_list_import_jobs({
    #     address_list_id: "AddressListId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].job_id #=> String
    #   resp.import_jobs[0].name #=> String
    #   resp.import_jobs[0].status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "STOPPED"
    #   resp.import_jobs[0].pre_signed_url #=> String
    #   resp.import_jobs[0].imported_items_count #=> Integer
    #   resp.import_jobs[0].failed_items_count #=> Integer
    #   resp.import_jobs[0].import_data_format.import_data_type #=> String, one of "CSV", "JSON"
    #   resp.import_jobs[0].address_list_id #=> String
    #   resp.import_jobs[0].created_timestamp #=> Time
    #   resp.import_jobs[0].start_timestamp #=> Time
    #   resp.import_jobs[0].completed_timestamp #=> Time
    #   resp.import_jobs[0].error #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressListImportJobs AWS API Documentation
    #
    # @overload list_address_list_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_address_list_import_jobs(params = {}, options = {})
      req = build_request(:list_address_list_import_jobs, params)
      req.send_request(options)
    end

    # Lists address lists for this account.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of address list resources that are returned per
    #   call. You can use NextToken to retrieve the next page of address
    #   lists.
    #
    # @return [Types::ListAddressListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAddressListsResponse#address_lists #address_lists} => Array&lt;Types::AddressList&gt;
    #   * {Types::ListAddressListsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_address_lists({
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.address_lists #=> Array
    #   resp.address_lists[0].address_list_id #=> String
    #   resp.address_lists[0].address_list_arn #=> String
    #   resp.address_lists[0].address_list_name #=> String
    #   resp.address_lists[0].created_timestamp #=> Time
    #   resp.address_lists[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressLists AWS API Documentation
    #
    # @overload list_address_lists(params = {})
    # @param [Hash] params ({})
    def list_address_lists(params = {}, options = {})
      req = build_request(:list_address_lists, params)
      req.send_request(options)
    end

    # Returns a list of email archive export jobs.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive.
    #
    # @option params [String] :next_token
    #   If NextToken is returned, there are more results available. The value
    #   of NextToken is a unique pagination token for each page. Make the call
    #   again using the returned token to retrieve the next page.
    #
    # @option params [Integer] :page_size
    #   The maximum number of archive export jobs that are returned per call.
    #   You can use NextToken to obtain further pages of archives.
    #
    # @return [Types::ListArchiveExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArchiveExportsResponse#exports #exports} => Array&lt;Types::ExportSummary&gt;
    #   * {Types::ListArchiveExportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archive_exports({
    #     archive_id: "ArchiveId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.exports #=> Array
    #   resp.exports[0].export_id #=> String
    #   resp.exports[0].status.submission_timestamp #=> Time
    #   resp.exports[0].status.completion_timestamp #=> Time
    #   resp.exports[0].status.state #=> String, one of "QUEUED", "PREPROCESSING", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.exports[0].status.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveExports AWS API Documentation
    #
    # @overload list_archive_exports(params = {})
    # @param [Hash] params ({})
    def list_archive_exports(params = {}, options = {})
      req = build_request(:list_archive_exports, params)
      req.send_request(options)
    end

    # Returns a list of email archive search jobs.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive.
    #
    # @option params [String] :next_token
    #   If NextToken is returned, there are more results available. The value
    #   of NextToken is a unique pagination token for each page. Make the call
    #   again using the returned token to retrieve the next page.
    #
    # @option params [Integer] :page_size
    #   The maximum number of archive search jobs that are returned per call.
    #   You can use NextToken to obtain further pages of archives.
    #
    # @return [Types::ListArchiveSearchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArchiveSearchesResponse#searches #searches} => Array&lt;Types::SearchSummary&gt;
    #   * {Types::ListArchiveSearchesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archive_searches({
    #     archive_id: "ArchiveId", # required
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.searches #=> Array
    #   resp.searches[0].search_id #=> String
    #   resp.searches[0].status.submission_timestamp #=> Time
    #   resp.searches[0].status.completion_timestamp #=> Time
    #   resp.searches[0].status.state #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.searches[0].status.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveSearches AWS API Documentation
    #
    # @overload list_archive_searches(params = {})
    # @param [Hash] params ({})
    def list_archive_searches(params = {}, options = {})
      req = build_request(:list_archive_searches, params)
      req.send_request(options)
    end

    # Returns a list of all email archives in your account.
    #
    # @option params [String] :next_token
    #   If NextToken is returned, there are more results available. The value
    #   of NextToken is a unique pagination token for each page. Make the call
    #   again using the returned token to retrieve the next page.
    #
    # @option params [Integer] :page_size
    #   The maximum number of archives that are returned per call. You can use
    #   NextToken to obtain further pages of archives.
    #
    # @return [Types::ListArchivesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArchivesResponse#archives #archives} => Array&lt;Types::Archive&gt;
    #   * {Types::ListArchivesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archives({
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.archives #=> Array
    #   resp.archives[0].archive_id #=> String
    #   resp.archives[0].archive_name #=> String
    #   resp.archives[0].archive_state #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.archives[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchives AWS API Documentation
    #
    # @overload list_archives(params = {})
    # @param [Hash] params ({})
    def list_archives(params = {}, options = {})
      req = build_request(:list_archives, params)
      req.send_request(options)
    end

    # List all ingress endpoint resources.
    #
    # @option params [Integer] :page_size
    #   The maximum number of ingress endpoint resources that are returned per
    #   call. You can use NextToken to obtain further ingress endpoints.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @return [Types::ListIngressPointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngressPointsResponse#ingress_points #ingress_points} => Array&lt;Types::IngressPoint&gt;
    #   * {Types::ListIngressPointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List IngressPoints
    #
    #   resp = client.list_ingress_points({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_points: [
    #       {
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com", 
    #         ingress_point_id: "inp-12345", 
    #         ingress_point_name: "ingressPointName", 
    #         status: "ACTIVE", 
    #         type: "OPEN", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List IngressPoints with PageSize
    #
    #   resp = client.list_ingress_points({
    #     page_size: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_points: [
    #       {
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com", 
    #         ingress_point_id: "inp-12345", 
    #         ingress_point_name: "ingressPointName", 
    #         status: "ACTIVE", 
    #         type: "OPEN", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List IngressPoints with NextToken
    #
    #   resp = client.list_ingress_points({
    #     next_token: "nextToken", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ingress_points: [
    #       {
    #         a_record: "abcde123.prod.us-east-1.email-border.ses.aws.a2z.com", 
    #         ingress_point_id: "inp-12345", 
    #         ingress_point_name: "ingressPointName", 
    #         status: "ACTIVE", 
    #         type: "OPEN", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingress_points({
    #     page_size: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingress_points #=> Array
    #   resp.ingress_points[0].ingress_point_name #=> String
    #   resp.ingress_points[0].ingress_point_id #=> String
    #   resp.ingress_points[0].status #=> String, one of "PROVISIONING", "DEPROVISIONING", "UPDATING", "ACTIVE", "CLOSED", "FAILED"
    #   resp.ingress_points[0].type #=> String, one of "OPEN", "AUTH"
    #   resp.ingress_points[0].a_record #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListIngressPoints AWS API Documentation
    #
    # @overload list_ingress_points(params = {})
    # @param [Hash] params ({})
    def list_ingress_points(params = {}, options = {})
      req = build_request(:list_ingress_points, params)
      req.send_request(options)
    end

    # Lists members of an address list.
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list to list the addresses from.
    #
    # @option params [Types::AddressFilter] :filter
    #   Filter to be used to limit the results.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of address list members that are returned per call.
    #   You can use NextToken to retrieve the next page of members.
    #
    # @return [Types::ListMembersOfAddressListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersOfAddressListResponse#addresses #addresses} => Array&lt;Types::SavedAddress&gt;
    #   * {Types::ListMembersOfAddressListResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members_of_address_list({
    #     address_list_id: "AddressListId", # required
    #     filter: {
    #       address_prefix: "AddressPrefix",
    #     },
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.addresses #=> Array
    #   resp.addresses[0].address #=> String
    #   resp.addresses[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListMembersOfAddressList AWS API Documentation
    #
    # @overload list_members_of_address_list(params = {})
    # @param [Hash] params ({})
    def list_members_of_address_list(params = {}, options = {})
      req = build_request(:list_members_of_address_list, params)
      req.send_request(options)
    end

    # Lists all the existing relay resources.
    #
    # @option params [Integer] :page_size
    #   The number of relays to be returned in one request.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @return [Types::ListRelaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRelaysResponse#relays #relays} => Array&lt;Types::Relay&gt;
    #   * {Types::ListRelaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_relays({
    #     page_size: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.relays #=> Array
    #   resp.relays[0].relay_id #=> String
    #   resp.relays[0].relay_name #=> String
    #   resp.relays[0].last_modified_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRelays AWS API Documentation
    #
    # @overload list_relays(params = {})
    # @param [Hash] params ({})
    def list_relays(params = {}, options = {})
      req = build_request(:list_relays, params)
      req.send_request(options)
    end

    # List rule sets for this account.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of rule set resources that are returned per call.
    #   You can use NextToken to obtain further rule sets.
    #
    # @return [Types::ListRuleSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleSetsResponse#rule_sets #rule_sets} => Array&lt;Types::RuleSet&gt;
    #   * {Types::ListRuleSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_sets({
    #     next_token: "PaginationToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_sets #=> Array
    #   resp.rule_sets[0].rule_set_id #=> String
    #   resp.rule_sets[0].rule_set_name #=> String
    #   resp.rule_sets[0].last_modification_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRuleSets AWS API Documentation
    #
    # @overload list_rule_sets(params = {})
    # @param [Hash] params ({})
    def list_rule_sets(params = {}, options = {})
      req = build_request(:list_rule_sets, params)
      req.send_request(options)
    end

    # Retrieves the list of tags (keys and values) assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to retrieve tags from.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List traffic policy resources.
    #
    # @option params [Integer] :page_size
    #   The maximum number of traffic policy resources that are returned per
    #   call. You can use NextToken to obtain further traffic policies.
    #
    # @option params [String] :next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #
    # @return [Types::ListTrafficPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficPoliciesResponse#traffic_policies #traffic_policies} => Array&lt;Types::TrafficPolicy&gt;
    #   * {Types::ListTrafficPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List TrafficPolicies
    #
    #   resp = client.list_traffic_policies({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     traffic_policies: [
    #       {
    #         default_action: "DENY", 
    #         traffic_policy_id: "tp-12345", 
    #         traffic_policy_name: "trafficPolicyName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List TrafficPolicies with PageSize
    #
    #   resp = client.list_traffic_policies({
    #     page_size: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     traffic_policies: [
    #       {
    #         default_action: "DENY", 
    #         traffic_policy_id: "tp-12345", 
    #         traffic_policy_name: "trafficPolicyName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List TrafficPolicies with NextToken
    #
    #   resp = client.list_traffic_policies({
    #     next_token: "nextToken", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     traffic_policies: [
    #       {
    #         default_action: "DENY", 
    #         traffic_policy_id: "tp-12345", 
    #         traffic_policy_name: "trafficPolicyName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policies({
    #     page_size: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_policies #=> Array
    #   resp.traffic_policies[0].traffic_policy_name #=> String
    #   resp.traffic_policies[0].traffic_policy_id #=> String
    #   resp.traffic_policies[0].default_action #=> String, one of "ALLOW", "DENY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTrafficPolicies AWS API Documentation
    #
    # @overload list_traffic_policies(params = {})
    # @param [Hash] params ({})
    def list_traffic_policies(params = {}, options = {})
      req = build_request(:list_traffic_policies, params)
      req.send_request(options)
    end

    # Adds a member to an address list.
    #
    # @option params [required, String] :address_list_id
    #   The unique identifier of the address list where the address should be
    #   added.
    #
    # @option params [required, String] :address
    #   The address to be added to the address list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_member_to_address_list({
    #     address_list_id: "AddressListId", # required
    #     address: "Address", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RegisterMemberToAddressList AWS API Documentation
    #
    # @overload register_member_to_address_list(params = {})
    # @param [Hash] params ({})
    def register_member_to_address_list(params = {}, options = {})
      req = build_request(:register_member_to_address_list, params)
      req.send_request(options)
    end

    # Starts an import job for an address list.
    #
    # @option params [required, String] :job_id
    #   The identifier of the import job that needs to be started.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_address_list_import_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartAddressListImportJob AWS API Documentation
    #
    # @overload start_address_list_import_job(params = {})
    # @param [Hash] params ({})
    def start_address_list_import_job(params = {}, options = {})
      req = build_request(:start_address_list_import_job, params)
      req.send_request(options)
    end

    # Initiates an export of emails from the specified archive.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive to export emails from.
    #
    # @option params [Types::ArchiveFilters] :filters
    #   Criteria to filter which emails are included in the export.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_timestamp
    #   The start of the timestamp range to include emails from.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :to_timestamp
    #   The end of the timestamp range to include emails from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of email items to include in the export.
    #
    # @option params [required, Types::ExportDestinationConfiguration] :export_destination_configuration
    #   Details on where to deliver the exported email data.
    #
    # @option params [Boolean] :include_metadata
    #   Whether to include message metadata as JSON files in the export.
    #
    # @return [Types::StartArchiveExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartArchiveExportResponse#export_id #export_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_archive_export({
    #     archive_id: "ArchiveId", # required
    #     filters: {
    #       include: [
    #         {
    #           string_expression: {
    #             evaluate: { # required
    #               attribute: "TO", # accepts TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM
    #             },
    #             operator: "CONTAINS", # required, accepts CONTAINS
    #             values: ["StringValue"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               attribute: "HAS_ATTACHMENTS", # accepts HAS_ATTACHMENTS
    #             },
    #             operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #           },
    #         },
    #       ],
    #       unless: [
    #         {
    #           string_expression: {
    #             evaluate: { # required
    #               attribute: "TO", # accepts TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM
    #             },
    #             operator: "CONTAINS", # required, accepts CONTAINS
    #             values: ["StringValue"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               attribute: "HAS_ATTACHMENTS", # accepts HAS_ATTACHMENTS
    #             },
    #             operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #           },
    #         },
    #       ],
    #     },
    #     from_timestamp: Time.now, # required
    #     to_timestamp: Time.now, # required
    #     max_results: 1,
    #     export_destination_configuration: { # required
    #       s3: {
    #         s3_location: "S3Location",
    #       },
    #     },
    #     include_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveExport AWS API Documentation
    #
    # @overload start_archive_export(params = {})
    # @param [Hash] params ({})
    def start_archive_export(params = {}, options = {})
      req = build_request(:start_archive_export, params)
      req.send_request(options)
    end

    # Initiates a search across emails in the specified archive.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive to search emails in.
    #
    # @option params [Types::ArchiveFilters] :filters
    #   Criteria to filter which emails are included in the search results.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :from_timestamp
    #   The start timestamp of the range to search emails from.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :to_timestamp
    #   The end timestamp of the range to search emails from.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of search results to return.
    #
    # @return [Types::StartArchiveSearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartArchiveSearchResponse#search_id #search_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_archive_search({
    #     archive_id: "ArchiveId", # required
    #     filters: {
    #       include: [
    #         {
    #           string_expression: {
    #             evaluate: { # required
    #               attribute: "TO", # accepts TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM
    #             },
    #             operator: "CONTAINS", # required, accepts CONTAINS
    #             values: ["StringValue"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               attribute: "HAS_ATTACHMENTS", # accepts HAS_ATTACHMENTS
    #             },
    #             operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #           },
    #         },
    #       ],
    #       unless: [
    #         {
    #           string_expression: {
    #             evaluate: { # required
    #               attribute: "TO", # accepts TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM
    #             },
    #             operator: "CONTAINS", # required, accepts CONTAINS
    #             values: ["StringValue"], # required
    #           },
    #           boolean_expression: {
    #             evaluate: { # required
    #               attribute: "HAS_ATTACHMENTS", # accepts HAS_ATTACHMENTS
    #             },
    #             operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #           },
    #         },
    #       ],
    #     },
    #     from_timestamp: Time.now, # required
    #     to_timestamp: Time.now, # required
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.search_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveSearch AWS API Documentation
    #
    # @overload start_archive_search(params = {})
    # @param [Hash] params ({})
    def start_archive_search(params = {}, options = {})
      req = build_request(:start_archive_search, params)
      req.send_request(options)
    end

    # Stops an ongoing import job for an address list.
    #
    # @option params [required, String] :job_id
    #   The identifier of the import job that needs to be stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_address_list_import_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopAddressListImportJob AWS API Documentation
    #
    # @overload stop_address_list_import_job(params = {})
    # @param [Hash] params ({})
    def stop_address_list_import_job(params = {}, options = {})
      req = build_request(:stop_address_list_import_job, params)
      req.send_request(options)
    end

    # Stops an in-progress export of emails from an archive.
    #
    # @option params [required, String] :export_id
    #   The identifier of the export job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_archive_export({
    #     export_id: "ExportId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveExport AWS API Documentation
    #
    # @overload stop_archive_export(params = {})
    # @param [Hash] params ({})
    def stop_archive_export(params = {}, options = {})
      req = build_request(:stop_archive_export, params)
      req.send_request(options)
    end

    # Stops an in-progress archive search job.
    #
    # @option params [required, String] :search_id
    #   The identifier of the search job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_archive_search({
    #     search_id: "SearchId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveSearch AWS API Documentation
    #
    # @overload stop_archive_search(params = {})
    # @param [Hash] params ({})
    def stop_archive_search(params = {}, options = {})
      req = build_request(:stop_archive_search, params)
      req.send_request(options)
    end

    # Adds one or more tags (keys and values) to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags used to organize, track, or control access for the resource.
    #   For example, \{ "tags": \{"key1":"value1", "key2":"value2"}
    #   }.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove one or more tags (keys and values) from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to remove
    #   from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing email archive.
    #
    # @option params [required, String] :archive_id
    #   The identifier of the archive to update.
    #
    # @option params [String] :archive_name
    #   A new, unique name for the archive.
    #
    # @option params [Types::ArchiveRetention] :retention
    #   A new retention period for emails in the archive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_archive({
    #     archive_id: "ArchiveIdString", # required
    #     archive_name: "ArchiveNameString",
    #     retention: {
    #       retention_period: "THREE_MONTHS", # accepts THREE_MONTHS, SIX_MONTHS, NINE_MONTHS, ONE_YEAR, EIGHTEEN_MONTHS, TWO_YEARS, THIRTY_MONTHS, THREE_YEARS, FOUR_YEARS, FIVE_YEARS, SIX_YEARS, SEVEN_YEARS, EIGHT_YEARS, NINE_YEARS, TEN_YEARS, PERMANENT
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateArchive AWS API Documentation
    #
    # @overload update_archive(params = {})
    # @param [Hash] params ({})
    def update_archive(params = {}, options = {})
      req = build_request(:update_archive, params)
      req.send_request(options)
    end

    # Update attributes of a provisioned ingress endpoint resource.
    #
    # @option params [required, String] :ingress_point_id
    #   The identifier for the ingress endpoint you want to update.
    #
    # @option params [String] :ingress_point_name
    #   A user friendly name for the ingress endpoint resource.
    #
    # @option params [String] :status_to_update
    #   The update status of an ingress endpoint.
    #
    # @option params [String] :rule_set_id
    #   The identifier of an existing rule set that you attach to an ingress
    #   endpoint resource.
    #
    # @option params [String] :traffic_policy_id
    #   The identifier of an existing traffic policy that you attach to an
    #   ingress endpoint resource.
    #
    # @option params [Types::IngressPointConfiguration] :ingress_point_configuration
    #   If you choose an Authenticated ingress endpoint, you must configure
    #   either an SMTP password or a secret ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Update Open/Auth IngressPoint with new Name
    #
    #   resp = client.update_ingress_point({
    #     ingress_point_id: "inp-12345", 
    #     ingress_point_name: "ingressPointNewName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: Update Open/Auth IngressPoint with new RuleSetId / TrafficPolicyId
    #
    #   resp = client.update_ingress_point({
    #     ingress_point_id: "inp-12345", 
    #     rule_set_id: "rs-12345", 
    #     traffic_policy_id: "tp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: Update Auth IngressPoint with new SmtpPassword
    #
    #   resp = client.update_ingress_point({
    #     ingress_point_configuration: {
    #       smtp_password: "newSmtpPassword", 
    #     }, 
    #     ingress_point_id: "inp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: Update Auth IngressPoint with new SecretArn
    #
    #   resp = client.update_ingress_point({
    #     ingress_point_configuration: {
    #       secret_arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:abcde", 
    #     }, 
    #     ingress_point_id: "inp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ingress_point({
    #     ingress_point_id: "IngressPointId", # required
    #     ingress_point_name: "IngressPointName",
    #     status_to_update: "ACTIVE", # accepts ACTIVE, CLOSED
    #     rule_set_id: "RuleSetId",
    #     traffic_policy_id: "TrafficPolicyId",
    #     ingress_point_configuration: {
    #       smtp_password: "SmtpPassword",
    #       secret_arn: "SecretArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateIngressPoint AWS API Documentation
    #
    # @overload update_ingress_point(params = {})
    # @param [Hash] params ({})
    def update_ingress_point(params = {}, options = {})
      req = build_request(:update_ingress_point, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing relay resource.
    #
    # @option params [required, String] :relay_id
    #   The unique relay identifier.
    #
    # @option params [String] :relay_name
    #   The name of the relay resource.
    #
    # @option params [String] :server_name
    #   The destination relay server address.
    #
    # @option params [Integer] :server_port
    #   The destination relay server port.
    #
    # @option params [Types::RelayAuthentication] :authentication
    #   Authentication for the relay destination server—specify the secretARN
    #   where the SMTP credentials are stored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_relay({
    #     relay_id: "RelayId", # required
    #     relay_name: "RelayName",
    #     server_name: "RelayServerName",
    #     server_port: 1,
    #     authentication: {
    #       secret_arn: "SecretArn",
    #       no_authentication: {
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRelay AWS API Documentation
    #
    # @overload update_relay(params = {})
    # @param [Hash] params ({})
    def update_relay(params = {}, options = {})
      req = build_request(:update_relay, params)
      req.send_request(options)
    end

    # Update attributes of an already provisioned rule set.
    #
    # @option params [required, String] :rule_set_id
    #   The identifier of a rule set you want to update.
    #
    # @option params [String] :rule_set_name
    #   A user-friendly name for the rule set resource.
    #
    # @option params [Array<Types::Rule>] :rules
    #   A new set of rules to replace the current rules of the rule set—these
    #   rules will override all the rules of the rule set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_set({
    #     rule_set_id: "RuleSetId", # required
    #     rule_set_name: "RuleSetName",
    #     rules: [
    #       {
    #         name: "RuleName",
    #         conditions: [
    #           {
    #             boolean_expression: {
    #               evaluate: { # required
    #                 attribute: "READ_RECEIPT_REQUESTED", # accepts READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "MAIL_FROM", # accepts MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC
    #                 mime_header_attribute: "MimeHeaderAttribute",
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["RuleStringValue"], # required
    #             },
    #             number_expression: {
    #               evaluate: { # required
    #                 attribute: "MESSAGE_SIZE", # accepts MESSAGE_SIZE
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
    #               value: 1.0, # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SOURCE_IP", # accepts SOURCE_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["RuleIpStringValue"], # required
    #             },
    #             verdict_expression: {
    #               evaluate: { # required
    #                 attribute: "SPF", # accepts SPF, DKIM
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["PASS"], # required, accepts PASS, FAIL, GRAY, PROCESSING_FAILED
    #             },
    #             dmarc_expression: {
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["NONE"], # required, accepts NONE, QUARANTINE, REJECT
    #             },
    #           },
    #         ],
    #         unless: [
    #           {
    #             boolean_expression: {
    #               evaluate: { # required
    #                 attribute: "READ_RECEIPT_REQUESTED", # accepts READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "MAIL_FROM", # accepts MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC
    #                 mime_header_attribute: "MimeHeaderAttribute",
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["RuleStringValue"], # required
    #             },
    #             number_expression: {
    #               evaluate: { # required
    #                 attribute: "MESSAGE_SIZE", # accepts MESSAGE_SIZE
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
    #               value: 1.0, # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SOURCE_IP", # accepts SOURCE_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["RuleIpStringValue"], # required
    #             },
    #             verdict_expression: {
    #               evaluate: { # required
    #                 attribute: "SPF", # accepts SPF, DKIM
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["PASS"], # required, accepts PASS, FAIL, GRAY, PROCESSING_FAILED
    #             },
    #             dmarc_expression: {
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #               values: ["NONE"], # required, accepts NONE, QUARANTINE, REJECT
    #             },
    #           },
    #         ],
    #         actions: [ # required
    #           {
    #             drop: {
    #             },
    #             relay: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               relay: "IdOrArn", # required
    #               mail_from: "REPLACE", # accepts REPLACE, PRESERVE
    #             },
    #             archive: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               target_archive: "NameOrArn", # required
    #             },
    #             write_to_s3: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               role_arn: "IamRoleArn", # required
    #               s3_bucket: "S3Bucket", # required
    #               s3_prefix: "S3Prefix",
    #               s3_sse_kms_key_id: "KmsKeyId",
    #             },
    #             send: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               role_arn: "IamRoleArn", # required
    #             },
    #             add_header: {
    #               header_name: "HeaderName", # required
    #               header_value: "HeaderValue", # required
    #             },
    #             replace_recipient: {
    #               replace_with: ["EmailAddress"],
    #             },
    #             deliver_to_mailbox: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               mailbox_arn: "NameOrArn", # required
    #               role_arn: "IamRoleArn", # required
    #             },
    #             deliver_to_q_business: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               application_id: "QBusinessApplicationId", # required
    #               index_id: "QBusinessIndexId", # required
    #               role_arn: "IamRoleArn", # required
    #             },
    #             publish_to_sns: {
    #               action_failure_policy: "CONTINUE", # accepts CONTINUE, DROP
    #               topic_arn: "SnsTopicArn", # required
    #               role_arn: "IamRoleArn", # required
    #               encoding: "UTF-8", # accepts UTF-8, BASE64
    #               payload_type: "HEADERS", # accepts HEADERS, CONTENT
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRuleSet AWS API Documentation
    #
    # @overload update_rule_set(params = {})
    # @param [Hash] params ({})
    def update_rule_set(params = {}, options = {})
      req = build_request(:update_rule_set, params)
      req.send_request(options)
    end

    # Update attributes of an already provisioned traffic policy resource.
    #
    # @option params [required, String] :traffic_policy_id
    #   The identifier of the traffic policy that you want to update.
    #
    # @option params [String] :traffic_policy_name
    #   A user-friendly name for the traffic policy resource.
    #
    # @option params [Array<Types::PolicyStatement>] :policy_statements
    #   The list of conditions to be updated for filtering email traffic.
    #
    # @option params [String] :default_action
    #   Default action instructs the traﬃc policy to either Allow or Deny
    #   (block) messages that fall outside of (or not addressed by) the
    #   conditions of your policy statements
    #
    # @option params [Integer] :max_message_size_bytes
    #   The maximum message size in bytes of email which is allowed in by this
    #   traffic policy—anything larger will be blocked.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Update TrafficPolicy with new Name
    #
    #   resp = client.update_traffic_policy({
    #     traffic_policy_id: "tp-12345", 
    #     traffic_policy_name: "trafficPolicyNewName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: Update TrafficPolicy with new PolicyStatements
    #
    #   resp = client.update_traffic_policy({
    #     policy_statements: [
    #       {
    #         action: "ALLOW", 
    #         conditions: [
    #           {
    #             string_expression: {
    #               evaluate: {
    #                 attribute: "RECIPIENT", 
    #               }, 
    #               operator: "EQUALS", 
    #               values: [
    #                 "example@amazon.com", 
    #                 "example@gmail.com", 
    #               ], 
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #     traffic_policy_id: "tp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: Update TrafficPolicy with new DefaultAction
    #
    #   resp = client.update_traffic_policy({
    #     default_action: "ALLOW", 
    #     traffic_policy_id: "tp-12345", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_policy({
    #     traffic_policy_id: "TrafficPolicyId", # required
    #     traffic_policy_name: "TrafficPolicyName",
    #     policy_statements: [
    #       {
    #         conditions: [ # required
    #           {
    #             string_expression: {
    #               evaluate: { # required
    #                 attribute: "RECIPIENT", # accepts RECIPIENT
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #               },
    #               operator: "EQUALS", # required, accepts EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
    #               values: ["String"], # required
    #             },
    #             ip_expression: {
    #               evaluate: { # required
    #                 attribute: "SENDER_IP", # accepts SENDER_IP
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["Ipv4Cidr"], # required
    #             },
    #             ipv_6_expression: {
    #               evaluate: { # required
    #                 attribute: "SENDER_IPV6", # accepts SENDER_IPV6
    #               },
    #               operator: "CIDR_MATCHES", # required, accepts CIDR_MATCHES, NOT_CIDR_MATCHES
    #               values: ["Ipv6Cidr"], # required
    #             },
    #             tls_expression: {
    #               evaluate: { # required
    #                 attribute: "TLS_PROTOCOL", # accepts TLS_PROTOCOL
    #               },
    #               operator: "MINIMUM_TLS_VERSION", # required, accepts MINIMUM_TLS_VERSION, IS
    #               value: "TLS1_2", # required, accepts TLS1_2, TLS1_3
    #             },
    #             boolean_expression: {
    #               evaluate: { # required
    #                 analysis: {
    #                   analyzer: "AnalyzerArn", # required
    #                   result_field: "ResultField", # required
    #                 },
    #                 is_in_address_list: {
    #                   attribute: "RECIPIENT", # required, accepts RECIPIENT
    #                   address_lists: ["AddressListArn"], # required
    #                 },
    #               },
    #               operator: "IS_TRUE", # required, accepts IS_TRUE, IS_FALSE
    #             },
    #           },
    #         ],
    #         action: "ALLOW", # required, accepts ALLOW, DENY
    #       },
    #     ],
    #     default_action: "ALLOW", # accepts ALLOW, DENY
    #     max_message_size_bytes: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateTrafficPolicy AWS API Documentation
    #
    # @overload update_traffic_policy(params = {})
    # @param [Hash] params ({})
    def update_traffic_policy(params = {}, options = {})
      req = build_request(:update_traffic_policy, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MailManager')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mailmanager'
      context[:gem_version] = '1.30.0'
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
