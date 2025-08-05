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

module Aws::BCMPricingCalculator
  # An API client for BCMPricingCalculator.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BCMPricingCalculator::Client.new(
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

    @identifier = :bcmpricingcalculator

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
    add_plugin(Aws::BCMPricingCalculator::Plugins::Endpoints)

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
    #   @option options [Aws::BCMPricingCalculator::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BCMPricingCalculator::EndpointParameters`.
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

    # Create Compute Savings Plans, EC2 Instance Savings Plans, or EC2
    # Reserved Instances commitments that you want to model in a Bill
    # Scenario.
    #
    # <note markdown="1"> The `BatchCreateBillScenarioCommitmentModification` operation doesn't
    # have its own IAM permission. To authorize this operation for Amazon
    # Web Services principals, include the permission
    # `bcm-pricing-calculator:CreateBillScenarioCommitmentModification` in
    # your policies.
    #
    #  </note>
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create the modeled
    #   commitment.
    #
    # @option params [required, Array<Types::BatchCreateBillScenarioCommitmentModificationEntry>] :commitment_modifications
    #   List of commitments that you want to model in the Bill Scenario.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchCreateBillScenarioCommitmentModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateBillScenarioCommitmentModificationResponse#items #items} => Array&lt;Types::BatchCreateBillScenarioCommitmentModificationItem&gt;
    #   * {Types::BatchCreateBillScenarioCommitmentModificationResponse#errors #errors} => Array&lt;Types::BatchCreateBillScenarioCommitmentModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_bill_scenario_commitment_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     commitment_modifications: [ # required
    #       {
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         commitment_action: { # required
    #           add_reserved_instance_action: {
    #             reserved_instances_offering_id: "Uuid",
    #             instance_count: 1,
    #           },
    #           add_savings_plan_action: {
    #             savings_plan_offering_id: "Uuid",
    #             commitment: 1.0,
    #           },
    #           negate_reserved_instance_action: {
    #             reserved_instances_id: "Uuid",
    #           },
    #           negate_savings_plan_action: {
    #             savings_plan_id: "Uuid",
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].key #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.reserved_instances_offering_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.instance_count #=> Integer
    #   resp.items[0].commitment_action.add_savings_plan_action.savings_plan_offering_id #=> String
    #   resp.items[0].commitment_action.add_savings_plan_action.commitment #=> Float
    #   resp.items[0].commitment_action.negate_reserved_instance_action.reserved_instances_id #=> String
    #   resp.items[0].commitment_action.negate_savings_plan_action.savings_plan_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].key #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "CONFLICT", "INTERNAL_SERVER_ERROR", "INVALID_ACCOUNT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioCommitmentModification AWS API Documentation
    #
    # @overload batch_create_bill_scenario_commitment_modification(params = {})
    # @param [Hash] params ({})
    def batch_create_bill_scenario_commitment_modification(params = {}, options = {})
      req = build_request(:batch_create_bill_scenario_commitment_modification, params)
      req.send_request(options)
    end

    # Create Amazon Web Services service usage that you want to model in a
    # Bill Scenario.
    #
    # <note markdown="1"> The `BatchCreateBillScenarioUsageModification` operation doesn't have
    # its own IAM permission. To authorize this operation for Amazon Web
    # Services principals, include the permission
    # `bcm-pricing-calculator:CreateBillScenarioUsageModification` in your
    # policies.
    #
    #  </note>
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create the modeled
    #   usage.
    #
    # @option params [required, Array<Types::BatchCreateBillScenarioUsageModificationEntry>] :usage_modifications
    #   List of usage that you want to model in the Bill Scenario.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchCreateBillScenarioUsageModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateBillScenarioUsageModificationResponse#items #items} => Array&lt;Types::BatchCreateBillScenarioUsageModificationItem&gt;
    #   * {Types::BatchCreateBillScenarioUsageModificationResponse#errors #errors} => Array&lt;Types::BatchCreateBillScenarioUsageModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_bill_scenario_usage_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     usage_modifications: [ # required
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         availability_zone: "AvailabilityZone",
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         amounts: [
    #           {
    #             start_hour: Time.now, # required
    #             amount: 1.0, # required
    #           },
    #         ],
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now,
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].availability_zone #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].quantities #=> Array
    #   resp.items[0].quantities[0].start_hour #=> Time
    #   resp.items[0].quantities[0].unit #=> String
    #   resp.items[0].quantities[0].amount #=> Float
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.items[0].key #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].key #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateBillScenarioUsageModification AWS API Documentation
    #
    # @overload batch_create_bill_scenario_usage_modification(params = {})
    # @param [Hash] params ({})
    def batch_create_bill_scenario_usage_modification(params = {}, options = {})
      req = build_request(:batch_create_bill_scenario_usage_modification, params)
      req.send_request(options)
    end

    # Create Amazon Web Services service usage that you want to model in a
    # Workload Estimate.
    #
    # <note markdown="1"> The `BatchCreateWorkloadEstimateUsage` operation doesn't have its own
    # IAM permission. To authorize this operation for Amazon Web Services
    # principals, include the permission
    # `bcm-pricing-calculator:CreateWorkloadEstimateUsage` in your policies.
    #
    #  </note>
    #
    # @option params [required, String] :workload_estimate_id
    #   The ID of the Workload estimate for which you want to create the
    #   modeled usage.
    #
    # @option params [required, Array<Types::BatchCreateWorkloadEstimateUsageEntry>] :usage
    #   List of usage that you want to model in the Workload estimate.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchCreateWorkloadEstimateUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateWorkloadEstimateUsageResponse#items #items} => Array&lt;Types::BatchCreateWorkloadEstimateUsageItem&gt;
    #   * {Types::BatchCreateWorkloadEstimateUsageResponse#errors #errors} => Array&lt;Types::BatchCreateWorkloadEstimateUsageError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_workload_estimate_usage({
    #     workload_estimate_id: "ResourceId", # required
    #     usage: [ # required
    #       {
    #         service_code: "ServiceCode", # required
    #         usage_type: "UsageType", # required
    #         operation: "Operation", # required
    #         key: "Key", # required
    #         group: "UsageGroup",
    #         usage_account_id: "AccountId", # required
    #         amount: 1.0, # required
    #         historical_usage: {
    #           service_code: "ServiceCode", # required
    #           usage_type: "UsageType", # required
    #           operation: "Operation", # required
    #           location: "String",
    #           usage_account_id: "AccountId", # required
    #           bill_interval: { # required
    #             start: Time.now,
    #             end: Time.now,
    #           },
    #           filter_expression: { # required
    #             and: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             or: [
    #               {
    #                 # recursive Expression
    #               },
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             cost_categories: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #             dimensions: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #             tags: {
    #               key: "String",
    #               match_options: ["String"],
    #               values: ["String"],
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].quantity.unit #=> String
    #   resp.items[0].quantity.amount #=> Float
    #   resp.items[0].cost #=> Float
    #   resp.items[0].currency #=> String, one of "USD"
    #   resp.items[0].status #=> String, one of "VALID", "INVALID", "STALE"
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.items[0].key #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].key #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchCreateWorkloadEstimateUsage AWS API Documentation
    #
    # @overload batch_create_workload_estimate_usage(params = {})
    # @param [Hash] params ({})
    def batch_create_workload_estimate_usage(params = {}, options = {})
      req = build_request(:batch_create_workload_estimate_usage, params)
      req.send_request(options)
    end

    # Delete commitment that you have created in a Bill Scenario. You can
    # only delete a commitment that you had added and cannot model deletion
    # (or removal) of a existing commitment. If you want model deletion of
    # an existing commitment, see the negate [
    # BillScenarioCommitmentModificationAction][1] of [
    # BatchCreateBillScenarioCommitmentModification][2] operation.
    #
    # <note markdown="1"> The `BatchDeleteBillScenarioCommitmentModification` operation doesn't
    # have its own IAM permission. To authorize this operation for Amazon
    # Web Services principals, include the permission
    # `bcm-pricing-calculator:DeleteBillScenarioCommitmentModification` in
    # your policies.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BillScenarioCommitmentModificationAction.html
    # [2]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchCreateBillScenarioUsageModification.html
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to delete the modeled
    #   commitment.
    #
    # @option params [required, Array<String>] :ids
    #   List of commitments that you want to delete from the Bill Scenario.
    #
    # @return [Types::BatchDeleteBillScenarioCommitmentModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteBillScenarioCommitmentModificationResponse#errors #errors} => Array&lt;Types::BatchDeleteBillScenarioCommitmentModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_bill_scenario_commitment_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioCommitmentModification AWS API Documentation
    #
    # @overload batch_delete_bill_scenario_commitment_modification(params = {})
    # @param [Hash] params ({})
    def batch_delete_bill_scenario_commitment_modification(params = {}, options = {})
      req = build_request(:batch_delete_bill_scenario_commitment_modification, params)
      req.send_request(options)
    end

    # Delete usage that you have created in a Bill Scenario. You can only
    # delete usage that you had added and cannot model deletion (or removal)
    # of a existing usage. If you want model removal of an existing usage,
    # see [ BatchUpdateBillScenarioUsageModification][1].
    #
    # <note markdown="1"> The `BatchDeleteBillScenarioUsageModification` operation doesn't have
    # its own IAM permission. To authorize this operation for Amazon Web
    # Services principals, include the permission
    # `bcm-pricing-calculator:DeleteBillScenarioUsageModification` in your
    # policies.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateBillScenarioUsageModification.html
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to delete the modeled
    #   usage.
    #
    # @option params [required, Array<String>] :ids
    #   List of usage that you want to delete from the Bill Scenario.
    #
    # @return [Types::BatchDeleteBillScenarioUsageModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteBillScenarioUsageModificationResponse#errors #errors} => Array&lt;Types::BatchDeleteBillScenarioUsageModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_bill_scenario_usage_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteBillScenarioUsageModification AWS API Documentation
    #
    # @overload batch_delete_bill_scenario_usage_modification(params = {})
    # @param [Hash] params ({})
    def batch_delete_bill_scenario_usage_modification(params = {}, options = {})
      req = build_request(:batch_delete_bill_scenario_usage_modification, params)
      req.send_request(options)
    end

    # Delete usage that you have created in a Workload estimate. You can
    # only delete usage that you had added and cannot model deletion (or
    # removal) of a existing usage. If you want model removal of an existing
    # usage, see [ BatchUpdateWorkloadEstimateUsage][1].
    #
    # <note markdown="1"> The `BatchDeleteWorkloadEstimateUsage` operation doesn't have its own
    # IAM permission. To authorize this operation for Amazon Web Services
    # principals, include the permission
    # `bcm-pricing-calculator:DeleteWorkloadEstimateUsage` in your policies.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateWorkloadEstimateUsage.html
    #
    # @option params [required, String] :workload_estimate_id
    #   The ID of the Workload estimate for which you want to delete the
    #   modeled usage.
    #
    # @option params [required, Array<String>] :ids
    #   List of usage that you want to delete from the Workload estimate.
    #
    # @return [Types::BatchDeleteWorkloadEstimateUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteWorkloadEstimateUsageResponse#errors #errors} => Array&lt;Types::BatchDeleteWorkloadEstimateUsageError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_workload_estimate_usage({
    #     workload_estimate_id: "ResourceId", # required
    #     ids: ["ResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchDeleteWorkloadEstimateUsage AWS API Documentation
    #
    # @overload batch_delete_workload_estimate_usage(params = {})
    # @param [Hash] params ({})
    def batch_delete_workload_estimate_usage(params = {}, options = {})
      req = build_request(:batch_delete_workload_estimate_usage, params)
      req.send_request(options)
    end

    # Update a newly added or existing commitment. You can update the
    # commitment group based on a commitment ID and a Bill scenario ID.
    #
    # <note markdown="1"> The `BatchUpdateBillScenarioCommitmentModification` operation doesn't
    # have its own IAM permission. To authorize this operation for Amazon
    # Web Services principals, include the permission
    # `bcm-pricing-calculator:UpdateBillScenarioCommitmentModification` in
    # your policies.
    #
    #  </note>
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to modify the
    #   commitment group of a modeled commitment.
    #
    # @option params [required, Array<Types::BatchUpdateBillScenarioCommitmentModificationEntry>] :commitment_modifications
    #   List of commitments that you want to update in a Bill Scenario.
    #
    # @return [Types::BatchUpdateBillScenarioCommitmentModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateBillScenarioCommitmentModificationResponse#items #items} => Array&lt;Types::BillScenarioCommitmentModificationItem&gt;
    #   * {Types::BatchUpdateBillScenarioCommitmentModificationResponse#errors #errors} => Array&lt;Types::BatchUpdateBillScenarioCommitmentModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_bill_scenario_commitment_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     commitment_modifications: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.reserved_instances_offering_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.instance_count #=> Integer
    #   resp.items[0].commitment_action.add_savings_plan_action.savings_plan_offering_id #=> String
    #   resp.items[0].commitment_action.add_savings_plan_action.commitment #=> Float
    #   resp.items[0].commitment_action.negate_reserved_instance_action.reserved_instances_id #=> String
    #   resp.items[0].commitment_action.negate_savings_plan_action.savings_plan_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioCommitmentModification AWS API Documentation
    #
    # @overload batch_update_bill_scenario_commitment_modification(params = {})
    # @param [Hash] params ({})
    def batch_update_bill_scenario_commitment_modification(params = {}, options = {})
      req = build_request(:batch_update_bill_scenario_commitment_modification, params)
      req.send_request(options)
    end

    # Update a newly added or existing usage lines. You can update the usage
    # amounts, usage hour, and usage group based on a usage ID and a Bill
    # scenario ID.
    #
    # <note markdown="1"> The `BatchUpdateBillScenarioUsageModification` operation doesn't have
    # its own IAM permission. To authorize this operation for Amazon Web
    # Services principals, include the permission
    # `bcm-pricing-calculator:UpdateBillScenarioUsageModification` in your
    # policies.
    #
    #  </note>
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to modify the usage
    #   lines.
    #
    # @option params [required, Array<Types::BatchUpdateBillScenarioUsageModificationEntry>] :usage_modifications
    #   List of usage lines that you want to update in a Bill Scenario
    #   identified by the usage ID.
    #
    # @return [Types::BatchUpdateBillScenarioUsageModificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateBillScenarioUsageModificationResponse#items #items} => Array&lt;Types::BillScenarioUsageModificationItem&gt;
    #   * {Types::BatchUpdateBillScenarioUsageModificationResponse#errors #errors} => Array&lt;Types::BatchUpdateBillScenarioUsageModificationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_bill_scenario_usage_modification({
    #     bill_scenario_id: "ResourceId", # required
    #     usage_modifications: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup",
    #         amounts: [
    #           {
    #             start_hour: Time.now, # required
    #             amount: 1.0, # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].availability_zone #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].quantities #=> Array
    #   resp.items[0].quantities[0].start_hour #=> Time
    #   resp.items[0].quantities[0].unit #=> String
    #   resp.items[0].quantities[0].amount #=> Float
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateBillScenarioUsageModification AWS API Documentation
    #
    # @overload batch_update_bill_scenario_usage_modification(params = {})
    # @param [Hash] params ({})
    def batch_update_bill_scenario_usage_modification(params = {}, options = {})
      req = build_request(:batch_update_bill_scenario_usage_modification, params)
      req.send_request(options)
    end

    # Update a newly added or existing usage lines. You can update the usage
    # amounts and usage group based on a usage ID and a Workload estimate
    # ID.
    #
    # <note markdown="1"> The `BatchUpdateWorkloadEstimateUsage` operation doesn't have its own
    # IAM permission. To authorize this operation for Amazon Web Services
    # principals, include the permission
    # `bcm-pricing-calculator:UpdateWorkloadEstimateUsage` in your policies.
    #
    #  </note>
    #
    # @option params [required, String] :workload_estimate_id
    #   The ID of the Workload estimate for which you want to modify the usage
    #   lines.
    #
    # @option params [required, Array<Types::BatchUpdateWorkloadEstimateUsageEntry>] :usage
    #   List of usage line amounts and usage group that you want to update in
    #   a Workload estimate identified by the usage ID.
    #
    # @return [Types::BatchUpdateWorkloadEstimateUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateWorkloadEstimateUsageResponse#items #items} => Array&lt;Types::WorkloadEstimateUsageItem&gt;
    #   * {Types::BatchUpdateWorkloadEstimateUsageResponse#errors #errors} => Array&lt;Types::BatchUpdateWorkloadEstimateUsageError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_workload_estimate_usage({
    #     workload_estimate_id: "ResourceId", # required
    #     usage: [ # required
    #       {
    #         id: "ResourceId", # required
    #         group: "UsageGroup",
    #         amount: 1.0,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].quantity.unit #=> String
    #   resp.items[0].quantity.amount #=> Float
    #   resp.items[0].cost #=> Float
    #   resp.items[0].currency #=> String, one of "USD"
    #   resp.items[0].status #=> String, one of "VALID", "INVALID", "STALE"
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].error_code #=> String, one of "BAD_REQUEST", "NOT_FOUND", "CONFLICT", "INTERNAL_SERVER_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/BatchUpdateWorkloadEstimateUsage AWS API Documentation
    #
    # @overload batch_update_workload_estimate_usage(params = {})
    # @param [Hash] params ({})
    def batch_update_workload_estimate_usage(params = {}, options = {})
      req = build_request(:batch_update_workload_estimate_usage, params)
      req.send_request(options)
    end

    # Create a Bill estimate from a Bill scenario. In the Bill scenario you
    # can model usage addition, usage changes, and usage removal. You can
    # also model commitment addition and commitment removal. After all
    # changes in a Bill scenario is made satisfactorily, you can call this
    # API with a Bill scenario ID to generate the Bill estimate. Bill
    # estimate calculates the pre-tax cost for your consolidated billing
    # family, incorporating all modeled usage and commitments alongside
    # existing usage and commitments from your most recent completed
    # anniversary bill, with any applicable discounts applied.
    #
    # @option params [required, String] :bill_scenario_id
    #   The ID of the Bill Scenario for which you want to create a Bill
    #   estimate.
    #
    # @option params [required, String] :name
    #   The name of the Bill estimate that will be created. Names must be
    #   unique for an account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   An optional list of tags to associate with the specified BillEstimate.
    #   You can use resource tags to control access to your BillEstimate using
    #   IAM policies. Each tag consists of a key and a value, and each key
    #   must be unique for the resource. The following restrictions apply to
    #   resource tags:
    #
    #   * Although the maximum number of array members is 200, you can assign
    #     a maximum of 50 user-tags to one resource. The remaining are
    #     reserved for Amazon Web Services.
    #
    #   * The maximum length of a key is 128 characters.
    #
    #   * The maximum length of a value is 256 characters.
    #
    #   * Keys and values can only contain alphanumeric characters, spaces,
    #     and any of the following: `_.:/=+@-`.
    #
    #   * Keys and values are case sensitive.
    #
    #   * Keys and values are trimmed for any leading or trailing whitespaces.
    #
    #   * Don't use `aws:` as a prefix for your keys. This prefix is reserved
    #     for Amazon Web Services.
    #
    # @return [Types::CreateBillEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillEstimateResponse#id #id} => String
    #   * {Types::CreateBillEstimateResponse#name #name} => String
    #   * {Types::CreateBillEstimateResponse#status #status} => String
    #   * {Types::CreateBillEstimateResponse#failure_message #failure_message} => String
    #   * {Types::CreateBillEstimateResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::CreateBillEstimateResponse#cost_summary #cost_summary} => Types::BillEstimateCostSummary
    #   * {Types::CreateBillEstimateResponse#created_at #created_at} => Time
    #   * {Types::CreateBillEstimateResponse#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bill_estimate({
    #     bill_scenario_id: "ResourceId", # required
    #     name: "BillEstimateName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.failure_message #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.cost_summary.total_cost_difference.historical_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.total_cost_difference.estimated_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.estimated_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences #=> Hash
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.currency #=> String, one of "USD"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillEstimate AWS API Documentation
    #
    # @overload create_bill_estimate(params = {})
    # @param [Hash] params ({})
    def create_bill_estimate(params = {}, options = {})
      req = build_request(:create_bill_estimate, params)
      req.send_request(options)
    end

    # Creates a new bill scenario to model potential changes to Amazon Web
    # Services usage and costs.
    #
    # @option params [required, String] :name
    #   A descriptive name for the bill scenario.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the bill scenario.
    #
    # @return [Types::CreateBillScenarioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillScenarioResponse#id #id} => String
    #   * {Types::CreateBillScenarioResponse#name #name} => String
    #   * {Types::CreateBillScenarioResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::CreateBillScenarioResponse#status #status} => String
    #   * {Types::CreateBillScenarioResponse#created_at #created_at} => Time
    #   * {Types::CreateBillScenarioResponse#expires_at #expires_at} => Time
    #   * {Types::CreateBillScenarioResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bill_scenario({
    #     name: "BillScenarioName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.status #=> String, one of "READY", "LOCKED", "FAILED", "STALE"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateBillScenario AWS API Documentation
    #
    # @overload create_bill_scenario(params = {})
    # @param [Hash] params ({})
    def create_bill_scenario(params = {}, options = {})
      req = build_request(:create_bill_scenario, params)
      req.send_request(options)
    end

    # Creates a new workload estimate to model costs for a specific
    # workload.
    #
    # @option params [required, String] :name
    #   A descriptive name for the workload estimate.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :rate_type
    #   The type of pricing rates to use for the estimate.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the workload estimate.
    #
    # @return [Types::CreateWorkloadEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkloadEstimateResponse#id #id} => String
    #   * {Types::CreateWorkloadEstimateResponse#name #name} => String
    #   * {Types::CreateWorkloadEstimateResponse#created_at #created_at} => Time
    #   * {Types::CreateWorkloadEstimateResponse#expires_at #expires_at} => Time
    #   * {Types::CreateWorkloadEstimateResponse#rate_type #rate_type} => String
    #   * {Types::CreateWorkloadEstimateResponse#rate_timestamp #rate_timestamp} => Time
    #   * {Types::CreateWorkloadEstimateResponse#status #status} => String
    #   * {Types::CreateWorkloadEstimateResponse#total_cost #total_cost} => Float
    #   * {Types::CreateWorkloadEstimateResponse#cost_currency #cost_currency} => String
    #   * {Types::CreateWorkloadEstimateResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload_estimate({
    #     name: "WorkloadEstimateName", # required
    #     client_token: "ClientToken",
    #     rate_type: "BEFORE_DISCOUNTS", # accepts BEFORE_DISCOUNTS, AFTER_DISCOUNTS, AFTER_DISCOUNTS_AND_COMMITMENTS
    #     tags: {
    #       "ResourceTagKey" => "ResourceTagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.rate_type #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.rate_timestamp #=> Time
    #   resp.status #=> String, one of "UPDATING", "VALID", "INVALID", "ACTION_NEEDED"
    #   resp.total_cost #=> Float
    #   resp.cost_currency #=> String, one of "USD"
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/CreateWorkloadEstimate AWS API Documentation
    #
    # @overload create_workload_estimate(params = {})
    # @param [Hash] params ({})
    def create_workload_estimate(params = {}, options = {})
      req = build_request(:create_workload_estimate, params)
      req.send_request(options)
    end

    # Deletes an existing bill estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill estimate to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bill_estimate({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillEstimate AWS API Documentation
    #
    # @overload delete_bill_estimate(params = {})
    # @param [Hash] params ({})
    def delete_bill_estimate(params = {}, options = {})
      req = build_request(:delete_bill_estimate, params)
      req.send_request(options)
    end

    # Deletes an existing bill scenario.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill scenario to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bill_scenario({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteBillScenario AWS API Documentation
    #
    # @overload delete_bill_scenario(params = {})
    # @param [Hash] params ({})
    def delete_bill_scenario(params = {}, options = {})
      req = build_request(:delete_bill_scenario, params)
      req.send_request(options)
    end

    # Deletes an existing workload estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the workload estimate to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload_estimate({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/DeleteWorkloadEstimate AWS API Documentation
    #
    # @overload delete_workload_estimate(params = {})
    # @param [Hash] params ({})
    def delete_workload_estimate(params = {}, options = {})
      req = build_request(:delete_workload_estimate, params)
      req.send_request(options)
    end

    # Retrieves details of a specific bill estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill estimate to retrieve.
    #
    # @return [Types::GetBillEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBillEstimateResponse#id #id} => String
    #   * {Types::GetBillEstimateResponse#name #name} => String
    #   * {Types::GetBillEstimateResponse#status #status} => String
    #   * {Types::GetBillEstimateResponse#failure_message #failure_message} => String
    #   * {Types::GetBillEstimateResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::GetBillEstimateResponse#cost_summary #cost_summary} => Types::BillEstimateCostSummary
    #   * {Types::GetBillEstimateResponse#created_at #created_at} => Time
    #   * {Types::GetBillEstimateResponse#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bill_estimate({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.failure_message #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.cost_summary.total_cost_difference.historical_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.total_cost_difference.estimated_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.estimated_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences #=> Hash
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.currency #=> String, one of "USD"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillEstimate AWS API Documentation
    #
    # @overload get_bill_estimate(params = {})
    # @param [Hash] params ({})
    def get_bill_estimate(params = {}, options = {})
      req = build_request(:get_bill_estimate, params)
      req.send_request(options)
    end

    # Retrieves details of a specific bill scenario.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill scenario to retrieve.
    #
    # @return [Types::GetBillScenarioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBillScenarioResponse#id #id} => String
    #   * {Types::GetBillScenarioResponse#name #name} => String
    #   * {Types::GetBillScenarioResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::GetBillScenarioResponse#status #status} => String
    #   * {Types::GetBillScenarioResponse#created_at #created_at} => Time
    #   * {Types::GetBillScenarioResponse#expires_at #expires_at} => Time
    #   * {Types::GetBillScenarioResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bill_scenario({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.status #=> String, one of "READY", "LOCKED", "FAILED", "STALE"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetBillScenario AWS API Documentation
    #
    # @overload get_bill_scenario(params = {})
    # @param [Hash] params ({})
    def get_bill_scenario(params = {}, options = {})
      req = build_request(:get_bill_scenario, params)
      req.send_request(options)
    end

    # Retrieves the current preferences for Pricing Calculator.
    #
    # @return [Types::GetPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPreferencesResponse#management_account_rate_type_selections #management_account_rate_type_selections} => Array&lt;String&gt;
    #   * {Types::GetPreferencesResponse#member_account_rate_type_selections #member_account_rate_type_selections} => Array&lt;String&gt;
    #   * {Types::GetPreferencesResponse#standalone_account_rate_type_selections #standalone_account_rate_type_selections} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.management_account_rate_type_selections #=> Array
    #   resp.management_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.member_account_rate_type_selections #=> Array
    #   resp.member_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.standalone_account_rate_type_selections #=> Array
    #   resp.standalone_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetPreferences AWS API Documentation
    #
    # @overload get_preferences(params = {})
    # @param [Hash] params ({})
    def get_preferences(params = {}, options = {})
      req = build_request(:get_preferences, params)
      req.send_request(options)
    end

    # Retrieves details of a specific workload estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the workload estimate to retrieve.
    #
    # @return [Types::GetWorkloadEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadEstimateResponse#id #id} => String
    #   * {Types::GetWorkloadEstimateResponse#name #name} => String
    #   * {Types::GetWorkloadEstimateResponse#created_at #created_at} => Time
    #   * {Types::GetWorkloadEstimateResponse#expires_at #expires_at} => Time
    #   * {Types::GetWorkloadEstimateResponse#rate_type #rate_type} => String
    #   * {Types::GetWorkloadEstimateResponse#rate_timestamp #rate_timestamp} => Time
    #   * {Types::GetWorkloadEstimateResponse#status #status} => String
    #   * {Types::GetWorkloadEstimateResponse#total_cost #total_cost} => Float
    #   * {Types::GetWorkloadEstimateResponse#cost_currency #cost_currency} => String
    #   * {Types::GetWorkloadEstimateResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload_estimate({
    #     identifier: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.rate_type #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.rate_timestamp #=> Time
    #   resp.status #=> String, one of "UPDATING", "VALID", "INVALID", "ACTION_NEEDED"
    #   resp.total_cost #=> Float
    #   resp.cost_currency #=> String, one of "USD"
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/GetWorkloadEstimate AWS API Documentation
    #
    # @overload get_workload_estimate(params = {})
    # @param [Hash] params ({})
    def get_workload_estimate(params = {}, options = {})
      req = build_request(:get_workload_estimate, params)
      req.send_request(options)
    end

    # Lists the commitments associated with a bill estimate.
    #
    # @option params [required, String] :bill_estimate_id
    #   The unique identifier of the bill estimate to list commitments for.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillEstimateCommitmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillEstimateCommitmentsResponse#items #items} => Array&lt;Types::BillEstimateCommitmentSummary&gt;
    #   * {Types::ListBillEstimateCommitmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_estimate_commitments({
    #     bill_estimate_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].purchase_agreement_type #=> String, one of "SAVINGS_PLANS", "RESERVED_INSTANCE"
    #   resp.items[0].offering_id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].term_length #=> String
    #   resp.items[0].payment_option #=> String
    #   resp.items[0].upfront_payment.amount #=> Float
    #   resp.items[0].upfront_payment.currency #=> String, one of "USD"
    #   resp.items[0].monthly_payment.amount #=> Float
    #   resp.items[0].monthly_payment.currency #=> String, one of "USD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateCommitments AWS API Documentation
    #
    # @overload list_bill_estimate_commitments(params = {})
    # @param [Hash] params ({})
    def list_bill_estimate_commitments(params = {}, options = {})
      req = build_request(:list_bill_estimate_commitments, params)
      req.send_request(options)
    end

    # Lists the input commitment modifications associated with a bill
    # estimate.
    #
    # @option params [required, String] :bill_estimate_id
    #   The unique identifier of the bill estimate to list input commitment
    #   modifications for.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillEstimateInputCommitmentModificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillEstimateInputCommitmentModificationsResponse#items #items} => Array&lt;Types::BillEstimateInputCommitmentModificationSummary&gt;
    #   * {Types::ListBillEstimateInputCommitmentModificationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_estimate_input_commitment_modifications({
    #     bill_estimate_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.reserved_instances_offering_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.instance_count #=> Integer
    #   resp.items[0].commitment_action.add_savings_plan_action.savings_plan_offering_id #=> String
    #   resp.items[0].commitment_action.add_savings_plan_action.commitment #=> Float
    #   resp.items[0].commitment_action.negate_reserved_instance_action.reserved_instances_id #=> String
    #   resp.items[0].commitment_action.negate_savings_plan_action.savings_plan_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputCommitmentModifications AWS API Documentation
    #
    # @overload list_bill_estimate_input_commitment_modifications(params = {})
    # @param [Hash] params ({})
    def list_bill_estimate_input_commitment_modifications(params = {}, options = {})
      req = build_request(:list_bill_estimate_input_commitment_modifications, params)
      req.send_request(options)
    end

    # Lists the input usage modifications associated with a bill estimate.
    #
    # @option params [required, String] :bill_estimate_id
    #   The unique identifier of the bill estimate to list input usage
    #   modifications for.
    #
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   Filters to apply to the list of input usage modifications.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillEstimateInputUsageModificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillEstimateInputUsageModificationsResponse#items #items} => Array&lt;Types::BillEstimateInputUsageModificationSummary&gt;
    #   * {Types::ListBillEstimateInputUsageModificationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_estimate_input_usage_modifications({
    #     bill_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID", # required, accepts USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, USAGE_GROUP, HISTORICAL_USAGE_ACCOUNT_ID, HISTORICAL_SERVICE_CODE, HISTORICAL_USAGE_TYPE, HISTORICAL_OPERATION, HISTORICAL_LOCATION
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].availability_zone #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].quantities #=> Array
    #   resp.items[0].quantities[0].start_hour #=> Time
    #   resp.items[0].quantities[0].unit #=> String
    #   resp.items[0].quantities[0].amount #=> Float
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateInputUsageModifications AWS API Documentation
    #
    # @overload list_bill_estimate_input_usage_modifications(params = {})
    # @param [Hash] params ({})
    def list_bill_estimate_input_usage_modifications(params = {}, options = {})
      req = build_request(:list_bill_estimate_input_usage_modifications, params)
      req.send_request(options)
    end

    # Lists the line items associated with a bill estimate.
    #
    # @option params [required, String] :bill_estimate_id
    #   The unique identifier of the bill estimate to list line items for.
    #
    # @option params [Array<Types::ListBillEstimateLineItemsFilter>] :filters
    #   Filters to apply to the list of line items.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillEstimateLineItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillEstimateLineItemsResponse#items #items} => Array&lt;Types::BillEstimateLineItemSummary&gt;
    #   * {Types::ListBillEstimateLineItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_estimate_line_items({
    #     bill_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID", # required, accepts USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, LINE_ITEM_TYPE
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].availability_zone #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].line_item_id #=> String
    #   resp.items[0].line_item_type #=> String
    #   resp.items[0].payer_account_id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].estimated_usage_quantity.amount #=> Float
    #   resp.items[0].estimated_usage_quantity.unit #=> String
    #   resp.items[0].estimated_cost.amount #=> Float
    #   resp.items[0].estimated_cost.currency #=> String, one of "USD"
    #   resp.items[0].historical_usage_quantity.amount #=> Float
    #   resp.items[0].historical_usage_quantity.unit #=> String
    #   resp.items[0].historical_cost.amount #=> Float
    #   resp.items[0].historical_cost.currency #=> String, one of "USD"
    #   resp.items[0].savings_plan_arns #=> Array
    #   resp.items[0].savings_plan_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimateLineItems AWS API Documentation
    #
    # @overload list_bill_estimate_line_items(params = {})
    # @param [Hash] params ({})
    def list_bill_estimate_line_items(params = {}, options = {})
      req = build_request(:list_bill_estimate_line_items, params)
      req.send_request(options)
    end

    # Lists all bill estimates for the account.
    #
    # @option params [Array<Types::ListBillEstimatesFilter>] :filters
    #   Filters to apply to the list of bill estimates.
    #
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   Filter bill estimates based on the creation date.
    #
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   Filter bill estimates based on the expiration date.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillEstimatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillEstimatesResponse#items #items} => Array&lt;Types::BillEstimateSummary&gt;
    #   * {Types::ListBillEstimatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_estimates({
    #     filters: [
    #       {
    #         name: "STATUS", # required, accepts STATUS, NAME
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.items[0].bill_interval.start #=> Time
    #   resp.items[0].bill_interval.end #=> Time
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].expires_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillEstimates AWS API Documentation
    #
    # @overload list_bill_estimates(params = {})
    # @param [Hash] params ({})
    def list_bill_estimates(params = {}, options = {})
      req = build_request(:list_bill_estimates, params)
      req.send_request(options)
    end

    # Lists the commitment modifications associated with a bill scenario.
    #
    # @option params [required, String] :bill_scenario_id
    #   The unique identifier of the bill scenario to list commitment
    #   modifications for.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillScenarioCommitmentModificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillScenarioCommitmentModificationsResponse#items #items} => Array&lt;Types::BillScenarioCommitmentModificationItem&gt;
    #   * {Types::ListBillScenarioCommitmentModificationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_scenario_commitment_modifications({
    #     bill_scenario_id: "ResourceId", # required
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.reserved_instances_offering_id #=> String
    #   resp.items[0].commitment_action.add_reserved_instance_action.instance_count #=> Integer
    #   resp.items[0].commitment_action.add_savings_plan_action.savings_plan_offering_id #=> String
    #   resp.items[0].commitment_action.add_savings_plan_action.commitment #=> Float
    #   resp.items[0].commitment_action.negate_reserved_instance_action.reserved_instances_id #=> String
    #   resp.items[0].commitment_action.negate_savings_plan_action.savings_plan_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioCommitmentModifications AWS API Documentation
    #
    # @overload list_bill_scenario_commitment_modifications(params = {})
    # @param [Hash] params ({})
    def list_bill_scenario_commitment_modifications(params = {}, options = {})
      req = build_request(:list_bill_scenario_commitment_modifications, params)
      req.send_request(options)
    end

    # Lists the usage modifications associated with a bill scenario.
    #
    # @option params [required, String] :bill_scenario_id
    #   The unique identifier of the bill scenario to list usage modifications
    #   for.
    #
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   Filters to apply to the list of usage modifications.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillScenarioUsageModificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillScenarioUsageModificationsResponse#items #items} => Array&lt;Types::BillScenarioUsageModificationItem&gt;
    #   * {Types::ListBillScenarioUsageModificationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_scenario_usage_modifications({
    #     bill_scenario_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID", # required, accepts USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, USAGE_GROUP, HISTORICAL_USAGE_ACCOUNT_ID, HISTORICAL_SERVICE_CODE, HISTORICAL_USAGE_TYPE, HISTORICAL_OPERATION, HISTORICAL_LOCATION
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].availability_zone #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].quantities #=> Array
    #   resp.items[0].quantities[0].start_hour #=> Time
    #   resp.items[0].quantities[0].unit #=> String
    #   resp.items[0].quantities[0].amount #=> Float
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarioUsageModifications AWS API Documentation
    #
    # @overload list_bill_scenario_usage_modifications(params = {})
    # @param [Hash] params ({})
    def list_bill_scenario_usage_modifications(params = {}, options = {})
      req = build_request(:list_bill_scenario_usage_modifications, params)
      req.send_request(options)
    end

    # Lists all bill scenarios for the account.
    #
    # @option params [Array<Types::ListBillScenariosFilter>] :filters
    #   Filters to apply to the list of bill scenarios.
    #
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   Filter bill scenarios based on the creation date.
    #
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   Filter bill scenarios based on the expiration date.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListBillScenariosResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillScenariosResponse#items #items} => Array&lt;Types::BillScenarioSummary&gt;
    #   * {Types::ListBillScenariosResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bill_scenarios({
    #     filters: [
    #       {
    #         name: "STATUS", # required, accepts STATUS, NAME
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].bill_interval.start #=> Time
    #   resp.items[0].bill_interval.end #=> Time
    #   resp.items[0].status #=> String, one of "READY", "LOCKED", "FAILED", "STALE"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].expires_at #=> Time
    #   resp.items[0].failure_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListBillScenarios AWS API Documentation
    #
    # @overload list_bill_scenarios(params = {})
    # @param [Hash] params ({})
    def list_bill_scenarios(params = {}, options = {})
      req = build_request(:list_bill_scenarios, params)
      req.send_request(options)
    end

    # Lists all tags associated with a specified resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["ResourceTagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the usage associated with a workload estimate.
    #
    # @option params [required, String] :workload_estimate_id
    #   The unique identifier of the workload estimate to list usage for.
    #
    # @option params [Array<Types::ListUsageFilter>] :filters
    #   Filters to apply to the list of usage items.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListWorkloadEstimateUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadEstimateUsageResponse#items #items} => Array&lt;Types::WorkloadEstimateUsageItem&gt;
    #   * {Types::ListWorkloadEstimateUsageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workload_estimate_usage({
    #     workload_estimate_id: "ResourceId", # required
    #     filters: [
    #       {
    #         name: "USAGE_ACCOUNT_ID", # required, accepts USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, USAGE_GROUP, HISTORICAL_USAGE_ACCOUNT_ID, HISTORICAL_SERVICE_CODE, HISTORICAL_USAGE_TYPE, HISTORICAL_OPERATION, HISTORICAL_LOCATION
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].service_code #=> String
    #   resp.items[0].usage_type #=> String
    #   resp.items[0].operation #=> String
    #   resp.items[0].location #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].usage_account_id #=> String
    #   resp.items[0].group #=> String
    #   resp.items[0].quantity.unit #=> String
    #   resp.items[0].quantity.amount #=> Float
    #   resp.items[0].cost #=> Float
    #   resp.items[0].currency #=> String, one of "USD"
    #   resp.items[0].status #=> String, one of "VALID", "INVALID", "STALE"
    #   resp.items[0].historical_usage.service_code #=> String
    #   resp.items[0].historical_usage.usage_type #=> String
    #   resp.items[0].historical_usage.operation #=> String
    #   resp.items[0].historical_usage.location #=> String
    #   resp.items[0].historical_usage.usage_account_id #=> String
    #   resp.items[0].historical_usage.bill_interval.start #=> Time
    #   resp.items[0].historical_usage.bill_interval.end #=> Time
    #   resp.items[0].historical_usage.filter_expression.and #=> Array
    #   resp.items[0].historical_usage.filter_expression.and[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.or #=> Array
    #   resp.items[0].historical_usage.filter_expression.or[0] #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.not #=> Types::Expression
    #   resp.items[0].historical_usage.filter_expression.cost_categories.key #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.cost_categories.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.key #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.dimensions.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.dimensions.values[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.key #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.match_options #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.match_options[0] #=> String
    #   resp.items[0].historical_usage.filter_expression.tags.values #=> Array
    #   resp.items[0].historical_usage.filter_expression.tags.values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimateUsage AWS API Documentation
    #
    # @overload list_workload_estimate_usage(params = {})
    # @param [Hash] params ({})
    def list_workload_estimate_usage(params = {}, options = {})
      req = build_request(:list_workload_estimate_usage, params)
      req.send_request(options)
    end

    # Lists all workload estimates for the account.
    #
    # @option params [Types::FilterTimestamp] :created_at_filter
    #   Filter workload estimates based on the creation date.
    #
    # @option params [Types::FilterTimestamp] :expires_at_filter
    #   Filter workload estimates based on the expiration date.
    #
    # @option params [Array<Types::ListWorkloadEstimatesFilter>] :filters
    #   Filters to apply to the list of workload estimates.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListWorkloadEstimatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadEstimatesResponse#items #items} => Array&lt;Types::WorkloadEstimateSummary&gt;
    #   * {Types::ListWorkloadEstimatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workload_estimates({
    #     created_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     expires_at_filter: {
    #       after_timestamp: Time.now,
    #       before_timestamp: Time.now,
    #     },
    #     filters: [
    #       {
    #         name: "STATUS", # required, accepts STATUS, NAME
    #         values: ["String"], # required
    #         match_option: "EQUALS", # accepts EQUALS, STARTS_WITH, CONTAINS
    #       },
    #     ],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].expires_at #=> Time
    #   resp.items[0].rate_type #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.items[0].rate_timestamp #=> Time
    #   resp.items[0].status #=> String, one of "UPDATING", "VALID", "INVALID", "ACTION_NEEDED"
    #   resp.items[0].total_cost #=> Float
    #   resp.items[0].cost_currency #=> String, one of "USD"
    #   resp.items[0].failure_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/ListWorkloadEstimates AWS API Documentation
    #
    # @overload list_workload_estimates(params = {})
    # @param [Hash] params ({})
    def list_workload_estimates(params = {}, options = {})
      req = build_request(:list_workload_estimates, params)
      req.send_request(options)
    end

    # Adds one or more tags to a specified resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: { # required
    #       "ResourceTagKey" => "ResourceTagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a specified resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["ResourceTagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing bill estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill estimate to update.
    #
    # @option params [String] :name
    #   The new name for the bill estimate.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expires_at
    #   The new expiration date for the bill estimate.
    #
    # @return [Types::UpdateBillEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBillEstimateResponse#id #id} => String
    #   * {Types::UpdateBillEstimateResponse#name #name} => String
    #   * {Types::UpdateBillEstimateResponse#status #status} => String
    #   * {Types::UpdateBillEstimateResponse#failure_message #failure_message} => String
    #   * {Types::UpdateBillEstimateResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::UpdateBillEstimateResponse#cost_summary #cost_summary} => Types::BillEstimateCostSummary
    #   * {Types::UpdateBillEstimateResponse#created_at #created_at} => Time
    #   * {Types::UpdateBillEstimateResponse#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bill_estimate({
    #     identifier: "ResourceId", # required
    #     name: "BillEstimateName",
    #     expires_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.failure_message #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.cost_summary.total_cost_difference.historical_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.total_cost_difference.estimated_cost.amount #=> Float
    #   resp.cost_summary.total_cost_difference.estimated_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences #=> Hash
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].historical_cost.currency #=> String, one of "USD"
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.amount #=> Float
    #   resp.cost_summary.service_cost_differences["String"].estimated_cost.currency #=> String, one of "USD"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillEstimate AWS API Documentation
    #
    # @overload update_bill_estimate(params = {})
    # @param [Hash] params ({})
    def update_bill_estimate(params = {}, options = {})
      req = build_request(:update_bill_estimate, params)
      req.send_request(options)
    end

    # Updates an existing bill scenario.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the bill scenario to update.
    #
    # @option params [String] :name
    #   The new name for the bill scenario.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expires_at
    #   The new expiration date for the bill scenario.
    #
    # @return [Types::UpdateBillScenarioResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBillScenarioResponse#id #id} => String
    #   * {Types::UpdateBillScenarioResponse#name #name} => String
    #   * {Types::UpdateBillScenarioResponse#bill_interval #bill_interval} => Types::BillInterval
    #   * {Types::UpdateBillScenarioResponse#status #status} => String
    #   * {Types::UpdateBillScenarioResponse#created_at #created_at} => Time
    #   * {Types::UpdateBillScenarioResponse#expires_at #expires_at} => Time
    #   * {Types::UpdateBillScenarioResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bill_scenario({
    #     identifier: "ResourceId", # required
    #     name: "BillScenarioName",
    #     expires_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.bill_interval.start #=> Time
    #   resp.bill_interval.end #=> Time
    #   resp.status #=> String, one of "READY", "LOCKED", "FAILED", "STALE"
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateBillScenario AWS API Documentation
    #
    # @overload update_bill_scenario(params = {})
    # @param [Hash] params ({})
    def update_bill_scenario(params = {}, options = {})
      req = build_request(:update_bill_scenario, params)
      req.send_request(options)
    end

    # Updates the preferences for Pricing Calculator.
    #
    # @option params [Array<String>] :management_account_rate_type_selections
    #   The updated preferred rate types for the management account.
    #
    # @option params [Array<String>] :member_account_rate_type_selections
    #   The updated preferred rate types for member accounts.
    #
    # @option params [Array<String>] :standalone_account_rate_type_selections
    #   The updated preferred rate types for a standalone account.
    #
    # @return [Types::UpdatePreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePreferencesResponse#management_account_rate_type_selections #management_account_rate_type_selections} => Array&lt;String&gt;
    #   * {Types::UpdatePreferencesResponse#member_account_rate_type_selections #member_account_rate_type_selections} => Array&lt;String&gt;
    #   * {Types::UpdatePreferencesResponse#standalone_account_rate_type_selections #standalone_account_rate_type_selections} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_preferences({
    #     management_account_rate_type_selections: ["BEFORE_DISCOUNTS"], # accepts BEFORE_DISCOUNTS, AFTER_DISCOUNTS, AFTER_DISCOUNTS_AND_COMMITMENTS
    #     member_account_rate_type_selections: ["BEFORE_DISCOUNTS"], # accepts BEFORE_DISCOUNTS, AFTER_DISCOUNTS, AFTER_DISCOUNTS_AND_COMMITMENTS
    #     standalone_account_rate_type_selections: ["BEFORE_DISCOUNTS"], # accepts BEFORE_DISCOUNTS, AFTER_DISCOUNTS, AFTER_DISCOUNTS_AND_COMMITMENTS
    #   })
    #
    # @example Response structure
    #
    #   resp.management_account_rate_type_selections #=> Array
    #   resp.management_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.member_account_rate_type_selections #=> Array
    #   resp.member_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.standalone_account_rate_type_selections #=> Array
    #   resp.standalone_account_rate_type_selections[0] #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdatePreferences AWS API Documentation
    #
    # @overload update_preferences(params = {})
    # @param [Hash] params ({})
    def update_preferences(params = {}, options = {})
      req = build_request(:update_preferences, params)
      req.send_request(options)
    end

    # Updates an existing workload estimate.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the workload estimate to update.
    #
    # @option params [String] :name
    #   The new name for the workload estimate.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expires_at
    #   The new expiration date for the workload estimate.
    #
    # @return [Types::UpdateWorkloadEstimateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkloadEstimateResponse#id #id} => String
    #   * {Types::UpdateWorkloadEstimateResponse#name #name} => String
    #   * {Types::UpdateWorkloadEstimateResponse#created_at #created_at} => Time
    #   * {Types::UpdateWorkloadEstimateResponse#expires_at #expires_at} => Time
    #   * {Types::UpdateWorkloadEstimateResponse#rate_type #rate_type} => String
    #   * {Types::UpdateWorkloadEstimateResponse#rate_timestamp #rate_timestamp} => Time
    #   * {Types::UpdateWorkloadEstimateResponse#status #status} => String
    #   * {Types::UpdateWorkloadEstimateResponse#total_cost #total_cost} => Float
    #   * {Types::UpdateWorkloadEstimateResponse#cost_currency #cost_currency} => String
    #   * {Types::UpdateWorkloadEstimateResponse#failure_message #failure_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload_estimate({
    #     identifier: "ResourceId", # required
    #     name: "WorkloadEstimateName",
    #     expires_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.expires_at #=> Time
    #   resp.rate_type #=> String, one of "BEFORE_DISCOUNTS", "AFTER_DISCOUNTS", "AFTER_DISCOUNTS_AND_COMMITMENTS"
    #   resp.rate_timestamp #=> Time
    #   resp.status #=> String, one of "UPDATING", "VALID", "INVALID", "ACTION_NEEDED"
    #   resp.total_cost #=> Float
    #   resp.cost_currency #=> String, one of "USD"
    #   resp.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19/UpdateWorkloadEstimate AWS API Documentation
    #
    # @overload update_workload_estimate(params = {})
    # @param [Hash] params ({})
    def update_workload_estimate(params = {}, options = {})
      req = build_request(:update_workload_estimate, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BCMPricingCalculator')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bcmpricingcalculator'
      context[:gem_version] = '1.15.0'
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
