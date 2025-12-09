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

module Aws::PartnerCentralBenefits
  # An API client for PartnerCentralBenefits.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralBenefits::Client.new(
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

    @identifier = :partnercentralbenefits

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
    add_plugin(Aws::PartnerCentralBenefits::Plugins::Endpoints)

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
    #   @option options [Aws::PartnerCentralBenefits::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralBenefits::EndpointParameters`.
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

    # Modifies an existing benefit application by applying amendments to
    # specific fields while maintaining revision control.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the amendment request.
    #
    # @option params [required, String] :revision
    #   The current revision number of the benefit application to ensure
    #   optimistic concurrency control.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to be amended.
    #
    # @option params [required, String] :amendment_reason
    #   A descriptive reason explaining why the benefit application is being
    #   amended.
    #
    # @option params [required, Array<Types::Amendment>] :amendments
    #   A list of specific field amendments to apply to the benefit
    #   application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.amend_benefit_application({
    #     catalog: "CatalogName", # required
    #     client_token: "AmendBenefitApplicationInputClientTokenString", # required
    #     revision: "String", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #     amendment_reason: "AmendBenefitApplicationInputAmendmentReasonString", # required
    #     amendments: [ # required
    #       {
    #         field_path: "String", # required
    #         new_value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AmendBenefitApplication AWS API Documentation
    #
    # @overload amend_benefit_application(params = {})
    # @param [Hash] params ({})
    def amend_benefit_application(params = {}, options = {})
      req = build_request(:amend_benefit_application, params)
      req.send_request(options)
    end

    # Links an AWS resource to an existing benefit application for tracking
    # and management purposes.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :benefit_application_identifier
    #   The unique identifier of the benefit application to associate the
    #   resource with.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS resource to associate with
    #   the benefit application.
    #
    # @return [Types::AssociateBenefitApplicationResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateBenefitApplicationResourceOutput#id #id} => String
    #   * {Types::AssociateBenefitApplicationResourceOutput#arn #arn} => String
    #   * {Types::AssociateBenefitApplicationResourceOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_benefit_application_resource({
    #     catalog: "CatalogName", # required
    #     benefit_application_identifier: "BenefitApplicationIdentifier", # required
    #     resource_arn: "AssociateBenefitApplicationResourceInputResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AssociateBenefitApplicationResource AWS API Documentation
    #
    # @overload associate_benefit_application_resource(params = {})
    # @param [Hash] params ({})
    def associate_benefit_application_resource(params = {}, options = {})
      req = build_request(:associate_benefit_application_resource, params)
      req.send_request(options)
    end

    # Cancels a benefit application that is currently in progress,
    # preventing further processing.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the cancellation request.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to cancel.
    #
    # @option params [String] :reason
    #   A descriptive reason explaining why the benefit application is being
    #   cancelled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_benefit_application({
    #     catalog: "CatalogName", # required
    #     client_token: "CancelBenefitApplicationInputClientTokenString", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #     reason: "CancelBenefitApplicationInputReasonString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CancelBenefitApplication AWS API Documentation
    #
    # @overload cancel_benefit_application(params = {})
    # @param [Hash] params ({})
    def cancel_benefit_application(params = {}, options = {})
      req = build_request(:cancel_benefit_application, params)
      req.send_request(options)
    end

    # Creates a new benefit application for a partner to request access to
    # AWS benefits and programs.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog to create
    #   the application in.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the creation request.
    #
    # @option params [String] :name
    #   A human-readable name for the benefit application.
    #
    # @option params [String] :description
    #   A detailed description of the benefit application and its intended
    #   use.
    #
    # @option params [required, String] :benefit_identifier
    #   The unique identifier of the benefit being requested in this
    #   application.
    #
    # @option params [Array<String>] :fulfillment_types
    #   The types of fulfillment requested for this benefit application (e.g.,
    #   credits, access, disbursement).
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :benefit_application_details
    #   Detailed information and requirements specific to the benefit being
    #   requested.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to categorize and organize the benefit application.
    #
    # @option params [Array<String>] :associated_resources
    #   AWS resources that are associated with this benefit application.
    #
    # @option params [Array<Types::Contact>] :partner_contacts
    #   Contact information for partner representatives responsible for this
    #   benefit application.
    #
    # @option params [Array<Types::FileInput>] :file_details
    #   Supporting documents and files attached to the benefit application.
    #
    # @return [Types::CreateBenefitApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBenefitApplicationOutput#id #id} => String
    #   * {Types::CreateBenefitApplicationOutput#arn #arn} => String
    #   * {Types::CreateBenefitApplicationOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_benefit_application({
    #     catalog: "CatalogName", # required
    #     client_token: "CreateBenefitApplicationInputClientTokenString", # required
    #     name: "BenefitApplicationName",
    #     description: "BenefitApplicationDescription",
    #     benefit_identifier: "CreateBenefitApplicationInputBenefitIdentifierString", # required
    #     fulfillment_types: ["CREDITS"], # accepts CREDITS, CASH, ACCESS
    #     benefit_application_details: {
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     associated_resources: ["Arn"],
    #     partner_contacts: [
    #       {
    #         email: "ContactEmail",
    #         first_name: "ContactFirstName",
    #         last_name: "ContactLastName",
    #         business_title: "ContactBusinessTitleString",
    #         phone: "ContactPhone",
    #       },
    #     ],
    #     file_details: [
    #       {
    #         file_uri: "FileURI", # required
    #         business_use_case: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CreateBenefitApplication AWS API Documentation
    #
    # @overload create_benefit_application(params = {})
    # @param [Hash] params ({})
    def create_benefit_application(params = {}, options = {})
      req = build_request(:create_benefit_application, params)
      req.send_request(options)
    end

    # Removes the association between an AWS resource and a benefit
    # application.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :benefit_application_identifier
    #   The unique identifier of the benefit application to disassociate the
    #   resource from.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS resource to disassociate
    #   from the benefit application.
    #
    # @return [Types::DisassociateBenefitApplicationResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateBenefitApplicationResourceOutput#id #id} => String
    #   * {Types::DisassociateBenefitApplicationResourceOutput#arn #arn} => String
    #   * {Types::DisassociateBenefitApplicationResourceOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_benefit_application_resource({
    #     catalog: "CatalogName", # required
    #     benefit_application_identifier: "BenefitApplicationIdentifier", # required
    #     resource_arn: "DisassociateBenefitApplicationResourceInputResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/DisassociateBenefitApplicationResource AWS API Documentation
    #
    # @overload disassociate_benefit_application_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_benefit_application_resource(params = {}, options = {})
      req = build_request(:disassociate_benefit_application_resource, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific benefit available in
    # the partner catalog.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog to query.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit to retrieve.
    #
    # @return [Types::GetBenefitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBenefitOutput#id #id} => String
    #   * {Types::GetBenefitOutput#catalog #catalog} => String
    #   * {Types::GetBenefitOutput#arn #arn} => String
    #   * {Types::GetBenefitOutput#name #name} => String
    #   * {Types::GetBenefitOutput#description #description} => String
    #   * {Types::GetBenefitOutput#programs #programs} => Array&lt;String&gt;
    #   * {Types::GetBenefitOutput#fulfillment_types #fulfillment_types} => Array&lt;String&gt;
    #   * {Types::GetBenefitOutput#benefit_request_schema #benefit_request_schema} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetBenefitOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_benefit({
    #     catalog: "CatalogName", # required
    #     identifier: "GetBenefitInputIdentifierString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.programs #=> Array
    #   resp.programs[0] #=> String
    #   resp.fulfillment_types #=> Array
    #   resp.fulfillment_types[0] #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefit AWS API Documentation
    #
    # @overload get_benefit(params = {})
    # @param [Hash] params ({})
    def get_benefit(params = {}, options = {})
      req = build_request(:get_benefit, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific benefit allocation
    # that has been granted to a partner.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog to query.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit allocation to retrieve.
    #
    # @return [Types::GetBenefitAllocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBenefitAllocationOutput#id #id} => String
    #   * {Types::GetBenefitAllocationOutput#catalog #catalog} => String
    #   * {Types::GetBenefitAllocationOutput#arn #arn} => String
    #   * {Types::GetBenefitAllocationOutput#name #name} => String
    #   * {Types::GetBenefitAllocationOutput#description #description} => String
    #   * {Types::GetBenefitAllocationOutput#status #status} => String
    #   * {Types::GetBenefitAllocationOutput#status_reason #status_reason} => String
    #   * {Types::GetBenefitAllocationOutput#benefit_application_id #benefit_application_id} => String
    #   * {Types::GetBenefitAllocationOutput#benefit_id #benefit_id} => String
    #   * {Types::GetBenefitAllocationOutput#fulfillment_type #fulfillment_type} => String
    #   * {Types::GetBenefitAllocationOutput#applicable_benefit_ids #applicable_benefit_ids} => Array&lt;String&gt;
    #   * {Types::GetBenefitAllocationOutput#fulfillment_detail #fulfillment_detail} => Types::FulfillmentDetails
    #   * {Types::GetBenefitAllocationOutput#created_at #created_at} => Time
    #   * {Types::GetBenefitAllocationOutput#updated_at #updated_at} => Time
    #   * {Types::GetBenefitAllocationOutput#starts_at #starts_at} => Time
    #   * {Types::GetBenefitAllocationOutput#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_benefit_allocation({
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitAllocationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.catalog #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE", "FULFILLED"
    #   resp.status_reason #=> String
    #   resp.benefit_application_id #=> String
    #   resp.benefit_id #=> String
    #   resp.fulfillment_type #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.applicable_benefit_ids #=> Array
    #   resp.applicable_benefit_ids[0] #=> String
    #   resp.fulfillment_detail.disbursement_details.disbursed_amount.amount #=> String
    #   resp.fulfillment_detail.disbursement_details.disbursed_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.disbursement_details.issuance_details.issuance_id #=> String
    #   resp.fulfillment_detail.disbursement_details.issuance_details.issuance_amount.amount #=> String
    #   resp.fulfillment_detail.disbursement_details.issuance_details.issuance_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.disbursement_details.issuance_details.issued_at #=> Time
    #   resp.fulfillment_detail.consumable_details.allocated_amount.amount #=> String
    #   resp.fulfillment_detail.consumable_details.allocated_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.consumable_details.remaining_amount.amount #=> String
    #   resp.fulfillment_detail.consumable_details.remaining_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.consumable_details.utilized_amount.amount #=> String
    #   resp.fulfillment_detail.consumable_details.utilized_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.consumable_details.issuance_details.issuance_id #=> String
    #   resp.fulfillment_detail.consumable_details.issuance_details.issuance_amount.amount #=> String
    #   resp.fulfillment_detail.consumable_details.issuance_details.issuance_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.consumable_details.issuance_details.issued_at #=> Time
    #   resp.fulfillment_detail.credit_details.allocated_amount.amount #=> String
    #   resp.fulfillment_detail.credit_details.allocated_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.credit_details.issued_amount.amount #=> String
    #   resp.fulfillment_detail.credit_details.issued_amount.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.credit_details.codes #=> Array
    #   resp.fulfillment_detail.credit_details.codes[0].aws_account_id #=> String
    #   resp.fulfillment_detail.credit_details.codes[0].value.amount #=> String
    #   resp.fulfillment_detail.credit_details.codes[0].value.currency_code #=> String, one of "AED", "AMD", "ARS", "AUD", "AWG", "AZN", "BBD", "BDT", "BGN", "BMD", "BND", "BOB", "BRL", "BSD", "BYR", "BZD", "CAD", "CHF", "CLP", "CNY", "COP", "CRC", "CZK", "DKK", "DOP", "EEK", "EGP", "EUR", "GBP", "GEL", "GHS", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "INR", "ISK", "JMD", "JPY", "KES", "KHR", "KRW", "KYD", "KZT", "LBP", "LKR", "LTL", "LVL", "MAD", "MNT", "MOP", "MUR", "MVR", "MXN", "MYR", "NAD", "NGN", "NIO", "NOK", "NZD", "PAB", "PEN", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RUB", "SAR", "SEK", "SGD", "SIT", "SKK", "THB", "TND", "TRY", "TTD", "TWD", "TZS", "UAH", "USD", "UYU", "UZS", "VND", "XAF", "XCD", "XOF", "XPF", "ZAR"
    #   resp.fulfillment_detail.credit_details.codes[0].aws_credit_code #=> String
    #   resp.fulfillment_detail.credit_details.codes[0].status #=> String, one of "ACTIVE", "INACTIVE", "FULFILLED"
    #   resp.fulfillment_detail.credit_details.codes[0].issued_at #=> Time
    #   resp.fulfillment_detail.credit_details.codes[0].expires_at #=> Time
    #   resp.fulfillment_detail.access_details.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.starts_at #=> Time
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitAllocation AWS API Documentation
    #
    # @overload get_benefit_allocation(params = {})
    # @param [Hash] params ({})
    def get_benefit_allocation(params = {}, options = {})
      req = build_request(:get_benefit_allocation, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific benefit application.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog to query.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to retrieve.
    #
    # @return [Types::GetBenefitApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBenefitApplicationOutput#id #id} => String
    #   * {Types::GetBenefitApplicationOutput#arn #arn} => String
    #   * {Types::GetBenefitApplicationOutput#catalog #catalog} => String
    #   * {Types::GetBenefitApplicationOutput#benefit_id #benefit_id} => String
    #   * {Types::GetBenefitApplicationOutput#name #name} => String
    #   * {Types::GetBenefitApplicationOutput#description #description} => String
    #   * {Types::GetBenefitApplicationOutput#fulfillment_types #fulfillment_types} => Array&lt;String&gt;
    #   * {Types::GetBenefitApplicationOutput#benefit_application_details #benefit_application_details} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetBenefitApplicationOutput#programs #programs} => Array&lt;String&gt;
    #   * {Types::GetBenefitApplicationOutput#status #status} => String
    #   * {Types::GetBenefitApplicationOutput#stage #stage} => String
    #   * {Types::GetBenefitApplicationOutput#status_reason #status_reason} => String
    #   * {Types::GetBenefitApplicationOutput#status_reason_code #status_reason_code} => String
    #   * {Types::GetBenefitApplicationOutput#status_reason_codes #status_reason_codes} => Array&lt;String&gt;
    #   * {Types::GetBenefitApplicationOutput#created_at #created_at} => Time
    #   * {Types::GetBenefitApplicationOutput#updated_at #updated_at} => Time
    #   * {Types::GetBenefitApplicationOutput#revision #revision} => String
    #   * {Types::GetBenefitApplicationOutput#associated_resources #associated_resources} => Array&lt;String&gt;
    #   * {Types::GetBenefitApplicationOutput#partner_contacts #partner_contacts} => Array&lt;Types::Contact&gt;
    #   * {Types::GetBenefitApplicationOutput#file_details #file_details} => Array&lt;Types::FileDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_benefit_application({
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.catalog #=> String
    #   resp.benefit_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.fulfillment_types #=> Array
    #   resp.fulfillment_types[0] #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.programs #=> Array
    #   resp.programs[0] #=> String
    #   resp.status #=> String, one of "PENDING_SUBMISSION", "IN_REVIEW", "ACTION_REQUIRED", "APPROVED", "REJECTED", "CANCELED"
    #   resp.stage #=> String
    #   resp.status_reason #=> String
    #   resp.status_reason_code #=> String
    #   resp.status_reason_codes #=> Array
    #   resp.status_reason_codes[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.revision #=> String
    #   resp.associated_resources #=> Array
    #   resp.associated_resources[0] #=> String
    #   resp.partner_contacts #=> Array
    #   resp.partner_contacts[0].email #=> String
    #   resp.partner_contacts[0].first_name #=> String
    #   resp.partner_contacts[0].last_name #=> String
    #   resp.partner_contacts[0].business_title #=> String
    #   resp.partner_contacts[0].phone #=> String
    #   resp.file_details #=> Array
    #   resp.file_details[0].file_uri #=> String
    #   resp.file_details[0].business_use_case #=> String
    #   resp.file_details[0].file_name #=> String
    #   resp.file_details[0].file_status #=> String
    #   resp.file_details[0].file_status_reason #=> String
    #   resp.file_details[0].file_type #=> String, one of "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/vnd.openxmlformats-officedocument.presentationml.presentation", "application/pdf", "image/png", "image/jpeg", "image/svg+xml", "text/csv"
    #   resp.file_details[0].created_by #=> String
    #   resp.file_details[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitApplication AWS API Documentation
    #
    # @overload get_benefit_application(params = {})
    # @param [Hash] params ({})
    def get_benefit_application(params = {}, options = {})
      req = build_request(:get_benefit_application, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of benefit allocations based on specified
    # filter criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter benefit allocations by catalog.
    #
    # @option params [Array<String>] :fulfillment_types
    #   Filter benefit allocations by specific fulfillment types.
    #
    # @option params [Array<String>] :benefit_identifiers
    #   Filter benefit allocations by specific benefit identifiers.
    #
    # @option params [Array<String>] :benefit_application_identifiers
    #   Filter benefit allocations by specific benefit application
    #   identifiers.
    #
    # @option params [Array<String>] :status
    #   Filter benefit allocations by their current status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of benefit allocations to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   A pagination token to retrieve the next set of results from a previous
    #   request.
    #
    # @return [Types::ListBenefitAllocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBenefitAllocationsOutput#benefit_allocation_summaries #benefit_allocation_summaries} => Array&lt;Types::BenefitAllocationSummary&gt;
    #   * {Types::ListBenefitAllocationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_benefit_allocations({
    #     catalog: "CatalogName", # required
    #     fulfillment_types: ["CREDITS"], # accepts CREDITS, CASH, ACCESS
    #     benefit_identifiers: ["BenefitId"],
    #     benefit_application_identifiers: ["BenefitApplicationIdentifier"],
    #     status: ["ACTIVE"], # accepts ACTIVE, INACTIVE, FULFILLED
    #     max_results: 1,
    #     next_token: "ListBenefitAllocationsInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.benefit_allocation_summaries #=> Array
    #   resp.benefit_allocation_summaries[0].id #=> String
    #   resp.benefit_allocation_summaries[0].catalog #=> String
    #   resp.benefit_allocation_summaries[0].arn #=> String
    #   resp.benefit_allocation_summaries[0].status #=> String, one of "ACTIVE", "INACTIVE", "FULFILLED"
    #   resp.benefit_allocation_summaries[0].status_reason #=> String
    #   resp.benefit_allocation_summaries[0].name #=> String
    #   resp.benefit_allocation_summaries[0].benefit_id #=> String
    #   resp.benefit_allocation_summaries[0].benefit_application_id #=> String
    #   resp.benefit_allocation_summaries[0].fulfillment_types #=> Array
    #   resp.benefit_allocation_summaries[0].fulfillment_types[0] #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.benefit_allocation_summaries[0].created_at #=> Time
    #   resp.benefit_allocation_summaries[0].expires_at #=> Time
    #   resp.benefit_allocation_summaries[0].applicable_benefit_ids #=> Array
    #   resp.benefit_allocation_summaries[0].applicable_benefit_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitAllocations AWS API Documentation
    #
    # @overload list_benefit_allocations(params = {})
    # @param [Hash] params ({})
    def list_benefit_allocations(params = {}, options = {})
      req = build_request(:list_benefit_allocations, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of benefit applications based on specified
    # filter criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter benefit applications by catalog.
    #
    # @option params [Array<String>] :programs
    #   Filter benefit applications by specific AWS partner programs.
    #
    # @option params [Array<String>] :fulfillment_types
    #   Filter benefit applications by specific fulfillment types.
    #
    # @option params [Array<String>] :benefit_identifiers
    #   Filter benefit applications by specific benefit identifiers.
    #
    # @option params [Array<String>] :status
    #   Filter benefit applications by their current processing status.
    #
    # @option params [Array<String>] :stages
    #   Filter benefit applications by their current processing stage.
    #
    # @option params [Array<Types::AssociatedResource>] :associated_resources
    #   Filter benefit applications by associated AWS resources.
    #
    # @option params [Array<String>] :associated_resource_arns
    #   Filter benefit applications by specific AWS resource ARNs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of benefit applications to return in a single
    #   response.
    #
    # @option params [String] :next_token
    #   A pagination token to retrieve the next set of results from a previous
    #   request.
    #
    # @return [Types::ListBenefitApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBenefitApplicationsOutput#benefit_application_summaries #benefit_application_summaries} => Array&lt;Types::BenefitApplicationSummary&gt;
    #   * {Types::ListBenefitApplicationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_benefit_applications({
    #     catalog: "CatalogName", # required
    #     programs: ["Program"],
    #     fulfillment_types: ["CREDITS"], # accepts CREDITS, CASH, ACCESS
    #     benefit_identifiers: ["BenefitId"],
    #     status: ["PENDING_SUBMISSION"], # accepts PENDING_SUBMISSION, IN_REVIEW, ACTION_REQUIRED, APPROVED, REJECTED, CANCELED
    #     stages: ["BenefitApplicationStage"],
    #     associated_resources: [
    #       {
    #         resource_type: "OPPORTUNITY", # accepts OPPORTUNITY, BENEFIT_ALLOCATION
    #         resource_identifier: "String",
    #         resource_arn: "Arn",
    #       },
    #     ],
    #     associated_resource_arns: ["Arn"],
    #     max_results: 1,
    #     next_token: "ListBenefitApplicationsInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.benefit_application_summaries #=> Array
    #   resp.benefit_application_summaries[0].catalog #=> String
    #   resp.benefit_application_summaries[0].name #=> String
    #   resp.benefit_application_summaries[0].id #=> String
    #   resp.benefit_application_summaries[0].arn #=> String
    #   resp.benefit_application_summaries[0].benefit_id #=> String
    #   resp.benefit_application_summaries[0].programs #=> Array
    #   resp.benefit_application_summaries[0].programs[0] #=> String
    #   resp.benefit_application_summaries[0].fulfillment_types #=> Array
    #   resp.benefit_application_summaries[0].fulfillment_types[0] #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.benefit_application_summaries[0].status #=> String, one of "PENDING_SUBMISSION", "IN_REVIEW", "ACTION_REQUIRED", "APPROVED", "REJECTED", "CANCELED"
    #   resp.benefit_application_summaries[0].stage #=> String
    #   resp.benefit_application_summaries[0].created_at #=> Time
    #   resp.benefit_application_summaries[0].updated_at #=> Time
    #   resp.benefit_application_summaries[0].benefit_application_details #=> Hash
    #   resp.benefit_application_summaries[0].benefit_application_details["String"] #=> String
    #   resp.benefit_application_summaries[0].associated_resources #=> Array
    #   resp.benefit_application_summaries[0].associated_resources[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitApplications AWS API Documentation
    #
    # @overload list_benefit_applications(params = {})
    # @param [Hash] params ({})
    def list_benefit_applications(params = {}, options = {})
      req = build_request(:list_benefit_applications, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of available benefits based on specified
    # filter criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter benefits by catalog.
    #
    # @option params [Array<String>] :programs
    #   Filter benefits by specific AWS partner programs.
    #
    # @option params [Array<String>] :fulfillment_types
    #   Filter benefits by specific fulfillment types.
    #
    # @option params [Array<String>] :status
    #   Filter benefits by their current status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of benefits to return in a single response.
    #
    # @option params [String] :next_token
    #   A pagination token to retrieve the next set of results from a previous
    #   request.
    #
    # @return [Types::ListBenefitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBenefitsOutput#benefit_summaries #benefit_summaries} => Array&lt;Types::BenefitSummary&gt;
    #   * {Types::ListBenefitsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_benefits({
    #     catalog: "CatalogName", # required
    #     programs: ["Program"],
    #     fulfillment_types: ["CREDITS"], # accepts CREDITS, CASH, ACCESS
    #     status: ["ACTIVE"], # accepts ACTIVE, INACTIVE
    #     max_results: 1,
    #     next_token: "ListBenefitsInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.benefit_summaries #=> Array
    #   resp.benefit_summaries[0].id #=> String
    #   resp.benefit_summaries[0].catalog #=> String
    #   resp.benefit_summaries[0].arn #=> String
    #   resp.benefit_summaries[0].name #=> String
    #   resp.benefit_summaries[0].description #=> String
    #   resp.benefit_summaries[0].programs #=> Array
    #   resp.benefit_summaries[0].programs[0] #=> String
    #   resp.benefit_summaries[0].fulfillment_types #=> Array
    #   resp.benefit_summaries[0].fulfillment_types[0] #=> String, one of "CREDITS", "CASH", "ACCESS"
    #   resp.benefit_summaries[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefits AWS API Documentation
    #
    # @overload list_benefits(params = {})
    # @param [Hash] params ({})
    def list_benefits(params = {}, options = {})
      req = build_request(:list_benefits, params)
      req.send_request(options)
    end

    # Retrieves all tags associated with a specific resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Recalls a submitted benefit application, returning it to draft status
    # for further modifications.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the recall request.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to recall.
    #
    # @option params [required, String] :reason
    #   A descriptive reason explaining why the benefit application is being
    #   recalled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recall_benefit_application({
    #     catalog: "CatalogName", # required
    #     client_token: "String",
    #     identifier: "BenefitApplicationIdentifier", # required
    #     reason: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/RecallBenefitApplication AWS API Documentation
    #
    # @overload recall_benefit_application(params = {})
    # @param [Hash] params ({})
    def recall_benefit_application(params = {}, options = {})
      req = build_request(:recall_benefit_application, params)
      req.send_request(options)
    end

    # Submits a benefit application for review and processing by AWS.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to submit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_benefit_application({
    #     catalog: "CatalogName", # required
    #     identifier: "BenefitApplicationIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/SubmitBenefitApplication AWS API Documentation
    #
    # @overload submit_benefit_application(params = {})
    # @param [Hash] params ({})
    def submit_benefit_application(params = {}, options = {})
      req = build_request(:submit_benefit_application, params)
      req.send_request(options)
    end

    # Adds or updates tags for a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of key-value pairs to add as tags to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing benefit application with new information while
    # maintaining revision control.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #
    # @option params [required, String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the update request.
    #
    # @option params [String] :name
    #   The updated human-readable name for the benefit application.
    #
    # @option params [String] :description
    #   The updated detailed description of the benefit application.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the benefit application to update.
    #
    # @option params [required, String] :revision
    #   The current revision number of the benefit application to ensure
    #   optimistic concurrency control.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :benefit_application_details
    #   Updated detailed information and requirements specific to the benefit
    #   being requested.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Array<Types::Contact>] :partner_contacts
    #   Updated contact information for partner representatives responsible
    #   for this benefit application.
    #
    # @option params [Array<Types::FileInput>] :file_details
    #   Updated supporting documents and files attached to the benefit
    #   application.
    #
    # @return [Types::UpdateBenefitApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBenefitApplicationOutput#id #id} => String
    #   * {Types::UpdateBenefitApplicationOutput#arn #arn} => String
    #   * {Types::UpdateBenefitApplicationOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_benefit_application({
    #     catalog: "CatalogName", # required
    #     client_token: "UpdateBenefitApplicationInputClientTokenString", # required
    #     name: "BenefitApplicationName",
    #     description: "BenefitApplicationDescription",
    #     identifier: "BenefitApplicationIdentifier", # required
    #     revision: "String", # required
    #     benefit_application_details: {
    #     },
    #     partner_contacts: [
    #       {
    #         email: "ContactEmail",
    #         first_name: "ContactFirstName",
    #         last_name: "ContactLastName",
    #         business_title: "ContactBusinessTitleString",
    #         phone: "ContactPhone",
    #       },
    #     ],
    #     file_details: [
    #       {
    #         file_uri: "FileURI", # required
    #         business_use_case: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UpdateBenefitApplication AWS API Documentation
    #
    # @overload update_benefit_application(params = {})
    # @param [Hash] params ({})
    def update_benefit_application(params = {}, options = {})
      req = build_request(:update_benefit_application, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralBenefits')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralbenefits'
      context[:gem_version] = '1.0.0'
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
