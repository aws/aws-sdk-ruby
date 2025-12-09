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

module Aws::Odb
  # An API client for Odb.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Odb::Client.new(
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

    @identifier = :odb

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
    add_plugin(Aws::Odb::Plugins::Endpoints)

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
    #   @option options [Aws::Odb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Odb::EndpointParameters`.
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

    # Registers the Amazon Web Services Marketplace token for your Amazon
    # Web Services account to activate your Oracle Database@Amazon Web
    # Services subscription.
    #
    # @option params [required, String] :marketplace_registration_token
    #   The registration token that's generated by Amazon Web Services
    #   Marketplace and sent to Oracle Database@Amazon Web Services.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_marketplace_registration({
    #     marketplace_registration_token: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/AcceptMarketplaceRegistration AWS API Documentation
    #
    # @overload accept_marketplace_registration(params = {})
    # @param [Hash] params ({})
    def accept_marketplace_registration(params = {}, options = {})
      req = build_request(:accept_marketplace_registration, params)
      req.send_request(options)
    end

    # Associates an Amazon Web Services Identity and Access Management (IAM)
    # service role with a specified resource to enable Amazon Web Services
    # service integration.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role to associate
    #   with the resource.
    #
    # @option params [required, String] :aws_integration
    #   The Amazon Web Services integration configuration settings for the IAM
    #   service role association.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the target resource to associate
    #   with the IAM service role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_iam_role_to_resource({
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde", # required, accepts KmsTde
    #     resource_arn: "AssociateIamRoleToResourceInputResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/AssociateIamRoleToResource AWS API Documentation
    #
    # @overload associate_iam_role_to_resource(params = {})
    # @param [Hash] params ({})
    def associate_iam_role_to_resource(params = {}, options = {})
      req = build_request(:associate_iam_role_to_resource, params)
      req.send_request(options)
    end

    # Creates a new Autonomous VM cluster in the specified Exadata
    # infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure where the VM
    #   cluster will be created.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to be used for the VM
    #   cluster.
    #
    # @option params [required, String] :display_name
    #   The display name for the Autonomous VM cluster. The name does not need
    #   to be unique.
    #
    # @option params [String] :client_token
    #   A client-provided token to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Float] :autonomous_data_storage_size_in_t_bs
    #   The data disk group size to be allocated for Autonomous Databases, in
    #   terabytes (TB).
    #
    # @option params [required, Integer] :cpu_core_count_per_node
    #   The number of CPU cores to be enabled per VM cluster node.
    #
    # @option params [Array<String>] :db_servers
    #   The list of database servers to be used for the Autonomous VM cluster.
    #
    # @option params [String] :description
    #   A user-provided description of the Autonomous VM cluster.
    #
    # @option params [Boolean] :is_mtls_enabled_vm_cluster
    #   Specifies whether to enable mutual TLS (mTLS) authentication for the
    #   Autonomous VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Autonomous VM cluster.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The scheduling details for the maintenance window. Patching and system
    #   updates take place during the maintenance window.
    #
    # @option params [required, Integer] :memory_per_oracle_compute_unit_in_g_bs
    #   The amount of memory to be allocated per OCPU, in GB.
    #
    # @option params [Integer] :scan_listener_port_non_tls
    #   The SCAN listener port for non-TLS (TCP) protocol.
    #
    # @option params [Integer] :scan_listener_port_tls
    #   The SCAN listener port for TLS (TCP) protocol.
    #
    # @option params [Hash<String,String>] :tags
    #   Free-form tags for this resource. Each tag is a key-value pair with no
    #   predefined name, type, or namespace.
    #
    # @option params [String] :time_zone
    #   The time zone to use for the Autonomous VM cluster.
    #
    # @option params [required, Integer] :total_container_databases
    #   The total number of Autonomous CDBs that you can create in the
    #   Autonomous VM cluster.
    #
    # @return [Types::CreateCloudAutonomousVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudAutonomousVmClusterOutput#display_name #display_name} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#status #status} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#cloud_autonomous_vm_cluster_id #cloud_autonomous_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_autonomous_vm_cluster({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName", # required
    #     client_token: "CreateCloudAutonomousVmClusterInputClientTokenString",
    #     autonomous_data_storage_size_in_t_bs: 1.0, # required
    #     cpu_core_count_per_node: 1, # required
    #     db_servers: ["String"],
    #     description: "CreateCloudAutonomousVmClusterInputDescriptionString",
    #     is_mtls_enabled_vm_cluster: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #     memory_per_oracle_compute_unit_in_g_bs: 1, # required
    #     scan_listener_port_non_tls: 1,
    #     scan_listener_port_tls: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     time_zone: "CreateCloudAutonomousVmClusterInputTimeZoneString",
    #     total_container_databases: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_autonomous_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload create_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def create_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:create_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Creates an Exadata infrastructure.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the Exadata infrastructure.
    #
    # @option params [required, String] :shape
    #   The model name of the Exadata infrastructure. For the list of valid
    #   model names, use the `ListDbSystemShapes` operation.
    #
    # @option params [String] :availability_zone
    #   The name of the Availability Zone (AZ) where the Exadata
    #   infrastructure is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    #   Example: `us-east-1a`
    #
    # @option params [String] :availability_zone_id
    #   The AZ ID of the AZ where the Exadata infrastructure is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    #   Example: `use1-az1`
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Exadata infrastructure.
    #
    # @option params [required, Integer] :compute_count
    #   The number of database servers for the Exadata infrastructure. Valid
    #   values for this parameter depend on the shape. To get information
    #   about the minimum and maximum values, use the `ListDbSystemShapes`
    #   operation.
    #
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   The email addresses of contacts to receive notification from Oracle
    #   about maintenance updates for the Exadata infrastructure.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The maintenance window configuration for the Exadata Cloud
    #   infrastructure.
    #
    #   This allows you to define when maintenance operations such as patching
    #   and updates can be performed on the infrastructure.
    #
    # @option params [required, Integer] :storage_count
    #   The number of storage servers to activate for this Exadata
    #   infrastructure. Valid values for this parameter depend on the shape.
    #   To get information about the minimum and maximum values, use the
    #   `ListDbSystemShapes` operation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :database_server_type
    #   The database server model type of the Exadata infrastructure. For the
    #   list of valid model names, use the `ListDbSystemShapes` operation.
    #
    # @option params [String] :storage_server_type
    #   The storage server model type of the Exadata infrastructure. For the
    #   list of valid model names, use the `ListDbSystemShapes` operation.
    #
    # @return [Types::CreateCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudExadataInfrastructureOutput#display_name #display_name} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#status #status} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#cloud_exadata_infrastructure_id #cloud_exadata_infrastructure_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_exadata_infrastructure({
    #     display_name: "ResourceDisplayName", # required
    #     shape: "CreateCloudExadataInfrastructureInputShapeString", # required
    #     availability_zone: "CreateCloudExadataInfrastructureInputAvailabilityZoneString",
    #     availability_zone_id: "CreateCloudExadataInfrastructureInputAvailabilityZoneIdString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     compute_count: 1, # required
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "CustomerContactEmailString",
    #       },
    #     ],
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #     storage_count: 1, # required
    #     client_token: "CreateCloudExadataInfrastructureInputClientTokenString",
    #     database_server_type: "CreateCloudExadataInfrastructureInputDatabaseServerTypeString",
    #     storage_server_type: "CreateCloudExadataInfrastructureInputStorageServerTypeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_exadata_infrastructure_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudExadataInfrastructure AWS API Documentation
    #
    # @overload create_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def create_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:create_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Creates a VM cluster on the specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure for this VM
    #   cluster.
    #
    # @option params [required, Integer] :cpu_core_count
    #   The number of CPU cores to enable on the VM cluster.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the VM cluster.
    #
    # @option params [required, String] :gi_version
    #   A valid software version of Oracle Grid Infrastructure (GI). To get
    #   the list of valid values, use the `ListGiVersions` operation and
    #   specify the shape of the Exadata infrastructure.
    #
    #   Example: `19.0.0.0`
    #
    # @option params [required, String] :hostname
    #   The host name for the VM cluster.
    #
    #   Constraints:
    #
    #   * Can't be "localhost" or "hostname".
    #
    #   * Can't contain "-version".
    #
    #   * The maximum length of the combined hostname and domain is 63
    #     characters.
    #
    #   * The hostname must be unique within the subnet.
    #
    # @option params [required, Array<String>] :ssh_public_keys
    #   The public key portion of one or more key pairs used for SSH access to
    #   the VM cluster.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network for the VM cluster.
    #
    # @option params [String] :cluster_name
    #   A name for the Grid Infrastructure cluster. The name isn't case
    #   sensitive.
    #
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   The set of preferences for the various diagnostic collection options
    #   for the VM cluster.
    #
    # @option params [Float] :data_storage_size_in_t_bs
    #   The size of the data disk group, in terabytes (TBs), to allocate for
    #   the VM cluster.
    #
    # @option params [Integer] :db_node_storage_size_in_g_bs
    #   The amount of local node storage, in gigabytes (GBs), to allocate for
    #   the VM cluster.
    #
    # @option params [Array<String>] :db_servers
    #   The list of database servers for the VM cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the VM cluster.
    #
    # @option params [Boolean] :is_local_backup_enabled
    #   Specifies whether to enable database backups to local Exadata storage
    #   for the VM cluster.
    #
    # @option params [Boolean] :is_sparse_diskgroup_enabled
    #   Specifies whether to create a sparse disk group for the VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the VM cluster.
    #
    #   Default: `LICENSE_INCLUDED`
    #
    # @option params [Integer] :memory_size_in_g_bs
    #   The amount of memory, in gigabytes (GBs), to allocate for the VM
    #   cluster.
    #
    # @option params [String] :system_version
    #   The version of the operating system of the image for the VM cluster.
    #
    # @option params [String] :time_zone
    #   The time zone for the VM cluster. For a list of valid values for time
    #   zone, you can check the options in the console.
    #
    #   Default: UTC
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :scan_listener_port_tcp
    #   The port number for TCP connections to the single client access name
    #   (SCAN) listener.
    #
    #   Valid values: `1024–8999` with the following exceptions: `2484`,
    #   `6100`, `6200`, `7060`, `7070`, `7085`, and `7879`
    #
    #   Default: `1521`
    #
    # @return [Types::CreateCloudVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudVmClusterOutput#display_name #display_name} => String
    #   * {Types::CreateCloudVmClusterOutput#status #status} => String
    #   * {Types::CreateCloudVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudVmClusterOutput#cloud_vm_cluster_id #cloud_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_vm_cluster({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     cpu_core_count: 1, # required
    #     display_name: "ResourceDisplayName", # required
    #     gi_version: "CreateCloudVmClusterInputGiVersionString", # required
    #     hostname: "CreateCloudVmClusterInputHostnameString", # required
    #     ssh_public_keys: ["String"], # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     cluster_name: "CreateCloudVmClusterInputClusterNameString",
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false,
    #     },
    #     data_storage_size_in_t_bs: 1.0,
    #     db_node_storage_size_in_g_bs: 1,
    #     db_servers: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     is_local_backup_enabled: false,
    #     is_sparse_diskgroup_enabled: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     memory_size_in_g_bs: 1,
    #     system_version: "CreateCloudVmClusterInputSystemVersionString",
    #     time_zone: "CreateCloudVmClusterInputTimeZoneString",
    #     client_token: "CreateCloudVmClusterInputClientTokenString",
    #     scan_listener_port_tcp: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudVmCluster AWS API Documentation
    #
    # @overload create_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def create_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:create_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Creates an ODB network.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the ODB network.
    #
    # @option params [String] :availability_zone
    #   The Amazon Web Services Availability Zone (AZ) where the ODB network
    #   is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    # @option params [String] :availability_zone_id
    #   The AZ ID of the AZ where the ODB network is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    # @option params [required, String] :client_subnet_cidr
    #   The CIDR range of the client subnet for the ODB network.
    #
    #   Constraints:
    #
    #   * Must not overlap with the CIDR range of the backup subnet.
    #
    #   * Must not overlap with the CIDR ranges of the VPCs that are connected
    #     to the ODB network.
    #
    #   * Must not use the following CIDR ranges that are reserved by OCI:
    #
    #     * `100.106.0.0/16` and `100.107.0.0/16`
    #
    #     * `169.254.0.0/16`
    #
    #     * `224.0.0.0 - 239.255.255.255`
    #
    #     * `240.0.0.0 - 255.255.255.255`
    #
    # @option params [String] :backup_subnet_cidr
    #   The CIDR range of the backup subnet for the ODB network.
    #
    #   Constraints:
    #
    #   * Must not overlap with the CIDR range of the client subnet.
    #
    #   * Must not overlap with the CIDR ranges of the VPCs that are connected
    #     to the ODB network.
    #
    #   * Must not use the following CIDR ranges that are reserved by OCI:
    #
    #     * `100.106.0.0/16` and `100.107.0.0/16`
    #
    #     * `169.254.0.0/16`
    #
    #     * `224.0.0.0 - 239.255.255.255`
    #
    #     * `240.0.0.0 - 255.255.255.255`
    #
    # @option params [String] :custom_domain_name
    #   The domain name to use for the resources in the ODB network.
    #
    # @option params [String] :default_dns_prefix
    #   The DNS prefix to the default DNS domain name. The default DNS domain
    #   name is oraclevcn.com.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :s3_access
    #   Specifies the configuration for Amazon S3 access from the ODB network.
    #
    # @option params [String] :zero_etl_access
    #   Specifies the configuration for Zero-ETL access from the ODB network.
    #
    # @option params [String] :sts_access
    #   The Amazon Web Services Security Token Service (STS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :kms_access
    #   The Amazon Web Services Key Management Service (KMS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :s3_policy_document
    #   Specifies the endpoint policy for Amazon S3 access from the ODB
    #   network.
    #
    # @option params [String] :sts_policy_document
    #   The STS policy document that defines permissions for token service
    #   usage within the ODB network.
    #
    # @option params [String] :kms_policy_document
    #   The KMS policy document that defines permissions for key usage within
    #   the ODB network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   The cross-Region Amazon S3 restore sources to enable for the ODB
    #   network.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the ODB network.
    #
    # @return [Types::CreateOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOdbNetworkOutput#display_name #display_name} => String
    #   * {Types::CreateOdbNetworkOutput#status #status} => String
    #   * {Types::CreateOdbNetworkOutput#status_reason #status_reason} => String
    #   * {Types::CreateOdbNetworkOutput#odb_network_id #odb_network_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_odb_network({
    #     display_name: "ResourceDisplayName", # required
    #     availability_zone: "CreateOdbNetworkInputAvailabilityZoneString",
    #     availability_zone_id: "CreateOdbNetworkInputAvailabilityZoneIdString",
    #     client_subnet_cidr: "CreateOdbNetworkInputClientSubnetCidrString", # required
    #     backup_subnet_cidr: "CreateOdbNetworkInputBackupSubnetCidrString",
    #     custom_domain_name: "CreateOdbNetworkInputCustomDomainNameString",
    #     default_dns_prefix: "CreateOdbNetworkInputDefaultDnsPrefixString",
    #     client_token: "CreateOdbNetworkInputClientTokenString",
    #     s3_access: "ENABLED", # accepts ENABLED, DISABLED
    #     zero_etl_access: "ENABLED", # accepts ENABLED, DISABLED
    #     sts_access: "ENABLED", # accepts ENABLED, DISABLED
    #     kms_access: "ENABLED", # accepts ENABLED, DISABLED
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateOdbNetwork AWS API Documentation
    #
    # @overload create_odb_network(params = {})
    # @param [Hash] params ({})
    def create_odb_network(params = {}, options = {})
      req = build_request(:create_odb_network, params)
      req.send_request(options)
    end

    # Creates a peering connection between an ODB network and a VPC.
    #
    # A peering connection enables private connectivity between the networks
    # for application-tier communication.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network that initiates the peering
    #   connection.
    #
    # @option params [required, String] :peer_network_id
    #   The unique identifier of the peer network. This can be either a VPC ID
    #   or another ODB network ID.
    #
    # @option params [String] :display_name
    #   The display name for the ODB peering connection.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   A list of CIDR blocks to add to the peering connection. These CIDR
    #   blocks define the IP address ranges that can communicate through the
    #   peering connection.
    #
    # @option params [String] :client_token
    #   The client token for the ODB peering connection request.
    #
    #   Constraints:
    #
    #   * Must be unique for each request.
    #
    #   ^
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the ODB peering connection.
    #
    # @return [Types::CreateOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOdbPeeringConnectionOutput#display_name #display_name} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#status #status} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#status_reason #status_reason} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#odb_peering_connection_id #odb_peering_connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_odb_peering_connection({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     peer_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     client_token: "CreateOdbPeeringConnectionInputClientTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateOdbPeeringConnection AWS API Documentation
    #
    # @overload create_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def create_odb_peering_connection(params = {}, options = {})
      req = build_request(:create_odb_peering_connection, params)
      req.send_request(options)
    end

    # Deletes an Autonomous VM cluster.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_autonomous_vm_cluster({
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload delete_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:delete_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified Exadata infrastructure. Before you use this
    # operation, make sure to delete all of the VM clusters that are hosted
    # on this Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudExadataInfrastructure AWS API Documentation
    #
    # @overload delete_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def delete_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:delete_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Deletes the specified VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_vm_cluster({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudVmCluster AWS API Documentation
    #
    # @overload delete_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:delete_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to delete.
    #
    # @option params [required, Boolean] :delete_associated_resources
    #   Specifies whether to delete associated OCI networking resources along
    #   with the ODB network.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     delete_associated_resources: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteOdbNetwork AWS API Documentation
    #
    # @overload delete_odb_network(params = {})
    # @param [Hash] params ({})
    def delete_odb_network(params = {}, options = {})
      req = build_request(:delete_odb_network, params)
      req.send_request(options)
    end

    # Deletes an ODB peering connection.
    #
    # When you delete an ODB peering connection, the underlying VPC peering
    # connection is also deleted.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The unique identifier of the ODB peering connection to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteOdbPeeringConnection AWS API Documentation
    #
    # @overload delete_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def delete_odb_peering_connection(params = {}, options = {})
      req = build_request(:delete_odb_peering_connection, params)
      req.send_request(options)
    end

    # Disassociates an Amazon Web Services Identity and Access Management
    # (IAM) service role from a specified resource to disable Amazon Web
    # Services service integration.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role to disassociate
    #   from the resource.
    #
    # @option params [required, String] :aws_integration
    #   The Amazon Web Services integration configuration settings for the IAM
    #   service role disassociation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the target resource to disassociate
    #   from the IAM service role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_iam_role_from_resource({
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde", # required, accepts KmsTde
    #     resource_arn: "DisassociateIamRoleFromResourceInputResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DisassociateIamRoleFromResource AWS API Documentation
    #
    # @overload disassociate_iam_role_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_iam_role_from_resource(params = {}, options = {})
      req = build_request(:disassociate_iam_role_from_resource, params)
      req.send_request(options)
    end

    # Gets information about a specific Autonomous VM cluster.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster to retrieve
    #   information about.
    #
    # @return [Types::GetCloudAutonomousVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudAutonomousVmClusterOutput#cloud_autonomous_vm_cluster #cloud_autonomous_vm_cluster} => Types::CloudAutonomousVmCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_autonomous_vm_cluster({
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_autonomous_vm_cluster.cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_autonomous_vm_cluster.cloud_autonomous_vm_cluster_arn #=> String
    #   resp.cloud_autonomous_vm_cluster.odb_network_id #=> String
    #   resp.cloud_autonomous_vm_cluster.oci_resource_anchor_name #=> String
    #   resp.cloud_autonomous_vm_cluster.percent_progress #=> Float
    #   resp.cloud_autonomous_vm_cluster.display_name #=> String
    #   resp.cloud_autonomous_vm_cluster.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_autonomous_vm_cluster.status_reason #=> String
    #   resp.cloud_autonomous_vm_cluster.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_autonomous_vm_cluster.autonomous_data_storage_percentage #=> Float
    #   resp.cloud_autonomous_vm_cluster.autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.available_autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.available_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.available_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_autonomous_vm_cluster.cpu_core_count #=> Integer
    #   resp.cloud_autonomous_vm_cluster.cpu_core_count_per_node #=> Integer
    #   resp.cloud_autonomous_vm_cluster.cpu_percentage #=> Float
    #   resp.cloud_autonomous_vm_cluster.data_storage_size_in_g_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.db_servers #=> Array
    #   resp.cloud_autonomous_vm_cluster.db_servers[0] #=> String
    #   resp.cloud_autonomous_vm_cluster.description #=> String
    #   resp.cloud_autonomous_vm_cluster.domain #=> String
    #   resp.cloud_autonomous_vm_cluster.exadata_storage_in_t_bs_lowest_scaled_value #=> Float
    #   resp.cloud_autonomous_vm_cluster.hostname #=> String
    #   resp.cloud_autonomous_vm_cluster.ocid #=> String
    #   resp.cloud_autonomous_vm_cluster.oci_url #=> String
    #   resp.cloud_autonomous_vm_cluster.is_mtls_enabled_vm_cluster #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.days_of_week #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.hours_of_day #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.months #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_autonomous_vm_cluster.max_acds_lowest_scaled_value #=> Integer
    #   resp.cloud_autonomous_vm_cluster.memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.memory_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.node_count #=> Integer
    #   resp.cloud_autonomous_vm_cluster.non_provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisioned_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisioned_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.reclaimable_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.reserved_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.scan_listener_port_non_tls #=> Integer
    #   resp.cloud_autonomous_vm_cluster.scan_listener_port_tls #=> Integer
    #   resp.cloud_autonomous_vm_cluster.shape #=> String
    #   resp.cloud_autonomous_vm_cluster.created_at #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_database_ssl_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_ords_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_zone #=> String
    #   resp.cloud_autonomous_vm_cluster.total_container_databases #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload get_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def get_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:get_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Returns information about the specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure.
    #
    # @return [Types::GetCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudExadataInfrastructureOutput#cloud_exadata_infrastructure #cloud_exadata_infrastructure} => Types::CloudExadataInfrastructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_exadata_infrastructure.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructure.display_name #=> String
    #   resp.cloud_exadata_infrastructure.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_exadata_infrastructure.status_reason #=> String
    #   resp.cloud_exadata_infrastructure.cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_exadata_infrastructure.activated_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.additional_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.available_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.availability_zone #=> String
    #   resp.cloud_exadata_infrastructure.availability_zone_id #=> String
    #   resp.cloud_exadata_infrastructure.compute_count #=> Integer
    #   resp.cloud_exadata_infrastructure.cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructure.customer_contacts_to_send_to_oci #=> Array
    #   resp.cloud_exadata_infrastructure.customer_contacts_to_send_to_oci[0].email #=> String
    #   resp.cloud_exadata_infrastructure.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.db_server_version #=> String
    #   resp.cloud_exadata_infrastructure.last_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructure.maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.days_of_week #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_exadata_infrastructure.maintenance_window.hours_of_day #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_exadata_infrastructure.maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.months #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_exadata_infrastructure.maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_exadata_infrastructure.maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_exadata_infrastructure.maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_exadata_infrastructure.maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_exadata_infrastructure.max_cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructure.max_data_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure.max_db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.max_memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.memory_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.monthly_db_server_version #=> String
    #   resp.cloud_exadata_infrastructure.monthly_storage_server_version #=> String
    #   resp.cloud_exadata_infrastructure.next_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructure.oci_resource_anchor_name #=> String
    #   resp.cloud_exadata_infrastructure.oci_url #=> String
    #   resp.cloud_exadata_infrastructure.ocid #=> String
    #   resp.cloud_exadata_infrastructure.shape #=> String
    #   resp.cloud_exadata_infrastructure.storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.storage_server_version #=> String
    #   resp.cloud_exadata_infrastructure.created_at #=> Time
    #   resp.cloud_exadata_infrastructure.total_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.percent_progress #=> Float
    #   resp.cloud_exadata_infrastructure.database_server_type #=> String
    #   resp.cloud_exadata_infrastructure.storage_server_type #=> String
    #   resp.cloud_exadata_infrastructure.compute_model #=> String, one of "ECPU", "OCPU"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudExadataInfrastructure AWS API Documentation
    #
    # @overload get_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def get_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:get_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Retrieves information about unallocated resources in a specified Cloud
    # Exadata Infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Cloud Exadata infrastructure for which to
    #   retrieve unallocated resources.
    #
    # @option params [Array<String>] :db_servers
    #   The database servers to include in the unallocated resources query.
    #
    # @return [Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput#cloud_exadata_infrastructure_unallocated_resources #cloud_exadata_infrastructure_unallocated_resources} => Types::CloudExadataInfrastructureUnallocatedResources
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_exadata_infrastructure_unallocated_resources({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_servers: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters #=> Array
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters[0].unallocated_adb_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_exadata_infrastructure_display_name #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.exadata_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.local_storage_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure_unallocated_resources.memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure_unallocated_resources.ocpus #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudExadataInfrastructureUnallocatedResources AWS API Documentation
    #
    # @overload get_cloud_exadata_infrastructure_unallocated_resources(params = {})
    # @param [Hash] params ({})
    def get_cloud_exadata_infrastructure_unallocated_resources(params = {}, options = {})
      req = build_request(:get_cloud_exadata_infrastructure_unallocated_resources, params)
      req.send_request(options)
    end

    # Returns information about the specified VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster.
    #
    # @return [Types::GetCloudVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudVmClusterOutput#cloud_vm_cluster #cloud_vm_cluster} => Types::CloudVmCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_vm_cluster({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_vm_cluster.cloud_vm_cluster_id #=> String
    #   resp.cloud_vm_cluster.display_name #=> String
    #   resp.cloud_vm_cluster.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_vm_cluster.status_reason #=> String
    #   resp.cloud_vm_cluster.cloud_vm_cluster_arn #=> String
    #   resp.cloud_vm_cluster.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_vm_cluster.cluster_name #=> String
    #   resp.cloud_vm_cluster.cpu_core_count #=> Integer
    #   resp.cloud_vm_cluster.data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_vm_cluster.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.db_servers #=> Array
    #   resp.cloud_vm_cluster.db_servers[0] #=> String
    #   resp.cloud_vm_cluster.disk_redundancy #=> String, one of "HIGH", "NORMAL"
    #   resp.cloud_vm_cluster.gi_version #=> String
    #   resp.cloud_vm_cluster.hostname #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans #=> Array
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.cloud_vm_cluster.iorm_config_cache.lifecycle_details #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.cloud_vm_cluster.iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.cloud_vm_cluster.is_local_backup_enabled #=> Boolean
    #   resp.cloud_vm_cluster.is_sparse_diskgroup_enabled #=> Boolean
    #   resp.cloud_vm_cluster.last_update_history_entry_id #=> String
    #   resp.cloud_vm_cluster.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_vm_cluster.listener_port #=> Integer
    #   resp.cloud_vm_cluster.memory_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.node_count #=> Integer
    #   resp.cloud_vm_cluster.ocid #=> String
    #   resp.cloud_vm_cluster.oci_resource_anchor_name #=> String
    #   resp.cloud_vm_cluster.oci_url #=> String
    #   resp.cloud_vm_cluster.domain #=> String
    #   resp.cloud_vm_cluster.scan_dns_name #=> String
    #   resp.cloud_vm_cluster.scan_dns_record_id #=> String
    #   resp.cloud_vm_cluster.scan_ip_ids #=> Array
    #   resp.cloud_vm_cluster.scan_ip_ids[0] #=> String
    #   resp.cloud_vm_cluster.shape #=> String
    #   resp.cloud_vm_cluster.ssh_public_keys #=> Array
    #   resp.cloud_vm_cluster.ssh_public_keys[0] #=> String
    #   resp.cloud_vm_cluster.storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.system_version #=> String
    #   resp.cloud_vm_cluster.created_at #=> Time
    #   resp.cloud_vm_cluster.time_zone #=> String
    #   resp.cloud_vm_cluster.vip_ids #=> Array
    #   resp.cloud_vm_cluster.vip_ids[0] #=> String
    #   resp.cloud_vm_cluster.odb_network_id #=> String
    #   resp.cloud_vm_cluster.percent_progress #=> Float
    #   resp.cloud_vm_cluster.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_vm_cluster.iam_roles #=> Array
    #   resp.cloud_vm_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_vm_cluster.iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_vm_cluster.iam_roles[0].status_reason #=> String
    #   resp.cloud_vm_cluster.iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudVmCluster AWS API Documentation
    #
    # @overload get_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def get_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:get_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Returns information about the specified DB node.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to retrieve information about.
    #
    # @return [Types::GetDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbNodeOutput#db_node #db_node} => Types::DbNode
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_node({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node.db_node_id #=> String
    #   resp.db_node.db_node_arn #=> String
    #   resp.db_node.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.db_node.status_reason #=> String
    #   resp.db_node.additional_details #=> String
    #   resp.db_node.backup_ip_id #=> String
    #   resp.db_node.backup_vnic_2_id #=> String
    #   resp.db_node.backup_vnic_id #=> String
    #   resp.db_node.cpu_core_count #=> Integer
    #   resp.db_node.db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_node.db_server_id #=> String
    #   resp.db_node.db_system_id #=> String
    #   resp.db_node.fault_domain #=> String
    #   resp.db_node.host_ip_id #=> String
    #   resp.db_node.hostname #=> String
    #   resp.db_node.ocid #=> String
    #   resp.db_node.oci_resource_anchor_name #=> String
    #   resp.db_node.maintenance_type #=> String, one of "VMDB_REBOOT_MIGRATION"
    #   resp.db_node.memory_size_in_g_bs #=> Integer
    #   resp.db_node.software_storage_size_in_gb #=> Integer
    #   resp.db_node.created_at #=> Time
    #   resp.db_node.time_maintenance_window_end #=> String
    #   resp.db_node.time_maintenance_window_start #=> String
    #   resp.db_node.total_cpu_core_count #=> Integer
    #   resp.db_node.vnic2_id #=> String
    #   resp.db_node.vnic_id #=> String
    #   resp.db_node.private_ip_address #=> String
    #   resp.db_node.floating_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetDbNode AWS API Documentation
    #
    # @overload get_db_node(params = {})
    # @param [Hash] params ({})
    def get_db_node(params = {}, options = {})
      req = build_request(:get_db_node, params)
      req.send_request(options)
    end

    # Returns information about the specified database server.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure that
    #   contains the database server.
    #
    # @option params [required, String] :db_server_id
    #   The unique identifier of the database server to retrieve information
    #   about.
    #
    # @return [Types::GetDbServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbServerOutput#db_server #db_server} => Types::DbServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_server({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_server_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_server.db_server_id #=> String
    #   resp.db_server.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.db_server.status_reason #=> String
    #   resp.db_server.cpu_core_count #=> Integer
    #   resp.db_server.db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_server.db_server_patching_details.estimated_patch_duration #=> Integer
    #   resp.db_server.db_server_patching_details.patching_status #=> String, one of "COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"
    #   resp.db_server.db_server_patching_details.time_patching_ended #=> String
    #   resp.db_server.db_server_patching_details.time_patching_started #=> String
    #   resp.db_server.display_name #=> String
    #   resp.db_server.exadata_infrastructure_id #=> String
    #   resp.db_server.ocid #=> String
    #   resp.db_server.oci_resource_anchor_name #=> String
    #   resp.db_server.max_cpu_count #=> Integer
    #   resp.db_server.max_db_node_storage_in_g_bs #=> Integer
    #   resp.db_server.max_memory_in_g_bs #=> Integer
    #   resp.db_server.memory_size_in_g_bs #=> Integer
    #   resp.db_server.shape #=> String
    #   resp.db_server.created_at #=> Time
    #   resp.db_server.vm_cluster_ids #=> Array
    #   resp.db_server.vm_cluster_ids[0] #=> String
    #   resp.db_server.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_server.autonomous_vm_cluster_ids #=> Array
    #   resp.db_server.autonomous_vm_cluster_ids[0] #=> String
    #   resp.db_server.autonomous_virtual_machine_ids #=> Array
    #   resp.db_server.autonomous_virtual_machine_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetDbServer AWS API Documentation
    #
    # @overload get_db_server(params = {})
    # @param [Hash] params ({})
    def get_db_server(params = {}, options = {})
      req = build_request(:get_db_server, params)
      req.send_request(options)
    end

    # Returns the tenancy activation link and onboarding status for your
    # Amazon Web Services account.
    #
    # @return [Types::GetOciOnboardingStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOciOnboardingStatusOutput#status #status} => String
    #   * {Types::GetOciOnboardingStatusOutput#existing_tenancy_activation_link #existing_tenancy_activation_link} => String
    #   * {Types::GetOciOnboardingStatusOutput#new_tenancy_activation_link #new_tenancy_activation_link} => String
    #   * {Types::GetOciOnboardingStatusOutput#oci_identity_domain #oci_identity_domain} => Types::OciIdentityDomain
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "NOT_STARTED", "PENDING_LINK_GENERATION", "PENDING_CUSTOMER_ACTION", "PENDING_INITIALIZATION", "ACTIVATING", "ACTIVE_IN_HOME_REGION", "ACTIVE", "ACTIVE_LIMITED", "FAILED", "PUBLIC_OFFER_UNSUPPORTED", "SUSPENDED", "CANCELED"
    #   resp.existing_tenancy_activation_link #=> String
    #   resp.new_tenancy_activation_link #=> String
    #   resp.oci_identity_domain.oci_identity_domain_id #=> String
    #   resp.oci_identity_domain.oci_identity_domain_resource_url #=> String
    #   resp.oci_identity_domain.oci_identity_domain_url #=> String
    #   resp.oci_identity_domain.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.oci_identity_domain.status_reason #=> String
    #   resp.oci_identity_domain.account_setup_cloud_formation_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOciOnboardingStatus AWS API Documentation
    #
    # @overload get_oci_onboarding_status(params = {})
    # @param [Hash] params ({})
    def get_oci_onboarding_status(params = {}, options = {})
      req = build_request(:get_oci_onboarding_status, params)
      req.send_request(options)
    end

    # Returns information about the specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network.
    #
    # @return [Types::GetOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOdbNetworkOutput#odb_network #odb_network} => Types::OdbNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.odb_network.odb_network_id #=> String
    #   resp.odb_network.display_name #=> String
    #   resp.odb_network.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_network.status_reason #=> String
    #   resp.odb_network.odb_network_arn #=> String
    #   resp.odb_network.availability_zone #=> String
    #   resp.odb_network.availability_zone_id #=> String
    #   resp.odb_network.client_subnet_cidr #=> String
    #   resp.odb_network.backup_subnet_cidr #=> String
    #   resp.odb_network.custom_domain_name #=> String
    #   resp.odb_network.default_dns_prefix #=> String
    #   resp.odb_network.peered_cidrs #=> Array
    #   resp.odb_network.peered_cidrs[0] #=> String
    #   resp.odb_network.oci_network_anchor_id #=> String
    #   resp.odb_network.oci_network_anchor_url #=> String
    #   resp.odb_network.oci_resource_anchor_name #=> String
    #   resp.odb_network.oci_vcn_id #=> String
    #   resp.odb_network.oci_vcn_url #=> String
    #   resp.odb_network.oci_dns_forwarding_configs #=> Array
    #   resp.odb_network.oci_dns_forwarding_configs[0].domain_name #=> String
    #   resp.odb_network.oci_dns_forwarding_configs[0].oci_dns_listener_ip #=> String
    #   resp.odb_network.created_at #=> Time
    #   resp.odb_network.percent_progress #=> Float
    #   resp.odb_network.managed_services.service_network_arn #=> String
    #   resp.odb_network.managed_services.resource_gateway_arn #=> String
    #   resp.odb_network.managed_services.managed_services_ipv_4_cidrs #=> Array
    #   resp.odb_network.managed_services.managed_services_ipv_4_cidrs[0] #=> String
    #   resp.odb_network.managed_services.service_network_endpoint.vpc_endpoint_id #=> String
    #   resp.odb_network.managed_services.service_network_endpoint.vpc_endpoint_type #=> String, one of "SERVICENETWORK"
    #   resp.odb_network.managed_services.managed_s3_backup_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.managed_s3_backup_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.managed_s3_backup_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.zero_etl_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.zero_etl_access.cidr #=> String
    #   resp.odb_network.managed_services.s3_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.s3_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.s3_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.s3_access.domain_name #=> String
    #   resp.odb_network.managed_services.s3_access.s3_policy_document #=> String
    #   resp.odb_network.managed_services.sts_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.sts_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.sts_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.sts_access.domain_name #=> String
    #   resp.odb_network.managed_services.sts_access.sts_policy_document #=> String
    #   resp.odb_network.managed_services.kms_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.kms_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.kms_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.kms_access.domain_name #=> String
    #   resp.odb_network.managed_services.kms_access.kms_policy_document #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access #=> Array
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].region #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOdbNetwork AWS API Documentation
    #
    # @overload get_odb_network(params = {})
    # @param [Hash] params ({})
    def get_odb_network(params = {}, options = {})
      req = build_request(:get_odb_network, params)
      req.send_request(options)
    end

    # Retrieves information about an ODB peering connection.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The unique identifier of the ODB peering connection to retrieve
    #   information about.
    #
    # @return [Types::GetOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOdbPeeringConnectionOutput#odb_peering_connection #odb_peering_connection} => Types::OdbPeeringConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.odb_peering_connection.odb_peering_connection_id #=> String
    #   resp.odb_peering_connection.display_name #=> String
    #   resp.odb_peering_connection.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_peering_connection.status_reason #=> String
    #   resp.odb_peering_connection.odb_peering_connection_arn #=> String
    #   resp.odb_peering_connection.odb_network_arn #=> String
    #   resp.odb_peering_connection.peer_network_arn #=> String
    #   resp.odb_peering_connection.odb_peering_connection_type #=> String
    #   resp.odb_peering_connection.peer_network_cidrs #=> Array
    #   resp.odb_peering_connection.peer_network_cidrs[0] #=> String
    #   resp.odb_peering_connection.created_at #=> Time
    #   resp.odb_peering_connection.percent_progress #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOdbPeeringConnection AWS API Documentation
    #
    # @overload get_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def get_odb_peering_connection(params = {}, options = {})
      req = build_request(:get_odb_peering_connection, params)
      req.send_request(options)
    end

    # Initializes the ODB service for the first time in an account.
    #
    # @option params [Boolean] :oci_identity_domain
    #   The Oracle Cloud Infrastructure (OCI) identity domain configuration
    #   for service initialization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_service({
    #     oci_identity_domain: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/InitializeService AWS API Documentation
    #
    # @overload initialize_service(params = {})
    # @param [Hash] params ({})
    def initialize_service(params = {}, options = {})
      req = build_request(:initialize_service, params)
      req.send_request(options)
    end

    # Lists all Autonomous VMs in an Autonomous VM cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue listing from.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster whose virtual
    #   machines you're listing.
    #
    # @return [Types::ListAutonomousVirtualMachinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousVirtualMachinesOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousVirtualMachinesOutput#autonomous_virtual_machines #autonomous_virtual_machines} => Array&lt;Types::AutonomousVirtualMachineSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_virtual_machines({
    #     max_results: 1,
    #     next_token: "ListAutonomousVirtualMachinesInputNextTokenString",
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_virtual_machines #=> Array
    #   resp.autonomous_virtual_machines[0].autonomous_virtual_machine_id #=> String
    #   resp.autonomous_virtual_machines[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.autonomous_virtual_machines[0].status_reason #=> String
    #   resp.autonomous_virtual_machines[0].vm_name #=> String
    #   resp.autonomous_virtual_machines[0].db_server_id #=> String
    #   resp.autonomous_virtual_machines[0].db_server_display_name #=> String
    #   resp.autonomous_virtual_machines[0].cpu_core_count #=> Integer
    #   resp.autonomous_virtual_machines[0].memory_size_in_g_bs #=> Integer
    #   resp.autonomous_virtual_machines[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_virtual_machines[0].client_ip_address #=> String
    #   resp.autonomous_virtual_machines[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.autonomous_virtual_machines[0].ocid #=> String
    #   resp.autonomous_virtual_machines[0].oci_resource_anchor_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousVirtualMachines AWS API Documentation
    #
    # @overload list_autonomous_virtual_machines(params = {})
    # @param [Hash] params ({})
    def list_autonomous_virtual_machines(params = {}, options = {})
      req = build_request(:list_autonomous_virtual_machines, params)
      req.send_request(options)
    end

    # Lists all Autonomous VM clusters in a specified Cloud Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue listing from.
    #
    # @option params [String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Cloud Exadata Infrastructure that hosts
    #   the Autonomous VM clusters to be listed.
    #
    # @return [Types::ListCloudAutonomousVmClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudAutonomousVmClustersOutput#next_token #next_token} => String
    #   * {Types::ListCloudAutonomousVmClustersOutput#cloud_autonomous_vm_clusters #cloud_autonomous_vm_clusters} => Array&lt;Types::CloudAutonomousVmClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_autonomous_vm_clusters({
    #     max_results: 1,
    #     next_token: "ListCloudAutonomousVmClustersInputNextTokenString",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_autonomous_vm_clusters #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_arn #=> String
    #   resp.cloud_autonomous_vm_clusters[0].odb_network_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].oci_resource_anchor_name #=> String
    #   resp.cloud_autonomous_vm_clusters[0].percent_progress #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].display_name #=> String
    #   resp.cloud_autonomous_vm_clusters[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_autonomous_vm_clusters[0].status_reason #=> String
    #   resp.cloud_autonomous_vm_clusters[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].autonomous_data_storage_percentage #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].available_autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].available_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].available_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_autonomous_vm_clusters[0].cpu_core_count #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].cpu_core_count_per_node #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].cpu_percentage #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].data_storage_size_in_g_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].db_servers #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].db_servers[0] #=> String
    #   resp.cloud_autonomous_vm_clusters[0].description #=> String
    #   resp.cloud_autonomous_vm_clusters[0].domain #=> String
    #   resp.cloud_autonomous_vm_clusters[0].exadata_storage_in_t_bs_lowest_scaled_value #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].hostname #=> String
    #   resp.cloud_autonomous_vm_clusters[0].ocid #=> String
    #   resp.cloud_autonomous_vm_clusters[0].oci_url #=> String
    #   resp.cloud_autonomous_vm_clusters[0].is_mtls_enabled_vm_cluster #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.days_of_week #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.hours_of_day #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.months #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].max_acds_lowest_scaled_value #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].node_count #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].non_provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisioned_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisioned_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].reclaimable_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].reserved_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].scan_listener_port_non_tls #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].scan_listener_port_tls #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].shape #=> String
    #   resp.cloud_autonomous_vm_clusters[0].created_at #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_database_ssl_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_ords_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_zone #=> String
    #   resp.cloud_autonomous_vm_clusters[0].total_container_databases #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudAutonomousVmClusters AWS API Documentation
    #
    # @overload list_cloud_autonomous_vm_clusters(params = {})
    # @param [Hash] params ({})
    def list_cloud_autonomous_vm_clusters(params = {}, options = {})
      req = build_request(:list_cloud_autonomous_vm_clusters, params)
      req.send_request(options)
    end

    # Returns information about the Exadata infrastructures owned by your
    # Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListCloudExadataInfrastructuresOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudExadataInfrastructuresOutput#next_token #next_token} => String
    #   * {Types::ListCloudExadataInfrastructuresOutput#cloud_exadata_infrastructures #cloud_exadata_infrastructures} => Array&lt;Types::CloudExadataInfrastructureSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_exadata_infrastructures({
    #     max_results: 1,
    #     next_token: "ListCloudExadataInfrastructuresInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_exadata_infrastructures #=> Array
    #   resp.cloud_exadata_infrastructures[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructures[0].display_name #=> String
    #   resp.cloud_exadata_infrastructures[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_exadata_infrastructures[0].status_reason #=> String
    #   resp.cloud_exadata_infrastructures[0].cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_exadata_infrastructures[0].activated_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].additional_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].available_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].availability_zone #=> String
    #   resp.cloud_exadata_infrastructures[0].availability_zone_id #=> String
    #   resp.cloud_exadata_infrastructures[0].compute_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].customer_contacts_to_send_to_oci #=> Array
    #   resp.cloud_exadata_infrastructures[0].customer_contacts_to_send_to_oci[0].email #=> String
    #   resp.cloud_exadata_infrastructures[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructures[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].db_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].last_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.days_of_week #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.hours_of_day #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.months #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_data_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructures[0].max_db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].monthly_db_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].monthly_storage_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].next_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructures[0].oci_resource_anchor_name #=> String
    #   resp.cloud_exadata_infrastructures[0].oci_url #=> String
    #   resp.cloud_exadata_infrastructures[0].ocid #=> String
    #   resp.cloud_exadata_infrastructures[0].shape #=> String
    #   resp.cloud_exadata_infrastructures[0].storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].storage_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].created_at #=> Time
    #   resp.cloud_exadata_infrastructures[0].total_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].percent_progress #=> Float
    #   resp.cloud_exadata_infrastructures[0].database_server_type #=> String
    #   resp.cloud_exadata_infrastructures[0].storage_server_type #=> String
    #   resp.cloud_exadata_infrastructures[0].compute_model #=> String, one of "ECPU", "OCPU"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudExadataInfrastructures AWS API Documentation
    #
    # @overload list_cloud_exadata_infrastructures(params = {})
    # @param [Hash] params ({})
    def list_cloud_exadata_infrastructures(params = {}, options = {})
      req = build_request(:list_cloud_exadata_infrastructures, params)
      req.send_request(options)
    end

    # Returns information about the VM clusters owned by your Amazon Web
    # Services account or only the ones on the specified Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure.
    #
    # @return [Types::ListCloudVmClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudVmClustersOutput#next_token #next_token} => String
    #   * {Types::ListCloudVmClustersOutput#cloud_vm_clusters #cloud_vm_clusters} => Array&lt;Types::CloudVmClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_vm_clusters({
    #     max_results: 1,
    #     next_token: "ListCloudVmClustersInputNextTokenString",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_vm_clusters #=> Array
    #   resp.cloud_vm_clusters[0].cloud_vm_cluster_id #=> String
    #   resp.cloud_vm_clusters[0].display_name #=> String
    #   resp.cloud_vm_clusters[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_vm_clusters[0].status_reason #=> String
    #   resp.cloud_vm_clusters[0].cloud_vm_cluster_arn #=> String
    #   resp.cloud_vm_clusters[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_vm_clusters[0].cluster_name #=> String
    #   resp.cloud_vm_clusters[0].cpu_core_count #=> Integer
    #   resp.cloud_vm_clusters[0].data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_vm_clusters[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].db_servers #=> Array
    #   resp.cloud_vm_clusters[0].db_servers[0] #=> String
    #   resp.cloud_vm_clusters[0].disk_redundancy #=> String, one of "HIGH", "NORMAL"
    #   resp.cloud_vm_clusters[0].gi_version #=> String
    #   resp.cloud_vm_clusters[0].hostname #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans #=> Array
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.cloud_vm_clusters[0].iorm_config_cache.lifecycle_details #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.cloud_vm_clusters[0].iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.cloud_vm_clusters[0].is_local_backup_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].is_sparse_diskgroup_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].last_update_history_entry_id #=> String
    #   resp.cloud_vm_clusters[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_vm_clusters[0].listener_port #=> Integer
    #   resp.cloud_vm_clusters[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].node_count #=> Integer
    #   resp.cloud_vm_clusters[0].ocid #=> String
    #   resp.cloud_vm_clusters[0].oci_resource_anchor_name #=> String
    #   resp.cloud_vm_clusters[0].oci_url #=> String
    #   resp.cloud_vm_clusters[0].domain #=> String
    #   resp.cloud_vm_clusters[0].scan_dns_name #=> String
    #   resp.cloud_vm_clusters[0].scan_dns_record_id #=> String
    #   resp.cloud_vm_clusters[0].scan_ip_ids #=> Array
    #   resp.cloud_vm_clusters[0].scan_ip_ids[0] #=> String
    #   resp.cloud_vm_clusters[0].shape #=> String
    #   resp.cloud_vm_clusters[0].ssh_public_keys #=> Array
    #   resp.cloud_vm_clusters[0].ssh_public_keys[0] #=> String
    #   resp.cloud_vm_clusters[0].storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].system_version #=> String
    #   resp.cloud_vm_clusters[0].created_at #=> Time
    #   resp.cloud_vm_clusters[0].time_zone #=> String
    #   resp.cloud_vm_clusters[0].vip_ids #=> Array
    #   resp.cloud_vm_clusters[0].vip_ids[0] #=> String
    #   resp.cloud_vm_clusters[0].odb_network_id #=> String
    #   resp.cloud_vm_clusters[0].percent_progress #=> Float
    #   resp.cloud_vm_clusters[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_vm_clusters[0].iam_roles #=> Array
    #   resp.cloud_vm_clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_vm_clusters[0].iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_vm_clusters[0].iam_roles[0].status_reason #=> String
    #   resp.cloud_vm_clusters[0].iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudVmClusters AWS API Documentation
    #
    # @overload list_cloud_vm_clusters(params = {})
    # @param [Hash] params ({})
    def list_cloud_vm_clusters(params = {}, options = {})
      req = build_request(:list_cloud_vm_clusters, params)
      req.send_request(options)
    end

    # Returns information about the DB nodes for the specified VM cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster.
    #
    # @return [Types::ListDbNodesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbNodesOutput#next_token #next_token} => String
    #   * {Types::ListDbNodesOutput#db_nodes #db_nodes} => Array&lt;Types::DbNodeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_nodes({
    #     max_results: 1,
    #     next_token: "ListDbNodesInputNextTokenString",
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_nodes #=> Array
    #   resp.db_nodes[0].db_node_id #=> String
    #   resp.db_nodes[0].db_node_arn #=> String
    #   resp.db_nodes[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.db_nodes[0].status_reason #=> String
    #   resp.db_nodes[0].additional_details #=> String
    #   resp.db_nodes[0].backup_ip_id #=> String
    #   resp.db_nodes[0].backup_vnic_2_id #=> String
    #   resp.db_nodes[0].backup_vnic_id #=> String
    #   resp.db_nodes[0].cpu_core_count #=> Integer
    #   resp.db_nodes[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_nodes[0].db_server_id #=> String
    #   resp.db_nodes[0].db_system_id #=> String
    #   resp.db_nodes[0].fault_domain #=> String
    #   resp.db_nodes[0].host_ip_id #=> String
    #   resp.db_nodes[0].hostname #=> String
    #   resp.db_nodes[0].ocid #=> String
    #   resp.db_nodes[0].oci_resource_anchor_name #=> String
    #   resp.db_nodes[0].maintenance_type #=> String, one of "VMDB_REBOOT_MIGRATION"
    #   resp.db_nodes[0].memory_size_in_g_bs #=> Integer
    #   resp.db_nodes[0].software_storage_size_in_gb #=> Integer
    #   resp.db_nodes[0].created_at #=> Time
    #   resp.db_nodes[0].time_maintenance_window_end #=> String
    #   resp.db_nodes[0].time_maintenance_window_start #=> String
    #   resp.db_nodes[0].total_cpu_core_count #=> Integer
    #   resp.db_nodes[0].vnic2_id #=> String
    #   resp.db_nodes[0].vnic_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbNodes AWS API Documentation
    #
    # @overload list_db_nodes(params = {})
    # @param [Hash] params ({})
    def list_db_nodes(params = {}, options = {})
      req = build_request(:list_db_nodes, params)
      req.send_request(options)
    end

    # Returns information about the database servers that belong to the
    # specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListDbServersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbServersOutput#next_token #next_token} => String
    #   * {Types::ListDbServersOutput#db_servers #db_servers} => Array&lt;Types::DbServerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_servers({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     max_results: 1,
    #     next_token: "ListDbServersInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_servers #=> Array
    #   resp.db_servers[0].db_server_id #=> String
    #   resp.db_servers[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.db_servers[0].status_reason #=> String
    #   resp.db_servers[0].cpu_core_count #=> Integer
    #   resp.db_servers[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_servers[0].db_server_patching_details.estimated_patch_duration #=> Integer
    #   resp.db_servers[0].db_server_patching_details.patching_status #=> String, one of "COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"
    #   resp.db_servers[0].db_server_patching_details.time_patching_ended #=> String
    #   resp.db_servers[0].db_server_patching_details.time_patching_started #=> String
    #   resp.db_servers[0].display_name #=> String
    #   resp.db_servers[0].exadata_infrastructure_id #=> String
    #   resp.db_servers[0].ocid #=> String
    #   resp.db_servers[0].oci_resource_anchor_name #=> String
    #   resp.db_servers[0].max_cpu_count #=> Integer
    #   resp.db_servers[0].max_db_node_storage_in_g_bs #=> Integer
    #   resp.db_servers[0].max_memory_in_g_bs #=> Integer
    #   resp.db_servers[0].memory_size_in_g_bs #=> Integer
    #   resp.db_servers[0].shape #=> String
    #   resp.db_servers[0].created_at #=> Time
    #   resp.db_servers[0].vm_cluster_ids #=> Array
    #   resp.db_servers[0].vm_cluster_ids[0] #=> String
    #   resp.db_servers[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_servers[0].autonomous_vm_cluster_ids #=> Array
    #   resp.db_servers[0].autonomous_vm_cluster_ids[0] #=> String
    #   resp.db_servers[0].autonomous_virtual_machine_ids #=> Array
    #   resp.db_servers[0].autonomous_virtual_machine_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbServers AWS API Documentation
    #
    # @overload list_db_servers(params = {})
    # @param [Hash] params ({})
    def list_db_servers(params = {}, options = {})
      req = build_request(:list_db_servers, params)
      req.send_request(options)
    end

    # Returns information about the shapes that are available for an Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :availability_zone
    #   The logical name of the AZ, for example, us-east-1a. This name varies
    #   depending on the account.
    #
    # @option params [String] :availability_zone_id
    #   The physical ID of the AZ, for example, use1-az4. This ID persists
    #   across accounts.
    #
    # @return [Types::ListDbSystemShapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbSystemShapesOutput#next_token #next_token} => String
    #   * {Types::ListDbSystemShapesOutput#db_system_shapes #db_system_shapes} => Array&lt;Types::DbSystemShapeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_system_shapes({
    #     max_results: 1,
    #     next_token: "ListDbSystemShapesInputNextTokenString",
    #     availability_zone: "ListDbSystemShapesInputAvailabilityZoneString",
    #     availability_zone_id: "ListDbSystemShapesInputAvailabilityZoneIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_system_shapes #=> Array
    #   resp.db_system_shapes[0].available_core_count #=> Integer
    #   resp.db_system_shapes[0].available_core_count_per_node #=> Integer
    #   resp.db_system_shapes[0].available_data_storage_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].available_data_storage_per_server_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].available_db_node_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_db_node_storage_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_memory_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_memory_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].core_count_increment #=> Integer
    #   resp.db_system_shapes[0].max_storage_count #=> Integer
    #   resp.db_system_shapes[0].maximum_node_count #=> Integer
    #   resp.db_system_shapes[0].min_core_count_per_node #=> Integer
    #   resp.db_system_shapes[0].min_data_storage_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].min_db_node_storage_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].min_memory_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].min_storage_count #=> Integer
    #   resp.db_system_shapes[0].minimum_core_count #=> Integer
    #   resp.db_system_shapes[0].minimum_node_count #=> Integer
    #   resp.db_system_shapes[0].runtime_minimum_core_count #=> Integer
    #   resp.db_system_shapes[0].shape_family #=> String
    #   resp.db_system_shapes[0].shape_type #=> String, one of "AMD", "INTEL", "INTEL_FLEX_X9", "AMPERE_FLEX_A1"
    #   resp.db_system_shapes[0].name #=> String
    #   resp.db_system_shapes[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_system_shapes[0].are_server_types_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbSystemShapes AWS API Documentation
    #
    # @overload list_db_system_shapes(params = {})
    # @param [Hash] params ({})
    def list_db_system_shapes(params = {}, options = {})
      req = build_request(:list_db_system_shapes, params)
      req.send_request(options)
    end

    # Returns information about Oracle Grid Infrastructure (GI) software
    # versions that are available for a VM cluster for the specified shape.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :shape
    #   The shape to return GI versions for. For a list of valid shapes, use
    #   the `ListDbSystemShapes` operation..
    #
    # @return [Types::ListGiVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGiVersionsOutput#next_token #next_token} => String
    #   * {Types::ListGiVersionsOutput#gi_versions #gi_versions} => Array&lt;Types::GiVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gi_versions({
    #     max_results: 1,
    #     next_token: "ListGiVersionsInputNextTokenString",
    #     shape: "ListGiVersionsInputShapeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.gi_versions #=> Array
    #   resp.gi_versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListGiVersions AWS API Documentation
    #
    # @overload list_gi_versions(params = {})
    # @param [Hash] params ({})
    def list_gi_versions(params = {}, options = {})
      req = build_request(:list_gi_versions, params)
      req.send_request(options)
    end

    # Returns information about the ODB networks owned by your Amazon Web
    # Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListOdbNetworksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOdbNetworksOutput#next_token #next_token} => String
    #   * {Types::ListOdbNetworksOutput#odb_networks #odb_networks} => Array&lt;Types::OdbNetworkSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_odb_networks({
    #     max_results: 1,
    #     next_token: "ListOdbNetworksInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.odb_networks #=> Array
    #   resp.odb_networks[0].odb_network_id #=> String
    #   resp.odb_networks[0].display_name #=> String
    #   resp.odb_networks[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_networks[0].status_reason #=> String
    #   resp.odb_networks[0].odb_network_arn #=> String
    #   resp.odb_networks[0].availability_zone #=> String
    #   resp.odb_networks[0].availability_zone_id #=> String
    #   resp.odb_networks[0].client_subnet_cidr #=> String
    #   resp.odb_networks[0].backup_subnet_cidr #=> String
    #   resp.odb_networks[0].custom_domain_name #=> String
    #   resp.odb_networks[0].default_dns_prefix #=> String
    #   resp.odb_networks[0].peered_cidrs #=> Array
    #   resp.odb_networks[0].peered_cidrs[0] #=> String
    #   resp.odb_networks[0].oci_network_anchor_id #=> String
    #   resp.odb_networks[0].oci_network_anchor_url #=> String
    #   resp.odb_networks[0].oci_resource_anchor_name #=> String
    #   resp.odb_networks[0].oci_vcn_id #=> String
    #   resp.odb_networks[0].oci_vcn_url #=> String
    #   resp.odb_networks[0].oci_dns_forwarding_configs #=> Array
    #   resp.odb_networks[0].oci_dns_forwarding_configs[0].domain_name #=> String
    #   resp.odb_networks[0].oci_dns_forwarding_configs[0].oci_dns_listener_ip #=> String
    #   resp.odb_networks[0].created_at #=> Time
    #   resp.odb_networks[0].percent_progress #=> Float
    #   resp.odb_networks[0].managed_services.service_network_arn #=> String
    #   resp.odb_networks[0].managed_services.resource_gateway_arn #=> String
    #   resp.odb_networks[0].managed_services.managed_services_ipv_4_cidrs #=> Array
    #   resp.odb_networks[0].managed_services.managed_services_ipv_4_cidrs[0] #=> String
    #   resp.odb_networks[0].managed_services.service_network_endpoint.vpc_endpoint_id #=> String
    #   resp.odb_networks[0].managed_services.service_network_endpoint.vpc_endpoint_type #=> String, one of "SERVICENETWORK"
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.zero_etl_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.zero_etl_access.cidr #=> String
    #   resp.odb_networks[0].managed_services.s3_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.s3_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.s3_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.s3_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.s3_access.s3_policy_document #=> String
    #   resp.odb_networks[0].managed_services.sts_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.sts_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.sts_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.sts_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.sts_access.sts_policy_document #=> String
    #   resp.odb_networks[0].managed_services.kms_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.kms_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.kms_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.kms_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.kms_access.kms_policy_document #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access #=> Array
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].region #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListOdbNetworks AWS API Documentation
    #
    # @overload list_odb_networks(params = {})
    # @param [Hash] params ({})
    def list_odb_networks(params = {}, options = {})
      req = build_request(:list_odb_networks, params)
      req.send_request(options)
    end

    # Lists all ODB peering connections or those associated with a specific
    # ODB network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of ODB peering connections to return in the
    #   response.
    #
    #   Default: `20`
    #
    #   Constraints:
    #
    #   * Must be between 1 and 100.
    #
    #   ^
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of ODB peering connections.
    #
    # @option params [String] :odb_network_id
    #   The identifier of the ODB network to list peering connections for.
    #
    #   If not specified, lists all ODB peering connections in the account.
    #
    # @return [Types::ListOdbPeeringConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOdbPeeringConnectionsOutput#next_token #next_token} => String
    #   * {Types::ListOdbPeeringConnectionsOutput#odb_peering_connections #odb_peering_connections} => Array&lt;Types::OdbPeeringConnectionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_odb_peering_connections({
    #     max_results: 1,
    #     next_token: "ListOdbPeeringConnectionsInputNextTokenString",
    #     odb_network_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.odb_peering_connections #=> Array
    #   resp.odb_peering_connections[0].odb_peering_connection_id #=> String
    #   resp.odb_peering_connections[0].display_name #=> String
    #   resp.odb_peering_connections[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_peering_connections[0].status_reason #=> String
    #   resp.odb_peering_connections[0].odb_peering_connection_arn #=> String
    #   resp.odb_peering_connections[0].odb_network_arn #=> String
    #   resp.odb_peering_connections[0].peer_network_arn #=> String
    #   resp.odb_peering_connections[0].odb_peering_connection_type #=> String
    #   resp.odb_peering_connections[0].peer_network_cidrs #=> Array
    #   resp.odb_peering_connections[0].peer_network_cidrs[0] #=> String
    #   resp.odb_peering_connections[0].created_at #=> Time
    #   resp.odb_peering_connections[0].percent_progress #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListOdbPeeringConnections AWS API Documentation
    #
    # @overload list_odb_peering_connections(params = {})
    # @param [Hash] params ({})
    def list_odb_peering_connections(params = {}, options = {})
      req = build_request(:list_odb_peering_connections, params)
      req.send_request(options)
    end

    # Returns information about the system versions that are available for a
    # VM cluster for the specified `giVersion` and `shape`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :gi_version
    #   The software version of the Exadata Grid Infrastructure (GI).
    #
    # @option params [required, String] :shape
    #   The Exadata hardware system model.
    #
    # @return [Types::ListSystemVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSystemVersionsOutput#next_token #next_token} => String
    #   * {Types::ListSystemVersionsOutput#system_versions #system_versions} => Array&lt;Types::SystemVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_system_versions({
    #     max_results: 1,
    #     next_token: "ListSystemVersionsInputNextTokenString",
    #     gi_version: "ListSystemVersionsInputGiVersionString", # required
    #     shape: "ListSystemVersionsInputShapeString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.system_versions #=> Array
    #   resp.system_versions[0].gi_version #=> String
    #   resp.system_versions[0].shape #=> String
    #   resp.system_versions[0].system_versions #=> Array
    #   resp.system_versions[0].system_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListSystemVersions AWS API Documentation
    #
    # @overload list_system_versions(params = {})
    # @param [Hash] params ({})
    def list_system_versions(params = {}, options = {})
      req = build_request(:list_system_versions, params)
      req.send_request(options)
    end

    # Returns information about the tags applied to this resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Reboots the specified DB node in a VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   reboot.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to reboot.
    #
    # @return [Types::RebootDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::RebootDbNodeOutput#status #status} => String
    #   * {Types::RebootDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_db_node({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/RebootDbNode AWS API Documentation
    #
    # @overload reboot_db_node(params = {})
    # @param [Hash] params ({})
    def reboot_db_node(params = {}, options = {})
      req = build_request(:reboot_db_node, params)
      req.send_request(options)
    end

    # Starts the specified DB node in a VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   start.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to start.
    #
    # @return [Types::StartDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::StartDbNodeOutput#status #status} => String
    #   * {Types::StartDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_node({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StartDbNode AWS API Documentation
    #
    # @overload start_db_node(params = {})
    # @param [Hash] params ({})
    def start_db_node(params = {}, options = {})
      req = build_request(:start_db_node, params)
      req.send_request(options)
    end

    # Stops the specified DB node in a VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   stop.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to stop.
    #
    # @return [Types::StopDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::StopDbNodeOutput#status #status} => String
    #   * {Types::StopDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_node({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StopDbNode AWS API Documentation
    #
    # @overload stop_db_node(params = {})
    # @param [Hash] params ({})
    def stop_db_node(params = {}, options = {})
      req = build_request(:stop_db_node, params)
      req.send_request(options)
    end

    # Applies tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The names (keys) of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the properties of an Exadata infrastructure resource.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure to update.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The scheduling details for the maintenance window. Patching and system
    #   updates take place during the maintenance window.
    #
    # @return [Types::UpdateCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCloudExadataInfrastructureOutput#display_name #display_name} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#status #status} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#status_reason #status_reason} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#cloud_exadata_infrastructure_id #cloud_exadata_infrastructure_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_exadata_infrastructure_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateCloudExadataInfrastructure AWS API Documentation
    #
    # @overload update_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def update_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:update_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Updates properties of a specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to update.
    #
    # @option params [String] :display_name
    #   The new user-friendly name of the ODB network.
    #
    # @option params [Array<String>] :peered_cidrs_to_be_added
    #   The list of CIDR ranges from the peered VPC that allow access to the
    #   ODB network.
    #
    # @option params [Array<String>] :peered_cidrs_to_be_removed
    #   The list of CIDR ranges from the peered VPC to remove from the ODB
    #   network.
    #
    # @option params [String] :s3_access
    #   Specifies the updated configuration for Amazon S3 access from the ODB
    #   network.
    #
    # @option params [String] :zero_etl_access
    #   Specifies the updated configuration for Zero-ETL access from the ODB
    #   network.
    #
    # @option params [String] :sts_access
    #   The Amazon Web Services Security Token Service (STS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :kms_access
    #   The Amazon Web Services Key Management Service (KMS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :s3_policy_document
    #   Specifies the updated endpoint policy for Amazon S3 access from the
    #   ODB network.
    #
    # @option params [String] :sts_policy_document
    #   The STS policy document that defines permissions for token service
    #   usage within the ODB network.
    #
    # @option params [String] :kms_policy_document
    #   The KMS policy document that defines permissions for key usage within
    #   the ODB network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   The cross-Region Amazon S3 restore sources to enable for the ODB
    #   network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_disable
    #   The cross-Region Amazon S3 restore sources to disable for the ODB
    #   network.
    #
    # @return [Types::UpdateOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOdbNetworkOutput#display_name #display_name} => String
    #   * {Types::UpdateOdbNetworkOutput#status #status} => String
    #   * {Types::UpdateOdbNetworkOutput#status_reason #status_reason} => String
    #   * {Types::UpdateOdbNetworkOutput#odb_network_id #odb_network_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peered_cidrs_to_be_added: ["String"],
    #     peered_cidrs_to_be_removed: ["String"],
    #     s3_access: "ENABLED", # accepts ENABLED, DISABLED
    #     zero_etl_access: "ENABLED", # accepts ENABLED, DISABLED
    #     sts_access: "ENABLED", # accepts ENABLED, DISABLED
    #     kms_access: "ENABLED", # accepts ENABLED, DISABLED
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
    #     cross_region_s3_restore_sources_to_disable: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateOdbNetwork AWS API Documentation
    #
    # @overload update_odb_network(params = {})
    # @param [Hash] params ({})
    def update_odb_network(params = {}, options = {})
      req = build_request(:update_odb_network, params)
      req.send_request(options)
    end

    # Modifies the settings of an Oracle Database@Amazon Web Services
    # peering connection. You can update the display name and add or remove
    # CIDR blocks from the peering connection.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The identifier of the Oracle Database@Amazon Web Services peering
    #   connection to update.
    #
    # @option params [String] :display_name
    #   A new display name for the peering connection.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   A list of CIDR blocks to add to the peering connection. These CIDR
    #   blocks define the IP address ranges that can communicate through the
    #   peering connection. The CIDR blocks must not overlap with existing
    #   CIDR blocks in the Oracle Database@Amazon Web Services network.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_removed
    #   A list of CIDR blocks to remove from the peering connection. The CIDR
    #   blocks must currently exist in the peering connection.
    #
    # @return [Types::UpdateOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOdbPeeringConnectionOutput#display_name #display_name} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#status #status} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#status_reason #status_reason} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#odb_peering_connection_id #odb_peering_connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     peer_network_cidrs_to_be_removed: ["PeeredCidr"],
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateOdbPeeringConnection AWS API Documentation
    #
    # @overload update_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def update_odb_peering_connection(params = {}, options = {})
      req = build_request(:update_odb_peering_connection, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Odb')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-odb'
      context[:gem_version] = '1.9.0'
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
