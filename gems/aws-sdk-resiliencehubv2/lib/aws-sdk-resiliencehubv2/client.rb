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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::Resiliencehubv2
  # An API client for Resiliencehubv2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Resiliencehubv2::Client.new(
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

    @identifier = :resiliencehubv2

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Resiliencehubv2::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::Resiliencehubv2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Resiliencehubv2::EndpointParameters`.
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

    # Creates a resilience assertion for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :text
    #   The text content of the assertion.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAssertionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssertionResponse#assertion #assertion} => Types::Assertion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assertion({
    #     service_arn: "Arn", # required
    #     text: "AssertionText", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion.service_arn #=> String
    #   resp.assertion.assertion_id #=> String
    #   resp.assertion.text #=> String
    #   resp.assertion.source #=> String, one of "AI_GENERATED", "USER"
    #   resp.assertion.created_at #=> Time
    #   resp.assertion.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateAssertion AWS API Documentation
    #
    # @overload create_assertion(params = {})
    # @param [Hash] params ({})
    def create_assertion(params = {}, options = {})
      req = build_request(:create_assertion, params)
      req.send_request(options)
    end

    # Creates an input source for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, Types::ResourceConfiguration] :resource_configuration
    #   Resource configuration for an input source. Provide exactly one field.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateInputSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputSourceResponse#service_arn #service_arn} => String
    #   * {Types::CreateInputSourceResponse#input_source_id #input_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input_source({
    #     service_arn: "Arn", # required
    #     resource_configuration: { # required
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           values: ["TagValue"], # required
    #         },
    #       ],
    #       cfn_stack_arn: "Arn",
    #       tf_state_file_url: "S3Url",
    #       eks: {
    #         cluster_arn: "Arn", # required
    #         namespaces: ["EksNamespace"], # required
    #       },
    #       design_file_s3_url: "S3Url",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arn #=> String
    #   resp.input_source_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateInputSource AWS API Documentation
    #
    # @overload create_input_source(params = {})
    # @param [Hash] params ({})
    def create_input_source(params = {}, options = {})
      req = build_request(:create_input_source, params)
      req.send_request(options)
    end

    # Creates a resilience policy that defines availability and disaster
    # recovery requirements.
    #
    # @option params [required, String] :name
    #   Resource name (used in ARN — no spaces allowed).
    #
    # @option params [String] :description
    #   Resource description for services and policies.
    #
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   The availability SLO for the resilience policy.
    #
    # @option params [Types::MultiAzTargets] :multi_az
    #   The multi-AZ disaster recovery targets for the resilience policy.
    #
    # @option params [Types::MultiRegionTargets] :multi_region
    #   The multi-Region disaster recovery targets for the resilience policy.
    #
    # @option params [Types::DataRecoveryTargets] :data_recovery
    #   The data recovery targets for the resilience policy.
    #
    # @option params [String] :kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     name: "EntityName", # required
    #     description: "LongDescription",
    #     availability_slo: {
    #       target: 1.0,
    #     },
    #     multi_az: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     },
    #     multi_region: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     },
    #     data_recovery: {
    #       time_between_backups_in_minutes: 1,
    #     },
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_arn #=> String
    #   resp.policy.name #=> String
    #   resp.policy.description #=> String
    #   resp.policy.availability_slo.target #=> Float
    #   resp.policy.multi_az.rto_in_minutes #=> Integer
    #   resp.policy.multi_az.rpo_in_minutes #=> Integer
    #   resp.policy.multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.multi_region.rto_in_minutes #=> Integer
    #   resp.policy.multi_region.rpo_in_minutes #=> Integer
    #   resp.policy.multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.policy.kms_key_id #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.associated_service_count #=> Integer
    #   resp.policy.created_at #=> Time
    #   resp.policy.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreatePolicy AWS API Documentation
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # On-demand report creation. Idempotent — duplicate requests with same
    # clientToken return existing result.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :report_type
    #   The type of report to generate.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReportResponse#report_generation_result #report_generation_result} => Types::ReportGenerationResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report({
    #     service_arn: "Arn", # required
    #     report_type: "FAILURE_MODE", # required, accepts FAILURE_MODE, TESTING
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_generation_result.report_type #=> String, one of "FAILURE_MODE", "TESTING"
    #   resp.report_generation_result.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.report_generation_result.service_arn #=> String
    #   resp.report_generation_result.assessment_id #=> String
    #   resp.report_generation_result.test_run_id #=> String
    #   resp.report_generation_result.test_template_arn #=> String
    #   resp.report_generation_result.created_at #=> Time
    #   resp.report_generation_result.report_output.s3_report_output.s3_object_key #=> String
    #   resp.report_generation_result.report_output.failed_report_output.error_code #=> String, one of "INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"
    #   resp.report_generation_result.report_output.failed_report_output.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateReport AWS API Documentation
    #
    # @overload create_report(params = {})
    # @param [Hash] params ({})
    def create_report(params = {}, options = {})
      req = build_request(:create_report, params)
      req.send_request(options)
    end

    # Creates a service.
    #
    # @option params [required, String] :name
    #   Resource name (used in ARN — no spaces allowed).
    #
    # @option params [String] :description
    #   Resource description for services and policies.
    #
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   The systems to associate with the service.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @option params [required, Array<String>] :regions
    #   The Regions where the service operates.
    #
    # @option params [required, Types::PermissionModel] :permission_model
    #   The permission model for the service.
    #
    # @option params [String] :dependency_discovery
    #   Caller-settable values for dependency discovery. INITIALIZING is
    #   system-managed.
    #
    # @option params [Types::ServiceReportConfiguration] :report_configuration
    #   Configuration for automatic report generation on a Service.
    #
    # @option params [String] :kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     name: "EntityName", # required
    #     description: "LongDescription",
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"],
    #       },
    #     ],
    #     policy_arn: "Arn",
    #     regions: ["AwsRegion"], # required
    #     permission_model: { # required
    #       invoker_role_name: "IamRoleName", # required
    #       cross_account_roles: [
    #         {
    #           cross_account_role_arn: "IamRoleArn", # required
    #           external_id: "CrossAccountRoleExternalIdString",
    #         },
    #       ],
    #     },
    #     dependency_discovery: "ENABLED", # accepts ENABLED, DISABLED
    #     report_configuration: {
    #       report_outputs: [ # required
    #         {
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           },
    #         },
    #       ],
    #     },
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.associated_systems #=> Array
    #   resp.service.associated_systems[0].system_arn #=> String
    #   resp.service.associated_systems[0].system_name #=> String
    #   resp.service.associated_systems[0].user_journey_ids #=> Array
    #   resp.service.associated_systems[0].user_journey_ids[0] #=> String
    #   resp.service.policy_arn #=> String
    #   resp.service.regions #=> Array
    #   resp.service.regions[0] #=> String
    #   resp.service.permission_model.invoker_role_name #=> String
    #   resp.service.permission_model.cross_account_roles #=> Array
    #   resp.service.permission_model.cross_account_roles[0].cross_account_role_arn #=> String
    #   resp.service.permission_model.cross_account_roles[0].external_id #=> String
    #   resp.service.dependency_discovery.status #=> String, one of "ENABLED", "INITIALIZING", "DISABLED"
    #   resp.service.dependency_discovery.updated_at #=> Time
    #   resp.service.dependency_discovery.eligible_resource_count #=> Integer
    #   resp.service.dependency_discovery.message #=> String
    #   resp.service.effective_policy_values.availability_slo.value #=> Float
    #   resp.service.effective_policy_values.availability_slo.policy_name #=> String
    #   resp.service.effective_policy_values.availability_slo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.value #=> Integer
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.policy_name #=> String
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.report_configuration.report_outputs #=> Array
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_path #=> String
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_owner #=> String
    #   resp.service.kms_key_id #=> String
    #   resp.service.tags #=> Hash
    #   resp.service.tags["TagKey"] #=> String
    #   resp.service.estimated_assessment_cost.amount #=> Float
    #   resp.service.estimated_assessment_cost.currency #=> String, one of "USD"
    #   resp.service.resource_discovery.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"
    #   resp.service.resource_discovery.last_run_at #=> Time
    #   resp.service.resource_discovery.error_code #=> String, one of "INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"
    #   resp.service.resource_discovery.error_message #=> String
    #   resp.service.assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.service.rerun_assessment #=> Boolean
    #   resp.service.open_findings_count #=> Integer
    #   resp.service.resolved_findings_count #=> Integer
    #   resp.service.organization_id #=> String
    #   resp.service.ou_id #=> String
    #   resp.service.account_id #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Creates a service function within a service.
    #
    # @option params [required, String] :name
    #   Entity label (not part of ARN — spaces allowed).
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [required, String] :criticality
    #   The criticality level of the service function.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateServiceFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceFunctionResponse#service_function #service_function} => Types::ServiceFunction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_function({
    #     name: "EntityLabel", # required
    #     service_arn: "Arn", # required
    #     description: "EntityDescription",
    #     criticality: "PRIMARY", # required, accepts PRIMARY, SUPPLEMENTAL
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_function.service_arn #=> String
    #   resp.service_function.service_function_id #=> String
    #   resp.service_function.name #=> String
    #   resp.service_function.description #=> String
    #   resp.service_function.criticality #=> String, one of "PRIMARY", "SUPPLEMENTAL"
    #   resp.service_function.resource_count #=> Integer
    #   resp.service_function.source #=> String, one of "AI_GENERATED", "USER"
    #   resp.service_function.created_at #=> Time
    #   resp.service_function.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunction AWS API Documentation
    #
    # @overload create_service_function(params = {})
    # @param [Hash] params ({})
    def create_service_function(params = {}, options = {})
      req = build_request(:create_service_function, params)
      req.send_request(options)
    end

    # Associates resources with a service function.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :service_function_id
    #   The identifier of the service function to associate resources with.
    #
    # @option params [required, Array<String>] :resources
    #   The list of resources to associate with the service function.
    #
    # @return [Types::CreateServiceFunctionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceFunctionResourcesResponse#service_arn #service_arn} => String
    #   * {Types::CreateServiceFunctionResourcesResponse#service_function_id #service_function_id} => String
    #   * {Types::CreateServiceFunctionResourcesResponse#resources #resources} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_function_resources({
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     resources: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arn #=> String
    #   resp.service_function_id #=> String
    #   resp.resources #=> Array
    #   resp.resources[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunctionResources AWS API Documentation
    #
    # @overload create_service_function_resources(params = {})
    # @param [Hash] params ({})
    def create_service_function_resources(params = {}, options = {})
      req = build_request(:create_service_function_resources, params)
      req.send_request(options)
    end

    # Creates a system that represents a logical grouping of services.
    #
    # @option params [required, String] :name
    #   Resource name (used in ARN — no spaces allowed).
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [Boolean] :sharing_enabled
    #   Indicates whether cross-account sharing is enabled for the system.
    #
    # @option params [String] :kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSystemResponse#system #system} => Types::System
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_system({
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     sharing_enabled: false,
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.system.system_arn #=> String
    #   resp.system.system_id #=> String
    #   resp.system.name #=> String
    #   resp.system.description #=> String
    #   resp.system.sharing_enabled #=> Boolean
    #   resp.system.tags #=> Hash
    #   resp.system.tags["TagKey"] #=> String
    #   resp.system.kms_key_id #=> String
    #   resp.system.organization_id #=> String
    #   resp.system.ou_id #=> String
    #   resp.system.created_at #=> Time
    #   resp.system.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateSystem AWS API Documentation
    #
    # @overload create_system(params = {})
    # @param [Hash] params ({})
    def create_system(params = {}, options = {})
      req = build_request(:create_system, params)
      req.send_request(options)
    end

    # Creates a test for a service by configuring a test template. Each
    # service has one test per template.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service to create the test for.
    #
    # @option params [required, String] :test_template_arn
    #   The ARN of the test template to configure.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   The logging configuration for the test.
    #
    # @option params [Array<Types::StopCondition>] :stop_conditions
    #   The stop conditions for the test.
    #
    # @option params [String] :role_name
    #   The name of the IAM execution role to use when running the test.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The parameter values for the test.
    #
    # @return [Types::CreateTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestResponse#test #test} => Types::Test
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test({
    #     service_arn: "Arn", # required
    #     test_template_arn: "ServiceOwnedArn", # required
    #     logging_configuration: {
    #       s3_bucket_name: "String",
    #       cloud_watch_log_group_arn: "Arn",
    #       log_schema_version: "String",
    #     },
    #     stop_conditions: [
    #       {
    #         source: "aws:cloudwatch:alarm", # required, accepts aws:cloudwatch:alarm, none
    #         value: "String", # required
    #       },
    #     ],
    #     role_name: "EntityName",
    #     parameters: {
    #       "ParameterKey" => ["ParameterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test.test_id #=> String
    #   resp.test.test_template_arn #=> String
    #   resp.test.service_arn #=> String
    #   resp.test.name #=> String
    #   resp.test.actions #=> Array
    #   resp.test.actions[0].action_id #=> String
    #   resp.test.actions[0].description #=> String
    #   resp.test.actions[0].resource_type #=> String
    #   resp.test.logging_configuration.s3_bucket_name #=> String
    #   resp.test.logging_configuration.cloud_watch_log_group_arn #=> String
    #   resp.test.logging_configuration.log_schema_version #=> String
    #   resp.test.stop_conditions #=> Array
    #   resp.test.stop_conditions[0].source #=> String, one of "aws:cloudwatch:alarm", "none"
    #   resp.test.stop_conditions[0].value #=> String
    #   resp.test.role_name #=> String
    #   resp.test.parameters #=> Hash
    #   resp.test.parameters["ParameterKey"] #=> Array
    #   resp.test.parameters["ParameterKey"][0] #=> String
    #   resp.test.total_test_runs #=> Integer
    #   resp.test.successful_test_runs #=> Integer
    #   resp.test.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateTest AWS API Documentation
    #
    # @overload create_test(params = {})
    # @param [Hash] params ({})
    def create_test(params = {}, options = {})
      req = build_request(:create_test, params)
      req.send_request(options)
    end

    # Creates a user journey within a system.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [required, String] :name
    #   Entity label (not part of ARN — spaces allowed).
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateUserJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserJourneyResponse#user_journey #user_journey} => Types::UserJourney
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_journey({
    #     system_arn: "Arn", # required
    #     name: "EntityLabel", # required
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_journey.user_journey_id #=> String
    #   resp.user_journey.name #=> String
    #   resp.user_journey.description #=> String
    #   resp.user_journey.policy_arn #=> String
    #   resp.user_journey.created_at #=> Time
    #   resp.user_journey.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateUserJourney AWS API Documentation
    #
    # @overload create_user_journey(params = {})
    # @param [Hash] params ({})
    def create_user_journey(params = {}, options = {})
      req = build_request(:create_user_journey, params)
      req.send_request(options)
    end

    # Deletes a resilience assertion from a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :assertion_id
    #   The unique identifier of the assertion to delete.
    #
    # @return [Types::DeleteAssertionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssertionResponse#assertion_id #assertion_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assertion({
    #     service_arn: "Arn", # required
    #     assertion_id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteAssertion AWS API Documentation
    #
    # @overload delete_assertion(params = {})
    # @param [Hash] params ({})
    def delete_assertion(params = {}, options = {})
      req = build_request(:delete_assertion, params)
      req.send_request(options)
    end

    # Deletes an input source.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :input_source_id
    #   The identifier of the input source to delete.
    #
    # @return [Types::DeleteInputSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInputSourceResponse#service_arn #service_arn} => String
    #   * {Types::DeleteInputSourceResponse#input_source_id #input_source_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input_source({
    #     service_arn: "Arn", # required
    #     input_source_id: "InputSourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arn #=> String
    #   resp.input_source_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteInputSource AWS API Documentation
    #
    # @overload delete_input_source(params = {})
    # @param [Hash] params ({})
    def delete_input_source(params = {}, options = {})
      req = build_request(:delete_input_source, params)
      req.send_request(options)
    end

    # Deletes a resilience policy.
    #
    # @option params [required, String] :policy_arn
    #   ARN identifier.
    #
    # @return [Types::DeletePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePolicyResponse#policy_arn #policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#service_arn #service_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deletes a service function.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :service_function_id
    #   The identifier of the service function to delete.
    #
    # @return [Types::DeleteServiceFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceFunctionResponse#service_function_id #service_function_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_function({
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_function_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunction AWS API Documentation
    #
    # @overload delete_service_function(params = {})
    # @param [Hash] params ({})
    def delete_service_function(params = {}, options = {})
      req = build_request(:delete_service_function, params)
      req.send_request(options)
    end

    # Removes resources from a service function.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :service_function_id
    #   The identifier of the service function to remove resources from.
    #
    # @option params [required, Array<String>] :resources
    #   The list of resources to remove from the service function.
    #
    # @return [Types::DeleteServiceFunctionResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceFunctionResourcesResponse#service_arn #service_arn} => String
    #   * {Types::DeleteServiceFunctionResourcesResponse#service_function_id #service_function_id} => String
    #   * {Types::DeleteServiceFunctionResourcesResponse#resources #resources} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_function_resources({
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     resources: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arn #=> String
    #   resp.service_function_id #=> String
    #   resp.resources #=> Array
    #   resp.resources[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunctionResources AWS API Documentation
    #
    # @overload delete_service_function_resources(params = {})
    # @param [Hash] params ({})
    def delete_service_function_resources(params = {}, options = {})
      req = build_request(:delete_service_function_resources, params)
      req.send_request(options)
    end

    # Deletes a system.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @return [Types::DeleteSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSystemResponse#system_arn #system_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_system({
    #     system_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.system_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteSystem AWS API Documentation
    #
    # @overload delete_system(params = {})
    # @param [Hash] params ({})
    def delete_system(params = {}, options = {})
      req = build_request(:delete_system, params)
      req.send_request(options)
    end

    # Deletes a test.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to delete.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @return [Types::DeleteTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTestResponse#test_id #test_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteTest AWS API Documentation
    #
    # @overload delete_test(params = {})
    # @param [Hash] params ({})
    def delete_test(params = {}, options = {})
      req = build_request(:delete_test, params)
      req.send_request(options)
    end

    # Removes monitoring sources from a test. The operation is transactional
    # and idempotent — removing a source that is not attached is a no-op.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to remove sources from.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @option params [required, Array<Types::TestSourceInput>] :test_sources
    #   The monitoring sources to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_sources({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     test_sources: [ # required
    #       {
    #         success_criteria_alarm: {
    #           alarm_arn: "CloudWatchAlarmArn", # required
    #         },
    #         observability_alarm: {
    #           alarm_arn: "CloudWatchAlarmArn", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteTestSources AWS API Documentation
    #
    # @overload delete_test_sources(params = {})
    # @param [Hash] params ({})
    def delete_test_sources(params = {}, options = {})
      req = build_request(:delete_test_sources, params)
      req.send_request(options)
    end

    # Deletes a user journey.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [required, String] :user_journey_id
    #   The identifier of the user journey to delete.
    #
    # @return [Types::DeleteUserJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserJourneyResponse#user_journey_id #user_journey_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_journey({
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_journey_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteUserJourney AWS API Documentation
    #
    # @overload delete_user_journey(params = {})
    # @param [Hash] params ({})
    def delete_user_journey(params = {}, options = {})
      req = build_request(:delete_user_journey, params)
      req.send_request(options)
    end

    # Retrieves a finding by findingId.
    #
    # @option params [required, String] :finding_id
    #   The unique identifier of the finding to retrieve.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @return [Types::GetFailureModeFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFailureModeFindingResponse#finding #finding} => Types::Finding
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_failure_mode_finding({
    #     finding_id: "Uuid", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding.finding_id #=> String
    #   resp.finding.name #=> String
    #   resp.finding.description #=> String
    #   resp.finding.failure_category #=> String, one of "SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"
    #   resp.finding.status #=> String, one of "OPEN", "RESOLVED", "IRRELEVANT"
    #   resp.finding.reasoning #=> String
    #   resp.finding.comment #=> String
    #   resp.finding.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.finding.service_functions #=> Array
    #   resp.finding.service_functions[0] #=> String
    #   resp.finding.policy_component #=> String, one of "AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"
    #   resp.finding.infrastructure_and_code_recommendations #=> Array
    #   resp.finding.infrastructure_and_code_recommendations[0].suggested_changes #=> Array
    #   resp.finding.infrastructure_and_code_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.observability_recommendations #=> Array
    #   resp.finding.observability_recommendations[0].suggested_changes #=> Array
    #   resp.finding.observability_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.testing_recommendations #=> Array
    #   resp.finding.testing_recommendations[0].suggested_changes #=> Array
    #   resp.finding.testing_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetFailureModeFinding AWS API Documentation
    #
    # @overload get_failure_mode_finding(params = {})
    # @param [Hash] params ({})
    def get_failure_mode_finding(params = {}, options = {})
      req = build_request(:get_failure_mode_finding, params)
      req.send_request(options)
    end

    # Retrieves a resilience policy by ARN.
    #
    # @option params [required, String] :policy_arn
    #   ARN identifier.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_arn #=> String
    #   resp.policy.name #=> String
    #   resp.policy.description #=> String
    #   resp.policy.availability_slo.target #=> Float
    #   resp.policy.multi_az.rto_in_minutes #=> Integer
    #   resp.policy.multi_az.rpo_in_minutes #=> Integer
    #   resp.policy.multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.multi_region.rto_in_minutes #=> Integer
    #   resp.policy.multi_region.rpo_in_minutes #=> Integer
    #   resp.policy.multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.policy.kms_key_id #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.associated_service_count #=> Integer
    #   resp.policy.created_at #=> Time
    #   resp.policy.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieves a service by ARN.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @return [Types::GetServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.associated_systems #=> Array
    #   resp.service.associated_systems[0].system_arn #=> String
    #   resp.service.associated_systems[0].system_name #=> String
    #   resp.service.associated_systems[0].user_journey_ids #=> Array
    #   resp.service.associated_systems[0].user_journey_ids[0] #=> String
    #   resp.service.policy_arn #=> String
    #   resp.service.regions #=> Array
    #   resp.service.regions[0] #=> String
    #   resp.service.permission_model.invoker_role_name #=> String
    #   resp.service.permission_model.cross_account_roles #=> Array
    #   resp.service.permission_model.cross_account_roles[0].cross_account_role_arn #=> String
    #   resp.service.permission_model.cross_account_roles[0].external_id #=> String
    #   resp.service.dependency_discovery.status #=> String, one of "ENABLED", "INITIALIZING", "DISABLED"
    #   resp.service.dependency_discovery.updated_at #=> Time
    #   resp.service.dependency_discovery.eligible_resource_count #=> Integer
    #   resp.service.dependency_discovery.message #=> String
    #   resp.service.effective_policy_values.availability_slo.value #=> Float
    #   resp.service.effective_policy_values.availability_slo.policy_name #=> String
    #   resp.service.effective_policy_values.availability_slo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.value #=> Integer
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.policy_name #=> String
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.report_configuration.report_outputs #=> Array
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_path #=> String
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_owner #=> String
    #   resp.service.kms_key_id #=> String
    #   resp.service.tags #=> Hash
    #   resp.service.tags["TagKey"] #=> String
    #   resp.service.estimated_assessment_cost.amount #=> Float
    #   resp.service.estimated_assessment_cost.currency #=> String, one of "USD"
    #   resp.service.resource_discovery.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"
    #   resp.service.resource_discovery.last_run_at #=> Time
    #   resp.service.resource_discovery.error_code #=> String, one of "INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"
    #   resp.service.resource_discovery.error_message #=> String
    #   resp.service.assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.service.rerun_assessment #=> Boolean
    #   resp.service.open_findings_count #=> Integer
    #   resp.service.resolved_findings_count #=> Integer
    #   resp.service.organization_id #=> String
    #   resp.service.ou_id #=> String
    #   resp.service.account_id #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * service_assessment_completed
    #   * service_resource_discovery_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Retrieves a system by ARN.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @return [Types::GetSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSystemResponse#system #system} => Types::System
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_system({
    #     system_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.system.system_arn #=> String
    #   resp.system.system_id #=> String
    #   resp.system.name #=> String
    #   resp.system.description #=> String
    #   resp.system.sharing_enabled #=> Boolean
    #   resp.system.tags #=> Hash
    #   resp.system.tags["TagKey"] #=> String
    #   resp.system.kms_key_id #=> String
    #   resp.system.organization_id #=> String
    #   resp.system.ou_id #=> String
    #   resp.system.created_at #=> Time
    #   resp.system.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetSystem AWS API Documentation
    #
    # @overload get_system(params = {})
    # @param [Hash] params ({})
    def get_system(params = {}, options = {})
      req = build_request(:get_system, params)
      req.send_request(options)
    end

    # Retrieves a test by ID.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to retrieve.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @return [Types::GetTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestResponse#test #test} => Types::Test
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test.test_id #=> String
    #   resp.test.test_template_arn #=> String
    #   resp.test.service_arn #=> String
    #   resp.test.name #=> String
    #   resp.test.actions #=> Array
    #   resp.test.actions[0].action_id #=> String
    #   resp.test.actions[0].description #=> String
    #   resp.test.actions[0].resource_type #=> String
    #   resp.test.logging_configuration.s3_bucket_name #=> String
    #   resp.test.logging_configuration.cloud_watch_log_group_arn #=> String
    #   resp.test.logging_configuration.log_schema_version #=> String
    #   resp.test.stop_conditions #=> Array
    #   resp.test.stop_conditions[0].source #=> String, one of "aws:cloudwatch:alarm", "none"
    #   resp.test.stop_conditions[0].value #=> String
    #   resp.test.role_name #=> String
    #   resp.test.parameters #=> Hash
    #   resp.test.parameters["ParameterKey"] #=> Array
    #   resp.test.parameters["ParameterKey"][0] #=> String
    #   resp.test.total_test_runs #=> Integer
    #   resp.test.successful_test_runs #=> Integer
    #   resp.test.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetTest AWS API Documentation
    #
    # @overload get_test(params = {})
    # @param [Hash] params ({})
    def get_test(params = {}, options = {})
      req = build_request(:get_test, params)
      req.send_request(options)
    end

    # Retrieves a test run by ID, including its status, results, and the
    # configuration snapshotted when the run started.
    #
    # @option params [required, String] :test_run_id
    #   The identifier of the test run to retrieve.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test run belongs to.
    #
    # @return [Types::GetTestRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestRunResponse#test_run #test_run} => Types::TestRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_run({
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run.test_run_id #=> String
    #   resp.test_run.test_id #=> String
    #   resp.test_run.status #=> String, one of "INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"
    #   resp.test_run.service_arn #=> String
    #   resp.test_run.started_at #=> Time
    #   resp.test_run.ended_at #=> Time
    #   resp.test_run.experiments #=> Array
    #   resp.test_run.experiments[0].experiment_arn #=> String
    #   resp.test_run.experiments[0].details #=> String
    #   resp.test_run.event_count #=> Integer
    #   resp.test_run.parameters #=> Hash
    #   resp.test_run.parameters["ParameterKey"] #=> Array
    #   resp.test_run.parameters["ParameterKey"][0] #=> String
    #   resp.test_run.error_message #=> String
    #   resp.test_run.stop_conditions #=> Array
    #   resp.test_run.stop_conditions[0].source #=> String, one of "aws:cloudwatch:alarm", "none"
    #   resp.test_run.stop_conditions[0].value #=> String
    #   resp.test_run.logging_configuration.s3_bucket_name #=> String
    #   resp.test_run.logging_configuration.cloud_watch_log_group_arn #=> String
    #   resp.test_run.logging_configuration.log_schema_version #=> String
    #   resp.test_run.role_name #=> String
    #   resp.test_run.test_template_arn #=> String
    #   resp.test_run.report_configuration.report_output #=> Array
    #   resp.test_run.report_configuration.report_output[0].s3.bucket_path #=> String
    #   resp.test_run.report_configuration.report_output[0].s3.bucket_owner #=> String
    #   resp.test_run.policy.policy_arn #=> String
    #   resp.test_run.policy.name #=> String
    #   resp.test_run.policy.availability_slo.target #=> Float
    #   resp.test_run.policy.multi_az.rto_in_minutes #=> Integer
    #   resp.test_run.policy.multi_az.rpo_in_minutes #=> Integer
    #   resp.test_run.policy.multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.test_run.policy.multi_region.rto_in_minutes #=> Integer
    #   resp.test_run.policy.multi_region.rpo_in_minutes #=> Integer
    #   resp.test_run.policy.multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.test_run.policy.data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.test_run.report_output.report_type #=> String, one of "FAILURE_MODE", "TESTING"
    #   resp.test_run.report_output.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.test_run.report_output.service_arn #=> String
    #   resp.test_run.report_output.assessment_id #=> String
    #   resp.test_run.report_output.test_run_id #=> String
    #   resp.test_run.report_output.test_template_arn #=> String
    #   resp.test_run.report_output.created_at #=> Time
    #   resp.test_run.report_output.report_output.s3_report_output.s3_object_key #=> String
    #   resp.test_run.report_output.report_output.failed_report_output.error_code #=> String, one of "INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"
    #   resp.test_run.report_output.report_output.failed_report_output.error_message #=> String
    #   resp.test_run.region_switch_plan_arn #=> String
    #   resp.test_run.region_switch_execution_id #=> String
    #   resp.test_run.permission_model.invoker_role_name #=> String
    #   resp.test_run.permission_model.cross_account_roles #=> Array
    #   resp.test_run.permission_model.cross_account_roles[0].cross_account_role_arn #=> String
    #   resp.test_run.permission_model.cross_account_roles[0].external_id #=> String
    #   resp.test_run.regions #=> Array
    #   resp.test_run.regions[0] #=> String
    #   resp.test_run.account_targeting #=> String, one of "SINGLE_ACCOUNT", "MULTI_ACCOUNT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetTestRun AWS API Documentation
    #
    # @overload get_test_run(params = {})
    # @param [Hash] params ({})
    def get_test_run(params = {}, options = {})
      req = build_request(:get_test_run, params)
      req.send_request(options)
    end

    # Retrieves a resilience test template by ARN, including the parameters
    # it accepts and the fault actions it runs.
    #
    # @option params [required, String] :test_template_arn
    #   The ARN of the test template to retrieve.
    #
    # @return [Types::GetTestTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestTemplateResponse#test_template #test_template} => Types::TestTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_template({
    #     test_template_arn: "ServiceOwnedArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_template.test_template_arn #=> String
    #   resp.test_template.name #=> String
    #   resp.test_template.description #=> String
    #   resp.test_template.parameters #=> Array
    #   resp.test_template.parameters[0].name #=> String
    #   resp.test_template.parameters[0].description #=> String
    #   resp.test_template.parameters[0].type #=> String, one of "STRING", "STRING_LIST", "INTEGER"
    #   resp.test_template.parameters[0].required #=> Boolean
    #   resp.test_template.parameters[0].default_value #=> String
    #   resp.test_template.parameters[0].max_values #=> Integer
    #   resp.test_template.actions #=> Array
    #   resp.test_template.actions[0].action_id #=> String
    #   resp.test_template.actions[0].description #=> String
    #   resp.test_template.actions[0].resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetTestTemplate AWS API Documentation
    #
    # @overload get_test_template(params = {})
    # @param [Hash] params ({})
    def get_test_template(params = {}, options = {})
      req = build_request(:get_test_template, params)
      req.send_request(options)
    end

    # Retrieves a user journey.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [required, String] :user_journey_id
    #   The identifier of the user journey to retrieve.
    #
    # @return [Types::GetUserJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserJourneyResponse#user_journey #user_journey} => Types::UserJourney
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_journey({
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_journey.user_journey_id #=> String
    #   resp.user_journey.name #=> String
    #   resp.user_journey.description #=> String
    #   resp.user_journey.policy_arn #=> String
    #   resp.user_journey.created_at #=> Time
    #   resp.user_journey.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetUserJourney AWS API Documentation
    #
    # @overload get_user_journey(params = {})
    # @param [Hash] params ({})
    def get_user_journey(params = {}, options = {})
      req = build_request(:get_user_journey, params)
      req.send_request(options)
    end

    # Imports a V1 app into the V2 resource model, creating a service with
    # the same name.
    #
    # @option params [required, String] :v1_app_arn
    #   ARN identifier.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @option params [String] :kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #
    # @option params [Boolean] :skip_manually_added_resources
    #   Whether to skip manually added resources during import.
    #
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   The systems to associate with the imported service.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ImportAppResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportAppResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_app({
    #     v1_app_arn: "Arn", # required
    #     policy_arn: "Arn",
    #     kms_key_id: "KmsKeyId",
    #     skip_manually_added_resources: false,
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"],
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.associated_systems #=> Array
    #   resp.service.associated_systems[0].system_arn #=> String
    #   resp.service.associated_systems[0].system_name #=> String
    #   resp.service.associated_systems[0].user_journey_ids #=> Array
    #   resp.service.associated_systems[0].user_journey_ids[0] #=> String
    #   resp.service.policy_arn #=> String
    #   resp.service.regions #=> Array
    #   resp.service.regions[0] #=> String
    #   resp.service.permission_model.invoker_role_name #=> String
    #   resp.service.permission_model.cross_account_roles #=> Array
    #   resp.service.permission_model.cross_account_roles[0].cross_account_role_arn #=> String
    #   resp.service.permission_model.cross_account_roles[0].external_id #=> String
    #   resp.service.dependency_discovery.status #=> String, one of "ENABLED", "INITIALIZING", "DISABLED"
    #   resp.service.dependency_discovery.updated_at #=> Time
    #   resp.service.dependency_discovery.eligible_resource_count #=> Integer
    #   resp.service.dependency_discovery.message #=> String
    #   resp.service.effective_policy_values.availability_slo.value #=> Float
    #   resp.service.effective_policy_values.availability_slo.policy_name #=> String
    #   resp.service.effective_policy_values.availability_slo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.value #=> Integer
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.policy_name #=> String
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.report_configuration.report_outputs #=> Array
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_path #=> String
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_owner #=> String
    #   resp.service.kms_key_id #=> String
    #   resp.service.tags #=> Hash
    #   resp.service.tags["TagKey"] #=> String
    #   resp.service.estimated_assessment_cost.amount #=> Float
    #   resp.service.estimated_assessment_cost.currency #=> String, one of "USD"
    #   resp.service.resource_discovery.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"
    #   resp.service.resource_discovery.last_run_at #=> Time
    #   resp.service.resource_discovery.error_code #=> String, one of "INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"
    #   resp.service.resource_discovery.error_message #=> String
    #   resp.service.assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.service.rerun_assessment #=> Boolean
    #   resp.service.open_findings_count #=> Integer
    #   resp.service.resolved_findings_count #=> Integer
    #   resp.service.organization_id #=> String
    #   resp.service.ou_id #=> String
    #   resp.service.account_id #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportApp AWS API Documentation
    #
    # @overload import_app(params = {})
    # @param [Hash] params ({})
    def import_app(params = {}, options = {})
      req = build_request(:import_app, params)
      req.send_request(options)
    end

    # Imports a V1 policy into V2, mapping RTO/RPO values from V1 scenarios.
    #
    # @option params [required, String] :v1_policy_arn
    #   ARN identifier.
    #
    # @option params [String] :kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   The availability SLO to set on the imported policy.
    #
    # @option params [String] :multi_az_disaster_recovery_approach
    #   The multi-AZ disaster recovery approach for the imported policy.
    #
    # @option params [String] :multi_region_disaster_recovery_approach
    #   The multi-Region disaster recovery approach for the imported policy.
    #
    # @option params [Hash<String,String>] :tags
    #   Resource tags.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ImportPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_policy({
    #     v1_policy_arn: "Arn", # required
    #     kms_key_id: "KmsKeyId",
    #     availability_slo: {
    #       target: 1.0,
    #     },
    #     multi_az_disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     multi_region_disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_arn #=> String
    #   resp.policy.name #=> String
    #   resp.policy.description #=> String
    #   resp.policy.availability_slo.target #=> Float
    #   resp.policy.multi_az.rto_in_minutes #=> Integer
    #   resp.policy.multi_az.rpo_in_minutes #=> Integer
    #   resp.policy.multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.multi_region.rto_in_minutes #=> Integer
    #   resp.policy.multi_region.rpo_in_minutes #=> Integer
    #   resp.policy.multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.policy.kms_key_id #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.associated_service_count #=> Integer
    #   resp.policy.created_at #=> Time
    #   resp.policy.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportPolicy AWS API Documentation
    #
    # @overload import_policy(params = {})
    # @param [Hash] params ({})
    def import_policy(params = {}, options = {})
      req = build_request(:import_policy, params)
      req.send_request(options)
    end

    # Lists resilience assertions for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :source
    #   Filter assertions by source type.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListAssertionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssertionsResponse#assertions #assertions} => Array&lt;Types::Assertion&gt;
    #   * {Types::ListAssertionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assertions({
    #     service_arn: "Arn", # required
    #     source: "AI_GENERATED", # accepts AI_GENERATED, USER
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assertions #=> Array
    #   resp.assertions[0].service_arn #=> String
    #   resp.assertions[0].assertion_id #=> String
    #   resp.assertions[0].text #=> String
    #   resp.assertions[0].source #=> String, one of "AI_GENERATED", "USER"
    #   resp.assertions[0].created_at #=> Time
    #   resp.assertions[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListAssertions AWS API Documentation
    #
    # @overload list_assertions(params = {})
    # @param [Hash] params ({})
    def list_assertions(params = {}, options = {})
      req = build_request(:list_assertions, params)
      req.send_request(options)
    end

    # Lists dependencies discovered for services.
    #
    # @option params [String] :service_arn
    #   ARN identifier.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_range_start_time
    #   The start time for the dependency query range.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_range_end_time
    #   The end time for the dependency query range.
    #
    # @option params [String] :query_range_granularity
    #   The granularity for the dependency query range.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListDependenciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDependenciesResponse#dependency_summaries #dependency_summaries} => Array&lt;Types::DependencySummary&gt;
    #   * {Types::ListDependenciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dependencies({
    #     service_arn: "Arn",
    #     query_range_start_time: Time.now,
    #     query_range_end_time: Time.now,
    #     query_range_granularity: "HOURLY", # accepts HOURLY, DAILY
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dependency_summaries #=> Array
    #   resp.dependency_summaries[0].dependency_id #=> String
    #   resp.dependency_summaries[0].service_arn #=> String
    #   resp.dependency_summaries[0].dependency_name #=> String
    #   resp.dependency_summaries[0].dns_name #=> String
    #   resp.dependency_summaries[0].location #=> String
    #   resp.dependency_summaries[0].last_detected_time #=> Time
    #   resp.dependency_summaries[0].source_regions #=> Array
    #   resp.dependency_summaries[0].source_regions[0] #=> String
    #   resp.dependency_summaries[0].provider #=> String
    #   resp.dependency_summaries[0].query_range.start_time #=> Time
    #   resp.dependency_summaries[0].query_range.end_time #=> Time
    #   resp.dependency_summaries[0].query_range.granularity #=> String, one of "HOURLY", "DAILY"
    #   resp.dependency_summaries[0].query_range.data_points #=> Array
    #   resp.dependency_summaries[0].query_range.data_points[0].timestamp #=> Time
    #   resp.dependency_summaries[0].query_range.data_points[0].query_count #=> Integer
    #   resp.dependency_summaries[0].criticality #=> String, one of "HARD", "SOFT", "UNKNOWN"
    #   resp.dependency_summaries[0].comment #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListDependencies AWS API Documentation
    #
    # @overload list_dependencies(params = {})
    # @param [Hash] params ({})
    def list_dependencies(params = {}, options = {})
      req = build_request(:list_dependencies, params)
      req.send_request(options)
    end

    # Lists failure mode assessments.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [Array<String>] :assessment_statuses
    #   Specifies the assessment statuses to include in the results.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_after
    #   Specifies that only assessments that started at or after this
    #   timestamp appear in the results.
    #
    # @option params [Time,DateTime,Date,Integer,String] :ended_before
    #   Specifies that only assessments that ended at or before this timestamp
    #   appear in the results.
    #
    # @option params [String] :sort_by
    #   The field to use for sorting failure mode assessments.
    #
    # @option params [String] :sort_order
    #   The sort order for results.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListFailureModeAssessmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFailureModeAssessmentsResponse#assessment_summaries #assessment_summaries} => Array&lt;Types::AssessmentSummary&gt;
    #   * {Types::ListFailureModeAssessmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_failure_mode_assessments({
    #     service_arn: "Arn", # required
    #     assessment_statuses: ["NOT_STARTED"], # accepts NOT_STARTED, PENDING, IN_PROGRESS, FAILED, SUCCESS
    #     started_after: Time.now,
    #     ended_before: Time.now,
    #     sort_by: "STARTED_AT", # accepts STARTED_AT
    #     sort_order: "ASC", # accepts ASC, DESC
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_summaries #=> Array
    #   resp.assessment_summaries[0].assessment_id #=> String
    #   resp.assessment_summaries[0].service_arn #=> String
    #   resp.assessment_summaries[0].assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.assessment_summaries[0].assessment_step #=> String, one of "TOPOLOGY_GENERATION", "INPUT_VALIDATION", "DESIGN_ANALYSIS", "TOPOLOGY_ENHANCEMENT", "SERVICE_FUNCTION_GENERATION", "POLICY_VALIDATION", "RESILIENCE_ASSESSMENT", "FAILURE_MODE_FINDINGS_CONSOLIDATION", "FAILURE_MODE_FINDINGS_ENRICHMENT"
    #   resp.assessment_summaries[0].total_findings #=> Integer
    #   resp.assessment_summaries[0].started_at #=> Time
    #   resp.assessment_summaries[0].ended_at #=> Time
    #   resp.assessment_summaries[0].error_message #=> String
    #   resp.assessment_summaries[0].error_code #=> String, one of "INVALID_PERMISSIONS", "CMK_ACCESS_DENIED", "AGENT_ERROR", "INTERNAL_ERROR", "DESIGN_FILE_ACCESS_DENIED"
    #   resp.assessment_summaries[0].assessment_cost.amount #=> Float
    #   resp.assessment_summaries[0].assessment_cost.currency #=> String, one of "USD"
    #   resp.assessment_summaries[0].billable_assessment_unit_count #=> Integer
    #   resp.assessment_summaries[0].achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.assessment_summaries[0].achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.assessment_summaries[0].achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.assessment_summaries[0].achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * failure_mode_assessment_success
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeAssessments AWS API Documentation
    #
    # @overload list_failure_mode_assessments(params = {})
    # @param [Hash] params ({})
    def list_failure_mode_assessments(params = {}, options = {})
      req = build_request(:list_failure_mode_assessments, params)
      req.send_request(options)
    end

    # List findings.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :severity
    #   Filter findings by severity.
    #
    # @option params [String] :failure_category
    #   Filter findings by failure category.
    #
    # @option params [String] :status
    #   Filter findings by status.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListFailureModeFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFailureModeFindingsResponse#findings_summary #findings_summary} => Array&lt;Types::FindingSummary&gt;
    #   * {Types::ListFailureModeFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_failure_mode_findings({
    #     service_arn: "Arn", # required
    #     severity: "LOW", # accepts LOW, MEDIUM, HIGH
    #     failure_category: "SHARED_FATE", # accepts SHARED_FATE, EXCESSIVE_LOAD, EXCESSIVE_LATENCY, MISCONFIGURATION_AND_BUGS, SINGLE_POINT_OF_FAILURE
    #     status: "OPEN", # accepts OPEN, RESOLVED, IRRELEVANT
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.findings_summary #=> Array
    #   resp.findings_summary[0].service_arn #=> String
    #   resp.findings_summary[0].finding_id #=> String
    #   resp.findings_summary[0].name #=> String
    #   resp.findings_summary[0].description #=> String
    #   resp.findings_summary[0].failure_category #=> String, one of "SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"
    #   resp.findings_summary[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.findings_summary[0].status #=> String, one of "OPEN", "RESOLVED", "IRRELEVANT"
    #   resp.findings_summary[0].policy_component #=> String, one of "AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"
    #   resp.findings_summary[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeFindings AWS API Documentation
    #
    # @overload list_failure_mode_findings(params = {})
    # @param [Hash] params ({})
    def list_failure_mode_findings(params = {}, options = {})
      req = build_request(:list_failure_mode_findings, params)
      req.send_request(options)
    end

    # Lists input sources for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :type
    #   Filter input sources by type.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListInputSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputSourcesResponse#input_source_summaries #input_source_summaries} => Array&lt;Types::InputSourceSummary&gt;
    #   * {Types::ListInputSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_sources({
    #     service_arn: "Arn", # required
    #     type: "CFN_STACK", # accepts CFN_STACK, TAGS, EKS, TERRAFORM, DESIGN_FILE, MONITORING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.input_source_summaries #=> Array
    #   resp.input_source_summaries[0].input_source_id #=> String
    #   resp.input_source_summaries[0].type #=> String, one of "CFN_STACK", "TAGS", "EKS", "TERRAFORM", "DESIGN_FILE", "MONITORING"
    #   resp.input_source_summaries[0].resource_tags #=> Array
    #   resp.input_source_summaries[0].resource_tags[0].key #=> String
    #   resp.input_source_summaries[0].resource_tags[0].values #=> Array
    #   resp.input_source_summaries[0].resource_tags[0].values[0] #=> String
    #   resp.input_source_summaries[0].cfn_stack_arn #=> String
    #   resp.input_source_summaries[0].tf_state_file_url #=> String
    #   resp.input_source_summaries[0].eks.cluster_arn #=> String
    #   resp.input_source_summaries[0].eks.namespaces #=> Array
    #   resp.input_source_summaries[0].eks.namespaces[0] #=> String
    #   resp.input_source_summaries[0].design_file_s3_url #=> String
    #   resp.input_source_summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListInputSources AWS API Documentation
    #
    # @overload list_input_sources(params = {})
    # @param [Hash] params ({})
    def list_input_sources(params = {}, options = {})
      req = build_request(:list_input_sources, params)
      req.send_request(options)
    end

    # Lists resilience policies.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policy_summaries #policy_summaries} => Array&lt;Types::PolicySummary&gt;
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_summaries #=> Array
    #   resp.policy_summaries[0].policy_arn #=> String
    #   resp.policy_summaries[0].name #=> String
    #   resp.policy_summaries[0].availability_slo.target #=> Float
    #   resp.policy_summaries[0].multi_az.rto_in_minutes #=> Integer
    #   resp.policy_summaries[0].multi_az.rpo_in_minutes #=> Integer
    #   resp.policy_summaries[0].multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy_summaries[0].multi_region.rto_in_minutes #=> Integer
    #   resp.policy_summaries[0].multi_region.rpo_in_minutes #=> Integer
    #   resp.policy_summaries[0].multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy_summaries[0].data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.policy_summaries[0].associated_service_count #=> Integer
    #   resp.policy_summaries[0].created_at #=> Time
    #   resp.policy_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # List reports for a service, or all reports owned by the account if
    # serviceArn is not provided.
    #
    # @option params [String] :service_arn
    #   Optional. If not provided, lists all reports owned by the account.
    #
    # @option params [String] :report_type
    #   Filter reports by type.
    #
    # @option params [String] :test_run_id
    #   The unique identifier of a test run.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsResponse#report_generation_results #report_generation_results} => Array&lt;Types::ReportGenerationResult&gt;
    #   * {Types::ListReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports({
    #     service_arn: "Arn",
    #     report_type: "FAILURE_MODE", # accepts FAILURE_MODE, TESTING
    #     test_run_id: "TestRunId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.report_generation_results #=> Array
    #   resp.report_generation_results[0].report_type #=> String, one of "FAILURE_MODE", "TESTING"
    #   resp.report_generation_results[0].status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.report_generation_results[0].service_arn #=> String
    #   resp.report_generation_results[0].assessment_id #=> String
    #   resp.report_generation_results[0].test_run_id #=> String
    #   resp.report_generation_results[0].test_template_arn #=> String
    #   resp.report_generation_results[0].created_at #=> Time
    #   resp.report_generation_results[0].report_output.s3_report_output.s3_object_key #=> String
    #   resp.report_generation_results[0].report_output.failed_report_output.error_code #=> String, one of "INSUFFICIENT_PERMISSIONS", "CONFIGURATION_ERROR", "INTERNAL_ERROR"
    #   resp.report_generation_results[0].report_output.failed_report_output.error_message #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * report_succeeded
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListReports AWS API Documentation
    #
    # @overload list_reports(params = {})
    # @param [Hash] params ({})
    def list_reports(params = {}, options = {})
      req = build_request(:list_reports, params)
      req.send_request(options)
    end

    # Lists the AWS resources that AWS Fault Injection Service (AWS FIS)
    # resolved as targets for a test run.
    #
    # @option params [required, String] :test_run_id
    #   The identifier of the test run to list resolved target resources for.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test run belongs to.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListResolvedTestRunTargetResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolvedTestRunTargetResourcesResponse#resolved_target_resources #resolved_target_resources} => Array&lt;Types::ResolvedTargetResource&gt;
    #   * {Types::ListResolvedTestRunTargetResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolved_test_run_target_resources({
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resolved_target_resources #=> Array
    #   resp.resolved_target_resources[0].resource_type #=> String
    #   resp.resolved_target_resources[0].target_name #=> String
    #   resp.resolved_target_resources[0].target_information #=> Hash
    #   resp.resolved_target_resources[0].target_information["ResolvedTargetInformationKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListResolvedTestRunTargetResources AWS API Documentation
    #
    # @overload list_resolved_test_run_target_resources(params = {})
    # @param [Hash] params ({})
    def list_resolved_test_run_target_resources(params = {}, options = {})
      req = build_request(:list_resolved_test_run_target_resources, params)
      req.send_request(options)
    end

    # List resources.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :service_function_id
    #   Filter resources by service function identifier.
    #
    # @option params [String] :aws_region
    #   Filter resources by AWS Region.
    #
    # @option params [Array<String>] :resource_types
    #   The CloudFormation resource types to include in the response.
    #
    # @option params [Boolean] :billable
    #   Specifies whether to filter non-billable resources. When true (the
    #   default), the operation returns only billable resources.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesResponse#service_function_id #service_function_id} => String
    #   * {Types::ListResourcesResponse#service_resources #service_resources} => Array&lt;Types::ServiceResource&gt;
    #   * {Types::ListResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources({
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId",
    #     aws_region: "AwsRegion",
    #     resource_types: ["ResourceTypeFilter"],
    #     billable: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_function_id #=> String
    #   resp.service_resources #=> Array
    #   resp.service_resources[0].resource_identifier #=> String
    #   resp.service_resources[0].input_source.identifier #=> String
    #   resp.service_resources[0].input_source.type #=> String, one of "CFN_STACK", "TAGS", "EKS", "TERRAFORM", "DESIGN_FILE", "MONITORING"
    #   resp.service_resources[0].resource.identifier #=> String
    #   resp.service_resources[0].resource.aws_region #=> String
    #   resp.service_resources[0].resource.aws_account_id #=> String
    #   resp.service_resources[0].resource.resource_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListResources AWS API Documentation
    #
    # @overload list_resources(params = {})
    # @param [Hash] params ({})
    def list_resources(params = {}, options = {})
      req = build_request(:list_resources, params)
      req.send_request(options)
    end

    # Lists events for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [Array<String>] :event_types
    #   Filter events by type.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time for filtering events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time for filtering events.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListServiceEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceEventsResponse#events #events} => Array&lt;Types::ServiceEvent&gt;
    #   * {Types::ListServiceEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_events({
    #     service_arn: "Arn", # required
    #     event_types: ["SERVICE_CREATED"], # accepts SERVICE_CREATED, SERVICE_DELETED, SERVICE_SYSTEM_ASSOCIATED, SERVICE_SYSTEM_DISASSOCIATED, SERVICE_RESOURCES_ASSOCIATED, SERVICE_RESOURCES_DISASSOCIATED, SERVICE_WORKFLOW_UPDATED, SERVICE_INPUT_SOURCES_UPDATED, SERVICE_POLICY_ASSOCIATED, SERVICE_POLICY_DISASSOCIATED, SERVICE_FUNCTION_CREATED, SERVICE_FUNCTION_UPDATED, SERVICE_FUNCTION_DELETED, SERVICE_FUNCTION_RESOURCES_ADDED, SERVICE_FUNCTION_RESOURCES_REMOVED, SERVICE_ACHIEVABILITY_UPDATED, ASSERTION_CREATED, ASSERTION_UPDATED, ASSERTION_DELETED
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].timestamp #=> Time
    #   resp.events[0].event_type #=> String, one of "SERVICE_CREATED", "SERVICE_DELETED", "SERVICE_SYSTEM_ASSOCIATED", "SERVICE_SYSTEM_DISASSOCIATED", "SERVICE_RESOURCES_ASSOCIATED", "SERVICE_RESOURCES_DISASSOCIATED", "SERVICE_WORKFLOW_UPDATED", "SERVICE_INPUT_SOURCES_UPDATED", "SERVICE_POLICY_ASSOCIATED", "SERVICE_POLICY_DISASSOCIATED", "SERVICE_FUNCTION_CREATED", "SERVICE_FUNCTION_UPDATED", "SERVICE_FUNCTION_DELETED", "SERVICE_FUNCTION_RESOURCES_ADDED", "SERVICE_FUNCTION_RESOURCES_REMOVED", "SERVICE_ACHIEVABILITY_UPDATED", "ASSERTION_CREATED", "ASSERTION_UPDATED", "ASSERTION_DELETED"
    #   resp.events[0].service_arn #=> String
    #   resp.events[0].actor.type #=> String, one of "USER", "SYSTEM"
    #   resp.events[0].actor.principal_id #=> String
    #   resp.events[0].actor.account_id #=> String
    #   resp.events[0].actor.user_name #=> String
    #   resp.events[0].event_details.title #=> String
    #   resp.events[0].event_details.description #=> String
    #   resp.events[0].event_details.event_metadata.service_system_associated.system_name #=> String
    #   resp.events[0].event_details.event_metadata.service_system_associated.system_arn #=> String
    #   resp.events[0].event_details.event_metadata.service_system_disassociated.system_id #=> String
    #   resp.events[0].event_details.event_metadata.service_system_disassociated.system_name #=> String
    #   resp.events[0].event_details.event_metadata.service_system_disassociated.system_arn #=> String
    #   resp.events[0].event_details.event_metadata.service_resources_associated.resource_count #=> Integer
    #   resp.events[0].event_details.event_metadata.service_resources_associated.resource_types #=> Array
    #   resp.events[0].event_details.event_metadata.service_resources_associated.resource_types[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_resources_disassociated.resource_count #=> Integer
    #   resp.events[0].event_details.event_metadata.service_resources_disassociated.resource_types #=> Array
    #   resp.events[0].event_details.event_metadata.service_resources_disassociated.resource_types[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_workflow_updated.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_workflow_updated.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_policy_associated.policy_name #=> String
    #   resp.events[0].event_details.event_metadata.service_policy_associated.policy_arn #=> String
    #   resp.events[0].event_details.event_metadata.service_policy_disassociated.policy_name #=> String
    #   resp.events[0].event_details.event_metadata.service_policy_disassociated.policy_arn #=> String
    #   resp.events[0].event_details.event_metadata.service_function_created.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_function_created.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_function_updated.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_function_updated.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_function_updated.resources_added #=> Array
    #   resp.events[0].event_details.event_metadata.service_function_updated.resources_added[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_function_updated.resources_removed #=> Array
    #   resp.events[0].event_details.event_metadata.service_function_updated.resources_removed[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_function_deleted.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_function_deleted.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_added.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_added.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_added.resources_added #=> Array
    #   resp.events[0].event_details.event_metadata.service_function_resources_added.resources_added[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_removed.service_function_id #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_removed.service_function_name #=> String
    #   resp.events[0].event_details.event_metadata.service_function_resources_removed.resources_removed #=> Array
    #   resp.events[0].event_details.event_metadata.service_function_resources_removed.resources_removed[0] #=> String
    #   resp.events[0].event_details.event_metadata.service_achievability_updated.assessment_id #=> String
    #   resp.events[0].event_details.event_metadata.service_achievability_updated.availability_slo #=> String
    #   resp.events[0].event_details.event_metadata.service_achievability_updated.multi_az_rto_rpo #=> String
    #   resp.events[0].event_details.event_metadata.service_achievability_updated.multi_region_rto_rpo #=> String
    #   resp.events[0].event_details.event_metadata.assertion_created.assertion_id #=> String
    #   resp.events[0].event_details.event_metadata.assertion_created.assertion_name #=> String
    #   resp.events[0].event_details.event_metadata.assertion_updated.assertion_id #=> String
    #   resp.events[0].event_details.event_metadata.assertion_updated.assertion_name #=> String
    #   resp.events[0].event_details.event_metadata.assertion_deleted.assertion_id #=> String
    #   resp.events[0].event_details.event_metadata.assertion_deleted.assertion_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceEvents AWS API Documentation
    #
    # @overload list_service_events(params = {})
    # @param [Hash] params ({})
    def list_service_events(params = {}, options = {})
      req = build_request(:list_service_events, params)
      req.send_request(options)
    end

    # Lists service functions for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListServiceFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceFunctionsResponse#service_functions #service_functions} => Array&lt;Types::ServiceFunction&gt;
    #   * {Types::ListServiceFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_functions({
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_functions #=> Array
    #   resp.service_functions[0].service_arn #=> String
    #   resp.service_functions[0].service_function_id #=> String
    #   resp.service_functions[0].name #=> String
    #   resp.service_functions[0].description #=> String
    #   resp.service_functions[0].criticality #=> String, one of "PRIMARY", "SUPPLEMENTAL"
    #   resp.service_functions[0].resource_count #=> Integer
    #   resp.service_functions[0].source #=> String, one of "AI_GENERATED", "USER"
    #   resp.service_functions[0].created_at #=> Time
    #   resp.service_functions[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceFunctions AWS API Documentation
    #
    # @overload list_service_functions(params = {})
    # @param [Hash] params ({})
    def list_service_functions(params = {}, options = {})
      req = build_request(:list_service_functions, params)
      req.send_request(options)
    end

    # Lists topology edges for a service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListServiceTopologyEdgesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceTopologyEdgesResponse#service_topology_edge_summaries #service_topology_edge_summaries} => Array&lt;Types::ServiceTopologyEdgeSummary&gt;
    #   * {Types::ListServiceTopologyEdgesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_topology_edges({
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_topology_edge_summaries #=> Array
    #   resp.service_topology_edge_summaries[0].source_resource_identifier #=> String
    #   resp.service_topology_edge_summaries[0].destination_resource_identifier #=> String
    #   resp.service_topology_edge_summaries[0].source_region #=> String
    #   resp.service_topology_edge_summaries[0].destination_region #=> String
    #   resp.service_topology_edge_summaries[0].source_account #=> String
    #   resp.service_topology_edge_summaries[0].destination_account #=> String
    #   resp.service_topology_edge_summaries[0].properties #=> Array
    #   resp.service_topology_edge_summaries[0].properties[0].topology_type #=> String, one of "CONTAINMENT", "DATA_FLOW", "OBSERVABILITY", "PERMISSIONS"
    #   resp.service_topology_edge_summaries[0].properties[0].label #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceTopologyEdges AWS API Documentation
    #
    # @overload list_service_topology_edges(params = {})
    # @param [Hash] params ({})
    def list_service_topology_edges(params = {}, options = {})
      req = build_request(:list_service_topology_edges, params)
      req.send_request(options)
    end

    # Lists services.
    #
    # @option params [String] :system_arn
    #   ARN identifier.
    #
    # @option params [String] :user_journey_id
    #   Filter services by user journey identifier.
    #
    # @option params [String] :ou_id
    #   Filter services by organizational unit (OU) identifier.
    #
    # @option params [String] :account_id
    #   Filter services by AWS account ID.
    #
    # @option params [String] :assessment_status
    #   Filter services by assessment status.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#service_summaries #service_summaries} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     system_arn: "Arn",
    #     user_journey_id: "UserJourneyId",
    #     ou_id: "OuId",
    #     account_id: "AccountId",
    #     assessment_status: "NOT_STARTED", # accepts NOT_STARTED, PENDING, IN_PROGRESS, FAILED, SUCCESS
    #     policy_arn: "Arn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_summaries #=> Array
    #   resp.service_summaries[0].service_arn #=> String
    #   resp.service_summaries[0].name #=> String
    #   resp.service_summaries[0].associated_systems #=> Array
    #   resp.service_summaries[0].associated_systems[0].system_arn #=> String
    #   resp.service_summaries[0].associated_systems[0].system_name #=> String
    #   resp.service_summaries[0].associated_systems[0].user_journey_ids #=> Array
    #   resp.service_summaries[0].associated_systems[0].user_journey_ids[0] #=> String
    #   resp.service_summaries[0].regions #=> Array
    #   resp.service_summaries[0].regions[0] #=> String
    #   resp.service_summaries[0].policy_arn #=> String
    #   resp.service_summaries[0].assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.service_summaries[0].open_findings_count #=> Integer
    #   resp.service_summaries[0].resolved_findings_count #=> Integer
    #   resp.service_summaries[0].dependency_discovery.status #=> String, one of "ENABLED", "INITIALIZING", "DISABLED"
    #   resp.service_summaries[0].dependency_discovery.updated_at #=> Time
    #   resp.service_summaries[0].dependency_discovery.eligible_resource_count #=> Integer
    #   resp.service_summaries[0].dependency_discovery.message #=> String
    #   resp.service_summaries[0].achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service_summaries[0].achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service_summaries[0].achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service_summaries[0].achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service_summaries[0].organization_id #=> String
    #   resp.service_summaries[0].ou_id #=> String
    #   resp.service_summaries[0].account_id #=> String
    #   resp.service_summaries[0].created_at #=> Time
    #   resp.service_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Lists events for a system.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [Array<String>] :event_types
    #   Filter events by type.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time for filtering events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time for filtering events.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListSystemEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSystemEventsResponse#events #events} => Array&lt;Types::SystemEvent&gt;
    #   * {Types::ListSystemEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_system_events({
    #     system_arn: "Arn", # required
    #     event_types: ["SYSTEM_CREATED"], # accepts SYSTEM_CREATED, SYSTEM_DELETED, SYSTEM_USER_JOURNEY_CREATED, SYSTEM_USER_JOURNEY_UPDATED, SYSTEM_USER_JOURNEY_DELETED, SYSTEM_SERVICE_ASSOCIATED, SYSTEM_SERVICE_DISASSOCIATED, SYSTEM_POLICY_ASSOCIATED, SYSTEM_POLICY_DISASSOCIATED
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].timestamp #=> Time
    #   resp.events[0].event_type #=> String, one of "SYSTEM_CREATED", "SYSTEM_DELETED", "SYSTEM_USER_JOURNEY_CREATED", "SYSTEM_USER_JOURNEY_UPDATED", "SYSTEM_USER_JOURNEY_DELETED", "SYSTEM_SERVICE_ASSOCIATED", "SYSTEM_SERVICE_DISASSOCIATED", "SYSTEM_POLICY_ASSOCIATED", "SYSTEM_POLICY_DISASSOCIATED"
    #   resp.events[0].system_arn #=> String
    #   resp.events[0].actor.type #=> String, one of "USER", "SYSTEM"
    #   resp.events[0].actor.principal_id #=> String
    #   resp.events[0].actor.account_id #=> String
    #   resp.events[0].actor.user_name #=> String
    #   resp.events[0].event_details.title #=> String
    #   resp.events[0].event_details.description #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_created.user_journey_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_created.associated_services #=> Array
    #   resp.events[0].event_details.event_metadata.system_user_journey_created.associated_services[0].service_id #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_created.associated_services[0].service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.user_journey_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.journey_description.old_value #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.journey_description.new_value #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.added #=> Array
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.added[0].service_id #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.added[0].service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.removed #=> Array
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.removed[0].service_id #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_updated.changes.associated_services.removed[0].service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_deleted.user_journey_name #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_deleted.associated_services_at_deletion #=> Array
    #   resp.events[0].event_details.event_metadata.system_user_journey_deleted.associated_services_at_deletion[0].service_id #=> String
    #   resp.events[0].event_details.event_metadata.system_user_journey_deleted.associated_services_at_deletion[0].service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_service_associated.service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_service_associated.service_arn #=> String
    #   resp.events[0].event_details.event_metadata.system_service_associated.user_journeys #=> Array
    #   resp.events[0].event_details.event_metadata.system_service_associated.user_journeys[0] #=> String
    #   resp.events[0].event_details.event_metadata.system_service_disassociated.service_name #=> String
    #   resp.events[0].event_details.event_metadata.system_service_disassociated.service_arn #=> String
    #   resp.events[0].event_details.event_metadata.system_service_disassociated.user_journeys_affected #=> Array
    #   resp.events[0].event_details.event_metadata.system_service_disassociated.user_journeys_affected[0] #=> String
    #   resp.events[0].event_details.event_metadata.system_service_disassociated.comment #=> String
    #   resp.events[0].event_details.event_metadata.system_policy_associated.policy_name #=> String
    #   resp.events[0].event_details.event_metadata.system_policy_associated.policy_arn #=> String
    #   resp.events[0].event_details.event_metadata.system_policy_disassociated.policy_name #=> String
    #   resp.events[0].event_details.event_metadata.system_policy_disassociated.policy_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystemEvents AWS API Documentation
    #
    # @overload list_system_events(params = {})
    # @param [Hash] params ({})
    def list_system_events(params = {}, options = {})
      req = build_request(:list_system_events, params)
      req.send_request(options)
    end

    # Lists systems.
    #
    # @option params [String] :ou_id
    #   Filter systems by organizational unit (OU) identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSystemsResponse#system_summaries #system_summaries} => Array&lt;Types::SystemSummary&gt;
    #   * {Types::ListSystemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_systems({
    #     ou_id: "OuId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.system_summaries #=> Array
    #   resp.system_summaries[0].system_id #=> String
    #   resp.system_summaries[0].name #=> String
    #   resp.system_summaries[0].system_arn #=> String
    #   resp.system_summaries[0].user_journeys_count #=> Integer
    #   resp.system_summaries[0].services_count #=> Integer
    #   resp.system_summaries[0].organization_id #=> String
    #   resp.system_summaries[0].ou_id #=> String
    #   resp.system_summaries[0].created_at #=> Time
    #   resp.system_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystems AWS API Documentation
    #
    # @overload list_systems(params = {})
    # @param [Hash] params ({})
    def list_systems(params = {}, options = {})
      req = build_request(:list_systems, params)
      req.send_request(options)
    end

    # Lists the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN identifier.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the events in a test run's timeline.
    #
    # @option params [required, String] :test_run_id
    #   The identifier of the test run to list events for.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test run belongs to.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_at
    #   Return events at or after this timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :ended_at
    #   Return events at or before this timestamp.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestRunEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunEventsResponse#events #events} => Array&lt;Types::TestRunEvent&gt;
    #   * {Types::ListTestRunEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_run_events({
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_type #=> String
    #   resp.events[0].message #=> String
    #   resp.events[0].timestamp #=> Time
    #   resp.events[0].attributes #=> Hash
    #   resp.events[0].attributes["TestRunEventAttributeKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTestRunEvents AWS API Documentation
    #
    # @overload list_test_run_events(params = {})
    # @param [Hash] params ({})
    def list_test_run_events(params = {}, options = {})
      req = build_request(:list_test_run_events, params)
      req.send_request(options)
    end

    # Lists the monitoring source snapshots captured for a test run,
    # optionally filtered by type.
    #
    # @option params [required, String] :test_run_id
    #   The identifier of the test run to list sources for.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test run belongs to.
    #
    # @option params [String] :type
    #   Filter sources by type.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestRunSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunSourcesResponse#test_run_sources #test_run_sources} => Array&lt;Types::TestRunSourceSummary&gt;
    #   * {Types::ListTestRunSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_run_sources({
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #     type: "SUCCESS_CRITERIA", # accepts SUCCESS_CRITERIA, OBSERVABILITY
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_sources #=> Array
    #   resp.test_run_sources[0].success_criteria_alarm.alarm_arn #=> String
    #   resp.test_run_sources[0].success_criteria_alarm.alarm_name #=> String
    #   resp.test_run_sources[0].success_criteria_alarm.region #=> String
    #   resp.test_run_sources[0].success_criteria_alarm.account_id #=> String
    #   resp.test_run_sources[0].success_criteria_alarm.outcome #=> String, one of "PASSED", "FAILED", "ERROR"
    #   resp.test_run_sources[0].success_criteria_alarm.outcome_reason #=> String
    #   resp.test_run_sources[0].observability_alarm.alarm_arn #=> String
    #   resp.test_run_sources[0].observability_alarm.alarm_name #=> String
    #   resp.test_run_sources[0].observability_alarm.region #=> String
    #   resp.test_run_sources[0].observability_alarm.account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTestRunSources AWS API Documentation
    #
    # @overload list_test_run_sources(params = {})
    # @param [Hash] params ({})
    def list_test_run_sources(params = {}, options = {})
      req = build_request(:list_test_run_sources, params)
      req.send_request(options)
    end

    # Lists the runs of a test, or all test runs for a service.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service to list test runs for.
    #
    # @option params [String] :test_id
    #   Filter test runs by test identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunsResponse#test_runs #test_runs} => Array&lt;Types::TestRunSummary&gt;
    #   * {Types::ListTestRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_runs({
    #     service_arn: "Arn", # required
    #     test_id: "TestId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_runs #=> Array
    #   resp.test_runs[0].test_run_id #=> String
    #   resp.test_runs[0].status #=> String, one of "INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"
    #   resp.test_runs[0].started_at #=> Time
    #   resp.test_runs[0].ended_at #=> Time
    #   resp.test_runs[0].test_template_arn #=> String
    #   resp.test_runs[0].service_arn #=> String
    #   resp.test_runs[0].error_message #=> String
    #   resp.test_runs[0].account_targeting #=> String, one of "SINGLE_ACCOUNT", "MULTI_ACCOUNT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTestRuns AWS API Documentation
    #
    # @overload list_test_runs(params = {})
    # @param [Hash] params ({})
    def list_test_runs(params = {}, options = {})
      req = build_request(:list_test_runs, params)
      req.send_request(options)
    end

    # Lists the monitoring sources attached to a test, optionally filtered
    # by type.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to list sources for.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @option params [String] :type
    #   Filter sources by type.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestSourcesResponse#test_sources #test_sources} => Array&lt;Types::TestSourceSummary&gt;
    #   * {Types::ListTestSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_sources({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     type: "SUCCESS_CRITERIA", # accepts SUCCESS_CRITERIA, OBSERVABILITY
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_sources #=> Array
    #   resp.test_sources[0].success_criteria_alarm.alarm_arn #=> String
    #   resp.test_sources[0].success_criteria_alarm.alarm_name #=> String
    #   resp.test_sources[0].success_criteria_alarm.region #=> String
    #   resp.test_sources[0].success_criteria_alarm.account_id #=> String
    #   resp.test_sources[0].success_criteria_alarm.created_at #=> Time
    #   resp.test_sources[0].observability_alarm.alarm_arn #=> String
    #   resp.test_sources[0].observability_alarm.alarm_name #=> String
    #   resp.test_sources[0].observability_alarm.region #=> String
    #   resp.test_sources[0].observability_alarm.account_id #=> String
    #   resp.test_sources[0].observability_alarm.created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTestSources AWS API Documentation
    #
    # @overload list_test_sources(params = {})
    # @param [Hash] params ({})
    def list_test_sources(params = {}, options = {})
      req = build_request(:list_test_sources, params)
      req.send_request(options)
    end

    # Lists the available resilience test templates. A test template is a
    # pre-configured, AWS recommended test that defines which resilience
    # capability to validate.
    #
    # @return [Types::ListTestTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestTemplatesResponse#test_templates #test_templates} => Array&lt;Types::TestTemplateSummary&gt;
    #
    # @example Response structure
    #
    #   resp.test_templates #=> Array
    #   resp.test_templates[0].test_template_arn #=> String
    #   resp.test_templates[0].name #=> String
    #   resp.test_templates[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTestTemplates AWS API Documentation
    #
    # @overload list_test_templates(params = {})
    # @param [Hash] params ({})
    def list_test_templates(params = {}, options = {})
      req = build_request(:list_test_templates, params)
      req.send_request(options)
    end

    # Lists the tests configured for a service.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service to list tests for.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestsResponse#tests #tests} => Array&lt;Types::TestSummary&gt;
    #   * {Types::ListTestsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tests({
    #     service_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tests #=> Array
    #   resp.tests[0].test_id #=> String
    #   resp.tests[0].test_template_arn #=> String
    #   resp.tests[0].service_arn #=> String
    #   resp.tests[0].total_test_runs #=> Integer
    #   resp.tests[0].successful_test_runs #=> Integer
    #   resp.tests[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTests AWS API Documentation
    #
    # @overload list_tests(params = {})
    # @param [Hash] params ({})
    def list_tests(params = {}, options = {})
      req = build_request(:list_tests, params)
      req.send_request(options)
    end

    # Lists user journeys for a system.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [Integer] :max_results
    #   Pagination page size.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListUserJourneysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserJourneysResponse#user_journey_summaries #user_journey_summaries} => Array&lt;Types::UserJourneySummary&gt;
    #   * {Types::ListUserJourneysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_journeys({
    #     system_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_journey_summaries #=> Array
    #   resp.user_journey_summaries[0].user_journey_id #=> String
    #   resp.user_journey_summaries[0].name #=> String
    #   resp.user_journey_summaries[0].created_at #=> Time
    #   resp.user_journey_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListUserJourneys AWS API Documentation
    #
    # @overload list_user_journeys(params = {})
    # @param [Hash] params ({})
    def list_user_journeys(params = {}, options = {})
      req = build_request(:list_user_journeys, params)
      req.send_request(options)
    end

    # Adds or updates the monitoring sources on a test. The operation is
    # transactional — either every source is written or the call fails and
    # nothing is written.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to add sources to.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @option params [required, Array<Types::TestSourceInput>] :test_sources
    #   The monitoring sources to add or update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_test_sources({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     test_sources: [ # required
    #       {
    #         success_criteria_alarm: {
    #           alarm_arn: "CloudWatchAlarmArn", # required
    #         },
    #         observability_alarm: {
    #           alarm_arn: "CloudWatchAlarmArn", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/PutTestSources AWS API Documentation
    #
    # @overload put_test_sources(params = {})
    # @param [Hash] params ({})
    def put_test_sources(params = {}, options = {})
      req = build_request(:put_test_sources, params)
      req.send_request(options)
    end

    # Starts a failure mode assessment.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartFailureModeAssessmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFailureModeAssessmentResponse#assessment_id #assessment_id} => String
    #   * {Types::StartFailureModeAssessmentResponse#service_arn #service_arn} => String
    #   * {Types::StartFailureModeAssessmentResponse#assessment_status #assessment_status} => String
    #   * {Types::StartFailureModeAssessmentResponse#started_at #started_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_failure_mode_assessment({
    #     service_arn: "Arn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.assessment_id #=> String
    #   resp.service_arn #=> String
    #   resp.assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.started_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StartFailureModeAssessment AWS API Documentation
    #
    # @overload start_failure_mode_assessment(params = {})
    # @param [Hash] params ({})
    def start_failure_mode_assessment(params = {}, options = {})
      req = build_request(:start_failure_mode_assessment, params)
      req.send_request(options)
    end

    # Starts a run of a test. Each run scopes to the current resources in
    # the service and produces a pass or fail outcome.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to run.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @return [Types::StartTestRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTestRunResponse#test_run_id #test_run_id} => String
    #   * {Types::StartTestRunResponse#status #status} => String
    #   * {Types::StartTestRunResponse#experiment_arns #experiment_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test_run({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_id #=> String
    #   resp.status #=> String, one of "INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"
    #   resp.experiment_arns #=> Array
    #   resp.experiment_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StartTestRun AWS API Documentation
    #
    # @overload start_test_run(params = {})
    # @param [Hash] params ({})
    def start_test_run(params = {}, options = {})
      req = build_request(:start_test_run, params)
      req.send_request(options)
    end

    # Stops an in-progress test run.
    #
    # @option params [required, String] :test_run_id
    #   The identifier of the test run to stop.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test run belongs to.
    #
    # @return [Types::StopTestRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTestRunResponse#test_run_id #test_run_id} => String
    #   * {Types::StopTestRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_test_run({
    #     test_run_id: "TestRunId", # required
    #     service_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_id #=> String
    #   resp.status #=> String, one of "INITIALIZING", "RUNNING", "STOPPING", "PASSED", "FAILED", "STOPPED", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StopTestRun AWS API Documentation
    #
    # @overload stop_test_run(params = {})
    # @param [Hash] params ({})
    def stop_test_run(params = {}, options = {})
      req = build_request(:stop_test_run, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN identifier.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Resource tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN identifier.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a resilience assertion.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :assertion_id
    #   The unique identifier of the assertion to update.
    #
    # @option params [String] :text
    #   The updated text content of the assertion.
    #
    # @return [Types::UpdateAssertionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssertionResponse#assertion #assertion} => Types::Assertion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assertion({
    #     service_arn: "Arn", # required
    #     assertion_id: "Uuid", # required
    #     text: "AssertionText",
    #   })
    #
    # @example Response structure
    #
    #   resp.assertion.service_arn #=> String
    #   resp.assertion.assertion_id #=> String
    #   resp.assertion.text #=> String
    #   resp.assertion.source #=> String, one of "AI_GENERATED", "USER"
    #   resp.assertion.created_at #=> Time
    #   resp.assertion.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateAssertion AWS API Documentation
    #
    # @overload update_assertion(params = {})
    # @param [Hash] params ({})
    def update_assertion(params = {}, options = {})
      req = build_request(:update_assertion, params)
      req.send_request(options)
    end

    # Updates a dependency classification.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :dependency_id
    #   The identifier of the dependency to update.
    #
    # @option params [String] :criticality
    #   The updated criticality level of the dependency.
    #
    # @option params [String] :comment
    #   A comment about the dependency.
    #
    # @return [Types::UpdateDependencyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDependencyResponse#dependency_id #dependency_id} => String
    #   * {Types::UpdateDependencyResponse#dependency_name #dependency_name} => String
    #   * {Types::UpdateDependencyResponse#location #location} => String
    #   * {Types::UpdateDependencyResponse#criticality #criticality} => String
    #   * {Types::UpdateDependencyResponse#comment #comment} => String
    #   * {Types::UpdateDependencyResponse#provider #provider} => String
    #   * {Types::UpdateDependencyResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dependency({
    #     service_arn: "Arn", # required
    #     dependency_id: "Uuid", # required
    #     criticality: "HARD", # accepts HARD, SOFT, UNKNOWN
    #     comment: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.dependency_id #=> String
    #   resp.dependency_name #=> String
    #   resp.location #=> String
    #   resp.criticality #=> String, one of "HARD", "SOFT", "UNKNOWN"
    #   resp.comment #=> String
    #   resp.provider #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateDependency AWS API Documentation
    #
    # @overload update_dependency(params = {})
    # @param [Hash] params ({})
    def update_dependency(params = {}, options = {})
      req = build_request(:update_dependency, params)
      req.send_request(options)
    end

    # Updates an existing finding.
    #
    # @option params [required, String] :finding_id
    #   The identifier of the finding to update.
    #
    # @option params [required, String] :status
    #   The new status for the finding.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :comment
    #   A comment about the finding update.
    #
    # @return [Types::UpdateFailureModeFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFailureModeFindingResponse#finding #finding} => Types::Finding
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_failure_mode_finding({
    #     finding_id: "Uuid", # required
    #     status: "OPEN", # required, accepts OPEN, RESOLVED, IRRELEVANT
    #     service_arn: "Arn", # required
    #     comment: "UpdateFailureModeFindingRequestCommentString",
    #   })
    #
    # @example Response structure
    #
    #   resp.finding.finding_id #=> String
    #   resp.finding.name #=> String
    #   resp.finding.description #=> String
    #   resp.finding.failure_category #=> String, one of "SHARED_FATE", "EXCESSIVE_LOAD", "EXCESSIVE_LATENCY", "MISCONFIGURATION_AND_BUGS", "SINGLE_POINT_OF_FAILURE"
    #   resp.finding.status #=> String, one of "OPEN", "RESOLVED", "IRRELEVANT"
    #   resp.finding.reasoning #=> String
    #   resp.finding.comment #=> String
    #   resp.finding.severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.finding.service_functions #=> Array
    #   resp.finding.service_functions[0] #=> String
    #   resp.finding.policy_component #=> String, one of "AVAILABILITY_SLO", "MULTI_AZ_DISASTER_RECOVERY", "MULTI_REGION_DISASTER_RECOVERY", "DATA_RECOVERY"
    #   resp.finding.infrastructure_and_code_recommendations #=> Array
    #   resp.finding.infrastructure_and_code_recommendations[0].suggested_changes #=> Array
    #   resp.finding.infrastructure_and_code_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.observability_recommendations #=> Array
    #   resp.finding.observability_recommendations[0].suggested_changes #=> Array
    #   resp.finding.observability_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.testing_recommendations #=> Array
    #   resp.finding.testing_recommendations[0].suggested_changes #=> Array
    #   resp.finding.testing_recommendations[0].suggested_changes[0] #=> String
    #   resp.finding.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateFailureModeFinding AWS API Documentation
    #
    # @overload update_failure_mode_finding(params = {})
    # @param [Hash] params ({})
    def update_failure_mode_finding(params = {}, options = {})
      req = build_request(:update_failure_mode_finding, params)
      req.send_request(options)
    end

    # Updates an existing resilience policy.
    #
    # @option params [required, String] :policy_arn
    #   ARN identifier.
    #
    # @option params [String] :description
    #   Resource description for services and policies.
    #
    # @option params [Types::AvailabilitySlo] :availability_slo
    #   The updated availability SLO for the policy.
    #
    # @option params [Types::MultiAzTargets] :multi_az
    #   The updated multi-AZ disaster recovery targets for the policy.
    #
    # @option params [Types::MultiRegionTargets] :multi_region
    #   The updated multi-Region disaster recovery targets for the policy.
    #
    # @option params [Types::DataRecoveryTargets] :data_recovery
    #   The updated data recovery targets for the policy.
    #
    # @return [Types::UpdatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy({
    #     policy_arn: "Arn", # required
    #     description: "LongDescription",
    #     availability_slo: {
    #       target: 1.0,
    #     },
    #     multi_az: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     },
    #     multi_region: {
    #       rto_in_minutes: 1,
    #       rpo_in_minutes: 1,
    #       disaster_recovery_approach: "ACTIVE_ACTIVE", # accepts ACTIVE_ACTIVE, HOT_STANDBY, WARM_STANDBY, PILOT_LIGHT, BACKUP_AND_RESTORE
    #     },
    #     data_recovery: {
    #       time_between_backups_in_minutes: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy_arn #=> String
    #   resp.policy.name #=> String
    #   resp.policy.description #=> String
    #   resp.policy.availability_slo.target #=> Float
    #   resp.policy.multi_az.rto_in_minutes #=> Integer
    #   resp.policy.multi_az.rpo_in_minutes #=> Integer
    #   resp.policy.multi_az.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.multi_region.rto_in_minutes #=> Integer
    #   resp.policy.multi_region.rpo_in_minutes #=> Integer
    #   resp.policy.multi_region.disaster_recovery_approach #=> String, one of "ACTIVE_ACTIVE", "HOT_STANDBY", "WARM_STANDBY", "PILOT_LIGHT", "BACKUP_AND_RESTORE"
    #   resp.policy.data_recovery.time_between_backups_in_minutes #=> Integer
    #   resp.policy.kms_key_id #=> String
    #   resp.policy.tags #=> Hash
    #   resp.policy.tags["TagKey"] #=> String
    #   resp.policy.associated_service_count #=> Integer
    #   resp.policy.created_at #=> Time
    #   resp.policy.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdatePolicy AWS API Documentation
    #
    # @overload update_policy(params = {})
    # @param [Hash] params ({})
    def update_policy(params = {}, options = {})
      req = build_request(:update_policy, params)
      req.send_request(options)
    end

    # Updates an existing service.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [String] :description
    #   Resource description for services and policies.
    #
    # @option params [Array<Types::AssociatedSystem>] :associated_systems
    #   The updated systems to associate with the service.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @option params [Array<String>] :regions
    #   The updated AWS Regions where the service operates.
    #
    # @option params [Types::PermissionModel] :permission_model
    #   The updated permission model for the service.
    #
    # @option params [String] :dependency_discovery
    #   Caller-settable values for dependency discovery. INITIALIZING is
    #   system-managed.
    #
    # @option params [Types::ServiceReportConfiguration] :report_configuration
    #   Configuration for automatic report generation on a Service.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#service #service} => Types::Service
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     service_arn: "Arn", # required
    #     description: "LongDescription",
    #     associated_systems: [
    #       {
    #         system_arn: "Arn", # required
    #         system_name: "EntityName",
    #         user_journey_ids: ["UserJourneyId"],
    #       },
    #     ],
    #     policy_arn: "Arn",
    #     regions: ["AwsRegion"],
    #     permission_model: {
    #       invoker_role_name: "IamRoleName", # required
    #       cross_account_roles: [
    #         {
    #           cross_account_role_arn: "IamRoleArn", # required
    #           external_id: "CrossAccountRoleExternalIdString",
    #         },
    #       ],
    #     },
    #     dependency_discovery: "ENABLED", # accepts ENABLED, DISABLED
    #     report_configuration: {
    #       report_outputs: [ # required
    #         {
    #           s3: {
    #             bucket_path: "S3BucketPath", # required
    #             bucket_owner: "AwsAccountId", # required
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.name #=> String
    #   resp.service.description #=> String
    #   resp.service.associated_systems #=> Array
    #   resp.service.associated_systems[0].system_arn #=> String
    #   resp.service.associated_systems[0].system_name #=> String
    #   resp.service.associated_systems[0].user_journey_ids #=> Array
    #   resp.service.associated_systems[0].user_journey_ids[0] #=> String
    #   resp.service.policy_arn #=> String
    #   resp.service.regions #=> Array
    #   resp.service.regions[0] #=> String
    #   resp.service.permission_model.invoker_role_name #=> String
    #   resp.service.permission_model.cross_account_roles #=> Array
    #   resp.service.permission_model.cross_account_roles[0].cross_account_role_arn #=> String
    #   resp.service.permission_model.cross_account_roles[0].external_id #=> String
    #   resp.service.dependency_discovery.status #=> String, one of "ENABLED", "INITIALIZING", "DISABLED"
    #   resp.service.dependency_discovery.updated_at #=> Time
    #   resp.service.dependency_discovery.eligible_resource_count #=> Integer
    #   resp.service.dependency_discovery.message #=> String
    #   resp.service.effective_policy_values.availability_slo.value #=> Float
    #   resp.service.effective_policy_values.availability_slo.policy_name #=> String
    #   resp.service.effective_policy_values.availability_slo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_az_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_az_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_az_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rto.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rto.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rto.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_rpo.value #=> Integer
    #   resp.service.effective_policy_values.multi_region_rpo.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_rpo.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.multi_region_dr_approach.value #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.policy_name #=> String
    #   resp.service.effective_policy_values.multi_region_dr_approach.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.value #=> Integer
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.policy_name #=> String
    #   resp.service.effective_policy_values.data_recovery_time_between_backups.source #=> String, one of "SELF", "CROSS_ACCOUNT"
    #   resp.service.achievability.availability_slo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_az_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.multi_region_rto_rpo #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.achievability.data_recovery_time_between_backups #=> String, one of "ACHIEVABLE", "NOT_ACHIEVABLE"
    #   resp.service.report_configuration.report_outputs #=> Array
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_path #=> String
    #   resp.service.report_configuration.report_outputs[0].s3.bucket_owner #=> String
    #   resp.service.kms_key_id #=> String
    #   resp.service.tags #=> Hash
    #   resp.service.tags["TagKey"] #=> String
    #   resp.service.estimated_assessment_cost.amount #=> Float
    #   resp.service.estimated_assessment_cost.currency #=> String, one of "USD"
    #   resp.service.resource_discovery.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "COMPLETED_WITH_FAILURES", "NOT_STARTED"
    #   resp.service.resource_discovery.last_run_at #=> Time
    #   resp.service.resource_discovery.error_code #=> String, one of "INVALID_PERMISSIONS", "STACK_NOT_FOUND", "CLUSTER_NOT_FOUND", "STATE_FILE_NOT_FOUND", "ACCESS_DENIED", "UNSUPPORTED_CLUSTER", "INTERNAL_ERROR"
    #   resp.service.resource_discovery.error_message #=> String
    #   resp.service.assessment_status #=> String, one of "NOT_STARTED", "PENDING", "IN_PROGRESS", "FAILED", "SUCCESS"
    #   resp.service.rerun_assessment #=> Boolean
    #   resp.service.open_findings_count #=> Integer
    #   resp.service.resolved_findings_count #=> Integer
    #   resp.service.organization_id #=> String
    #   resp.service.ou_id #=> String
    #   resp.service.account_id #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Updates a service function.
    #
    # @option params [required, String] :service_arn
    #   ARN identifier.
    #
    # @option params [required, String] :service_function_id
    #   The identifier of the service function to update.
    #
    # @option params [String] :name
    #   Entity label (not part of ARN — spaces allowed).
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [String] :criticality
    #   The updated criticality level of the service function.
    #
    # @return [Types::UpdateServiceFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceFunctionResponse#service_function #service_function} => Types::ServiceFunction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_function({
    #     service_arn: "Arn", # required
    #     service_function_id: "EntityId", # required
    #     name: "EntityLabel",
    #     description: "EntityDescription",
    #     criticality: "PRIMARY", # accepts PRIMARY, SUPPLEMENTAL
    #   })
    #
    # @example Response structure
    #
    #   resp.service_function.service_arn #=> String
    #   resp.service_function.service_function_id #=> String
    #   resp.service_function.name #=> String
    #   resp.service_function.description #=> String
    #   resp.service_function.criticality #=> String, one of "PRIMARY", "SUPPLEMENTAL"
    #   resp.service_function.resource_count #=> Integer
    #   resp.service_function.source #=> String, one of "AI_GENERATED", "USER"
    #   resp.service_function.created_at #=> Time
    #   resp.service_function.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateServiceFunction AWS API Documentation
    #
    # @overload update_service_function(params = {})
    # @param [Hash] params ({})
    def update_service_function(params = {}, options = {})
      req = build_request(:update_service_function, params)
      req.send_request(options)
    end

    # Updates an existing system.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [Boolean] :sharing_enabled
    #   Whether cross-account sharing is enabled for the system.
    #
    # @return [Types::UpdateSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSystemResponse#system #system} => Types::System
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_system({
    #     system_arn: "Arn", # required
    #     description: "EntityDescription",
    #     sharing_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.system.system_arn #=> String
    #   resp.system.system_id #=> String
    #   resp.system.name #=> String
    #   resp.system.description #=> String
    #   resp.system.sharing_enabled #=> Boolean
    #   resp.system.tags #=> Hash
    #   resp.system.tags["TagKey"] #=> String
    #   resp.system.kms_key_id #=> String
    #   resp.system.organization_id #=> String
    #   resp.system.ou_id #=> String
    #   resp.system.created_at #=> Time
    #   resp.system.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateSystem AWS API Documentation
    #
    # @overload update_system(params = {})
    # @param [Hash] params ({})
    def update_system(params = {}, options = {})
      req = build_request(:update_system, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing test.
    #
    # @option params [required, String] :test_id
    #   The identifier of the test to update.
    #
    # @option params [required, String] :service_arn
    #   The ARN of the service the test belongs to.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   The updated logging configuration for the test.
    #
    # @option params [Array<Types::StopCondition>] :stop_conditions
    #   The updated stop conditions for the test.
    #
    # @option params [String] :role_name
    #   The updated IAM execution role name.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The updated parameter values for the test.
    #
    # @return [Types::UpdateTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestResponse#test #test} => Types::Test
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test({
    #     test_id: "TestId", # required
    #     service_arn: "Arn", # required
    #     logging_configuration: {
    #       s3_bucket_name: "String",
    #       cloud_watch_log_group_arn: "Arn",
    #       log_schema_version: "String",
    #     },
    #     stop_conditions: [
    #       {
    #         source: "aws:cloudwatch:alarm", # required, accepts aws:cloudwatch:alarm, none
    #         value: "String", # required
    #       },
    #     ],
    #     role_name: "EntityName",
    #     parameters: {
    #       "ParameterKey" => ["ParameterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test.test_id #=> String
    #   resp.test.test_template_arn #=> String
    #   resp.test.service_arn #=> String
    #   resp.test.name #=> String
    #   resp.test.actions #=> Array
    #   resp.test.actions[0].action_id #=> String
    #   resp.test.actions[0].description #=> String
    #   resp.test.actions[0].resource_type #=> String
    #   resp.test.logging_configuration.s3_bucket_name #=> String
    #   resp.test.logging_configuration.cloud_watch_log_group_arn #=> String
    #   resp.test.logging_configuration.log_schema_version #=> String
    #   resp.test.stop_conditions #=> Array
    #   resp.test.stop_conditions[0].source #=> String, one of "aws:cloudwatch:alarm", "none"
    #   resp.test.stop_conditions[0].value #=> String
    #   resp.test.role_name #=> String
    #   resp.test.parameters #=> Hash
    #   resp.test.parameters["ParameterKey"] #=> Array
    #   resp.test.parameters["ParameterKey"][0] #=> String
    #   resp.test.total_test_runs #=> Integer
    #   resp.test.successful_test_runs #=> Integer
    #   resp.test.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateTest AWS API Documentation
    #
    # @overload update_test(params = {})
    # @param [Hash] params ({})
    def update_test(params = {}, options = {})
      req = build_request(:update_test, params)
      req.send_request(options)
    end

    # Updates an existing user journey.
    #
    # @option params [required, String] :system_arn
    #   ARN identifier.
    #
    # @option params [required, String] :user_journey_id
    #   The identifier of the user journey to update.
    #
    # @option params [String] :name
    #   Entity label (not part of ARN — spaces allowed).
    #
    # @option params [String] :description
    #   Resource description.
    #
    # @option params [String] :policy_arn
    #   ARN identifier.
    #
    # @return [Types::UpdateUserJourneyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserJourneyResponse#user_journey #user_journey} => Types::UserJourney
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_journey({
    #     system_arn: "Arn", # required
    #     user_journey_id: "UserJourneyId", # required
    #     name: "EntityLabel",
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_journey.user_journey_id #=> String
    #   resp.user_journey.name #=> String
    #   resp.user_journey.description #=> String
    #   resp.user_journey.policy_arn #=> String
    #   resp.user_journey.created_at #=> Time
    #   resp.user_journey.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateUserJourney AWS API Documentation
    #
    # @overload update_user_journey(params = {})
    # @param [Hash] params ({})
    def update_user_journey(params = {}, options = {})
      req = build_request(:update_user_journey, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Resiliencehubv2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-resiliencehubv2'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                          | params                                 | :delay   | :max_attempts |
    # | ------------------------------------ | -------------------------------------- | -------- | ------------- |
    # | failure_mode_assessment_success      | {Client#list_failure_mode_assessments} | 30       | 5             |
    # | report_succeeded                     | {Client#list_reports}                  | 30       | 5             |
    # | service_assessment_completed         | {Client#get_service}                   | 30       | 5             |
    # | service_resource_discovery_completed | {Client#get_service}                   | 30       | 5             |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        failure_mode_assessment_success: Waiters::FailureModeAssessmentSuccess,
        report_succeeded: Waiters::ReportSucceeded,
        service_assessment_completed: Waiters::ServiceAssessmentCompleted,
        service_resource_discovery_completed: Waiters::ServiceResourceDiscoveryCompleted
      }
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
