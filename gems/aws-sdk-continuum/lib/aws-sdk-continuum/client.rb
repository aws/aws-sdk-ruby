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

module Aws::Continuum
  # An API client for Continuum.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Continuum::Client.new(
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

    @identifier = :continuum

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
    add_plugin(Aws::Continuum::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
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
    #   @option options [Aws::Continuum::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Continuum::EndpointParameters`.
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

    # Associates one Collector with this Environment and configures the
    # customer role Continuum uses to authorize access to associated
    # Collector data. The caller must have permission on the Environment and
    # permission to pass the role. Continuum assumes the supplied role and
    # calls GetCollectorDataAccessAuthorization on the requested Collector;
    # only a successful authorization response permits the association. The
    # caller does not need Collector data-access permission. The Environment
    # retains its other Collector associations. Calling again with an
    # existing association is safe and does not create a duplicate.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the Environment making the association.
    #
    # @option params [String] :client_token
    #   Caller-provided token that makes retried association requests
    #   idempotent. The first successful request binds the token to the
    #   complete Collector ARN, supplied role, and result for at least 24
    #   hours. During that retry window, reusing it with a different request
    #   fails with ConflictException. A matching replay still requires the
    #   supplied role to have current Collector access. Once authorized, a
    #   matching replay returns the stored result without changing association
    #   state. Revocation can deny a replay; it does not remove the stored
    #   association or its original result.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :collector_arn
    #   The ARN of the Collector to associate with this Environment.
    #
    # @option params [required, String] :collector_data_access_role_arn
    #   IAM role in the Environment account that Continuum assumes before
    #   authorizing access to associated Collector inventory. Every
    #   association, including a same-account association, requires this role.
    #   The supplied ARN replaces the Environment's previously stored role.
    #   The customer is responsible for granting the role access to every
    #   Collector that should contribute data.
    #
    # @return [Types::AssociateCollectorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateCollectorOutput#environment_id #environment_id} => String
    #   * {Types::AssociateCollectorOutput#environment_arn #environment_arn} => String
    #   * {Types::AssociateCollectorOutput#associated_collector #associated_collector} => Types::AssociatedCollector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_collector({
    #     environment_id: "EnvironmentId", # required
    #     client_token: "AssociationClientToken",
    #     collector_arn: "CollectorArn", # required
    #     collector_data_access_role_arn: "EnvironmentSourceRoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.associated_collector.collector_id #=> String
    #   resp.associated_collector.collector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AssociateCollector AWS API Documentation
    #
    # @overload associate_collector(params = {})
    # @param [Hash] params ({})
    def associate_collector(params = {}, options = {})
      req = build_request(:associate_collector, params)
      req.send_request(options)
    end

    # Ingests a customer-supplied security finding into an environment.
    # Continuum validates the document synchronously against the required
    # overlay fields for the declared format; invalid documents are rejected
    # with a ValidationException. The maximum accepted document size is 256
    # KB. The environment must have a source configured, and the finding
    # must identify a code location so Continuum can tie it to a repository
    # in the environment's build. Continuum assigns a findingId and stores
    # the verbatim document. When no successful build yet contains the
    # finding's repository, the finding stays SUBMITTED until the next
    # successful build; if that build does not contain it either, the
    # finding is DISCARDED with discardReason SOURCE\_REPO\_NOT\_FOUND.
    #
    # @option params [required, String] :environment_id
    #   The environment to ingest the finding into.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :ocsf_document
    #   The OCSF finding document to ingest, verbatim. Must declare a
    #   class\_uid Continuum supports (2002 Vulnerability Finding, or 2007
    #   Application Security Posture Finding) and validate against the
    #   vendored OCSF JSON Schema for that class, including the Continuum
    #   overlay requirements that finding\_info.uid be present and that
    #   vulnerabilities\[0\].affected\_code\[0\].file identify the code
    #   location. With several repositories in the environment, the file path
    #   must begin with the repository name. Maximum size 256 KB. Stored
    #   verbatim and normalized into the typed Finding members returned by
    #   GetCodeFinding. GetCodeFinding does not return the document itself.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [String] :client_token
    #   Caller-provided idempotency token. A retry with the same token and an
    #   identical finding document replays the original result; the same token
    #   with different content is rejected.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCodeFindingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeFindingOutput#finding_id #finding_id} => String
    #   * {Types::CreateCodeFindingOutput#finding_arn #finding_arn} => String
    #   * {Types::CreateCodeFindingOutput#title #title} => String
    #   * {Types::CreateCodeFindingOutput#status #status} => String
    #   * {Types::CreateCodeFindingOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_finding({
    #     environment_id: "EnvironmentId", # required
    #     ocsf_document: { # required
    #     },
    #     client_token: "FindingClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_id #=> String
    #   resp.finding_arn #=> String
    #   resp.title #=> String
    #   resp.status #=> String, one of "SUBMITTED", "VALIDATING", "CONFIRMED", "DISCARDED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeFinding AWS API Documentation
    #
    # @overload create_code_finding(params = {})
    # @param [Hash] params ({})
    def create_code_finding(params = {}, options = {})
      req = build_request(:create_code_finding, params)
      req.send_request(options)
    end

    # Creates an explicit scan request for one environment. CP creates
    # durable work before any queue delivery occurs.
    #
    # Retrying a request that succeeded, with the same clientToken on the
    # same environment, returns the original scan instead of starting
    # another one. Token handling is not yet atomic: requests with the same
    # token that run at the same time, or a retry after a request that
    # failed partway through, can leave an additional scan, which may end in
    # the FAILED state with a message that it was superseded. Deleting the
    # environment makes its tokens unusable; a later request with one of
    # them returns ResourceNotFoundException.
    #
    # Each environment can have a limited number of scans in progress at the
    # same time. Once that limit is enforced, a request that would exceed it
    # returns ServiceQuotaExceededException; wait for a scan to finish
    # (ListCodeScans shows each scan's status), then retry.
    #
    # @option params [required, String] :environment_id
    #   Environment to scan.
    #
    # @option params [String] :client_token
    #   An optional token identifying one scan request for this environment.
    #   SDKs generate a token when omitted. If a request reaches the service
    #   without a token, the service generates one for that request, so each
    #   request without a token starts a new scan. To retry a request after a
    #   lost response, supply the same token on the same environment; once a
    #   request with that token has succeeded, a retry returns the original
    #   scan. Concurrent requests with the same token, or a retry after a
    #   request that failed partway through, can leave an additional scan,
    #   which may end FAILED as superseded. A token is bound to its scan for
    #   as long as the service retains the scan's build record, with no
    #   shorter expiry. Deleting the environment makes the binding
    #   inaccessible: a later request with the token returns
    #   ResourceNotFoundException.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCodeScanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCodeScanOutput#scan #scan} => Types::CodeScanSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_scan({
    #     environment_id: "EnvironmentId", # required
    #     client_token: "ScanClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scan.scan_run_id #=> String
    #   resp.scan.status #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING", "SUCCEEDED", "FAILED"
    #   resp.scan.origin #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.scan.created_at #=> Time
    #   resp.scan.completed_at #=> Time
    #   resp.scan.failure_message #=> String
    #   resp.scan.failure_stage #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeScan AWS API Documentation
    #
    # @overload create_code_scan(params = {})
    # @param [Hash] params ({})
    def create_code_scan(params = {}, options = {})
      req = build_request(:create_code_scan, params)
      req.send_request(options)
    end

    # Creates the Collector for the caller's account. Provisions an AWS
    # Config service-linked recorder using the caller's federated access
    # session and begins recording infrastructure changes.
    #
    # @option params [String] :type
    #   Source to collect. Defaults to AWS\_COLLECTOR when omitted.
    #
    # @option params [Types::KubernetesClusterRoleConfiguration] :kubernetes_cluster_role
    #   IAM role configuration used to collect Kubernetes cluster metadata.
    #   The authenticated caller must be allowed to pass its exact roleArn to
    #   Continuum.
    #
    # @option params [String] :client_token
    #   Caller-provided token that makes retried create requests return the
    #   original Collector rather than creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCollectorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCollectorOutput#collector_id #collector_id} => String
    #   * {Types::CreateCollectorOutput#collector_arn #collector_arn} => String
    #   * {Types::CreateCollectorOutput#type #type} => String
    #   * {Types::CreateCollectorOutput#status #status} => String
    #   * {Types::CreateCollectorOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_collector({
    #     type: "AWS_COLLECTOR", # accepts AWS_COLLECTOR
    #     kubernetes_cluster_role: {
    #       role_arn: "KubernetesClusterRoleArn", # required
    #       external_id: "KubernetesClusterExternalId",
    #     },
    #     client_token: "CollectorClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.collector_id #=> String
    #   resp.collector_arn #=> String
    #   resp.type #=> String, one of "AWS_COLLECTOR"
    #   resp.status #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCollector AWS API Documentation
    #
    # @overload create_collector(params = {})
    # @param [Hash] params ({})
    def create_collector(params = {}, options = {})
      req = build_request(:create_collector, params)
      req.send_request(options)
    end

    # Creates an environment and starts its validation and any requested
    # provisioning. Storage provisioning and dependency checks may continue
    # after the initial 201 response; use GetEnvironment to observe
    # completion.
    #
    # @option params [required, String] :name
    #   The customer-visible name of the environment.
    #
    # @option params [Types::CreateEnvironmentConfiguration] :configuration
    #   Type-specific configuration. Omission creates a code environment with
    #   the default operating policy and no sources.
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentOutput#environment_arn #environment_arn} => String
    #   * {Types::CreateEnvironmentOutput#status #status} => String
    #   * {Types::CreateEnvironmentOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName", # required
    #     configuration: {
    #       code_configuration: {
    #         source_configuration: {
    #           s3_sources: [
    #             {
    #               integration_id: "IntegrationId", # required
    #               code_prefix: "EnvironmentSourcePrefix",
    #               context_prefix: "EnvironmentSourcePrefix",
    #             },
    #           ],
    #           repository_sources: [
    #             {
    #               integration_id: "IntegrationId", # required
    #               repository: "RepositoryName", # required
    #               default_branch: "RepositoryBranch",
    #             },
    #           ],
    #         },
    #         environment_configuration: {
    #           network: {
    #             allowed_domains: ["DomainName"],
    #           },
    #           scan_frequency: "ScanFrequency",
    #           patch_creation_policy: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates a new integration with an external source provider. Repeating
    # an identical request with the same clientToken returns the original
    # integrationId, integrationArn, and createdAt. Token records are
    # retained for eight hours after success or terminal failure, including
    # after the integration is deleted; replaying a deleted integration's
    # token does not recreate it. An identical request with a retained
    # terminal failure returns the recorded error.
    #
    # Reusing a token with different parameters returns ValidationException.
    # A fresh token starts a new create attempt; if the name is already
    # owned by another integration, ConflictException includes that
    # integration's identifier. An attempt still in progress may return
    # ThrottlingException with retryAfterSeconds set to 1; retry with the
    # same token and identical parameters.
    #
    # GitHub authorization codes are single use. Retry an unresolved attempt
    # with its original token and unchanged parameters first. If the service
    # reports a terminal failure, an expired attempt, or a successful token
    # exchange whose integration could not be saved, restart GitHub
    # authorization with a fresh token and authorization code. The service
    # does not checkpoint provider results for recovery by another request.
    #
    # @option params [String] :client_token
    #   An optional token identifying one create attempt within the caller's
    #   account, Region, and operation. SDKs generate a token when omitted. If
    #   a request reaches the service without a token, the service generates
    #   one for that request. Each request without a token starts a new
    #   attempt. To replay an attempt, supply the same token and identical
    #   input. Authorized users and roles in the same account can retry an
    #   attempt this way. Token records are retained for eight hours after
    #   success or terminal failure, including after deletion of a
    #   successfully created integration. Different input with the same token
    #   returns ValidationException.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name for the integration.
    #
    # @option params [required, Types::ProviderConfiguration] :provider_configuration
    #   The provider-specific configuration required to create the
    #   integration. Only one member may be specified.
    #
    # @return [Types::CreateIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationOutput#integration_id #integration_id} => String
    #   * {Types::CreateIntegrationOutput#integration_arn #integration_arn} => String
    #   * {Types::CreateIntegrationOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration({
    #     client_token: "IntegrationClientToken",
    #     name: "IntegrationName", # required
    #     provider_configuration: { # required
    #       github: {
    #         authorization: { # required
    #           authorization_code: "AuthorizationCode", # required
    #           state: "OAuthState", # required
    #           redirect_url: "RedirectUrl",
    #         },
    #         organization_name: "GitHubOrganizationName",
    #       },
    #       gitlab: {
    #         instance_url: "GitLabInstanceUrl", # required
    #         target_type: "GROUP", # required, accepts GROUP, PROJECT
    #         target_path: "GitLabTargetPath", # required
    #         access_token: "GitLabAccessToken", # required
    #       },
    #       s3: {
    #         bucket: "IntegrationS3BucketName", # required
    #         role_arn: "IntegrationS3RoleArn", # required
    #         external_id: "IntegrationS3ExternalId", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_id #=> String
    #   resp.integration_arn #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateIntegration AWS API Documentation
    #
    # @overload create_integration(params = {})
    # @param [Hash] params ({})
    def create_integration(params = {}, options = {})
      req = build_request(:create_integration, params)
      req.send_request(options)
    end

    # Deletes the Collector for the caller's account. The Collector first
    # enters PENDING\_DELETION, then the service removes its schedule, AWS
    # Config service-linked recorder, versioned S3 bucket, KMS key, and
    # persisted record.
    #
    # @option params [required, String] :collector_id
    #   The unique identifier of the Collector to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_collector({
    #     collector_id: "CollectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteCollector AWS API Documentation
    #
    # @overload delete_collector(params = {})
    # @param [Hash] params ({})
    def delete_collector(params = {}, options = {})
      req = build_request(:delete_collector, params)
      req.send_request(options)
    end

    # Deletes an environment and its associated resources.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the environment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes an integration and releases its name and account quota. Its
    # retained CreateIntegration token receipt can still replay the original
    # result without recreating the integration. Shared provider
    # registrations are retained: deleting one integration does not remove
    # provider access used by another integration. A fresh GitHub
    # CreateIntegration attempt requires a fresh OAuth authorization code
    # and a new clientToken.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the integration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     integration_id: "IntegrationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteIntegration AWS API Documentation
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Removes one Collector association from this Environment, preserving
    # its other associations. The stored Collector data-access role is
    # cleared when no Collector associations remain. The Environment owner
    # must have permission to disassociate. A current Collector access grant
    # is not required, and the Collector does not need to remain active or
    # present, so stale or revoked associations can be cleaned up.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the Environment whose associations are
    #   updated.
    #
    # @option params [required, String] :collector_arn
    #   The ARN of the Collector to disassociate from this Environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_collector({
    #     environment_id: "EnvironmentId", # required
    #     collector_arn: "CollectorArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DisassociateCollector AWS API Documentation
    #
    # @overload disassociate_collector(params = {})
    # @param [Hash] params ({})
    def disassociate_collector(params = {}, options = {})
      req = build_request(:disassociate_collector, params)
      req.send_request(options)
    end

    # Retrieves the current state and details of a finding.
    #
    # @option params [required, String] :environment_id
    #   The environment that owns the finding.
    #
    # @option params [required, String] :finding_id
    #   The unique identifier of the finding to retrieve.
    #
    # @return [Types::GetCodeFindingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeFindingOutput#type #type} => String
    #   * {Types::GetCodeFindingOutput#title #title} => String
    #   * {Types::GetCodeFindingOutput#severity #severity} => String
    #   * {Types::GetCodeFindingOutput#summary #summary} => String
    #   * {Types::GetCodeFindingOutput#detailed_description #detailed_description} => String
    #   * {Types::GetCodeFindingOutput#category #category} => String
    #   * {Types::GetCodeFindingOutput#sub_category #sub_category} => String
    #   * {Types::GetCodeFindingOutput#cwe_ids #cwe_ids} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#owasp_category #owasp_category} => String
    #   * {Types::GetCodeFindingOutput#mitigation #mitigation} => String
    #   * {Types::GetCodeFindingOutput#file_path #file_path} => String
    #   * {Types::GetCodeFindingOutput#line_number #line_number} => Integer
    #   * {Types::GetCodeFindingOutput#cve_id #cve_id} => String
    #   * {Types::GetCodeFindingOutput#cvss_base_score #cvss_base_score} => Float
    #   * {Types::GetCodeFindingOutput#affected_packages #affected_packages} => Array&lt;Types::AffectedPackage&gt;
    #   * {Types::GetCodeFindingOutput#vulnerable_code #vulnerable_code} => String
    #   * {Types::GetCodeFindingOutput#relevant_inputs #relevant_inputs} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#steps_to_reproduce #steps_to_reproduce} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#validation #validation} => Types::FindingValidation
    #   * {Types::GetCodeFindingOutput#end_line #end_line} => Integer
    #   * {Types::GetCodeFindingOutput#mitre_techniques #mitre_techniques} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#remediation_references #remediation_references} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#ocsf_class #ocsf_class} => String
    #   * {Types::GetCodeFindingOutput#ocsf_schema_version #ocsf_schema_version} => String
    #   * {Types::GetCodeFindingOutput#product_name #product_name} => String
    #   * {Types::GetCodeFindingOutput#product_vendor_name #product_vendor_name} => String
    #   * {Types::GetCodeFindingOutput#product_version #product_version} => String
    #   * {Types::GetCodeFindingOutput#source_status #source_status} => String
    #   * {Types::GetCodeFindingOutput#source_status_id #source_status_id} => Integer
    #   * {Types::GetCodeFindingOutput#first_seen_at #first_seen_at} => Time
    #   * {Types::GetCodeFindingOutput#finding_types #finding_types} => Array&lt;String&gt;
    #   * {Types::GetCodeFindingOutput#vulnerabilities #vulnerabilities} => Array&lt;Types::FindingVulnerability&gt;
    #   * {Types::GetCodeFindingOutput#resources #resources} => Array&lt;Types::FindingResource&gt;
    #   * {Types::GetCodeFindingOutput#posture #posture} => Types::FindingPosture
    #   * {Types::GetCodeFindingOutput#finding_id #finding_id} => String
    #   * {Types::GetCodeFindingOutput#finding_arn #finding_arn} => String
    #   * {Types::GetCodeFindingOutput#environment_id #environment_id} => String
    #   * {Types::GetCodeFindingOutput#source #source} => String
    #   * {Types::GetCodeFindingOutput#source_finding_id #source_finding_id} => String
    #   * {Types::GetCodeFindingOutput#reported_at #reported_at} => Time
    #   * {Types::GetCodeFindingOutput#status #status} => String
    #   * {Types::GetCodeFindingOutput#status_updated_at #status_updated_at} => Time
    #   * {Types::GetCodeFindingOutput#created_at #created_at} => Time
    #   * {Types::GetCodeFindingOutput#scan_run_id #scan_run_id} => String
    #   * {Types::GetCodeFindingOutput#status_message #status_message} => String
    #   * {Types::GetCodeFindingOutput#discard_reason #discard_reason} => String
    #   * {Types::GetCodeFindingOutput#discard_reasoning #discard_reasoning} => String
    #   * {Types::GetCodeFindingOutput#duplicate_of_issue_id #duplicate_of_issue_id} => String
    #   * {Types::GetCodeFindingOutput#created_issue_id #created_issue_id} => String
    #   * {Types::GetCodeFindingOutput#completed_at #completed_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_finding({
    #     environment_id: "EnvironmentId", # required
    #     finding_id: "FindingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "CONTINUUM_CODE_VULN", "CUSTOMER_CODE_VULN"
    #   resp.title #=> String
    #   resp.severity #=> String, one of "UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "FATAL", "OTHER"
    #   resp.summary #=> String
    #   resp.detailed_description #=> String
    #   resp.category #=> String
    #   resp.sub_category #=> String
    #   resp.cwe_ids #=> Array
    #   resp.cwe_ids[0] #=> String
    #   resp.owasp_category #=> String
    #   resp.mitigation #=> String
    #   resp.file_path #=> String
    #   resp.line_number #=> Integer
    #   resp.cve_id #=> String
    #   resp.cvss_base_score #=> Float
    #   resp.affected_packages #=> Array
    #   resp.affected_packages[0].name #=> String
    #   resp.affected_packages[0].version #=> String
    #   resp.affected_packages[0].fixed_in_version #=> String
    #   resp.affected_packages[0].package_manager #=> String
    #   resp.vulnerable_code #=> String
    #   resp.relevant_inputs #=> Array
    #   resp.relevant_inputs[0] #=> String
    #   resp.steps_to_reproduce #=> Array
    #   resp.steps_to_reproduce[0] #=> String
    #   resp.validation.verdict #=> String, one of "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_TRUE_POSITIVE", "NEEDS_REVIEW"
    #   resp.validation.blocking_reason #=> String, one of "UNREACHABLE", "PROTECTED", "MISCLASSIFIED", "EXCLUDED", "NOT_FEASIBLE", "RISK_MITIGATED", "NONE"
    #   resp.validation.confidence #=> Float
    #   resp.validation.rationale #=> String
    #   resp.validation.severity_adjustment #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNCHANGED"
    #   resp.validation.mitigating_controls #=> Array
    #   resp.validation.mitigating_controls[0] #=> String
    #   resp.validation.preconditions #=> Array
    #   resp.validation.preconditions[0] #=> String
    #   resp.validation.evidence #=> Array
    #   resp.validation.evidence[0].file #=> String
    #   resp.validation.evidence[0].line #=> Integer
    #   resp.validation.evidence[0].snippet #=> String
    #   resp.end_line #=> Integer
    #   resp.mitre_techniques #=> Array
    #   resp.mitre_techniques[0] #=> String
    #   resp.remediation_references #=> Array
    #   resp.remediation_references[0] #=> String
    #   resp.ocsf_class #=> String, one of "VULNERABILITY_FINDING", "APPLICATION_SECURITY_POSTURE_FINDING"
    #   resp.ocsf_schema_version #=> String
    #   resp.product_name #=> String
    #   resp.product_vendor_name #=> String
    #   resp.product_version #=> String
    #   resp.source_status #=> String
    #   resp.source_status_id #=> Integer
    #   resp.first_seen_at #=> Time
    #   resp.finding_types #=> Array
    #   resp.finding_types[0] #=> String
    #   resp.vulnerabilities #=> Array
    #   resp.vulnerabilities[0].title #=> String
    #   resp.vulnerabilities[0].description #=> String
    #   resp.vulnerabilities[0].cwe_id #=> String
    #   resp.vulnerabilities[0].cwe_caption #=> String
    #   resp.vulnerabilities[0].additional_cwe_ids #=> Array
    #   resp.vulnerabilities[0].additional_cwe_ids[0] #=> String
    #   resp.vulnerabilities[0].cve_id #=> String
    #   resp.vulnerabilities[0].cvss_base_score #=> Float
    #   resp.vulnerabilities[0].fix_coverage #=> String
    #   resp.vulnerabilities[0].fix_coverage_id #=> Integer
    #   resp.vulnerabilities[0].locations #=> Array
    #   resp.vulnerabilities[0].locations[0].file_path #=> String
    #   resp.vulnerabilities[0].locations[0].start_line #=> Integer
    #   resp.vulnerabilities[0].locations[0].end_line #=> Integer
    #   resp.vulnerabilities[0].remediation #=> String
    #   resp.vulnerabilities[0].remediation_references #=> Array
    #   resp.vulnerabilities[0].remediation_references[0] #=> String
    #   resp.vulnerabilities[0].code #=> String
    #   resp.vulnerabilities[0].details #=> String
    #   resp.vulnerabilities[0].affected_packages #=> Array
    #   resp.vulnerabilities[0].affected_packages[0].name #=> String
    #   resp.vulnerabilities[0].affected_packages[0].version #=> String
    #   resp.vulnerabilities[0].affected_packages[0].fixed_in_version #=> String
    #   resp.vulnerabilities[0].affected_packages[0].package_manager #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].uid #=> String
    #   resp.resources[0].name #=> String
    #   resp.resources[0].type #=> String
    #   resp.resources[0].region #=> String
    #   resp.posture.application #=> String
    #   resp.posture.application_uid #=> String
    #   resp.posture.application_version #=> String
    #   resp.posture.control #=> String
    #   resp.posture.description #=> String
    #   resp.posture.standards #=> Array
    #   resp.posture.standards[0] #=> String
    #   resp.posture.requirements #=> Array
    #   resp.posture.requirements[0] #=> String
    #   resp.posture.checks #=> Array
    #   resp.posture.checks[0].uid #=> String
    #   resp.posture.checks[0].name #=> String
    #   resp.posture.checks[0].description #=> String
    #   resp.posture.status #=> String
    #   resp.posture.status_id #=> Integer
    #   resp.posture.remediation #=> String
    #   resp.posture.remediation_references #=> Array
    #   resp.posture.remediation_references[0] #=> String
    #   resp.finding_id #=> String
    #   resp.finding_arn #=> String
    #   resp.environment_id #=> String
    #   resp.source #=> String
    #   resp.source_finding_id #=> String
    #   resp.reported_at #=> Time
    #   resp.status #=> String, one of "SUBMITTED", "VALIDATING", "CONFIRMED", "DISCARDED"
    #   resp.status_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.scan_run_id #=> String
    #   resp.status_message #=> String
    #   resp.discard_reason #=> String, one of "SCANNER_VALIDATED_FALSE_POSITIVE", "SCANNER_NEEDS_REVIEW", "FALSE_POSITIVE_VALIDATED_AGAINST_CONTEXT", "DUPLICATE_OF_OPEN_ISSUE", "DUPLICATE_OF_CLOSED_ISSUE", "COMPENSATING_CONTROL_PRESENT", "OUT_OF_SCOPE", "INSUFFICIENT_EVIDENCE", "PROCESSING_FAILED", "SOURCE_REPO_NOT_FOUND"
    #   resp.discard_reasoning #=> String
    #   resp.duplicate_of_issue_id #=> String
    #   resp.created_issue_id #=> String
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeFinding AWS API Documentation
    #
    # @overload get_code_finding(params = {})
    # @param [Hash] params ({})
    def get_code_finding(params = {}, options = {})
      req = build_request(:get_code_finding, params)
      req.send_request(options)
    end

    # Retrieves the current state and details of an issue.
    #
    # @option params [required, String] :environment_id
    #   The environment that owns the issue.
    #
    # @option params [required, String] :issue_id
    #   The unique identifier of the issue to retrieve.
    #
    # @return [Types::GetCodeIssueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeIssueOutput#issue_id #issue_id} => String
    #   * {Types::GetCodeIssueOutput#issue_arn #issue_arn} => String
    #   * {Types::GetCodeIssueOutput#name #name} => String
    #   * {Types::GetCodeIssueOutput#synopsis #synopsis} => String
    #   * {Types::GetCodeIssueOutput#severity #severity} => String
    #   * {Types::GetCodeIssueOutput#confidence #confidence} => Integer
    #   * {Types::GetCodeIssueOutput#severity_reasoning #severity_reasoning} => String
    #   * {Types::GetCodeIssueOutput#summary #summary} => String
    #   * {Types::GetCodeIssueOutput#finding_ids #finding_ids} => Array&lt;String&gt;
    #   * {Types::GetCodeIssueOutput#status #status} => String
    #   * {Types::GetCodeIssueOutput#phase #phase} => String
    #   * {Types::GetCodeIssueOutput#status_reason #status_reason} => String
    #   * {Types::GetCodeIssueOutput#status_message #status_message} => String
    #   * {Types::GetCodeIssueOutput#status_updated_at #status_updated_at} => Time
    #   * {Types::GetCodeIssueOutput#created_at #created_at} => Time
    #   * {Types::GetCodeIssueOutput#updated_at #updated_at} => Time
    #   * {Types::GetCodeIssueOutput#evidence_availability #evidence_availability} => String
    #   * {Types::GetCodeIssueOutput#patch_delivery #patch_delivery} => Types::IssuePatchDelivery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_issue({
    #     environment_id: "EnvironmentId", # required
    #     issue_id: "IssueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.issue_id #=> String
    #   resp.issue_arn #=> String
    #   resp.name #=> String
    #   resp.synopsis #=> String
    #   resp.severity #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.confidence #=> Integer
    #   resp.severity_reasoning #=> String
    #   resp.summary #=> String
    #   resp.finding_ids #=> Array
    #   resp.finding_ids[0] #=> String
    #   resp.status #=> String, one of "CREATED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.phase #=> String, one of "VALIDATION", "PRIORITIZATION", "REMEDIATION"
    #   resp.status_reason #=> String, one of "INTERNAL_ERROR", "REMEDIATION_FAILED"
    #   resp.status_message #=> String
    #   resp.status_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.evidence_availability #=> String, one of "NONE", "AVAILABLE"
    #   resp.patch_delivery.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.patch_delivery.patch_count #=> Integer
    #   resp.patch_delivery.succeeded_count #=> Integer
    #   resp.patch_delivery.failed_count #=> Integer
    #   resp.patch_delivery.failure_reasons #=> Array
    #   resp.patch_delivery.failure_reasons[0] #=> String, one of "ARTIFACT_READ_FAILED", "ARTIFACT_SOURCE_MISMATCH", "ARTIFACT_SOURCE_MISSING", "BUILD_NOT_FOUND", "BUILD_READ_FAILED", "BUILD_RESULT_SCOPE_MISMATCH", "DELIVERY_NOT_CONFIGURED", "DELIVERY_SOURCE_KIND_CHANGED", "DUPLICATE_LOGICAL_REPOSITORY", "DUPLICATE_OR_INVALID_REPOSITORY", "ENVIRONMENT_DELETED", "ENVIRONMENT_NOT_ACTIVE", "ENVIRONMENT_NOT_FOUND", "ENVIRONMENT_READ_FAILED", "S3_ACCESS_DENIED", "S3_SOURCE_PREFIX_OVERLAP", "SOURCE_INTEGRATION_UNRESOLVED", "SOURCE_INTEGRATION_READ_FAILED", "SOURCE_INTEGRATION_INVALID", "SOURCE_INTEGRATION_CHANGED", "EXPORT_CREDENTIALS_MISSING", "EXPORT_CREDENTIAL_EXPIRY_INVALID", "EXPORT_DESTINATION_INVALID", "EXPORT_EXISTING_OBJECT_MISMATCH", "EXPORT_PUT_FAILED", "EXPORT_RECONCILIATION_READ_FAILED", "EXPORT_ROLE_ASSUMPTION_FAILED", "GITHUB_ACCESS_DENIED", "GITHUB_BASE_NOT_FOUND", "GITHUB_BRANCH_CONFLICT", "GITHUB_NOT_FOUND", "GITHUB_RATE_LIMITED", "GITHUB_REPOSITORY_CHANGED", "GITHUB_REPOSITORY_NOT_FOUND", "GITHUB_REQUEST_FAILED", "GITHUB_REQUEST_REJECTED", "GITHUB_RESPONSE_INVALID", "GREEN_ATTEMPT_NOT_SUCCESSFUL", "GREEN_COMPLETION_NOT_OBSERVED", "PATCH_NOT_SELECTED", "INCOMPLETE_SOURCE_REFERENCE", "INVALID_ARCHIVE_DIGEST", "INVALID_ARTIFACT_SOURCE", "INVALID_COMPLETED_MANIFEST", "INVALID_EXPORT_RECEIPT", "INVALID_GITHUB_PROVENANCE", "INVALID_S3_DESTINATION", "INVALID_SERVICE_RECEIPT", "INVALID_SOURCE_INVENTORY", "INVALID_SOURCE_MANIFEST", "INVALID_SOURCE_REFERENCE", "ISSUE_INTEGRITY_FAILURE", "ISSUE_NOT_FOUND", "MANIFEST_INVENTORY_MISMATCH", "MANIFEST_PROVENANCE_CHANGED", "MANIFEST_REPOSITORY_SET_MISMATCH", "MANIFEST_SCOPE_OR_VERSION_MISMATCH", "MISSING_BUILD_RESULT", "MISSING_COMPLETED_MANIFEST", "MISSING_RESULT_DIGEST", "MISSING_SOURCE_MANIFEST", "MISSING_SOURCE_TARGET", "PATCH_NOT_APPLICABLE", "PATCH_STORAGE_IDENTITY_MISSING", "PATCH_UNSUPPORTED", "PUBLICATION_OUTCOME_UNKNOWN_AFTER_RETRY_LIMIT", "PUBLISHER_DEADLINE_EXCEEDED", "RESULT_COMPLETED_MANIFEST_MISMATCH", "RESULT_SOURCE_BINDING_MISMATCH", "SERVICE_COPY_DIGEST_MISMATCH", "SERVICE_OBJECT_READ_FAILED", "SERVICE_OBJECT_TOO_LARGE", "SERVICE_RECEIPT_OUTSIDE_ISSUE", "SOURCE_OBJECT_DIGEST_MISMATCH", "SOURCE_REFERENCE_OUTSIDE_BUILD", "SOURCE_TARGET_BUILD_MISMATCH", "UNKNOWN_REPOSITORY", "UNKNOWN_SOURCE_PROVIDER", "UNSUPPORTED_ENVIRONMENT_SCHEMA", "github_destination_not_enabled", "patch_creation_policy_disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssue AWS API Documentation
    #
    # @overload get_code_issue(params = {})
    # @param [Hash] params ({})
    def get_code_issue(params = {}, options = {})
      req = build_request(:get_code_issue, params)
      req.send_request(options)
    end

    # Retrieves one immutable artifact attached to an issue, including its
    # content.
    #
    # @option params [required, String] :environment_id
    #   The environment that owns the issue.
    #
    # @option params [required, String] :issue_id
    #   The issue the artifact is attached to.
    #
    # @option params [required, String] :artifact_id
    #   The unique identifier of the artifact to retrieve.
    #
    # @return [Types::GetCodeIssueArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeIssueArtifactOutput#artifact_id #artifact_id} => String
    #   * {Types::GetCodeIssueArtifactOutput#artifact_type #artifact_type} => String
    #   * {Types::GetCodeIssueArtifactOutput#media_type #media_type} => String
    #   * {Types::GetCodeIssueArtifactOutput#body #body} => Types::IssueArtifactBody
    #   * {Types::GetCodeIssueArtifactOutput#metadata #metadata} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetCodeIssueArtifactOutput#producer #producer} => Types::IssueArtifactProducerSummary
    #   * {Types::GetCodeIssueArtifactOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_issue_artifact({
    #     environment_id: "EnvironmentId", # required
    #     issue_id: "IssueId", # required
    #     artifact_id: "IssueArtifactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.artifact_id #=> String
    #   resp.artifact_type #=> String, one of "EVIDENCE", "AGENT_COMMUNICATION", "VALIDATION_EVIDENCE", "REMEDIATION_PROPOSAL", "DECISION", "PATCH"
    #   resp.media_type #=> String
    #   resp.body.validation_evidence.exploitable #=> String, one of "EXPLOITABLE", "NOT_EXPLOITABLE", "UNCERTAIN"
    #   resp.body.validation_evidence.terminal_status #=> String, one of "COMPLETED", "FAILED", "NO_SOURCE_AVAILABLE", "PARTIAL"
    #   resp.body.validation_evidence.flow_verdicts #=> Array
    #   resp.body.validation_evidence.flow_verdicts[0].flow_id #=> String
    #   resp.body.validation_evidence.flow_verdicts[0].verdict #=> String, one of "CONFIRMED", "DENIED", "INCONCLUSIVE"
    #   resp.body.validation_evidence.flow_verdicts[0].confidence #=> Float
    #   resp.body.validation_evidence.flow_verdicts[0].evidence #=> Array
    #   resp.body.validation_evidence.flow_verdicts[0].evidence[0] #=> String
    #   resp.body.validation_evidence.attack_flows_confirmed #=> Array
    #   resp.body.validation_evidence.attack_flows_confirmed[0] #=> String
    #   resp.body.validation_evidence.exploit_artifact.payload #=> String
    #   resp.body.validation_evidence.exploit_artifact.target_url #=> String
    #   resp.body.validation_evidence.exploit_artifact.http_method #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"
    #   resp.body.validation_evidence.exploit_artifact.headers #=> Hash
    #   resp.body.validation_evidence.exploit_artifact.headers["ArtifactCitation"] #=> String
    #   resp.body.validation_evidence.exploit_artifact.response_status #=> Integer
    #   resp.body.validation_evidence.exploit_artifact.response_snippet #=> String
    #   resp.body.validation_evidence.exploit_artifact.effect #=> String, one of "DATA_LEAKED", "ERROR_REVEALED", "BEHAVIOR_CHANGED", "NO_EFFECT"
    #   resp.body.validation_evidence.executed_proof.code.proof_code #=> Array
    #   resp.body.validation_evidence.executed_proof.code.proof_code[0].content #=> String
    #   resp.body.validation_evidence.executed_proof.output.console_output #=> String
    #   resp.body.validation_evidence.executed_proof.observed_effect #=> String, one of "DATA_LEAKED", "ERROR_REVEALED", "BEHAVIOR_CHANGED", "NO_EFFECT"
    #   resp.body.validation_evidence.source_analysis.summary #=> String
    #   resp.body.validation_evidence.source_analysis.inferred_effect #=> String, one of "DATA_LEAKED", "ERROR_REVEALED", "BEHAVIOR_CHANGED", "NO_EFFECT"
    #   resp.body.validation_evidence.per_finding_results #=> Array
    #   resp.body.validation_evidence.per_finding_results[0].finding_id #=> String
    #   resp.body.validation_evidence.per_finding_results[0].exploitable #=> String, one of "EXPLOITABLE", "NOT_EXPLOITABLE", "UNCERTAIN"
    #   resp.body.validation_evidence.per_finding_results[0].confidence #=> Float
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts #=> Array
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts[0].flow_id #=> String
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts[0].verdict #=> String, one of "CONFIRMED", "DENIED", "INCONCLUSIVE"
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts[0].confidence #=> Float
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts[0].evidence #=> Array
    #   resp.body.validation_evidence.per_finding_results[0].flow_verdicts[0].evidence[0] #=> String
    #   resp.body.validation_evidence.per_finding_results[0].reasoning_chain #=> Array
    #   resp.body.validation_evidence.per_finding_results[0].reasoning_chain[0].step #=> Integer
    #   resp.body.validation_evidence.per_finding_results[0].reasoning_chain[0].claim #=> String
    #   resp.body.validation_evidence.per_finding_results[0].reasoning_chain[0].source #=> String
    #   resp.body.validation_evidence.per_finding_results[0].reasoning_chain[0].confidence #=> Float
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.payload #=> String
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.target_url #=> String
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.http_method #=> String, one of "GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.headers #=> Hash
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.headers["ArtifactCitation"] #=> String
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.response_status #=> Integer
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.response_snippet #=> String
    #   resp.body.validation_evidence.per_finding_results[0].exploit_artifact.effect #=> String, one of "DATA_LEAKED", "ERROR_REVEALED", "BEHAVIOR_CHANGED", "NO_EFFECT"
    #   resp.body.prevalidation_signals.produced_by #=> String
    #   resp.body.prevalidation_signals.signals #=> Array
    #   resp.body.prevalidation_signals.signals[0].subject_ref #=> String
    #   resp.body.prevalidation_signals.signals[0].dimension #=> String, one of "EXPLOITABILITY", "BLAST_RADIUS", "NETWORK_EXPOSURE", "PRECONDITION", "CODE_CONTEXT", "LIKELIHOOD_ASSESSMENT", "IMPACT_ASSESSMENT"
    #   resp.body.prevalidation_signals.signals[0].signal_strength #=> String, one of "NONE", "WEAK", "MODERATE", "STRONG"
    #   resp.body.prevalidation_signals.signals[0].conclusion #=> String
    #   resp.body.prevalidation_signals.signals[0].producer_id #=> String
    #   resp.body.prevalidation_signals.signals[0].producer_version #=> String
    #   resp.body.prevalidation_signals.signals[0].confidence #=> Float
    #   resp.body.prevalidation_signals.signals[0].confidence_reasoning.summary #=> String
    #   resp.body.prevalidation_signals.signals[0].confidence_reasoning.factors #=> Array
    #   resp.body.prevalidation_signals.signals[0].confidence_reasoning.factors[0] #=> String
    #   resp.body.prevalidation_signals.signals[0].computed.likelihood_band #=> String, one of "VERY_LOW", "LOW", "MODERATE", "HIGH"
    #   resp.body.prevalidation_signals.signals[0].computed.impact_band #=> String, one of "VERY_LOW", "LOW", "MODERATE", "HIGH"
    #   resp.body.prevalidation_signals.signals[0].computed.barriers #=> Integer
    #   resp.body.prevalidation_signals.signals[0].preconditions.reachable_from_attacker.value #=> Boolean
    #   resp.body.prevalidation_signals.signals[0].preconditions.reachable_from_attacker.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].preconditions.reachable_from_attacker.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.reachable_from_attacker.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.configuration_needed.value #=> Boolean
    #   resp.body.prevalidation_signals.signals[0].preconditions.configuration_needed.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].preconditions.configuration_needed.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.configuration_needed.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.access_level.value #=> String, one of "NONE", "ANY_AUTHENTICATED", "PRIVILEGED"
    #   resp.body.prevalidation_signals.signals[0].preconditions.access_level.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].preconditions.access_level.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.access_level.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.user_interaction_required.value #=> Boolean
    #   resp.body.prevalidation_signals.signals[0].preconditions.user_interaction_required.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].preconditions.user_interaction_required.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].preconditions.user_interaction_required.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.attacker_gains.value #=> String, one of "EXECUTE", "MODIFY_PRIVILEGED", "MODIFY_DATA", "MODIFY_COSMETIC", "READ", "NEITHER"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.attacker_gains.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.attacker_gains.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.attacker_gains.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.blast_radius.value #=> String, one of "CROSS_TENANT", "OTHER_USERS_IN_TENANT", "OWN_SCOPE"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.blast_radius.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.blast_radius.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.blast_radius.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.target_value.value #=> String, one of "HIGH", "MEDIUM", "LOW"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.target_value.basis #=> String, one of "CODE", "GRAPH", "FINDING", "INFERRED", "NO_EVIDENCE_DEFAULT"
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.target_value.reason #=> String
    #   resp.body.prevalidation_signals.signals[0].impact_dimensions.target_value.missing_info #=> String
    #   resp.body.prevalidation_signals.signals[0].exploitability.verdict #=> String, one of "EXPLOITABLE", "NOT_EXPLOITABLE", "UNCERTAIN"
    #   resp.body.prevalidation_signals.signals[0].exploitability.reached_crown_jewels #=> Boolean
    #   resp.body.prevalidation_signals.signals[0].exploitability.highest_layer_reached #=> Integer
    #   resp.body.prevalidation_signals.signals[0].exploitability.confidence_tier #=> String, one of "SOURCE_READ", "STATIC_PROVEN", "BUILD_PROVEN", "RUNTIME_PROVEN"
    #   resp.body.prevalidation_signals.signals[0].exploitability.scriptable #=> Boolean
    #   resp.body.prevalidation_signals.signals[0].exploitability.source_validation_artifact_id #=> String
    #   resp.body.remediation_proposal.patch #=> String
    #   resp.body.remediation_proposal.format #=> String, one of "GIT_MAILBOX_PATCH", "GIT_BINARY_DIFF", "GIT_DIFF"
    #   resp.body.remediation_proposal.filename #=> String
    #   resp.body.remediation_proposal.patch_sha_256 #=> String
    #   resp.body.patch.patch #=> String
    #   resp.body.patch.format #=> String, one of "GIT_MAILBOX_PATCH", "GIT_BINARY_DIFF", "GIT_DIFF"
    #   resp.body.patch.repository_name #=> String
    #   resp.body.patch.patch_sha_256 #=> String
    #   resp.body.patch.size_bytes #=> Integer
    #   resp.body.patch.delivery.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED", "SKIPPED", "ABANDONED"
    #   resp.body.patch.delivery.target.s3.bucket #=> String
    #   resp.body.patch.delivery.target.s3.key #=> String
    #   resp.body.patch.delivery.target.s3.version #=> String
    #   resp.body.patch.delivery.target.github.owner #=> String
    #   resp.body.patch.delivery.target.github.repository #=> String
    #   resp.body.patch.delivery.target.github.pull_request_number #=> Integer
    #   resp.body.patch.delivery.target.github.head_sha #=> String
    #   resp.body.patch.delivery.updated_at #=> Time
    #   resp.body.raw #=> String
    #   resp.producer.agent #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssueArtifact AWS API Documentation
    #
    # @overload get_code_issue_artifact(params = {})
    # @param [Hash] params ({})
    def get_code_issue_artifact(params = {}, options = {})
      req = build_request(:get_code_issue_artifact, params)
      req.send_request(options)
    end

    # Retrieves one customer-visible environment scan.
    #
    # @option params [required, String] :environment_id
    #   Environment that owns the scan.
    #
    # @option params [required, String] :scan_run_id
    #   Scan to retrieve.
    #
    # @return [Types::GetCodeScanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeScanOutput#scan #scan} => Types::CodeScanData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_scan({
    #     environment_id: "EnvironmentId", # required
    #     scan_run_id: "ScanRunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan.scan_run_id #=> String
    #   resp.scan.status #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING", "SUCCEEDED", "FAILED"
    #   resp.scan.origin #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.scan.created_at #=> Time
    #   resp.scan.completed_at #=> Time
    #   resp.scan.failure_message #=> String
    #   resp.scan.failure_stage #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * code_scan_succeeded
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeScan AWS API Documentation
    #
    # @overload get_code_scan(params = {})
    # @param [Hash] params ({})
    def get_code_scan(params = {}, options = {})
      req = build_request(:get_code_scan, params)
      req.send_request(options)
    end

    # Retrieves the current state of the Collector for the caller's
    # account.
    #
    # @option params [required, String] :collector_id
    #   The unique identifier of the Collector to retrieve.
    #
    # @return [Types::GetCollectorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollectorOutput#collector_id #collector_id} => String
    #   * {Types::GetCollectorOutput#collector_arn #collector_arn} => String
    #   * {Types::GetCollectorOutput#type #type} => String
    #   * {Types::GetCollectorOutput#status #status} => String
    #   * {Types::GetCollectorOutput#config_recorder_arn #config_recorder_arn} => String
    #   * {Types::GetCollectorOutput#kubernetes_cluster_role_arn #kubernetes_cluster_role_arn} => String
    #   * {Types::GetCollectorOutput#created_at #created_at} => Time
    #   * {Types::GetCollectorOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collector({
    #     collector_id: "CollectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.collector_id #=> String
    #   resp.collector_arn #=> String
    #   resp.type #=> String, one of "AWS_COLLECTOR"
    #   resp.status #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.config_recorder_arn #=> String
    #   resp.kubernetes_cluster_role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollector AWS API Documentation
    #
    # @overload get_collector(params = {})
    # @param [Hash] params ({})
    def get_collector(params = {}, options = {})
      req = build_request(:get_collector, params)
      req.send_request(options)
    end

    # Authorizes an Environment's access to a Collector's data. Continuum
    # calls this operation with the Environment's Collector data-access
    # role before it reads the Collector's inventory, so grant
    # continuum:GetCollectorDataAccessAuthorization to that role and, for a
    # Collector in another account, in the Collector's resource policy. The
    # operation evaluates the action against the exact Collector ARN and the
    # Collector's current resource policy using IAM and the caller's
    # authenticated request context, with environmentArn as the
    # continuum:EnvironmentArn condition key. A successful request returns
    # HTTP 200 with no response members. If access is not granted, the
    # operation returns AccessDeniedException without disclosing Collector
    # existence, ownership, or the policy layer that denied access. The
    # service does not reinterpret the policy using only an account ID.
    #
    # @option params [required, String] :account_id
    #   The AWS account that owns the Collector.
    #
    # @option params [required, String] :collector_id
    #   The unique identifier of the Collector.
    #
    # @option params [String] :environment_arn
    #   The full ARN of the Environment requesting the Collector's data. The
    #   Environment must be in the caller's account. Continuum supplies this
    #   value as the continuum:EnvironmentArn condition key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collector_data_access_authorization({
    #     account_id: "AwsAccountId", # required
    #     collector_id: "CollectorId", # required
    #     environment_arn: "EnvironmentArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollectorDataAccessAuthorization AWS API Documentation
    #
    # @overload get_collector_data_access_authorization(params = {})
    # @param [Hash] params ({})
    def get_collector_data_access_authorization(params = {}, options = {})
      req = build_request(:get_collector_data_access_authorization, params)
      req.send_request(options)
    end

    # Retrieves the current state and configuration of an environment.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the environment to retrieve.
    #
    # @return [Types::GetEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentOutput#environment_id #environment_id} => String
    #   * {Types::GetEnvironmentOutput#environment_arn #environment_arn} => String
    #   * {Types::GetEnvironmentOutput#name #name} => String
    #   * {Types::GetEnvironmentOutput#status #status} => String
    #   * {Types::GetEnvironmentOutput#status_message #status_message} => String
    #   * {Types::GetEnvironmentOutput#status_updated_at #status_updated_at} => Time
    #   * {Types::GetEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentOutput#configuration #configuration} => Types::EnvironmentConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.status_message #=> String
    #   resp.status_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.configuration.code_configuration.collector_details.collector_data_access_role_arn #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources #=> Array
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].integration_id #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].code_prefix #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].context_prefix #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources #=> Array
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].integration_id #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].repository #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].default_branch #=> String
    #   resp.configuration.code_configuration.environment_configuration.network.allowed_domains #=> Array
    #   resp.configuration.code_configuration.environment_configuration.network.allowed_domains[0] #=> String
    #   resp.configuration.code_configuration.environment_configuration.scan_frequency #=> String
    #   resp.configuration.code_configuration.environment_configuration.patch_creation_policy #=> String, one of "ENABLED", "DISABLED"
    #   resp.configuration.code_configuration.latest_scan.scan_run_id #=> String
    #   resp.configuration.code_configuration.latest_scan.status #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING", "SUCCEEDED", "FAILED"
    #   resp.configuration.code_configuration.latest_scan.origin #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.configuration.code_configuration.latest_scan.created_at #=> Time
    #   resp.configuration.code_configuration.latest_scan.completed_at #=> Time
    #   resp.configuration.code_configuration.latest_scan.failure_message #=> String
    #   resp.configuration.code_configuration.latest_scan.failure_stage #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Retrieves information about an integration.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the integration to retrieve.
    #
    # @return [Types::GetIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationOutput#integration_id #integration_id} => String
    #   * {Types::GetIntegrationOutput#integration_arn #integration_arn} => String
    #   * {Types::GetIntegrationOutput#name #name} => String
    #   * {Types::GetIntegrationOutput#integration_type #integration_type} => String
    #   * {Types::GetIntegrationOutput#provider_details #provider_details} => Types::ProviderDetails
    #   * {Types::GetIntegrationOutput#created_at #created_at} => Time
    #   * {Types::GetIntegrationOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     integration_id: "IntegrationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_id #=> String
    #   resp.integration_arn #=> String
    #   resp.name #=> String
    #   resp.integration_type #=> String, one of "GITHUB", "GITLAB", "S3"
    #   resp.provider_details.github.organization_name #=> String
    #   resp.provider_details.gitlab.instance_url #=> String
    #   resp.provider_details.gitlab.target_type #=> String, one of "GROUP", "PROJECT"
    #   resp.provider_details.gitlab.target_path #=> String
    #   resp.provider_details.gitlab.token_rotation #=> String, one of "AUTOMATIC", "NONE"
    #   resp.provider_details.gitlab.expires_at #=> Time
    #   resp.provider_details.s3.bucket #=> String
    #   resp.provider_details.s3.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetIntegration AWS API Documentation
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Retrieves the resource policy attached to a Continuum resource.
    #
    # @option params [required, String] :arn
    #   The ARN of a resource in the caller's account.
    #
    # @return [Types::GetResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyOutput#arn #arn} => String
    #   * {Types::GetResourcePolicyOutput#policy #policy} => String
    #   * {Types::GetResourcePolicyOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     arn: "ResourcePolicyTargetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Lists the Collectors currently associated with one Environment in
    # ascending collectorId order. Each entry carries the Collector ARN, so
    # a listed association can be passed straight to DisassociateCollector,
    # including when the Collector belongs to another account. An
    # association recorded before Continuum persisted the ARN is omitted
    # from the response, because without the ARN it cannot be acted on.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the Environment whose associations to list.
    #
    # @option params [Integer] :max_results
    #   Maximum number of associated Collectors to return.
    #
    # @option params [String] :next_token
    #   Pagination token returned by a prior request.
    #
    # @return [Types::ListAssociatedCollectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedCollectorsOutput#associated_collectors #associated_collectors} => Array&lt;Types::AssociatedCollector&gt;
    #   * {Types::ListAssociatedCollectorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_collectors({
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_collectors #=> Array
    #   resp.associated_collectors[0].collector_id #=> String
    #   resp.associated_collectors[0].collector_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedCollectors AWS API Documentation
    #
    # @overload list_associated_collectors(params = {})
    # @param [Hash] params ({})
    def list_associated_collectors(params = {}, options = {})
      req = build_request(:list_associated_collectors, params)
      req.send_request(options)
    end

    # Lists the Environments currently associated with one Collector in
    # lexicographically ascending environmentArn order. The ARN identifies
    # each Environment across accounts within the Collector's Region.
    #
    # @option params [required, String] :collector_id
    #   The unique identifier of the Collector whose associations to list.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Environment associations to return.
    #
    # @option params [String] :next_token
    #   Pagination token returned by a prior request.
    #
    # @return [Types::ListAssociatedEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedEnvironmentsOutput#associated_environments #associated_environments} => Array&lt;Types::AssociatedEnvironment&gt;
    #   * {Types::ListAssociatedEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_environments({
    #     collector_id: "CollectorId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_environments #=> Array
    #   resp.associated_environments[0].environment_id #=> String
    #   resp.associated_environments[0].environment_arn #=> String
    #   resp.associated_environments[0].name #=> String
    #   resp.associated_environments[0].status #=> String, one of "ACTIVE"
    #   resp.associated_environments[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedEnvironments AWS API Documentation
    #
    # @overload list_associated_environments(params = {})
    # @param [Hash] params ({})
    def list_associated_environments(params = {}, options = {})
      req = build_request(:list_associated_environments, params)
      req.send_request(options)
    end

    # Lists the findings in an environment in descending findingId order.
    #
    # @option params [required, String] :environment_id
    #   The environment whose findings to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #
    # @return [Types::ListCodeFindingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeFindingsOutput#items #items} => Array&lt;Types::FindingSummary&gt;
    #   * {Types::ListCodeFindingsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_findings({
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].finding_id #=> String
    #   resp.items[0].finding_arn #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].source #=> String
    #   resp.items[0].source_finding_id #=> String
    #   resp.items[0].reported_at #=> Time
    #   resp.items[0].status #=> String, one of "SUBMITTED", "VALIDATING", "CONFIRMED", "DISCARDED"
    #   resp.items[0].status_updated_at #=> Time
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].scan_run_id #=> String
    #   resp.items[0].status_message #=> String
    #   resp.items[0].discard_reason #=> String, one of "SCANNER_VALIDATED_FALSE_POSITIVE", "SCANNER_NEEDS_REVIEW", "FALSE_POSITIVE_VALIDATED_AGAINST_CONTEXT", "DUPLICATE_OF_OPEN_ISSUE", "DUPLICATE_OF_CLOSED_ISSUE", "COMPENSATING_CONTROL_PRESENT", "OUT_OF_SCOPE", "INSUFFICIENT_EVIDENCE", "PROCESSING_FAILED", "SOURCE_REPO_NOT_FOUND"
    #   resp.items[0].discard_reasoning #=> String
    #   resp.items[0].duplicate_of_issue_id #=> String
    #   resp.items[0].created_issue_id #=> String
    #   resp.items[0].completed_at #=> Time
    #   resp.items[0].type #=> String, one of "CONTINUUM_CODE_VULN", "CUSTOMER_CODE_VULN"
    #   resp.items[0].title #=> String
    #   resp.items[0].severity #=> String, one of "UNKNOWN", "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "FATAL", "OTHER"
    #   resp.items[0].category #=> String
    #   resp.items[0].file_path #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeFindings AWS API Documentation
    #
    # @overload list_code_findings(params = {})
    # @param [Hash] params ({})
    def list_code_findings(params = {}, options = {})
      req = build_request(:list_code_findings, params)
      req.send_request(options)
    end

    # Lists the artifacts attached to an issue in descending artifactId
    # order. Content is returned by GetCodeIssueArtifact.
    #
    # @option params [required, String] :environment_id
    #   The environment that owns the issue.
    #
    # @option params [required, String] :issue_id
    #   The issue whose artifacts to list.
    #
    # @option params [String] :artifact_type
    #   Optional filter for a semantic artifact category. Omit to list all
    #   artifacts attached to the issue.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #
    # @return [Types::ListCodeIssueArtifactsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeIssueArtifactsOutput#items #items} => Array&lt;Types::IssueArtifactItem&gt;
    #   * {Types::ListCodeIssueArtifactsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_issue_artifacts({
    #     environment_id: "EnvironmentId", # required
    #     issue_id: "IssueId", # required
    #     artifact_type: "EVIDENCE", # accepts EVIDENCE, AGENT_COMMUNICATION, VALIDATION_EVIDENCE, REMEDIATION_PROPOSAL, DECISION, PATCH
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].artifact_id #=> String
    #   resp.items[0].artifact_type #=> String, one of "EVIDENCE", "AGENT_COMMUNICATION", "VALIDATION_EVIDENCE", "REMEDIATION_PROPOSAL", "DECISION", "PATCH"
    #   resp.items[0].media_type #=> String
    #   resp.items[0].producer.agent #=> String
    #   resp.items[0].content_size_bytes #=> Integer
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssueArtifacts AWS API Documentation
    #
    # @overload list_code_issue_artifacts(params = {})
    # @param [Hash] params ({})
    def list_code_issue_artifacts(params = {}, options = {})
      req = build_request(:list_code_issue_artifacts, params)
      req.send_request(options)
    end

    # Lists the issues in an environment in descending issueId order.
    #
    # @option params [required, String] :environment_id
    #   The environment whose issues to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #
    # @return [Types::ListCodeIssuesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeIssuesOutput#items #items} => Array&lt;Types::IssueSummary&gt;
    #   * {Types::ListCodeIssuesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_issues({
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].issue_id #=> String
    #   resp.items[0].issue_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.items[0].confidence #=> Integer
    #   resp.items[0].status #=> String, one of "CREATED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.items[0].phase #=> String, one of "VALIDATION", "PRIORITIZATION", "REMEDIATION"
    #   resp.items[0].status_reason #=> String, one of "INTERNAL_ERROR", "REMEDIATION_FAILED"
    #   resp.items[0].status_message #=> String
    #   resp.items[0].status_updated_at #=> Time
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssues AWS API Documentation
    #
    # @overload list_code_issues(params = {})
    # @param [Hash] params ({})
    def list_code_issues(params = {}, options = {})
      req = build_request(:list_code_issues, params)
      req.send_request(options)
    end

    # Lists customer-visible scans for one environment in descending
    # scanRunId order.
    #
    # @option params [required, String] :environment_id
    #   Environment whose scans to list.
    #
    # @option params [Integer] :max_results
    #   Maximum number of scans to return.
    #
    # @option params [String] :next_token
    #   Pagination token returned by a prior request.
    #
    # @return [Types::ListCodeScansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeScansOutput#scans #scans} => Array&lt;Types::CodeScanSummary&gt;
    #   * {Types::ListCodeScansOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_scans({
    #     environment_id: "EnvironmentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scans #=> Array
    #   resp.scans[0].scan_run_id #=> String
    #   resp.scans[0].status #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING", "SUCCEEDED", "FAILED"
    #   resp.scans[0].origin #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.scans[0].created_at #=> Time
    #   resp.scans[0].completed_at #=> Time
    #   resp.scans[0].failure_message #=> String
    #   resp.scans[0].failure_stage #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeScans AWS API Documentation
    #
    # @overload list_code_scans(params = {})
    # @param [Hash] params ({})
    def list_code_scans(params = {}, options = {})
      req = build_request(:list_code_scans, params)
      req.send_request(options)
    end

    # Lists the Collectors owned by the authenticated caller's account,
    # including a Collector whose deletion is in progress. A Collector that
    # is still being created is omitted. The account-scoped Collector quota
    # currently permits at most one result, so no result ordering applies.
    #
    # @return [Types::ListCollectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollectorsOutput#items #items} => Array&lt;Types::CollectorSummary&gt;
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].collector_id #=> String
    #   resp.items[0].collector_arn #=> String
    #   resp.items[0].type #=> String, one of "AWS_COLLECTOR"
    #   resp.items[0].status #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.items[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCollectors AWS API Documentation
    #
    # @overload list_collectors(params = {})
    # @param [Hash] params ({})
    def list_collectors(params = {}, options = {})
      req = build_request(:list_collectors, params)
      req.send_request(options)
    end

    # Lists all environments in your account in descending environmentId
    # order. This complete-inventory operation intentionally has no response
    # filters; see the input documentation for the API standards
    # justification.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #
    # @return [Types::ListEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsOutput#items #items} => Array&lt;Types::EnvironmentListEntry&gt;
    #   * {Types::ListEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].environment_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE"
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists the integrations in your account in descending integrationId
    # order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #
    # @return [Types::ListIntegrationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationsOutput#items #items} => Array&lt;Types::IntegrationSummary&gt;
    #   * {Types::ListIntegrationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].integration_id #=> String
    #   resp.items[0].integration_arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].integration_type #=> String, one of "GITHUB", "GITLAB", "S3"
    #   resp.items[0].provider_details.github.organization_name #=> String
    #   resp.items[0].provider_details.gitlab.instance_url #=> String
    #   resp.items[0].provider_details.gitlab.target_type #=> String, one of "GROUP", "PROJECT"
    #   resp.items[0].provider_details.gitlab.target_path #=> String
    #   resp.items[0].provider_details.gitlab.token_rotation #=> String, one of "AUTOMATIC", "NONE"
    #   resp.items[0].provider_details.gitlab.expires_at #=> Time
    #   resp.items[0].provider_details.s3.bucket #=> String
    #   resp.items[0].provider_details.s3.role_arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListIntegrations AWS API Documentation
    #
    # @overload list_integrations(params = {})
    # @param [Hash] params ({})
    def list_integrations(params = {}, options = {})
      req = build_request(:list_integrations, params)
      req.send_request(options)
    end

    # Creates or replaces the resource policy attached to a Continuum
    # resource.
    #
    # @option params [required, String] :arn
    #   The ARN of a resource in the caller's account.
    #
    # @option params [String] :policy
    #   Omit or supply an empty Statement array to clear resource-policy
    #   grants and store the canonical empty-statement policy. Cross-account
    #   access is denied; same-account access remains subject to identity
    #   policies. Use an explicit Deny statement to deny same-account
    #   principals too.
    #
    # @option params [String] :expected_revision_id
    #   Optional optimistic-concurrency token for the currently observed
    #   policy.
    #
    # @return [Types::PutResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyOutput#arn #arn} => String
    #   * {Types::PutResourcePolicyOutput#policy #policy} => String
    #   * {Types::PutResourcePolicyOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     arn: "ResourcePolicyTargetArn", # required
    #     policy: "ResourcePolicyInputDocument",
    #     expected_revision_id: "ResourcePolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Starts an OAuth authorization for a new integration and returns the
    # values the caller sends to the provider's authorization endpoint. The
    # authorization belongs to the calling AWS account, can be redeemed once
    # by CreateIntegration from that same account, and expires after ten
    # minutes.
    #
    # @option params [required, String] :provider_type
    #   The provider to authorize. Only GITHUB is supported.
    #
    # @option params [String] :name
    #   The name the integration will be created with. When specified, the
    #   request fails with ConflictException if an integration with this name
    #   already exists in the account, before the caller leaves for the
    #   provider. The name is only checked: it is not reserved, stored, or
    #   authorized. CreateIntegration requires its own name, checks it again,
    #   and may use a different one.
    #
    # @return [Types::StartIntegrationAuthorizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartIntegrationAuthorizationOutput#state #state} => String
    #   * {Types::StartIntegrationAuthorizationOutput#code_challenge #code_challenge} => String
    #   * {Types::StartIntegrationAuthorizationOutput#code_challenge_method #code_challenge_method} => String
    #   * {Types::StartIntegrationAuthorizationOutput#expires_at #expires_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_integration_authorization({
    #     provider_type: "GITHUB", # required, accepts GITHUB
    #     name: "IntegrationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String
    #   resp.code_challenge #=> String
    #   resp.code_challenge_method #=> String, one of "S256"
    #   resp.expires_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/StartIntegrationAuthorization AWS API Documentation
    #
    # @overload start_integration_authorization(params = {})
    # @param [Hash] params ({})
    def start_integration_authorization(params = {}, options = {})
      req = build_request(:start_integration_authorization, params)
      req.send_request(options)
    end

    # Updates the customer-controlled mutable properties of a Collector.
    # Only the name and Kubernetes cluster IAM role can be changed.
    #
    # @option params [required, String] :collector_id
    #   The unique identifier of the Collector to update.
    #
    # @option params [String] :name
    #   The new customer-visible name.
    #
    # @option params [Types::KubernetesClusterRoleUpdate] :kubernetes_cluster_role
    #   Atomic update to the IAM role configuration used to collect Kubernetes
    #   cluster metadata. The set variant requires a complete configuration;
    #   the authenticated caller must be allowed to pass its exact roleArn to
    #   Continuum. The remove variant clears both the role and external ID.
    #
    # @return [Types::UpdateCollectorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCollectorOutput#collector_id #collector_id} => String
    #   * {Types::UpdateCollectorOutput#collector_arn #collector_arn} => String
    #   * {Types::UpdateCollectorOutput#type #type} => String
    #   * {Types::UpdateCollectorOutput#status #status} => String
    #   * {Types::UpdateCollectorOutput#config_recorder_arn #config_recorder_arn} => String
    #   * {Types::UpdateCollectorOutput#kubernetes_cluster_role_arn #kubernetes_cluster_role_arn} => String
    #   * {Types::UpdateCollectorOutput#created_at #created_at} => Time
    #   * {Types::UpdateCollectorOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_collector({
    #     collector_id: "CollectorId", # required
    #     name: "CollectorName",
    #     kubernetes_cluster_role: {
    #       set: {
    #         role_arn: "KubernetesClusterRoleArn", # required
    #         external_id: "KubernetesClusterExternalId",
    #       },
    #       remove: {
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.collector_id #=> String
    #   resp.collector_arn #=> String
    #   resp.type #=> String, one of "AWS_COLLECTOR"
    #   resp.status #=> String, one of "ACTIVE", "PENDING_DELETION"
    #   resp.config_recorder_arn #=> String
    #   resp.kubernetes_cluster_role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateCollector AWS API Documentation
    #
    # @overload update_collector(params = {})
    # @param [Hash] params ({})
    def update_collector(params = {}, options = {})
      req = build_request(:update_collector, params)
      req.send_request(options)
    end

    # Updates the customer-controlled mutable properties of an environment.
    # Only the name, the environment's S3 integration source and repository
    # selections, its scan frequency, its network policy, and its patch
    # creation policy can be changed.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of the environment to update.
    #
    # @option params [String] :name
    #   The new customer-visible name.
    #
    # @option params [Types::UpdateEnvironmentConfiguration] :configuration
    #   Type-specific configuration changes. Omission preserves the
    #   configuration.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#environment_id #environment_id} => String
    #   * {Types::UpdateEnvironmentOutput#environment_arn #environment_arn} => String
    #   * {Types::UpdateEnvironmentOutput#name #name} => String
    #   * {Types::UpdateEnvironmentOutput#status #status} => String
    #   * {Types::UpdateEnvironmentOutput#status_message #status_message} => String
    #   * {Types::UpdateEnvironmentOutput#status_updated_at #status_updated_at} => Time
    #   * {Types::UpdateEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentOutput#configuration #configuration} => Types::EnvironmentConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     configuration: {
    #       code_configuration: {
    #         source_configuration: {
    #           s3_sources: [
    #             {
    #               integration_id: "IntegrationId", # required
    #               code_prefix: "EnvironmentSourcePrefix",
    #               context_prefix: "EnvironmentSourcePrefix",
    #             },
    #           ],
    #           repository_sources: [
    #             {
    #               integration_id: "IntegrationId", # required
    #               repository: "RepositoryName", # required
    #               default_branch: "RepositoryBranch",
    #             },
    #           ],
    #         },
    #         environment_configuration: {
    #           network: {
    #             allowed_domains: ["DomainName"],
    #           },
    #           scan_frequency: "ScanFrequency",
    #           patch_creation_policy: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.status_message #=> String
    #   resp.status_updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.configuration.code_configuration.collector_details.collector_data_access_role_arn #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources #=> Array
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].integration_id #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].code_prefix #=> String
    #   resp.configuration.code_configuration.source_configuration.s3_sources[0].context_prefix #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources #=> Array
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].integration_id #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].repository #=> String
    #   resp.configuration.code_configuration.source_configuration.repository_sources[0].default_branch #=> String
    #   resp.configuration.code_configuration.environment_configuration.network.allowed_domains #=> Array
    #   resp.configuration.code_configuration.environment_configuration.network.allowed_domains[0] #=> String
    #   resp.configuration.code_configuration.environment_configuration.scan_frequency #=> String
    #   resp.configuration.code_configuration.environment_configuration.patch_creation_policy #=> String, one of "ENABLED", "DISABLED"
    #   resp.configuration.code_configuration.latest_scan.scan_run_id #=> String
    #   resp.configuration.code_configuration.latest_scan.status #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING", "SUCCEEDED", "FAILED"
    #   resp.configuration.code_configuration.latest_scan.origin #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.configuration.code_configuration.latest_scan.created_at #=> Time
    #   resp.configuration.code_configuration.latest_scan.completed_at #=> Time
    #   resp.configuration.code_configuration.latest_scan.failure_message #=> String
    #   resp.configuration.code_configuration.latest_scan.failure_stage #=> String, one of "SUBMITTED", "WAITING_FOR_BUILD", "BUILDING", "WAITING_FOR_SCAN", "SCANNING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Rotates the credentials used by an Amazon S3 integration. Only S3
    # integrations can be updated; GitHub integrations cannot be modified.
    # The integration's name, provider type, and bucket remain fixed.
    #
    # The caller must have iam:PassRole permission for the supplied role,
    # including when only the external ID changes. Continuum verifies that
    # the role can be assumed with the requested external ID and can access
    # the existing bucket before saving both credentials atomically.
    # Omitting externalId preserves its current value. Repeating both
    # current credentials leaves updatedAt unchanged, but still requires
    # authorization and access validation.
    #
    # @option params [required, String] :integration_id
    #   The unique identifier of the S3 integration to update.
    #
    # @option params [required, Types::UpdateProviderConfiguration] :provider_configuration
    #   The provider-specific changes to apply. The member must match the
    #   integration's provider type, and only S3 integrations can be updated.
    #
    # @return [Types::UpdateIntegrationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntegrationOutput#integration_id #integration_id} => String
    #   * {Types::UpdateIntegrationOutput#integration_arn #integration_arn} => String
    #   * {Types::UpdateIntegrationOutput#name #name} => String
    #   * {Types::UpdateIntegrationOutput#integration_type #integration_type} => String
    #   * {Types::UpdateIntegrationOutput#provider_details #provider_details} => Types::ProviderDetails
    #   * {Types::UpdateIntegrationOutput#created_at #created_at} => Time
    #   * {Types::UpdateIntegrationOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration({
    #     integration_id: "IntegrationId", # required
    #     provider_configuration: { # required
    #       s3: {
    #         role_arn: "IntegrationS3RoleArn", # required
    #         external_id: "IntegrationS3ExternalId",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_id #=> String
    #   resp.integration_arn #=> String
    #   resp.name #=> String
    #   resp.integration_type #=> String, one of "GITHUB", "GITLAB", "S3"
    #   resp.provider_details.github.organization_name #=> String
    #   resp.provider_details.gitlab.instance_url #=> String
    #   resp.provider_details.gitlab.target_type #=> String, one of "GROUP", "PROJECT"
    #   resp.provider_details.gitlab.target_path #=> String
    #   resp.provider_details.gitlab.token_rotation #=> String, one of "AUTOMATIC", "NONE"
    #   resp.provider_details.gitlab.expires_at #=> Time
    #   resp.provider_details.s3.bucket #=> String
    #   resp.provider_details.s3.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateIntegration AWS API Documentation
    #
    # @overload update_integration(params = {})
    # @param [Hash] params ({})
    def update_integration(params = {}, options = {})
      req = build_request(:update_integration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Continuum')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-continuum'
      context[:gem_version] = '1.0.0'
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
    # | waiter_name         | params                 | :delay   | :max_attempts |
    # | ------------------- | ---------------------- | -------- | ------------- |
    # | code_scan_succeeded | {Client#get_code_scan} | 60       | 480           |
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
        code_scan_succeeded: Waiters::CodeScanSucceeded
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
